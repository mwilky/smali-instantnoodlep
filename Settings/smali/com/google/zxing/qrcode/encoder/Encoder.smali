.class public final Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final ALPHANUMERIC_TABLE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private static chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v2

    invoke-virtual {v1, p1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v3, p0, 0x7

    div-int/lit8 v3, v3, 0x8

    if-lt v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "Data too big"

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/encoder/QRCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    const-string v3, "ISO-8859-1"

    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    const-string v4, "Shift_JIS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eqz v5, :cond_8

    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v8, v5

    rem-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_5

    aget-byte v10, v5, v9

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0x81

    if-lt v10, v11, :cond_3

    const/16 v11, 0x9f

    if-le v10, v11, :cond_4

    :cond_3
    const/16 v11, 0xe0

    if-lt v10, v11, :cond_6

    const/16 v11, 0xeb

    if-le v10, v11, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    :cond_5
    move v5, v7

    goto :goto_3

    :catch_0
    :cond_6
    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_7

    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_6

    :cond_7
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_b

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-lt v10, v11, :cond_9

    const/16 v11, 0x39

    if-gt v10, v11, :cond_9

    move v9, v7

    goto :goto_5

    :cond_9
    invoke-static {v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v8

    if-eq v8, v6, :cond_a

    move v8, v7

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_6

    :cond_b
    if-eqz v8, :cond_c

    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_6

    :cond_c
    if-eqz v9, :cond_d

    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_6

    :cond_d
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    :goto_6
    new-instance v8, Lcom/google/zxing/common/BitArray;

    invoke-direct {v8}, Lcom/google/zxing/common/BitArray;-><init>()V

    sget-object v9, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v10, 0x4

    const/16 v11, 0x8

    if-ne v5, v9, :cond_e

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {v2}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v3

    if-eqz v3, :cond_e

    sget-object v9, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v9

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {v3}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v3

    invoke-virtual {v8, v3, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    :cond_e
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v3

    invoke-virtual {v8, v3, v10}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/4 v12, 0x7

    const/16 v13, 0xa

    if-eq v9, v7, :cond_18

    const/4 v13, 0x6

    const/4 v14, 0x2

    if-eq v9, v14, :cond_14

    if-eq v9, v10, :cond_13

    if-ne v9, v13, :cond_12

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    array-length v4, v2

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v4, :cond_1b

    aget-byte v13, v2, v9

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, v9, 0x1

    aget-byte v14, v2, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v13, v11

    or-int/2addr v13, v14

    const v14, 0x8140

    if-lt v13, v14, :cond_f

    const v14, 0x9ffc

    if-gt v13, v14, :cond_f

    const v14, 0x8140

    goto :goto_8

    :cond_f
    const v14, 0xe040

    if-lt v13, v14, :cond_10

    const v14, 0xebbf

    if-gt v13, v14, :cond_10

    const v14, 0xc140

    :goto_8
    sub-int/2addr v13, v14

    goto :goto_9

    :cond_10
    move v13, v6

    :goto_9
    if-eq v13, v6, :cond_11

    shr-int/lit8 v14, v13, 0x8

    mul-int/lit16 v14, v14, 0xc0

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v14, v13

    const/16 v13, 0xd

    invoke-virtual {v3, v14, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v9, v9, 0x2

    goto :goto_7

    :cond_11
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid byte sequence"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_12
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid mode: "

    invoke-static {v1, v5}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    array-length v4, v2

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v4, :cond_1b

    aget-byte v9, v2, v6

    invoke-virtual {v3, v9, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_14
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v2, :cond_1b

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v9

    if-eq v9, v6, :cond_17

    add-int/lit8 v14, v4, 0x1

    if-ge v14, v2, :cond_16

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    invoke-static {v14}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v14

    if-eq v14, v6, :cond_15

    mul-int/lit8 v9, v9, 0x2d

    add-int/2addr v9, v14

    const/16 v14, 0xb

    invoke-virtual {v3, v9, v14}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_b

    :cond_15
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_16
    invoke-virtual {v3, v9, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move v4, v14

    goto :goto_b

    :cond_17
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_18
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v2, :cond_1b

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    add-int/lit8 v9, v4, 0x2

    if-ge v9, v2, :cond_19

    add-int/lit8 v14, v4, 0x1

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    add-int/lit8 v14, v14, -0x30

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v6, v6, 0x64

    mul-int/2addr v14, v13

    add-int/2addr v14, v6

    add-int/2addr v14, v9

    invoke-virtual {v3, v14, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v4, v4, 0x3

    goto :goto_c

    :cond_19
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v2, :cond_1a

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v4

    invoke-virtual {v3, v6, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move v4, v9

    goto :goto_c

    :cond_1a
    invoke-virtual {v3, v6, v10}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_c

    :cond_1b
    invoke-virtual {v8}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    invoke-static {v7}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v2, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    invoke-virtual {v5, v2}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {v4, v8}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v5, v6, :cond_1c

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    goto :goto_d

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_d
    invoke-virtual {v5, v2}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v6

    shl-int v8, v7, v6

    if-ge v0, v8, :cond_48

    invoke-virtual {v4, v0, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {v4, v3}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    invoke-virtual {v2, v1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v6

    sub-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0x3

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    if-gt v8, v6, :cond_47

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v10, :cond_1d

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    if-ge v9, v6, :cond_1d

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_1d
    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    and-int/2addr v9, v12

    if-lez v9, :cond_1e

    :goto_f
    if-ge v9, v11, :cond_1e

    invoke-virtual {v4, v8}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    goto :goto_f

    :cond_1e
    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v8

    sub-int v8, v3, v8

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v8, :cond_20

    and-int/lit8 v10, v9, 0x1

    if-nez v10, :cond_1f

    const/16 v10, 0xec

    goto :goto_11

    :cond_1f
    const/16 v10, 0x11

    :goto_11
    invoke-virtual {v4, v10, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_20
    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    if-ne v8, v6, :cond_46

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v0

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v8

    if-ne v8, v3, :cond_45

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_12
    if-ge v9, v0, :cond_2b

    new-array v13, v7, [I

    new-array v7, v7, [I

    if-ge v9, v0, :cond_2a

    rem-int v14, v6, v0

    sub-int v15, v0, v14

    div-int v16, v6, v0

    add-int/lit8 v17, v16, 0x1

    div-int v18, v3, v0

    add-int/lit8 v19, v18, 0x1

    move-object/from16 p2, v2

    sub-int v2, v16, v18

    move-object/from16 v16, v5

    sub-int v5, v17, v19

    if-ne v2, v5, :cond_29

    add-int v1, v15, v14

    if-ne v0, v1, :cond_28

    add-int v1, v18, v2

    mul-int/2addr v1, v15

    add-int v17, v19, v5

    mul-int v17, v17, v14

    add-int v1, v17, v1

    if-ne v6, v1, :cond_27

    const/4 v1, 0x0

    if-ge v9, v15, :cond_21

    aput v18, v13, v1

    aput v2, v7, v1

    goto :goto_13

    :cond_21
    aput v19, v13, v1

    aput v5, v7, v1

    :goto_13
    aget v1, v13, v1

    new-array v2, v1, [B

    mul-int/lit8 v5, v10, 0x8

    const/4 v14, 0x0

    :goto_14
    if-ge v14, v1, :cond_24

    const/4 v15, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x0

    move/from16 p0, v0

    move v0, v15

    move/from16 v15, v17

    move/from16 v17, v6

    move v6, v5

    move/from16 v5, v18

    :goto_15
    if-ge v5, v15, :cond_23

    invoke-virtual {v4, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v15

    if-eqz v15, :cond_22

    rsub-int/lit8 v15, v5, 0x7

    const/16 v18, 0x1

    shl-int v15, v18, v15

    or-int/2addr v0, v15

    :cond_22
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    const/16 v15, 0x8

    goto :goto_15

    :cond_23
    add-int/lit8 v5, v14, 0x0

    int-to-byte v0, v0

    aput-byte v0, v2, v5

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p0

    move v5, v6

    move/from16 v6, v17

    goto :goto_14

    :cond_24
    move/from16 p0, v0

    move/from16 v17, v6

    const/4 v0, 0x0

    aget v0, v7, v0

    array-length v5, v2

    add-int v6, v5, v0

    new-array v6, v6, [I

    const/4 v7, 0x0

    :goto_16
    if-ge v7, v5, :cond_25

    aget-byte v14, v2, v7

    and-int/lit16 v14, v14, 0xff

    aput v14, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_25
    new-instance v7, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v14, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v7, v14}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v7, v6, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    new-array v7, v0, [B

    const/4 v14, 0x0

    :goto_17
    if-ge v14, v0, :cond_26

    add-int v15, v5, v14

    aget v15, v6, v15

    int-to-byte v15, v15

    aput-byte v15, v7, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_17

    :cond_26
    new-instance v0, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v0, v2, v7}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    array-length v0, v7

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v0, 0x0

    aget v0, v13, v0

    add-int/2addr v10, v0

    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_12

    :cond_27
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    move-object/from16 p2, v2

    move-object/from16 v16, v5

    move/from16 v17, v6

    const/4 v0, 0x0

    if-ne v3, v10, :cond_44

    new-instance v1, Lcom/google/zxing/common/BitArray;

    invoke-direct {v1}, Lcom/google/zxing/common/BitArray;-><init>()V

    move v2, v0

    :goto_18
    if-ge v2, v12, :cond_2e

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getDataBytes()[B

    move-result-object v4

    array-length v5, v4

    if-ge v2, v5, :cond_2c

    aget-byte v4, v4, v2

    const/16 v5, 0x8

    invoke-virtual {v1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_19

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2e
    move v2, v0

    :goto_1a
    if-ge v2, v11, :cond_31

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getErrorCorrectionBytes()[B

    move-result-object v4

    array-length v5, v4

    if-ge v2, v5, :cond_2f

    aget-byte v4, v4, v2

    const/16 v5, 0x8

    invoke-virtual {v1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_1b

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_31
    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v2

    move/from16 v3, v17

    if-ne v3, v2, :cond_43

    new-instance v2, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct {v2}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/google/zxing/qrcode/encoder/QRCode;->setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    move-object/from16 v5, v16

    invoke-virtual {v2, v5}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V

    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Lcom/google/zxing/qrcode/encoder/QRCode;->setVersion(Lcom/google/zxing/qrcode/decoder/Version;)V

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v5

    new-instance v6, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v6, v5, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    const v5, 0x7fffffff

    const/4 v7, -0x1

    const/16 v8, 0x8

    move v9, v5

    move v5, v0

    :goto_1c
    if-ge v0, v8, :cond_42

    invoke-static {v1, v3, v4, v0, v6}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {v6}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v8

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v10

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v11

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v12

    move v13, v5

    :goto_1d
    add-int/lit8 v14, v12, -0x1

    if-ge v5, v14, :cond_34

    const/4 v14, 0x0

    :goto_1e
    add-int/lit8 v15, v11, -0x1

    if-ge v14, v15, :cond_33

    aget-object v15, v10, v5

    aget-byte v15, v15, v14

    aget-object v16, v10, v5

    add-int/lit8 v17, v14, 0x1

    move/from16 p0, v11

    aget-byte v11, v16, v17

    if-ne v15, v11, :cond_32

    add-int/lit8 v11, v5, 0x1

    aget-object v16, v10, v11

    aget-byte v14, v16, v14

    if-ne v15, v14, :cond_32

    aget-object v11, v10, v11

    aget-byte v11, v11, v17

    if-ne v15, v11, :cond_32

    add-int/lit8 v13, v13, 0x1

    :cond_32
    move/from16 v11, p0

    move/from16 v14, v17

    goto :goto_1e

    :cond_33
    move/from16 p0, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_34
    mul-int/lit8 v13, v13, 0x3

    add-int/2addr v13, v8

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1f
    if-ge v11, v10, :cond_3d

    const/4 v14, 0x0

    :goto_20
    if-ge v14, v8, :cond_3c

    add-int/lit8 v15, v14, 0x6

    if-ge v15, v8, :cond_37

    aget-object v16, v5, v11

    move-object/from16 p0, v1

    aget-byte v1, v16, v14

    const/4 v3, 0x1

    if-ne v1, v3, :cond_38

    aget-object v1, v5, v11

    add-int/lit8 v16, v14, 0x1

    aget-byte v1, v1, v16

    if-nez v1, :cond_38

    aget-object v1, v5, v11

    add-int/lit8 v16, v14, 0x2

    aget-byte v1, v1, v16

    if-ne v1, v3, :cond_38

    aget-object v1, v5, v11

    add-int/lit8 v16, v14, 0x3

    aget-byte v1, v1, v16

    if-ne v1, v3, :cond_38

    aget-object v1, v5, v11

    add-int/lit8 v16, v14, 0x4

    aget-byte v1, v1, v16

    if-ne v1, v3, :cond_38

    aget-object v1, v5, v11

    add-int/lit8 v16, v14, 0x5

    aget-byte v1, v1, v16

    if-nez v1, :cond_38

    aget-object v1, v5, v11

    aget-byte v1, v1, v15

    if-ne v1, v3, :cond_38

    add-int/lit8 v1, v14, 0xa

    if-ge v1, v8, :cond_35

    aget-object v3, v5, v11

    add-int/lit8 v15, v14, 0x7

    aget-byte v3, v3, v15

    if-nez v3, :cond_35

    aget-object v3, v5, v11

    add-int/lit8 v15, v14, 0x8

    aget-byte v3, v3, v15

    if-nez v3, :cond_35

    aget-object v3, v5, v11

    add-int/lit8 v15, v14, 0x9

    aget-byte v3, v3, v15

    if-nez v3, :cond_35

    aget-object v3, v5, v11

    aget-byte v1, v3, v1

    if-eqz v1, :cond_36

    :cond_35
    add-int/lit8 v1, v14, -0x4

    if-ltz v1, :cond_38

    aget-object v3, v5, v11

    add-int/lit8 v15, v14, -0x1

    aget-byte v3, v3, v15

    if-nez v3, :cond_38

    aget-object v3, v5, v11

    add-int/lit8 v15, v14, -0x2

    aget-byte v3, v3, v15

    if-nez v3, :cond_38

    aget-object v3, v5, v11

    add-int/lit8 v15, v14, -0x3

    aget-byte v3, v3, v15

    if-nez v3, :cond_38

    aget-object v3, v5, v11

    aget-byte v1, v3, v1

    if-nez v1, :cond_38

    :cond_36
    add-int/lit8 v12, v12, 0x28

    goto :goto_21

    :cond_37
    move-object/from16 p0, v1

    :cond_38
    :goto_21
    add-int/lit8 v1, v11, 0x6

    if-ge v1, v10, :cond_3b

    aget-object v3, v5, v11

    aget-byte v3, v3, v14

    const/4 v15, 0x1

    if-ne v3, v15, :cond_3b

    add-int/lit8 v3, v11, 0x1

    aget-object v3, v5, v3

    aget-byte v3, v3, v14

    if-nez v3, :cond_3b

    add-int/lit8 v3, v11, 0x2

    aget-object v3, v5, v3

    aget-byte v3, v3, v14

    if-ne v3, v15, :cond_3b

    add-int/lit8 v3, v11, 0x3

    aget-object v3, v5, v3

    aget-byte v3, v3, v14

    if-ne v3, v15, :cond_3b

    add-int/lit8 v3, v11, 0x4

    aget-object v3, v5, v3

    aget-byte v3, v3, v14

    if-ne v3, v15, :cond_3b

    add-int/lit8 v3, v11, 0x5

    aget-object v3, v5, v3

    aget-byte v3, v3, v14

    if-nez v3, :cond_3b

    aget-object v1, v5, v1

    aget-byte v1, v1, v14

    if-ne v1, v15, :cond_3b

    add-int/lit8 v1, v11, 0xa

    if-ge v1, v10, :cond_39

    add-int/lit8 v3, v11, 0x7

    aget-object v3, v5, v3

    aget-byte v3, v3, v14

    if-nez v3, :cond_39

    add-int/lit8 v3, v11, 0x8

    aget-object v3, v5, v3

    aget-byte v3, v3, v14

    if-nez v3, :cond_39

    add-int/lit8 v3, v11, 0x9

    aget-object v3, v5, v3

    aget-byte v3, v3, v14

    if-nez v3, :cond_39

    aget-object v1, v5, v1

    aget-byte v1, v1, v14

    if-eqz v1, :cond_3a

    :cond_39
    add-int/lit8 v1, v11, -0x4

    if-ltz v1, :cond_3b

    add-int/lit8 v3, v11, -0x1

    aget-object v3, v5, v3

    aget-byte v3, v3, v14

    if-nez v3, :cond_3b

    add-int/lit8 v3, v11, -0x2

    aget-object v3, v5, v3

    aget-byte v3, v3, v14

    if-nez v3, :cond_3b

    add-int/lit8 v3, v11, -0x3

    aget-object v3, v5, v3

    aget-byte v3, v3, v14

    if-nez v3, :cond_3b

    aget-object v1, v5, v1

    aget-byte v1, v1, v14

    if-nez v1, :cond_3b

    :cond_3a
    add-int/lit8 v12, v12, 0x28

    :cond_3b
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    goto/16 :goto_20

    :cond_3c
    move-object/from16 p0, v1

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p1

    goto/16 :goto_1f

    :cond_3d
    move-object/from16 p0, v1

    add-int/2addr v13, v12

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_22
    if-ge v8, v5, :cond_40

    aget-object v11, v1, v8

    const/4 v12, 0x0

    :goto_23
    if-ge v12, v3, :cond_3f

    aget-byte v14, v11, v12

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3e

    add-int/lit8 v10, v10, 0x1

    :cond_3e
    add-int/lit8 v12, v12, 0x1

    goto :goto_23

    :cond_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    :cond_40
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    mul-int/2addr v3, v1

    int-to-double v10, v10

    int-to-double v14, v3

    div-double/2addr v10, v14

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide/high16 v14, 0x4034000000000000L    # 20.0

    mul-double/2addr v10, v14

    double-to-int v1, v10

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v13

    if-ge v1, v9, :cond_41

    move v7, v0

    move v9, v1

    :cond_41
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x0

    const/16 v8, 0x8

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    goto/16 :goto_1c

    :cond_42
    move-object/from16 p0, v1

    invoke-virtual {v2, v7}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMaskPattern(I)V

    move-object/from16 v0, p1

    invoke-static {v1, v0, v4, v7, v6}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {v2, v6}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-object v2

    :cond_43
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v2, "Interleaving error: "

    const-string v4, " and "

    invoke-static {v2, v3, v4}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline24(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " differ."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Bits size does not equal capacity"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "data bits cannot fit in the QR Code"

    invoke-static {v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is bigger than "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getAlphanumericCode(I)I
    .locals 2

    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget p0, v0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
