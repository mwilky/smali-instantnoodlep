.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final MIXED_CHARS:[C

.field private static final PUNCT_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v0, 0x384

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v1, 0x2

    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x7ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    nop

    :array_1
    .array-data 2
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
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private static byteCompaction(I[IILjava/lang/StringBuilder;)I
    .locals 24

    move/from16 v0, p0

    move-object/from16 v1, p3

    const/16 v3, 0x39a

    const/16 v4, 0x39b

    const/16 v5, 0x3a0

    const/16 v6, 0x386

    const-wide/16 v7, 0x384

    const/16 v11, 0x39c

    const/16 v12, 0x385

    const/16 v13, 0x384

    const/4 v14, 0x6

    const/16 v16, 0x0

    if-ne v0, v12, :cond_7

    new-array v0, v14, [C

    new-array v9, v14, [I

    add-int/lit8 v10, p2, 0x1

    aget v19, p1, p2

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v15, v19

    const-wide/16 v20, 0x0

    :goto_0
    aget v2, p1, v16

    if-ge v10, v2, :cond_4

    if-nez v17, :cond_4

    add-int/lit8 v2, v18, 0x1

    aput v15, v9, v18

    mul-long v20, v20, v7

    int-to-long v7, v15

    add-long v20, v20, v7

    add-int/lit8 v7, v10, 0x1

    aget v15, p1, v10

    if-eq v15, v13, :cond_3

    if-eq v15, v12, :cond_3

    if-eq v15, v6, :cond_3

    if-eq v15, v11, :cond_3

    if-eq v15, v5, :cond_3

    if-eq v15, v4, :cond_3

    if-ne v15, v3, :cond_0

    goto :goto_3

    :cond_0
    rem-int/lit8 v8, v2, 0x5

    if-nez v8, :cond_2

    if-lez v2, :cond_2

    move/from16 v2, v16

    :goto_1
    if-ge v2, v14, :cond_1

    rsub-int/lit8 v8, v2, 0x5

    const-wide/16 v22, 0x100

    move/from16 p0, v15

    rem-long v14, v20, v22

    long-to-int v10, v14

    int-to-char v10, v10

    aput-char v10, v0, v8

    const/16 v8, 0x8

    shr-long v20, v20, v8

    add-int/lit8 v2, v2, 0x1

    move/from16 v15, p0

    const/4 v14, 0x6

    goto :goto_1

    :cond_1
    move/from16 p0, v15

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move v10, v7

    move/from16 v18, v16

    goto :goto_2

    :cond_2
    move/from16 p0, v15

    move/from16 v15, p0

    move/from16 v18, v2

    move v10, v7

    :goto_2
    const-wide/16 v7, 0x384

    const/4 v14, 0x6

    goto :goto_0

    :cond_3
    :goto_3
    move/from16 p0, v15

    add-int/lit8 v10, v7, -0x1

    move/from16 v15, p0

    move/from16 v18, v2

    const-wide/16 v7, 0x384

    const/4 v14, 0x6

    const/16 v17, 0x1

    goto :goto_0

    :cond_4
    aget v0, p1, v16

    if-ne v10, v0, :cond_5

    if-ge v15, v13, :cond_5

    add-int/lit8 v0, v18, 0x1

    aput v15, v9, v18

    goto :goto_4

    :cond_5
    move/from16 v0, v18

    :goto_4
    move/from16 v2, v16

    :goto_5
    if-ge v2, v0, :cond_6

    aget v3, v9, v2

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    move v0, v10

    goto/16 :goto_a

    :cond_7
    if-ne v0, v11, :cond_d

    move/from16 v0, p2

    move/from16 v2, v16

    move v15, v2

    const-wide/16 v17, 0x0

    :goto_6
    aget v7, p1, v16

    if-ge v0, v7, :cond_e

    if-nez v15, :cond_e

    add-int/lit8 v7, v0, 0x1

    aget v0, p1, v0

    if-ge v0, v13, :cond_9

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v8, 0x384

    mul-long v17, v17, v8

    int-to-long v8, v0

    add-long v17, v17, v8

    :cond_8
    move v0, v7

    goto :goto_7

    :cond_9
    if-eq v0, v13, :cond_a

    if-eq v0, v12, :cond_a

    if-eq v0, v6, :cond_a

    if-eq v0, v11, :cond_a

    if-eq v0, v5, :cond_a

    if-eq v0, v4, :cond_a

    if-ne v0, v3, :cond_8

    :cond_a
    add-int/lit8 v7, v7, -0x1

    move v0, v7

    const/4 v15, 0x1

    :goto_7
    rem-int/lit8 v7, v2, 0x5

    if-nez v7, :cond_c

    if-lez v2, :cond_c

    const/4 v7, 0x6

    new-array v2, v7, [C

    move/from16 v8, v16

    :goto_8
    if-ge v8, v7, :cond_b

    rsub-int/lit8 v9, v8, 0x5

    const-wide/16 v20, 0xff

    and-long v3, v17, v20

    long-to-int v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v9

    const/16 v3, 0x8

    shr-long v17, v17, v3

    add-int/lit8 v8, v8, 0x1

    const/16 v3, 0x39a

    const/16 v4, 0x39b

    goto :goto_8

    :cond_b
    const/16 v3, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move/from16 v2, v16

    goto :goto_9

    :cond_c
    const/16 v3, 0x8

    const/4 v7, 0x6

    :goto_9
    const/16 v3, 0x39a

    const/16 v4, 0x39b

    goto :goto_6

    :cond_d
    move/from16 v0, p2

    :cond_e
    :goto_a
    return v0
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x1

    aget v4, v0, v2

    new-instance v5, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    move v6, v4

    move v4, v3

    :goto_0
    const/4 v7, 0x0

    aget v8, v0, v7

    if-ge v4, v8, :cond_11

    const/16 v8, 0x391

    if-eq v6, v8, :cond_e

    const/16 v8, 0x39a

    const/16 v9, 0x39b

    const/16 v10, 0x384

    const/16 v11, 0x3a0

    if-eq v6, v11, :cond_6

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4, v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v4

    goto/16 :goto_6

    :pswitch_0
    invoke-static {v6, v0, v4, v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    move-result v4

    goto/16 :goto_6

    :pswitch_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_2
    const/16 v6, 0xf

    new-array v6, v6, [I

    move v12, v7

    move v13, v12

    :goto_1
    aget v14, v0, v7

    if-ge v4, v14, :cond_f

    if-nez v12, :cond_f

    add-int/lit8 v14, v4, 0x1

    aget v4, v0, v4

    aget v15, v0, v7

    if-ne v14, v15, :cond_0

    move v12, v2

    :cond_0
    if-ge v4, v10, :cond_1

    aput v4, v6, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_1
    if-eq v4, v10, :cond_2

    const/16 v15, 0x385

    if-eq v4, v15, :cond_2

    const/16 v15, 0x39c

    if-eq v4, v15, :cond_2

    if-eq v4, v11, :cond_2

    if-eq v4, v9, :cond_2

    if-ne v4, v8, :cond_3

    :cond_2
    add-int/lit8 v14, v14, -0x1

    move v12, v2

    :cond_3
    :goto_2
    rem-int/lit8 v15, v13, 0xf

    if-eqz v15, :cond_4

    const/16 v15, 0x386

    if-eq v4, v15, :cond_4

    if-eqz v12, :cond_5

    :cond_4
    invoke-static {v6, v13}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v13, v7

    :cond_5
    move v4, v14

    goto :goto_1

    :pswitch_3
    invoke-static {v6, v0, v4, v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    move-result v4

    goto/16 :goto_6

    :pswitch_4
    invoke-static {v0, v4, v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v4

    goto/16 :goto_6

    :cond_6
    add-int/lit8 v6, v4, 0x2

    aget v11, v0, v7

    if-gt v6, v11, :cond_d

    new-array v6, v3, [I

    move v11, v4

    move v4, v7

    :goto_3
    if-ge v4, v3, :cond_7

    aget v12, v0, v11

    aput v12, v6, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    invoke-static {v6, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v11, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    aget v4, v0, v6

    if-ne v4, v9, :cond_b

    add-int/lit8 v6, v6, 0x1

    aget v4, v0, v7

    sub-int/2addr v4, v6

    new-array v4, v4, [I

    move v9, v7

    move v11, v9

    :goto_4
    aget v12, v0, v7

    if-ge v6, v12, :cond_a

    if-nez v9, :cond_a

    add-int/lit8 v12, v6, 0x1

    aget v6, v0, v6

    if-ge v6, v10, :cond_8

    add-int/lit8 v13, v11, 0x1

    aput v6, v4, v11

    move v6, v12

    move v11, v13

    goto :goto_4

    :cond_8
    if-ne v6, v8, :cond_9

    invoke-virtual {v5, v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 v6, v12, 0x1

    move v9, v2

    goto :goto_4

    :cond_9
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_a
    invoke-static {v4, v11}, Ljava/util/Arrays;->copyOf([II)[I

    goto :goto_5

    :cond_b
    aget v4, v0, v6

    if-ne v4, v8, :cond_c

    invoke-virtual {v5, v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 v6, v6, 0x1

    :cond_c
    :goto_5
    move v4, v6

    goto :goto_6

    :cond_d
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_e
    invoke-static {v6, v0, v4, v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    move-result v4

    :cond_f
    :goto_6
    array-length v6, v0

    if-ge v4, v6, :cond_10

    add-int/lit8 v6, v4, 0x1

    aget v4, v0, v4

    move/from16 v16, v6

    move v6, v4

    move/from16 v4, v16

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-direct {v0, v2, v1, v2, v3}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    return-object v0

    :cond_12
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v0, p1, :cond_0

    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p1, v0

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 17

    move-object/from16 v0, p2

    const/4 v1, 0x0

    aget v2, p0, v1

    sub-int v2, v2, p1

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [I

    aget v4, p0, v1

    sub-int v4, v4, p1

    shl-int/2addr v4, v3

    new-array v4, v4, [I

    move/from16 v5, p1

    move v6, v1

    move v7, v6

    :goto_0
    aget v8, p0, v1

    const/16 v9, 0x384

    const/16 v10, 0x391

    if-ge v5, v8, :cond_3

    if-nez v6, :cond_3

    add-int/lit8 v8, v5, 0x1

    aget v5, p0, v5

    if-ge v5, v9, :cond_0

    div-int/lit8 v9, v5, 0x1e

    aput v9, v2, v7

    add-int/lit8 v9, v7, 0x1

    rem-int/lit8 v5, v5, 0x1e

    aput v5, v2, v9

    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    :cond_0
    if-eq v5, v10, :cond_2

    const/16 v10, 0x3a0

    if-eq v5, v10, :cond_1

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    :goto_1
    move v5, v8

    goto :goto_0

    :cond_1
    :pswitch_0
    add-int/lit8 v8, v8, -0x1

    move v6, v3

    goto :goto_1

    :pswitch_1
    add-int/lit8 v5, v7, 0x1

    aput v9, v2, v7

    move v7, v5

    goto :goto_1

    :cond_2
    aput v10, v2, v7

    add-int/lit8 v5, v8, 0x1

    aget v8, p0, v8

    aput v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v8, v6

    move-object v11, v8

    move v6, v1

    :goto_2
    if-ge v6, v7, :cond_28

    aget v12, v2, v6

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    const/16 v15, 0x1b

    const/16 v16, 0x20

    const/16 v1, 0x1d

    const/16 v14, 0x1a

    if-eqz v13, :cond_1f

    if-eq v13, v3, :cond_18

    const/4 v3, 0x2

    if-eq v13, v3, :cond_10

    const/4 v3, 0x3

    if-eq v13, v3, :cond_c

    const/4 v3, 0x4

    if-eq v13, v3, :cond_8

    const/4 v3, 0x5

    if-eq v13, v3, :cond_4

    goto/16 :goto_8

    :cond_4
    if-ge v12, v1, :cond_5

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v1, v1, v12

    goto :goto_4

    :cond_5
    if-ne v12, v1, :cond_6

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_8

    :cond_6
    if-ne v12, v10, :cond_7

    aget v1, v4, v6

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    if-ne v12, v9, :cond_b

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_8

    :cond_8
    if-ge v12, v14, :cond_9

    add-int/lit8 v12, v12, 0x41

    int-to-char v1, v12

    goto :goto_4

    :cond_9
    if-ne v12, v14, :cond_a

    move-object v8, v11

    goto/16 :goto_6

    :cond_a
    if-ne v12, v9, :cond_b

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_8

    :cond_b
    :goto_3
    const/4 v1, 0x0

    :goto_4
    move-object v8, v11

    goto/16 :goto_9

    :cond_c
    if-ge v12, v1, :cond_d

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v1, v1, v12

    goto/16 :goto_9

    :cond_d
    if-ne v12, v1, :cond_e

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_8

    :cond_e
    if-ne v12, v10, :cond_f

    aget v1, v4, v6

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_f
    if-ne v12, v9, :cond_26

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_8

    :cond_10
    const/16 v3, 0x19

    if-ge v12, v3, :cond_11

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v1, v1, v12

    goto/16 :goto_9

    :cond_11
    if-ne v12, v3, :cond_12

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_8

    :cond_12
    if-ne v12, v14, :cond_13

    goto :goto_6

    :cond_13
    if-ne v12, v15, :cond_14

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_8

    :cond_14
    const/16 v3, 0x1c

    if-ne v12, v3, :cond_15

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_8

    :cond_15
    if-ne v12, v1, :cond_16

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_7

    :cond_16
    if-ne v12, v10, :cond_17

    aget v1, v4, v6

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_17
    if-ne v12, v9, :cond_26

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_8

    :cond_18
    if-ge v12, v14, :cond_19

    add-int/lit8 v12, v12, 0x61

    goto :goto_5

    :cond_19
    if-ne v12, v14, :cond_1a

    goto :goto_6

    :cond_1a
    if-ne v12, v15, :cond_1b

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_7

    :cond_1b
    const/16 v3, 0x1c

    if-ne v12, v3, :cond_1c

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_8

    :cond_1c
    if-ne v12, v1, :cond_1d

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_7

    :cond_1d
    if-ne v12, v10, :cond_1e

    aget v1, v4, v6

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1e
    if-ne v12, v9, :cond_26

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_8

    :cond_1f
    if-ge v12, v14, :cond_20

    add-int/lit8 v12, v12, 0x41

    :goto_5
    int-to-char v1, v12

    goto :goto_9

    :cond_20
    if-ne v12, v14, :cond_21

    :goto_6
    move/from16 v1, v16

    goto :goto_9

    :cond_21
    if-ne v12, v15, :cond_22

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_8

    :cond_22
    const/16 v3, 0x1c

    if-ne v12, v3, :cond_23

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_8

    :cond_23
    if-ne v12, v1, :cond_24

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_7
    move-object v11, v8

    move-object v8, v1

    goto :goto_8

    :cond_24
    if-ne v12, v10, :cond_25

    aget v1, v4, v6

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_25
    if-ne v12, v9, :cond_26

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :cond_26
    :goto_8
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_27
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_28
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
