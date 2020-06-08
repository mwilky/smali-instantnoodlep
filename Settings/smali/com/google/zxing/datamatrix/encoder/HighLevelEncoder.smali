.class public final Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# direct methods
.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/zxing/datamatrix/encoder/Encoder;

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/C40Encoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/TextEncoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/X12Encoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;-><init>()V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;-><init>()V

    const/4 v5, 0x4

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;-><init>()V

    const/4 v5, 0x5

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    invoke-direct {v1, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSymbolShape(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V

    invoke-virtual {v1, p2, p3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSizeConstraints(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V

    const-string p1, "[)>\u001e05\u001d"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "\u001e\u0004"

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p0, 0xec

    invoke-virtual {v1, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    invoke-virtual {v1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    iget p0, v1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_0

    :cond_0
    const-string p1, "[)>\u001e06\u001d"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xed

    invoke-virtual {v1, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    invoke-virtual {v1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    iget p0, v1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result p0

    if-eqz p0, :cond_2

    aget-object p0, v0, v2

    invoke-interface {p0, v1}, Lcom/google/zxing/datamatrix/encoder/Encoder;->encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result p0

    if-ltz p0, :cond_1

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetEncoderSignal()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result p0

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result p1

    const/16 p2, 0xfe

    if-ge p0, p1, :cond_3

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_3

    invoke-virtual {v1, p2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    :cond_3
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    const/16 v0, 0x81

    if-ge p3, p1, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-ge p3, p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    add-int/2addr p3, v3

    mul-int/lit16 p3, p3, 0x95

    rem-int/lit16 p3, p3, 0xfd

    add-int/2addr p3, v3

    add-int/2addr p3, v0

    if-gt p3, p2, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit16 p3, p3, -0xfe

    :goto_2
    int-to-char p3, p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findMinimums([F[II[B)I
    .locals 4

    const/4 v0, 0x0

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    move v1, p2

    move p2, v0

    :goto_0
    const/4 v2, 0x6

    if-ge p2, v2, :cond_2

    aget v2, p0, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, p2

    aget v2, p1, p2

    if-le v1, v2, :cond_0

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    move v1, v2

    :cond_0
    if-ne v1, v2, :cond_1

    aget-byte v2, p3, p2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method static illegalCharacter(C)V
    .locals 5

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    const-string v3, "0000"

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " (0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isExtendedASCII(C)Z
    .locals 1

    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNativeX12(C)Z
    .locals 1

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isX12TermSep(C)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static lookAheadTest(Ljava/lang/CharSequence;II)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    return p2

    :cond_0
    const/4 v2, 0x6

    if-nez p2, :cond_1

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    goto :goto_0

    :cond_1
    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const/4 v4, 0x0

    aput v4, v3, p2

    :goto_0
    const/4 v4, 0x0

    move v5, v4

    :cond_2
    add-int v6, v1, v5

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x3

    const v11, 0x7fffffff

    const/4 v12, 0x1

    const/4 v13, 0x5

    if-ne v6, v7, :cond_9

    new-array v0, v2, [B

    new-array v1, v2, [I

    invoke-static {v3, v1, v11, v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    move-result v3

    move v5, v4

    move v6, v5

    :goto_1
    if-ge v5, v2, :cond_3

    aget-byte v7, v0, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    aget v1, v1, v4

    if-ne v1, v3, :cond_4

    return v4

    :cond_4
    if-ne v6, v12, :cond_5

    aget-byte v1, v0, v13

    if-lez v1, :cond_5

    return v13

    :cond_5
    if-ne v6, v12, :cond_6

    aget-byte v1, v0, v9

    if-lez v1, :cond_6

    return v9

    :cond_6
    if-ne v6, v12, :cond_7

    aget-byte v1, v0, v8

    if-lez v1, :cond_7

    return v8

    :cond_7
    if-ne v6, v12, :cond_8

    aget-byte v0, v0, v10

    if-lez v0, :cond_8

    return v10

    :cond_8
    return v12

    :cond_9
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v7

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v7, :cond_a

    aget v7, v3, v4

    float-to-double v9, v7

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v9, v9, v16

    double-to-float v7, v9

    aput v7, v3, v4

    goto :goto_2

    :cond_a
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_b

    aget v7, v3, v4

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    int-to-float v7, v7

    aput v7, v3, v4

    aget v7, v3, v4

    const/high16 v9, 0x40000000    # 2.0f

    add-float/2addr v7, v9

    aput v7, v3, v4

    goto :goto_2

    :cond_b
    aget v7, v3, v4

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    int-to-float v7, v7

    aput v7, v3, v4

    aget v7, v3, v4

    add-float/2addr v7, v14

    aput v7, v3, v4

    :goto_2
    const/16 v7, 0x39

    const/16 v9, 0x30

    const/16 v10, 0x20

    if-eq v6, v10, :cond_e

    if-lt v6, v9, :cond_c

    if-le v6, v7, :cond_e

    :cond_c
    const/16 v15, 0x41

    if-lt v6, v15, :cond_d

    const/16 v15, 0x5a

    if-gt v6, v15, :cond_d

    goto :goto_3

    :cond_d
    move v15, v4

    goto :goto_4

    :cond_e
    :goto_3
    move v15, v12

    :goto_4
    const v17, 0x402aaaab

    const v18, 0x3faaaaab

    const v19, 0x3f2aaaab

    if-eqz v15, :cond_f

    aget v15, v3, v12

    add-float v15, v15, v19

    aput v15, v3, v12

    goto :goto_5

    :cond_f
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v15

    if-eqz v15, :cond_10

    aget v15, v3, v12

    add-float v15, v15, v17

    aput v15, v3, v12

    goto :goto_5

    :cond_10
    aget v15, v3, v12

    add-float v15, v15, v18

    aput v15, v3, v12

    :goto_5
    if-eq v6, v10, :cond_13

    if-lt v6, v9, :cond_11

    if-le v6, v7, :cond_13

    :cond_11
    const/16 v7, 0x61

    if-lt v6, v7, :cond_12

    const/16 v7, 0x7a

    if-gt v6, v7, :cond_12

    goto :goto_6

    :cond_12
    move v7, v4

    goto :goto_7

    :cond_13
    :goto_6
    move v7, v12

    :goto_7
    if-eqz v7, :cond_14

    aget v7, v3, v8

    add-float v7, v7, v19

    aput v7, v3, v8

    goto :goto_8

    :cond_14
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_15

    aget v7, v3, v8

    add-float v7, v7, v17

    aput v7, v3, v8

    goto :goto_8

    :cond_15
    aget v7, v3, v8

    add-float v7, v7, v18

    aput v7, v3, v8

    :goto_8
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, 0x3

    aget v9, v3, v7

    add-float v9, v9, v19

    aput v9, v3, v7

    goto :goto_9

    :cond_16
    const/4 v7, 0x3

    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_17

    aget v9, v3, v7

    const v15, 0x408aaaab

    add-float/2addr v9, v15

    aput v9, v3, v7

    goto :goto_9

    :cond_17
    aget v9, v3, v7

    const v15, 0x40555555

    add-float/2addr v9, v15

    aput v9, v3, v7

    :goto_9
    if-lt v6, v10, :cond_18

    const/16 v7, 0x5e

    if-gt v6, v7, :cond_18

    move v7, v12

    goto :goto_a

    :cond_18
    move v7, v4

    :goto_a
    if-eqz v7, :cond_19

    const/4 v7, 0x4

    aget v6, v3, v7

    const/high16 v9, 0x3f400000    # 0.75f

    add-float/2addr v6, v9

    aput v6, v3, v7

    goto :goto_b

    :cond_19
    const/4 v7, 0x4

    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v6

    if-eqz v6, :cond_1a

    aget v6, v3, v7

    const/high16 v9, 0x40880000    # 4.25f

    add-float/2addr v6, v9

    aput v6, v3, v7

    goto :goto_b

    :cond_1a
    aget v6, v3, v7

    const/high16 v9, 0x40500000    # 3.25f

    add-float/2addr v6, v9

    aput v6, v3, v7

    :goto_b
    aget v6, v3, v13

    add-float/2addr v6, v14

    aput v6, v3, v13

    if-lt v5, v7, :cond_2

    new-array v6, v2, [I

    new-array v7, v2, [B

    invoke-static {v3, v6, v11, v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    move v9, v4

    move v10, v9

    :goto_c
    if-ge v9, v2, :cond_1b

    aget-byte v11, v7, v9

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_1b
    aget v9, v6, v4

    aget v11, v6, v13

    if-ge v9, v11, :cond_1c

    aget v9, v6, v4

    aget v11, v6, v12

    if-ge v9, v11, :cond_1c

    aget v9, v6, v4

    aget v11, v6, v8

    if-ge v9, v11, :cond_1c

    aget v9, v6, v4

    const/4 v11, 0x3

    aget v14, v6, v11

    if-ge v9, v14, :cond_1c

    aget v9, v6, v4

    const/4 v11, 0x4

    aget v14, v6, v11

    if-ge v9, v14, :cond_1c

    return v4

    :cond_1c
    aget v9, v6, v13

    aget v11, v6, v4

    if-lt v9, v11, :cond_25

    aget-byte v9, v7, v12

    aget-byte v11, v7, v8

    add-int/2addr v9, v11

    const/4 v11, 0x3

    aget-byte v14, v7, v11

    add-int/2addr v9, v14

    const/4 v11, 0x4

    aget-byte v14, v7, v11

    add-int/2addr v9, v14

    if-nez v9, :cond_1d

    goto :goto_f

    :cond_1d
    if-ne v10, v12, :cond_1e

    aget-byte v9, v7, v11

    if-lez v9, :cond_1e

    return v11

    :cond_1e
    if-ne v10, v12, :cond_1f

    aget-byte v9, v7, v8

    if-lez v9, :cond_1f

    return v8

    :cond_1f
    if-ne v10, v12, :cond_20

    const/4 v9, 0x3

    aget-byte v7, v7, v9

    if-lez v7, :cond_20

    return v9

    :cond_20
    aget v7, v6, v12

    add-int/2addr v7, v12

    aget v9, v6, v4

    if-ge v7, v9, :cond_2

    aget v7, v6, v12

    add-int/2addr v7, v12

    aget v9, v6, v13

    if-ge v7, v9, :cond_2

    aget v7, v6, v12

    add-int/2addr v7, v12

    const/4 v9, 0x4

    aget v9, v6, v9

    if-ge v7, v9, :cond_2

    aget v7, v6, v12

    add-int/2addr v7, v12

    aget v8, v6, v8

    if-ge v7, v8, :cond_2

    aget v7, v6, v12

    const/4 v8, 0x3

    aget v9, v6, v8

    if-ge v7, v9, :cond_21

    return v12

    :cond_21
    aget v7, v6, v12

    aget v6, v6, v8

    if-ne v7, v6, :cond_2

    add-int/2addr v1, v5

    add-int/2addr v1, v12

    :goto_d
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v3

    if-eqz v3, :cond_22

    return v8

    :cond_22
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_e

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_24
    :goto_e
    return v12

    :cond_25
    :goto_f
    return v13

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40100000    # 2.25f
    .end array-data
.end method
