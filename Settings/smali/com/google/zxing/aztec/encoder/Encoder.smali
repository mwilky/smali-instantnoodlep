.class public final Lcom/google/zxing/aztec/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final WORD_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private static drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    sub-int v1, p1, v0

    move v2, v1

    :goto_1
    add-int v3, p1, v0

    if-gt v2, v3, :cond_0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    sub-int v0, p1, p2

    invoke-virtual {p0, v0, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 p2, p1, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    return-void
.end method

.method public static encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 20

    new-instance v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->encode()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    mul-int v1, v1, p1

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0xb

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    add-int/2addr v3, v1

    const/16 v6, 0x20

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz p2, :cond_7

    if-gez p2, :cond_0

    move v3, v9

    goto :goto_0

    :cond_0
    move v3, v8

    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-eqz v3, :cond_1

    move v6, v7

    :cond_1
    if-gt v10, v6, :cond_6

    if-eqz v3, :cond_2

    const/16 v4, 0x58

    goto :goto_1

    :cond_2
    const/16 v4, 0x70

    :goto_1
    mul-int/lit8 v5, v10, 0x10

    add-int/2addr v5, v4

    mul-int/2addr v5, v10

    sget-object v4, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v4, v4, v10

    rem-int v6, v5, v4

    sub-int v6, v5, v6

    invoke-static {v0, v4}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v11

    add-int/2addr v11, v1

    const-string v1, "Data to large for user specified layer"

    if-gt v11, v6, :cond_5

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    mul-int/lit8 v11, v4, 0x40

    if-gt v6, v11, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    move v13, v3

    move v15, v5

    move v14, v10

    goto/16 :goto_8

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "Illegal value %s for layers"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v10, 0x0

    move v11, v8

    move-object v12, v10

    move v10, v11

    :goto_3
    if-gt v10, v6, :cond_29

    const/4 v13, 0x3

    if-gt v10, v13, :cond_8

    move v13, v9

    goto :goto_4

    :cond_8
    move v13, v8

    :goto_4
    if-eqz v13, :cond_9

    add-int/lit8 v14, v10, 0x1

    goto :goto_5

    :cond_9
    move v14, v10

    :goto_5
    if-eqz v13, :cond_a

    const/16 v15, 0x58

    goto :goto_6

    :cond_a
    const/16 v15, 0x70

    :goto_6
    mul-int/lit8 v16, v14, 0x10

    add-int v16, v16, v15

    mul-int v15, v16, v14

    if-le v3, v15, :cond_b

    move v5, v9

    goto/16 :goto_18

    :cond_b
    sget-object v16, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v4, v16, v14

    if-eq v11, v4, :cond_c

    aget v4, v16, v14

    invoke-static {v0, v4}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v11

    goto :goto_7

    :cond_c
    move v4, v11

    move-object v11, v12

    :goto_7
    rem-int v12, v15, v4

    sub-int v12, v15, v12

    if-eqz v13, :cond_d

    invoke-virtual {v11}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    mul-int/lit8 v6, v4, 0x40

    if-le v5, v6, :cond_d

    goto/16 :goto_17

    :cond_d
    invoke-virtual {v11}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    add-int/2addr v5, v1

    if-gt v5, v12, :cond_28

    move-object v0, v11

    :goto_8
    invoke-static {v0, v15, v4}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    div-int/2addr v0, v4

    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eqz v13, :cond_e

    add-int/lit8 v6, v14, -0x1

    invoke-virtual {v3, v6, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v0, v0, -0x1

    const/4 v6, 0x6

    invoke-virtual {v3, v0, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v0, 0x1c

    invoke-static {v3, v0, v7}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    goto :goto_9

    :cond_e
    add-int/lit8 v6, v14, -0x1

    invoke-virtual {v3, v6, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v0, 0x28

    invoke-static {v3, v0, v7}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    :goto_9
    if-eqz v13, :cond_f

    mul-int/lit8 v3, v14, 0x4

    add-int/2addr v3, v2

    goto :goto_a

    :cond_f
    mul-int/lit8 v2, v14, 0x4

    add-int/lit8 v3, v2, 0xe

    :goto_a
    new-array v2, v3, [I

    if-eqz v13, :cond_11

    move v6, v8

    :goto_b
    array-length v10, v2

    if-ge v6, v10, :cond_10

    aput v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_10
    move v6, v3

    goto :goto_d

    :cond_11
    add-int/lit8 v6, v3, 0x1

    div-int/lit8 v10, v3, 0x2

    add-int/lit8 v11, v10, -0x1

    div-int/lit8 v11, v11, 0xf

    mul-int/2addr v11, v5

    add-int/2addr v6, v11

    div-int/lit8 v11, v6, 0x2

    move v12, v8

    :goto_c
    if-ge v12, v10, :cond_12

    div-int/lit8 v15, v12, 0xf

    add-int/2addr v15, v12

    sub-int v16, v10, v12

    add-int/lit8 v16, v16, -0x1

    sub-int v17, v11, v15

    add-int/lit8 v17, v17, -0x1

    aput v17, v2, v16

    add-int v16, v10, v12

    add-int/2addr v15, v11

    add-int/2addr v15, v9

    aput v15, v2, v16

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_12
    :goto_d
    new-instance v10, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v10, v6, v6}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move v11, v8

    move v12, v11

    :goto_e
    if-ge v11, v14, :cond_1a

    sub-int v15, v14, v11

    mul-int/2addr v15, v7

    if-eqz v13, :cond_13

    add-int/lit8 v15, v15, 0x9

    goto :goto_f

    :cond_13
    add-int/lit8 v15, v15, 0xc

    :goto_f
    move v7, v8

    :goto_10
    if-ge v7, v15, :cond_19

    mul-int/lit8 v16, v7, 0x2

    :goto_11
    if-ge v8, v5, :cond_18

    add-int v19, v12, v16

    add-int v9, v19, v8

    invoke-virtual {v1, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_14

    mul-int/lit8 v9, v11, 0x2

    add-int v19, v9, v8

    aget v5, v2, v19

    add-int/2addr v9, v7

    aget v9, v2, v9

    invoke-virtual {v10, v5, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_14
    mul-int/lit8 v5, v15, 0x2

    add-int/2addr v5, v12

    add-int v5, v5, v16

    add-int/2addr v5, v8

    invoke-virtual {v1, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_15

    mul-int/lit8 v5, v11, 0x2

    add-int v9, v5, v7

    aget v9, v2, v9

    add-int/lit8 v19, v3, -0x1

    sub-int v19, v19, v5

    sub-int v19, v19, v8

    aget v5, v2, v19

    invoke-virtual {v10, v9, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_15
    mul-int/lit8 v5, v15, 0x4

    add-int/2addr v5, v12

    add-int v5, v5, v16

    add-int/2addr v5, v8

    invoke-virtual {v1, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_16

    add-int/lit8 v5, v3, -0x1

    mul-int/lit8 v9, v11, 0x2

    sub-int/2addr v5, v9

    sub-int v9, v5, v8

    aget v9, v2, v9

    sub-int/2addr v5, v7

    aget v5, v2, v5

    invoke-virtual {v10, v9, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_16
    mul-int/lit8 v5, v15, 0x6

    add-int/2addr v5, v12

    add-int v5, v5, v16

    add-int/2addr v5, v8

    invoke-virtual {v1, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_17

    add-int/lit8 v5, v3, -0x1

    mul-int/lit8 v9, v11, 0x2

    sub-int/2addr v5, v9

    sub-int/2addr v5, v7

    aget v5, v2, v5

    add-int/2addr v9, v8

    aget v9, v2, v9

    invoke-virtual {v10, v5, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_17
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x2

    const/4 v9, 0x1

    goto :goto_11

    :cond_18
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_10

    :cond_19
    mul-int/lit8 v15, v15, 0x8

    add-int/2addr v12, v15

    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_e

    :cond_1a
    div-int/lit8 v1, v6, 0x2

    const/4 v2, 0x7

    const/4 v5, 0x0

    if-eqz v13, :cond_1f

    :goto_12
    if-ge v5, v2, :cond_24

    add-int/lit8 v7, v1, -0x3

    add-int/2addr v7, v5

    invoke-virtual {v0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1b

    add-int/lit8 v8, v1, -0x5

    invoke-virtual {v10, v7, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_1b
    add-int/lit8 v8, v5, 0x7

    invoke-virtual {v0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1c

    add-int/lit8 v8, v1, 0x5

    invoke-virtual {v10, v8, v7}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_1c
    rsub-int/lit8 v8, v5, 0x14

    invoke-virtual {v0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1d

    add-int/lit8 v8, v1, 0x5

    invoke-virtual {v10, v7, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_1d
    rsub-int/lit8 v8, v5, 0x1b

    invoke-virtual {v0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1e

    add-int/lit8 v8, v1, -0x5

    invoke-virtual {v10, v8, v7}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_1f
    :goto_13
    const/16 v7, 0xa

    if-ge v5, v7, :cond_24

    add-int/lit8 v7, v1, -0x5

    add-int/2addr v7, v5

    div-int/lit8 v8, v5, 0x5

    add-int/2addr v8, v7

    invoke-virtual {v0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_20

    add-int/lit8 v7, v1, -0x7

    invoke-virtual {v10, v8, v7}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_20
    add-int/lit8 v7, v5, 0xa

    invoke-virtual {v0, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_21

    add-int/lit8 v7, v1, 0x7

    invoke-virtual {v10, v7, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_21
    rsub-int/lit8 v7, v5, 0x1d

    invoke-virtual {v0, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_22

    add-int/lit8 v7, v1, 0x7

    invoke-virtual {v10, v8, v7}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_22
    rsub-int/lit8 v7, v5, 0x27

    invoke-virtual {v0, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_23

    add-int/lit8 v7, v1, -0x7

    invoke-virtual {v10, v7, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_24
    if-eqz v13, :cond_25

    invoke-static {v10, v1, v4}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    goto :goto_16

    :cond_25
    invoke-static {v10, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/16 v18, 0x0

    :goto_14
    div-int/lit8 v4, v3, 0x2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v0, v4, :cond_27

    and-int/lit8 v4, v1, 0x1

    :goto_15
    if-ge v4, v6, :cond_26

    sub-int v7, v1, v18

    invoke-virtual {v10, v7, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v8, v1, v18

    invoke-virtual {v10, v8, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    invoke-virtual {v10, v4, v7}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    invoke-virtual {v10, v4, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_15

    :cond_26
    add-int/lit8 v0, v0, 0xf

    add-int/lit8 v18, v18, 0x10

    goto :goto_14

    :cond_27
    :goto_16
    new-instance v0, Lcom/google/zxing/aztec/encoder/AztecCode;

    invoke-direct {v0}, Lcom/google/zxing/aztec/encoder/AztecCode;-><init>()V

    invoke-virtual {v0, v10}, Lcom/google/zxing/aztec/encoder/AztecCode;->setMatrix(Lcom/google/zxing/common/BitMatrix;)V

    return-object v0

    :cond_28
    :goto_17
    move v5, v9

    move-object v12, v11

    move v11, v4

    :goto_18
    add-int/lit8 v10, v10, 0x1

    move v9, v5

    const/16 v6, 0x20

    const/4 v7, 0x4

    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data too large for an Aztec code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;
    .locals 11

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    div-int/2addr v0, p2

    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    const/4 v2, 0x4

    if-eq p2, v2, :cond_4

    const/4 v2, 0x6

    if-eq p2, v2, :cond_3

    const/16 v2, 0x8

    if-eq p2, v2, :cond_2

    const/16 v2, 0xa

    if-eq p2, v2, :cond_1

    const/16 v2, 0xc

    if-eq p2, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    :goto_0
    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    div-int v2, p1, p2

    new-array v3, v2, [I

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    div-int/2addr v4, p2

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_7

    move v7, v5

    move v8, v7

    :goto_2
    if-ge v7, p2, :cond_6

    mul-int v9, v6, p2

    add-int/2addr v9, v7

    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_5

    sub-int v9, p2, v7

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    shl-int v9, v10, v9

    goto :goto_3

    :cond_5
    move v9, v5

    :goto_3
    or-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    aput v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    sub-int/2addr v2, v0

    invoke-virtual {v1, v3, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    rem-int/2addr p1, p2

    new-instance p0, Lcom/google/zxing/common/BitArray;

    invoke-direct {p0}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {p0, v5, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    array-length p1, v3

    :goto_4
    if-ge v5, p1, :cond_8

    aget v0, v3, v5

    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    return-object p0
.end method

.method static stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;
    .locals 9

    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x1

    shl-int v3, v2, p1

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_5

    move v6, v4

    move v7, v6

    :goto_1
    if-ge v6, p1, :cond_2

    add-int v8, v5, v6

    if-ge v8, v1, :cond_0

    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    add-int/lit8 v8, p1, -0x1

    sub-int/2addr v8, v6

    shl-int v8, v2, v8

    or-int/2addr v7, v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    and-int v6, v7, v3

    if-ne v6, v3, :cond_3

    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_3
    if-nez v6, :cond_4

    or-int/lit8 v6, v7, 0x1

    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v7, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    :goto_3
    add-int/2addr v5, p1

    goto :goto_0

    :cond_5
    return-object v0
.end method
