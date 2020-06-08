.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# instance fields
.field private final downInit:I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final leftInit:I

.field private final rightInit:I

.field private final upInit:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    iget p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    add-int/lit8 v0, p1, -0x1e

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    add-int/lit8 v0, p1, 0x1e

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    add-int/lit8 v1, v0, -0x1e

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    add-int/lit8 v1, v0, 0x1e

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    if-ge v1, v0, :cond_0

    iget p0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    if-ge p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    shr-int/lit8 p1, p2, 0x1

    sub-int p2, p3, p1

    iput p2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    sub-int p2, p4, p1

    iput p2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    add-int/2addr p4, p1

    iput p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget p2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge p1, p2, :cond_0

    iget p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    iget p0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-ge p1, p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private containsBlackPoint(IIIZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    :goto_0
    if-gt p1, p2, :cond_3

    iget-object p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p4, p1, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p4

    if-eqz p4, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gt p1, p2, :cond_3

    iget-object p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p4, p3, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p4

    if-eqz p4, :cond_2

    return v0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;
    .locals 5

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/setupdesign/R$layout;->distance(FFFF)F

    move-result v0

    invoke-static {v0}, Lcom/google/android/setupdesign/R$layout;->round(F)I

    move-result v0

    sub-float/2addr p3, p1

    int-to-float v1, v0

    div-float/2addr p3, v1

    sub-float/2addr p4, p2

    div-float/2addr p4, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    int-to-float v2, v1

    mul-float v3, v2, p3

    add-float/2addr v3, p1

    invoke-static {v3}, Lcom/google/android/setupdesign/R$layout;->round(F)I

    move-result v3

    mul-float/2addr v2, p4

    add-float/2addr v2, p2

    invoke-static {v2}, Lcom/google/android/setupdesign/R$layout;->round(F)I

    move-result v2

    iget-object v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance p0, Lcom/google/zxing/ResultPoint;

    int-to-float p1, v3

    int-to-float p2, v2

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    iget v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v6, v0

    move v7, v4

    move v0, v5

    :goto_0
    if-eqz v0, :cond_d

    move v8, v4

    move v0, v5

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-ge v1, v0, :cond_1

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v8, v5

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v1, v0, :cond_2

    :goto_2
    move v0, v5

    goto :goto_6

    :cond_2
    move v0, v5

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v3, v0, :cond_4

    invoke-direct {p0, v6, v1, v3, v5}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v3, v3, 0x1

    move v8, v5

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-lt v3, v0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v5

    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    if-ltz v6, :cond_7

    invoke-direct {p0, v2, v3, v6, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v6, v6, -0x1

    move v8, v5

    goto :goto_4

    :cond_7
    if-gez v6, :cond_8

    goto :goto_2

    :cond_8
    move v0, v5

    :cond_9
    :goto_5
    if-eqz v0, :cond_a

    if-ltz v2, :cond_a

    invoke-direct {p0, v6, v1, v2, v5}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v2, v2, -0x1

    move v8, v5

    goto :goto_5

    :cond_a
    if-gez v2, :cond_b

    goto :goto_2

    :cond_b
    if-eqz v8, :cond_c

    move v7, v5

    :cond_c
    move v0, v8

    goto :goto_0

    :cond_d
    move v0, v4

    :goto_6
    if-nez v0, :cond_1b

    if-eqz v7, :cond_1b

    sub-int v0, v1, v6

    const/4 v7, 0x0

    move v8, v5

    move-object v9, v7

    :goto_7
    if-ge v8, v0, :cond_f

    int-to-float v9, v6

    sub-int v10, v3, v8

    int-to-float v10, v10

    add-int v11, v6, v8

    int-to-float v11, v11

    int-to-float v12, v3

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v9

    if-eqz v9, :cond_e

    goto :goto_8

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    if-eqz v9, :cond_1a

    move v8, v5

    move-object v10, v7

    :goto_9
    if-ge v8, v0, :cond_11

    int-to-float v10, v6

    add-int v11, v2, v8

    int-to-float v11, v11

    add-int v12, v6, v8

    int-to-float v12, v12

    int-to-float v13, v2

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v10

    if-eqz v10, :cond_10

    goto :goto_a

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_11
    :goto_a
    if-eqz v10, :cond_19

    move v6, v5

    move-object v8, v7

    :goto_b
    if-ge v6, v0, :cond_13

    int-to-float v8, v1

    add-int v11, v2, v6

    int-to-float v11, v11

    sub-int v12, v1, v6

    int-to-float v12, v12

    int-to-float v13, v2

    invoke-direct {p0, v8, v11, v12, v13}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v8

    if-eqz v8, :cond_12

    goto :goto_c

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_13
    :goto_c
    if-eqz v8, :cond_18

    move v2, v5

    :goto_d
    if-ge v2, v0, :cond_15

    int-to-float v6, v1

    sub-int v7, v3, v2

    int-to-float v7, v7

    sub-int v11, v1, v2

    int-to-float v11, v11

    int-to-float v12, v3

    invoke-direct {p0, v6, v7, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v7

    if-eqz v7, :cond_14

    goto :goto_e

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_15
    :goto_e
    if-eqz v7, :cond_17

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    iget p0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    int-to-float p0, p0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr p0, v10

    cmpg-float p0, v0, p0

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/high16 v13, 0x3f800000    # 1.0f

    if-gez p0, :cond_16

    new-array p0, v12, [Lcom/google/zxing/ResultPoint;

    new-instance v12, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v8, v13

    add-float/2addr v9, v13

    invoke-direct {v12, v8, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v12, p0, v4

    new-instance v4, Lcom/google/zxing/ResultPoint;

    add-float/2addr v2, v13

    add-float/2addr v3, v13

    invoke-direct {v4, v2, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, p0, v5

    new-instance v2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v6, v13

    sub-float/2addr v7, v13

    invoke-direct {v2, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, p0, v11

    new-instance v2, Lcom/google/zxing/ResultPoint;

    add-float/2addr v0, v13

    sub-float/2addr v1, v13

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, p0, v10

    goto :goto_f

    :cond_16
    new-array p0, v12, [Lcom/google/zxing/ResultPoint;

    new-instance v12, Lcom/google/zxing/ResultPoint;

    add-float/2addr v8, v13

    add-float/2addr v9, v13

    invoke-direct {v12, v8, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v12, p0, v4

    new-instance v4, Lcom/google/zxing/ResultPoint;

    add-float/2addr v2, v13

    sub-float/2addr v3, v13

    invoke-direct {v4, v2, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, p0, v5

    new-instance v2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v6, v13

    add-float/2addr v7, v13

    invoke-direct {v2, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, p0, v11

    new-instance v2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v0, v13

    sub-float/2addr v1, v13

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, p0, v10

    :goto_f
    return-object p0

    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_18
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_19
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_1a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_1b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method
