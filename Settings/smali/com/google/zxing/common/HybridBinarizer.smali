.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Lcom/google/zxing/Binarizer;
.source "HybridBinarizer.java"


# static fields
.field private static final EMPTY:[B


# instance fields
.field private final buckets:[I

.field private luminances:[B

.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/zxing/common/HybridBinarizer;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/Binarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    sget-object p1, Lcom/google/zxing/common/HybridBinarizer;->EMPTY:[B

    iput-object p1, p0, Lcom/google/zxing/common/HybridBinarizer;->luminances:[B

    const/16 p1, 0x20

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/zxing/common/HybridBinarizer;->buckets:[I

    return-void
.end method

.method private static cap(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private static estimateBlackPoint([I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v2, v0, :cond_2

    aget v6, p0, v2

    if-le v6, v3, :cond_0

    aget v3, p0, v2

    move v5, v2

    :cond_0
    aget v6, p0, v2

    if-le v6, v4, :cond_1

    aget v4, p0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    move v3, v2

    :goto_1
    if-ge v1, v0, :cond_4

    sub-int v6, v1, v5

    aget v7, p0, v1

    mul-int/2addr v7, v6

    mul-int/2addr v7, v6

    if-le v7, v3, :cond_3

    move v2, v1

    move v3, v7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-le v5, v2, :cond_5

    move v8, v5

    move v5, v2

    move v2, v8

    :cond_5
    sub-int v1, v2, v5

    shr-int/lit8 v0, v0, 0x4

    if-le v1, v0, :cond_8

    add-int/lit8 v0, v2, -0x1

    const/4 v1, -0x1

    move v3, v1

    move v1, v0

    :goto_2
    if-le v0, v5, :cond_7

    sub-int v6, v0, v5

    mul-int/2addr v6, v6

    sub-int v7, v2, v0

    mul-int/2addr v7, v6

    aget v6, p0, v0

    sub-int v6, v4, v6

    mul-int/2addr v6, v7

    if-le v6, v3, :cond_6

    move v1, v0

    move v3, v6

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    shl-int/lit8 p0, v1, 0x3

    return p0

    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private initArrays(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->luminances:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/zxing/common/HybridBinarizer;->luminances:[B

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/zxing/common/HybridBinarizer;->buckets:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v3

    const/16 v4, 0x28

    const/16 v5, 0xff

    if-lt v2, v4, :cond_16

    if-lt v3, v4, :cond_16

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v1

    shr-int/lit8 v4, v2, 0x3

    and-int/lit8 v8, v2, 0x7

    if-eqz v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    shr-int/lit8 v8, v3, 0x3

    and-int/lit8 v9, v3, 0x7

    if-eqz v9, :cond_2

    add-int/lit8 v8, v8, 0x1

    :cond_2
    filled-new-array {v8, v4}, [I

    move-result-object v9

    const-class v10, I

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x8

    if-ge v10, v8, :cond_d

    shl-int/lit8 v13, v10, 0x3

    add-int/lit8 v14, v3, -0x8

    if-le v13, v14, :cond_3

    move v13, v14

    :cond_3
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v4, :cond_c

    shl-int/lit8 v15, v14, 0x3

    add-int/lit8 v6, v2, -0x8

    if-le v15, v6, :cond_4

    move v15, v6

    :cond_4
    mul-int v6, v13, v2

    add-int/2addr v6, v15

    move v12, v5

    move/from16 v18, v6

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_2
    if-ge v6, v11, :cond_a

    move v7, v12

    const/4 v12, 0x0

    move/from16 v22, v16

    move/from16 v16, v15

    move/from16 v15, v22

    :goto_3
    if-ge v12, v11, :cond_7

    add-int v21, v18, v12

    aget-byte v11, v1, v21

    and-int/2addr v11, v5

    add-int v16, v16, v11

    if-ge v11, v7, :cond_5

    move v7, v11

    :cond_5
    if-le v11, v15, :cond_6

    move v15, v11

    :cond_6
    add-int/lit8 v12, v12, 0x1

    const/16 v11, 0x8

    goto :goto_3

    :cond_7
    sub-int v11, v15, v7

    const/16 v12, 0x18

    if-le v11, v12, :cond_9

    :cond_8
    const/4 v11, 0x1

    add-int/2addr v6, v11

    add-int v18, v18, v2

    const/16 v11, 0x8

    if-ge v6, v11, :cond_9

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v11, :cond_8

    add-int v11, v18, v12

    aget-byte v11, v1, v11

    and-int/2addr v11, v5

    add-int v16, v16, v11

    add-int/lit8 v12, v12, 0x1

    const/16 v11, 0x8

    goto :goto_4

    :cond_9
    const/4 v11, 0x1

    add-int/2addr v6, v11

    add-int v18, v18, v2

    move v12, v7

    const/16 v11, 0x8

    move/from16 v22, v16

    move/from16 v16, v15

    move/from16 v15, v22

    goto :goto_2

    :cond_a
    shr-int/lit8 v6, v15, 0x6

    sub-int v7, v16, v12

    const/16 v11, 0x18

    if-gt v7, v11, :cond_b

    shr-int/lit8 v6, v12, 0x1

    if-lez v10, :cond_b

    if-lez v14, :cond_b

    add-int/lit8 v7, v10, -0x1

    aget-object v11, v9, v7

    aget v11, v11, v14

    aget-object v15, v9, v10

    add-int/lit8 v16, v14, -0x1

    aget v15, v15, v16

    const/16 v17, 0x2

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v11

    aget-object v7, v9, v7

    aget v7, v7, v16

    add-int/2addr v15, v7

    shr-int/lit8 v7, v15, 0x2

    if-ge v12, v7, :cond_b

    move v6, v7

    :cond_b
    aget-object v7, v9, v10

    aput v6, v7, v14

    add-int/lit8 v14, v14, 0x1

    const/16 v11, 0x8

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_d
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v8, :cond_15

    shl-int/lit8 v10, v7, 0x3

    add-int/lit8 v11, v3, -0x8

    if-le v10, v11, :cond_e

    move v10, v11

    :cond_e
    const/4 v11, 0x0

    :goto_6
    if-ge v11, v4, :cond_14

    shl-int/lit8 v12, v11, 0x3

    add-int/lit8 v13, v2, -0x8

    if-le v12, v13, :cond_f

    move v12, v13

    :cond_f
    add-int/lit8 v13, v4, -0x3

    const/4 v14, 0x2

    invoke-static {v11, v14, v13}, Lcom/google/zxing/common/HybridBinarizer;->cap(III)I

    move-result v13

    add-int/lit8 v15, v8, -0x3

    invoke-static {v7, v14, v15}, Lcom/google/zxing/common/HybridBinarizer;->cap(III)I

    move-result v15

    const/16 v16, -0x2

    move/from16 v5, v16

    const/16 v16, 0x0

    :goto_7
    if-gt v5, v14, :cond_10

    add-int v14, v15, v5

    aget-object v14, v9, v14

    add-int/lit8 v19, v13, -0x2

    aget v19, v14, v19

    add-int/lit8 v20, v13, -0x1

    aget v20, v14, v20

    add-int v19, v19, v20

    aget v20, v14, v13

    add-int v19, v19, v20

    add-int/lit8 v20, v13, 0x1

    aget v20, v14, v20

    add-int v19, v19, v20

    const/16 v17, 0x2

    add-int/lit8 v20, v13, 0x2

    aget v14, v14, v20

    add-int v19, v19, v14

    add-int v16, v19, v16

    add-int/lit8 v5, v5, 0x1

    move/from16 v14, v17

    goto :goto_7

    :cond_10
    move/from16 v17, v14

    div-int/lit8 v5, v16, 0x19

    mul-int v13, v10, v2

    add-int/2addr v13, v12

    move v14, v13

    const/4 v13, 0x0

    :goto_8
    const/16 v15, 0x8

    if-ge v13, v15, :cond_13

    move/from16 v16, v3

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v15, :cond_12

    add-int v19, v14, v3

    aget-byte v15, v1, v19

    move-object/from16 v20, v1

    const/16 v1, 0xff

    and-int/2addr v15, v1

    if-gt v15, v5, :cond_11

    add-int v1, v12, v3

    add-int v15, v10, v13

    invoke-virtual {v6, v1, v15}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_11
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v20

    const/16 v15, 0x8

    goto :goto_9

    :cond_12
    move-object/from16 v20, v1

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v14, v2

    move/from16 v3, v16

    goto :goto_8

    :cond_13
    move-object/from16 v20, v1

    move/from16 v16, v3

    add-int/lit8 v11, v11, 0x1

    const/16 v5, 0xff

    goto/16 :goto_6

    :cond_14
    move-object/from16 v20, v1

    move/from16 v16, v3

    const/16 v17, 0x2

    add-int/lit8 v7, v7, 0x1

    const/16 v5, 0xff

    goto/16 :goto_5

    :cond_15
    iput-object v6, v0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    goto :goto_e

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v3

    new-instance v4, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v4, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    invoke-direct {v0, v2}, Lcom/google/zxing/common/HybridBinarizer;->initArrays(I)V

    iget-object v5, v0, Lcom/google/zxing/common/HybridBinarizer;->buckets:[I

    const/4 v6, 0x1

    :goto_a
    const/4 v7, 0x5

    if-ge v6, v7, :cond_18

    mul-int v8, v3, v6

    div-int/2addr v8, v7

    iget-object v9, v0, Lcom/google/zxing/common/HybridBinarizer;->luminances:[B

    invoke-virtual {v1, v8, v9}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v8

    shl-int/lit8 v9, v2, 0x2

    div-int/2addr v9, v7

    div-int/lit8 v7, v2, 0x5

    :goto_b
    if-ge v7, v9, :cond_17

    aget-byte v10, v8, v7

    const/16 v11, 0xff

    and-int/2addr v10, v11

    shr-int/lit8 v10, v10, 0x3

    aget v11, v5, v10

    const/4 v12, 0x1

    add-int/2addr v11, v12

    aput v11, v5, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_17
    const/4 v12, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_18
    invoke-static {v5}, Lcom/google/zxing/common/HybridBinarizer;->estimateBlackPoint([I)I

    move-result v5

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v1

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v3, :cond_1b

    mul-int v7, v6, v2

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v2, :cond_1a

    add-int v9, v7, v8

    aget-byte v9, v1, v9

    const/16 v10, 0xff

    and-int/2addr v9, v10

    if-ge v9, v5, :cond_19

    invoke-virtual {v4, v8, v6}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_19
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_1a
    const/16 v10, 0xff

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_1b
    iput-object v4, v0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    :goto_e
    iget-object v0, v0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method public getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 8

    invoke-virtual {p0}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p2, Lcom/google/zxing/common/BitArray;

    invoke-direct {p2, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/zxing/common/HybridBinarizer;->initArrays(I)V

    iget-object v2, p0, Lcom/google/zxing/common/HybridBinarizer;->luminances:[B

    invoke-virtual {v0, p1, v2}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object p1

    iget-object p0, p0, Lcom/google/zxing/common/HybridBinarizer;->buckets:[I

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    const/4 v3, 0x1

    if-ge v2, v1, :cond_2

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x3

    aget v5, p0, v4

    add-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/google/zxing/common/HybridBinarizer;->estimateBlackPoint([I)I

    move-result p0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    move v4, v0

    move v0, v3

    :goto_3
    add-int/lit8 v5, v1, -0x1

    if-ge v0, v5, :cond_4

    add-int/lit8 v5, v0, 0x1

    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v7, v2, 0x2

    sub-int/2addr v7, v4

    sub-int/2addr v7, v6

    shr-int/lit8 v4, v7, 0x1

    if-ge v4, p0, :cond_3

    invoke-virtual {p2, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_3
    move v4, v2

    move v0, v5

    move v2, v6

    goto :goto_3

    :cond_4
    return-object p2
.end method
