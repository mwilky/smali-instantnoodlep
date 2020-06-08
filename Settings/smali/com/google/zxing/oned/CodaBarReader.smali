.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "CodaBarReader.java"


# static fields
.field static final ALPHABET:[C

.field static final CHARACTER_ENCODINGS:[I

.field private static final STARTEND_ENCODING:[C


# instance fields
.field private counterLength:I

.field private counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    return-void

    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    return-void
.end method

.method static arrayContains([CC)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private counterAppend(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    iget p1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    :cond_0
    return-void
.end method

.method private toNarrowWidePattern(I)I
    .locals 9

    add-int/lit8 v0, p1, 0x7

    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const v1, 0x7fffffff

    const/4 v3, 0x0

    move v4, p1

    move v5, v1

    move v6, v3

    :goto_0
    if-ge v4, v0, :cond_3

    aget v7, p0, v4

    if-ge v7, v5, :cond_1

    move v5, v7

    :cond_1
    if-le v7, v6, :cond_2

    move v6, v7

    :cond_2
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_3
    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v4, p1, 0x1

    move v6, v3

    :goto_1
    if-ge v4, v0, :cond_6

    aget v7, p0, v4

    if-ge v7, v1, :cond_4

    move v1, v7

    :cond_4
    if-le v7, v6, :cond_5

    move v6, v7

    :cond_5
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_6
    add-int/2addr v1, v6

    div-int/lit8 v0, v1, 0x2

    const/16 v1, 0x80

    move v4, v1

    move v1, v3

    move v6, v1

    :goto_2
    const/4 v7, 0x7

    if-ge v1, v7, :cond_9

    and-int/lit8 v7, v1, 0x1

    if-nez v7, :cond_7

    move v7, v5

    goto :goto_3

    :cond_7
    move v7, v0

    :goto_3
    shr-int/lit8 v4, v4, 0x1

    add-int v8, p1, v1

    aget v8, p0, v8

    if-le v8, v7, :cond_8

    or-int/2addr v6, v4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    sget-object p0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    array-length p1, p0

    if-ge v3, p1, :cond_b

    aget p0, p0, v3

    if-ne p0, v6, :cond_a

    return v3

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    return v2
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    iput v4, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    invoke-virtual {v1, v4}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    if-ge v3, v5, :cond_1a

    const/4 v6, 0x1

    move v7, v4

    move v8, v6

    :goto_0
    if-ge v3, v5, :cond_1

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    xor-int/2addr v9, v8

    if-eqz v9, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {v0, v7}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    xor-int/lit8 v7, v8, 0x1

    move v8, v7

    move v7, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {v0, v7}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    move v1, v6

    :goto_2
    iget v3, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v1, v3, :cond_19

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_18

    sget-object v7, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v8, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v3, v8, v3

    invoke-static {v7, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v3

    if-eqz v3, :cond_18

    move v3, v1

    move v7, v4

    :goto_3
    add-int/lit8 v8, v1, 0x7

    if-ge v3, v8, :cond_2

    iget-object v8, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v8, v8, v3

    add-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    if-eq v1, v6, :cond_3

    iget-object v3, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v8, v1, -0x1

    aget v3, v3, v8

    div-int/lit8 v7, v7, 0x2

    if-lt v3, v7, :cond_18

    :cond_3
    iget-object v3, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    move v3, v1

    :goto_4
    invoke-direct {v0, v3}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v7

    if-eq v7, v5, :cond_17

    iget-object v8, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    int-to-char v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x8

    iget-object v8, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-le v8, v6, :cond_4

    sget-object v8, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v9, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v7, v9, v7

    invoke-static {v8, v7}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_5

    :cond_4
    iget v7, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-lt v3, v7, :cond_16

    :goto_5
    iget-object v7, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v8, v3, -0x1

    aget v7, v7, v8

    const/4 v9, -0x8

    move v10, v4

    :goto_6
    if-ge v9, v5, :cond_5

    iget-object v11, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v12, v3, v9

    aget v11, v11, v12

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_5
    iget v9, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    const/4 v11, 0x2

    if-ge v3, v9, :cond_7

    div-int/2addr v10, v11

    if-lt v7, v10, :cond_6

    goto :goto_7

    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_7
    :goto_7
    const/4 v7, 0x4

    new-array v9, v7, [I

    fill-array-data v9, :array_0

    new-array v10, v7, [I

    fill-array-data v10, :array_1

    iget-object v3, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v12, v3, -0x1

    move v5, v1

    move v3, v4

    :goto_8
    sget-object v13, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    aget v13, v13, v14

    move v15, v13

    const/4 v13, 0x6

    :goto_9
    if-ltz v13, :cond_8

    and-int/lit8 v16, v13, 0x1

    and-int/lit8 v17, v15, 0x1

    mul-int/lit8 v17, v17, 0x2

    add-int v17, v17, v16

    aget v16, v9, v17

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v18, v5, v13

    aget v14, v14, v18

    add-int v16, v16, v14

    aput v16, v9, v17

    aget v14, v10, v17

    add-int/2addr v14, v6

    aput v14, v10, v17

    shr-int/2addr v15, v6

    add-int/lit8 v13, v13, -0x1

    goto :goto_9

    :cond_8
    if-lt v3, v12, :cond_15

    new-array v13, v7, [I

    new-array v14, v7, [I

    move v3, v4

    :goto_a
    if-ge v3, v11, :cond_9

    aput v4, v14, v3

    add-int/lit8 v5, v3, 0x2

    aget v7, v9, v3

    shl-int/lit8 v7, v7, 0x8

    aget v15, v10, v3

    div-int/2addr v7, v15

    aget v15, v9, v5

    shl-int/lit8 v15, v15, 0x8

    aget v16, v10, v5

    div-int v15, v15, v16

    add-int/2addr v15, v7

    shr-int/lit8 v7, v15, 0x1

    aput v7, v14, v5

    aget v7, v14, v5

    aput v7, v13, v3

    aget v7, v9, v5

    mul-int/lit16 v7, v7, 0x200

    add-int/lit16 v7, v7, 0x180

    aget v15, v10, v5

    div-int/2addr v7, v15

    aput v7, v13, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_9
    move v5, v1

    move v3, v4

    :goto_b
    sget-object v7, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v9, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    aget v7, v7, v9

    move v9, v7

    const/4 v7, 0x6

    :goto_c
    if-ltz v7, :cond_b

    and-int/lit8 v10, v7, 0x1

    and-int/lit8 v15, v9, 0x1

    mul-int/2addr v15, v11

    add-int/2addr v15, v10

    iget-object v10, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v16, v5, v7

    aget v10, v10, v16

    shl-int/lit8 v10, v10, 0x8

    aget v11, v14, v15

    if-lt v10, v11, :cond_a

    aget v11, v13, v15

    if-gt v10, v11, :cond_a

    shr-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, -0x1

    const/4 v11, 0x2

    goto :goto_c

    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_b
    if-lt v3, v12, :cond_14

    move v3, v4

    :goto_d
    iget-object v5, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v3, v5, :cond_c

    iget-object v5, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    sget-object v7, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    aget-char v7, v7, v9

    invoke-virtual {v5, v3, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_c
    iget-object v3, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v5, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v5, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v5, 0x3

    if-le v3, v5, :cond_11

    if-eqz v2, :cond_d

    sget-object v3, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    iget-object v2, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_e
    move v2, v4

    move v3, v2

    :goto_e
    if-ge v2, v1, :cond_f

    iget-object v5, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v5, v5, v2

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_f
    int-to-float v2, v3

    :goto_f
    if-ge v1, v8, :cond_10

    iget-object v5, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v5, v5, v1

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_10
    int-to-float v1, v3

    new-instance v3, Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v11, 0x2

    new-array v7, v11, [Lcom/google/zxing/ResultPoint;

    new-instance v8, Lcom/google/zxing/ResultPoint;

    move/from16 v15, p1

    int-to-float v9, v15

    invoke-direct {v8, v2, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v7, v4

    new-instance v2, Lcom/google/zxing/ResultPoint;

    invoke-direct {v2, v1, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v7, v6

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v3, v0, v5, v7, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v3

    :cond_11
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_12
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_13
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_14
    move/from16 v15, p1

    const/4 v11, 0x2

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :cond_15
    move/from16 v15, p1

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_16
    move/from16 v15, p1

    goto/16 :goto_4

    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_18
    move/from16 v15, p1

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_2

    :cond_19
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
