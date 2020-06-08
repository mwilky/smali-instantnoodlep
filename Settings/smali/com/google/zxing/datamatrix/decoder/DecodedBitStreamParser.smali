.class final Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final C40_BASIC_SET_CHARS:[C

.field private static final C40_SHIFT2_SET_CHARS:[C

.field private static final TEXT_BASIC_SET_CHARS:[C

.field private static final TEXT_SHIFT3_SET_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x28

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    const/16 v1, 0x1b

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    :array_1
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
    .end array-data

    nop

    :array_2
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_3
    .array-data 2
        0x60s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method static decode([B)Lcom/google/zxing/common/DecoderResult;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lcom/google/zxing/common/BitSource;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    :goto_0
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const/16 v9, 0x1d

    const/16 v10, 0xfe

    const/16 v11, 0x8

    if-ne v7, v8, :cond_14

    move v7, v4

    :cond_0
    invoke-virtual {v1, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v8

    if-eqz v8, :cond_13

    const/16 v12, 0x80

    if-gt v8, v12, :cond_2

    if-eqz v7, :cond_1

    add-int/lit16 v8, v8, 0x80

    :cond_1
    sub-int/2addr v8, v6

    int-to-char v4, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_15

    :cond_2
    const/16 v12, 0x81

    if-ne v8, v12, :cond_3

    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_15

    :cond_3
    const/16 v12, 0xe5

    if-gt v8, v12, :cond_5

    add-int/lit16 v8, v8, -0x82

    const/16 v12, 0xa

    if-ge v8, v12, :cond_4

    const/16 v12, 0x30

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_5
    const/16 v12, 0xe6

    if-ne v8, v12, :cond_6

    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_15

    :cond_6
    const/16 v12, 0xe7

    if-ne v8, v12, :cond_7

    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_15

    :cond_7
    const/16 v12, 0xe8

    if-ne v8, v12, :cond_8

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    const/16 v12, 0xe9

    if-eq v8, v12, :cond_12

    const/16 v12, 0xea

    if-ne v8, v12, :cond_9

    goto :goto_1

    :cond_9
    const/16 v12, 0xeb

    if-ne v8, v12, :cond_a

    move v7, v6

    goto :goto_1

    :cond_a
    const/16 v12, 0xec

    const-string v13, "\u001e\u0004"

    if-ne v8, v12, :cond_b

    const-string v8, "[)>\u001e05\u001d"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v13}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_b
    const/16 v12, 0xed

    if-ne v8, v12, :cond_c

    const-string v8, "[)>\u001e06\u001d"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v13}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_c
    const/16 v12, 0xee

    if-ne v8, v12, :cond_d

    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_15

    :cond_d
    const/16 v12, 0xef

    if-ne v8, v12, :cond_e

    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_15

    :cond_e
    const/16 v12, 0xf0

    if-ne v8, v12, :cond_f

    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_15

    :cond_f
    const/16 v12, 0xf1

    if-ne v8, v12, :cond_10

    goto :goto_1

    :cond_10
    const/16 v12, 0xf2

    if-lt v8, v12, :cond_12

    if-ne v8, v10, :cond_11

    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v8

    if-nez v8, :cond_11

    goto :goto_1

    :cond_11
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_12
    :goto_1
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v8

    if-gtz v8, :cond_0

    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_15

    :cond_13
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_14
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x1e

    const/16 v12, 0x1b

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eq v7, v14, :cond_3e

    if-eq v7, v13, :cond_2b

    const/4 v8, 0x4

    if-eq v7, v8, :cond_20

    const/4 v9, 0x5

    const/4 v12, 0x6

    if-eq v7, v9, :cond_1b

    if-ne v7, v12, :cond_1a

    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->getByteOffset()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v1, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    add-int/lit8 v8, v7, 0x1

    invoke-static {v6, v7}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    div-int/2addr v6, v11

    goto :goto_2

    :cond_15
    const/16 v7, 0xfa

    if-ge v6, v7, :cond_16

    goto :goto_2

    :cond_16
    add-int/lit16 v6, v6, -0xf9

    mul-int/2addr v6, v7

    invoke-virtual {v1, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    add-int/lit8 v9, v8, 0x1

    invoke-static {v7, v8}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v7

    add-int/2addr v6, v7

    move v8, v9

    :goto_2
    if-ltz v6, :cond_19

    new-array v7, v6, [B

    :goto_3
    if-ge v4, v6, :cond_18

    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v9

    if-lt v9, v11, :cond_17

    invoke-virtual {v1, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v9

    add-int/lit8 v10, v8, 0x1

    invoke-static {v9, v8}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    move v8, v10

    goto :goto_3

    :cond_17
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_18
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v6, "ISO8859_1"

    invoke-direct {v4, v7, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_14

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Platform does not support required encoding: "

    invoke-static {v2, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_1a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_1b
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    const/16 v7, 0x10

    if-gt v6, v7, :cond_1c

    goto/16 :goto_14

    :cond_1c
    move v6, v4

    :goto_4
    if-ge v6, v8, :cond_1f

    invoke-virtual {v1, v12}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    const/16 v9, 0x1f

    if-ne v7, v9, :cond_1d

    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->getBitOffset()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x8

    if-eq v4, v11, :cond_4f

    invoke-virtual {v1, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    goto/16 :goto_14

    :cond_1d
    and-int/lit8 v9, v7, 0x20

    if-nez v9, :cond_1e

    or-int/lit8 v7, v7, 0x40

    :cond_1e
    int-to-char v7, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_1f
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_1b

    goto/16 :goto_14

    :cond_20
    new-array v7, v13, [I

    :cond_21
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v8

    if-ne v8, v11, :cond_22

    goto/16 :goto_14

    :cond_22
    invoke-virtual {v1, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v8

    if-ne v8, v10, :cond_23

    goto/16 :goto_14

    :cond_23
    invoke-virtual {v1, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v9

    invoke-static {v8, v9, v7}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    move v8, v4

    :goto_5
    if-ge v8, v13, :cond_2a

    aget v9, v7, v8

    if-nez v9, :cond_24

    const/16 v9, 0xd

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_24
    if-ne v9, v6, :cond_25

    const/16 v9, 0x2a

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_25
    if-ne v9, v14, :cond_26

    const/16 v9, 0x3e

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_26
    if-ne v9, v13, :cond_27

    const/16 v9, 0x20

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_27
    const/16 v12, 0xe

    if-ge v9, v12, :cond_28

    add-int/lit8 v9, v9, 0x2c

    int-to-char v9, v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_28
    const/16 v12, 0x28

    if-ge v9, v12, :cond_29

    add-int/lit8 v9, v9, 0x33

    int-to-char v9, v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_29
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_2a
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v8

    if-gtz v8, :cond_21

    goto/16 :goto_14

    :cond_2b
    new-array v7, v13, [I

    move v15, v8

    move v8, v4

    :goto_7
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v9

    if-ne v9, v11, :cond_2c

    goto/16 :goto_14

    :cond_2c
    invoke-virtual {v1, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v9

    if-ne v9, v10, :cond_2d

    goto/16 :goto_14

    :cond_2d
    invoke-virtual {v1, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    invoke-static {v9, v10, v7}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v13, :cond_3c

    aget v10, v7, v9

    if-eqz v4, :cond_38

    if-eq v4, v6, :cond_36

    if-eq v4, v14, :cond_31

    if-ne v4, v13, :cond_30

    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    array-length v11, v4

    if-ge v10, v11, :cond_2f

    aget-char v4, v4, v10

    if-eqz v8, :cond_2e

    add-int/lit16 v4, v4, 0x80

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_2e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_2f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_30
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_31
    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v11, v4

    if-ge v10, v11, :cond_33

    aget-char v4, v4, v10

    if-eqz v8, :cond_32

    add-int/lit16 v4, v4, 0x80

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_9
    const/16 v11, 0x1d

    goto :goto_b

    :cond_32
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_a
    const/16 v11, 0x1d

    goto :goto_c

    :cond_33
    if-ne v10, v12, :cond_34

    const/16 v11, 0x1d

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_34
    const/16 v11, 0x1d

    if-ne v10, v15, :cond_35

    move v8, v6

    goto :goto_c

    :cond_35
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_36
    const/16 v11, 0x1d

    if-eqz v8, :cond_37

    add-int/lit16 v10, v10, 0x80

    int-to-char v4, v10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b
    const/4 v4, 0x0

    move v8, v4

    goto :goto_c

    :cond_37
    int-to-char v4, v10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_c
    const/4 v4, 0x0

    goto :goto_d

    :cond_38
    const/16 v11, 0x1d

    if-ge v10, v13, :cond_39

    add-int/lit8 v4, v10, 0x1

    goto :goto_d

    :cond_39
    sget-object v14, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    array-length v15, v14

    if-ge v10, v15, :cond_3b

    aget-char v10, v14, v10

    if-eqz v8, :cond_3a

    add-int/lit16 v10, v10, 0x80

    int-to-char v8, v10

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    goto :goto_d

    :cond_3a
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_d
    add-int/lit8 v9, v9, 0x1

    const/16 v15, 0x1e

    const/4 v14, 0x2

    goto/16 :goto_8

    :cond_3b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_3c
    const/16 v11, 0x1d

    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v9

    if-gtz v9, :cond_3d

    goto/16 :goto_14

    :cond_3d
    const/16 v15, 0x1e

    const/16 v10, 0xfe

    const/16 v9, 0x8

    const/4 v14, 0x2

    move v11, v9

    goto/16 :goto_7

    :cond_3e
    move v11, v9

    new-array v4, v13, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_e
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_3f

    goto/16 :goto_14

    :cond_3f
    invoke-virtual {v1, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v9

    const/16 v14, 0xfe

    if-ne v9, v14, :cond_40

    goto/16 :goto_14

    :cond_40
    invoke-virtual {v1, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    invoke-static {v9, v10, v4}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v13, :cond_4e

    aget v10, v4, v9

    if-eqz v8, :cond_4a

    if-eq v8, v6, :cond_48

    const/4 v6, 0x2

    if-eq v8, v6, :cond_43

    if-ne v8, v13, :cond_42

    if-eqz v7, :cond_41

    add-int/lit16 v10, v10, 0xe0

    int-to-char v6, v10

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_41
    add-int/lit8 v10, v10, 0x60

    int-to-char v6, v10

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_42
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_43
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v8, v6

    if-ge v10, v8, :cond_45

    aget-char v6, v6, v10

    if-eqz v7, :cond_44

    add-int/lit16 v6, v6, 0x80

    int-to-char v6, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_44
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_45
    if-ne v10, v12, :cond_46

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_46
    const/16 v6, 0x1e

    if-ne v10, v6, :cond_47

    const/4 v6, 0x1

    goto :goto_11

    :cond_47
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_48
    if-eqz v7, :cond_49

    add-int/lit16 v10, v10, 0x80

    int-to-char v6, v10

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_10
    const/4 v6, 0x0

    :goto_11
    move v7, v6

    goto :goto_12

    :cond_49
    int-to-char v6, v10

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_12
    const/4 v8, 0x0

    goto :goto_13

    :cond_4a
    if-ge v10, v13, :cond_4b

    add-int/lit8 v8, v10, 0x1

    goto :goto_13

    :cond_4b
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    array-length v11, v6

    if-ge v10, v11, :cond_4d

    aget-char v6, v6, v10

    if-eqz v7, :cond_4c

    add-int/lit16 v6, v6, 0x80

    int-to-char v6, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    goto :goto_13

    :cond_4c
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_13
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x1

    const/16 v11, 0x1d

    goto :goto_f

    :cond_4d
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_4e
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_54

    :cond_4f
    :goto_14
    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    :goto_15
    move-object v7, v4

    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-eq v7, v4, :cond_51

    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-gtz v4, :cond_50

    goto :goto_16

    :cond_50
    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_51
    :goto_16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_52

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_52
    new-instance v1, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_53

    move-object v5, v4

    :cond_53
    invoke-direct {v1, v0, v2, v5, v4}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    :cond_54
    const/4 v6, 0x1

    const/16 v11, 0x1d

    goto/16 :goto_e
.end method

.method private static parseTwoBytes(II[I)V
    .locals 2

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, p1

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    div-int/lit16 v0, p0, 0x640

    const/4 v1, 0x0

    aput v0, p2, v1

    mul-int/lit16 v0, v0, 0x640

    sub-int/2addr p0, v0

    div-int/lit8 v0, p0, 0x28

    aput v0, p2, p1

    mul-int/lit8 v0, v0, 0x28

    sub-int/2addr p0, v0

    const/4 p1, 0x2

    aput p0, p2, p1

    return-void
.end method

.method private static unrandomize255State(II)I
    .locals 0

    mul-int/lit16 p1, p1, 0x95

    rem-int/lit16 p1, p1, 0xff

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit16 p0, p0, 0x100

    :goto_0
    return p0
.end method
