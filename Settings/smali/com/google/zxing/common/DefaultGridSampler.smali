.class public final Lcom/google/zxing/common/DefaultGridSampler;
.super Ljava/lang/Object;
.source "DefaultGridSampler.java"


# static fields
.field private static gridSampler:Lcom/google/zxing/common/DefaultGridSampler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/zxing/common/DefaultGridSampler;

    invoke-direct {v0}, Lcom/google/zxing/common/DefaultGridSampler;-><init>()V

    sput-object v0, Lcom/google/zxing/common/DefaultGridSampler;->gridSampler:Lcom/google/zxing/common/DefaultGridSampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/zxing/common/DefaultGridSampler;
    .locals 1

    sget-object v0, Lcom/google/zxing/common/DefaultGridSampler;->gridSampler:Lcom/google/zxing/common/DefaultGridSampler;

    return-object v0
.end method


# virtual methods
.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-static/range {p4 .. p19}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/zxing/common/DefaultGridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p3

    if-lez v0, :cond_10

    if-lez v1, :cond_10

    new-instance v2, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v3, 0x1

    shl-int/2addr v0, v3

    new-array v0, v0, [F

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_f

    array-length v6, v0

    int-to-float v7, v5

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    move v9, v4

    :goto_1
    if-ge v9, v6, :cond_0

    shr-int/lit8 v10, v9, 0x1

    int-to-float v10, v10

    add-float/2addr v10, v8

    aput v10, v0, v9

    add-int/lit8 v10, v9, 0x1

    aput v7, v0, v10

    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    :cond_0
    move-object/from16 v9, p4

    invoke-virtual {v9, v0}, Lcom/google/zxing/common/PerspectiveTransform;->transformPoints([F)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    move v11, v3

    move v10, v4

    :goto_2
    array-length v12, v0

    const/4 v13, 0x0

    const/4 v14, -0x1

    if-ge v10, v12, :cond_6

    if-eqz v11, :cond_6

    aget v11, v0, v10

    float-to-int v11, v11

    add-int/lit8 v12, v10, 0x1

    aget v15, v0, v12

    float-to-int v15, v15

    if-lt v11, v14, :cond_5

    if-gt v11, v7, :cond_5

    if-lt v15, v14, :cond_5

    if-gt v15, v8, :cond_5

    if-ne v11, v14, :cond_1

    aput v13, v0, v10

    goto :goto_3

    :cond_1
    if-ne v11, v7, :cond_2

    add-int/lit8 v11, v7, -0x1

    int-to-float v11, v11

    aput v11, v0, v10

    :goto_3
    move v11, v3

    goto :goto_4

    :cond_2
    move v11, v4

    :goto_4
    if-ne v15, v14, :cond_3

    aput v13, v0, v12

    goto :goto_5

    :cond_3
    if-ne v15, v8, :cond_4

    add-int/lit8 v11, v8, -0x1

    int-to-float v11, v11

    aput v11, v0, v12

    :goto_5
    move v11, v3

    :cond_4
    add-int/lit8 v10, v10, 0x2

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_6
    array-length v10, v0

    add-int/lit8 v10, v10, -0x2

    move v11, v3

    :goto_6
    if-ltz v10, :cond_c

    if-eqz v11, :cond_c

    aget v11, v0, v10

    float-to-int v11, v11

    add-int/lit8 v12, v10, 0x1

    aget v15, v0, v12

    float-to-int v15, v15

    if-lt v11, v14, :cond_b

    if-gt v11, v7, :cond_b

    if-lt v15, v14, :cond_b

    if-gt v15, v8, :cond_b

    if-ne v11, v14, :cond_7

    aput v13, v0, v10

    goto :goto_7

    :cond_7
    if-ne v11, v7, :cond_8

    add-int/lit8 v11, v7, -0x1

    int-to-float v11, v11

    aput v11, v0, v10

    :goto_7
    move v11, v3

    goto :goto_8

    :cond_8
    move v11, v4

    :goto_8
    if-ne v15, v14, :cond_9

    aput v13, v0, v12

    goto :goto_9

    :cond_9
    if-ne v15, v8, :cond_a

    add-int/lit8 v11, v8, -0x1

    int-to-float v11, v11

    aput v11, v0, v12

    :goto_9
    move v11, v3

    :cond_a
    add-int/lit8 v10, v10, -0x2

    goto :goto_6

    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_c
    move v7, v4

    :goto_a
    if-ge v7, v6, :cond_e

    :try_start_0
    aget v8, v0, v7

    float-to-int v8, v8

    add-int/lit8 v10, v7, 0x1

    aget v10, v0, v10

    float-to-int v10, v10

    move-object/from16 v11, p1

    invoke-virtual {v11, v8, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_d

    shr-int/lit8 v8, v7, 0x1

    invoke-virtual {v2, v8, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    add-int/lit8 v7, v7, 0x2

    goto :goto_a

    :catch_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_e
    move-object/from16 v11, p1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_f
    return-object v2

    :cond_10
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
