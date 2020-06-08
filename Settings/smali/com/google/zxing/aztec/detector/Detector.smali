.class public final Lcom/google/zxing/aztec/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/detector/Detector$Point;
    }
.end annotation


# static fields
.field private static final EXPECTED_CORNER_BITS:[I


# instance fields
.field private compact:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private nbCenterLayers:I

.field private nbDataBlocks:I

.field private nbLayers:I

.field private shift:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xee0
        0x1dc
        0x83b
        0x707
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method private static distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F
    .locals 2

    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result p1

    invoke-static {v0, p0, v1, p1}, Lcom/google/android/setupdesign/R$layout;->distance(IIII)F

    move-result p0

    return p0
.end method

.method private static expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;
    .locals 10

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    div-float/2addr p2, p1

    const/4 p1, 0x0

    aget-object v1, p0, p1

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    const/4 v2, 0x2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    aget-object v3, p0, p1

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    aget-object v4, p0, v2

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    aget-object v4, p0, p1

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    aget-object v5, p0, v2

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    add-float/2addr v5, v4

    div-float/2addr v5, v0

    aget-object v4, p0, p1

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    aget-object v6, p0, v2

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    add-float/2addr v6, v4

    div-float/2addr v6, v0

    new-instance v4, Lcom/google/zxing/ResultPoint;

    mul-float/2addr v1, p2

    add-float v7, v5, v1

    mul-float/2addr v3, p2

    add-float v8, v6, v3

    invoke-direct {v4, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v7, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v5, v1

    sub-float/2addr v6, v3

    invoke-direct {v7, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v1, 0x1

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    const/4 v5, 0x3

    aget-object v6, p0, v5

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float/2addr v3, v6

    aget-object v6, p0, v1

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    aget-object v8, p0, v5

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    sub-float/2addr v6, v8

    aget-object v8, p0, v1

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    aget-object v9, p0, v5

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v9, v8

    div-float/2addr v9, v0

    aget-object v8, p0, v1

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    aget-object p0, p0, v5

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p0

    add-float/2addr p0, v8

    div-float/2addr p0, v0

    new-instance v0, Lcom/google/zxing/ResultPoint;

    mul-float/2addr v3, p2

    add-float v8, v9, v3

    mul-float/2addr p2, v6

    add-float v6, p0, p2

    invoke-direct {v0, v8, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v6, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v9, v3

    sub-float/2addr p0, p2

    invoke-direct {v6, v9, p0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 p0, 0x4

    new-array p0, p0, [Lcom/google/zxing/ResultPoint;

    aput-object v4, p0, p1

    aput-object v0, p0, v1

    aput-object v7, p0, v2

    aput-object v6, p0, v5

    return-object p0
.end method

.method private getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
    .locals 10

    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result p1

    invoke-virtual {v4, v5, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p1

    const/4 v4, 0x0

    move v5, v2

    move v6, v3

    move v2, v4

    move v3, v2

    :goto_0
    int-to-float v7, v2

    cmpg-float v7, v7, v0

    if-gez v7, :cond_1

    add-float/2addr v5, v1

    add-float/2addr v6, p2

    iget-object v7, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-static {v5}, Lcom/google/android/setupdesign/R$layout;->round(F)I

    move-result v8

    invoke-static {v6}, Lcom/google/android/setupdesign/R$layout;->round(F)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eq v7, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    int-to-float p0, v3

    div-float/2addr p0, v0

    const p2, 0x3dcccccd    # 0.1f

    cmpl-float v0, p0, p2

    if-lez v0, :cond_2

    const v0, 0x3f666666    # 0.9f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    return v4

    :cond_2
    cmpg-float p0, p0, p2

    const/4 p2, 0x1

    if-gtz p0, :cond_3

    move v4, p2

    :cond_3
    if-ne v4, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, -0x1

    :goto_1
    return p2
.end method

.method private getDimension()I
    .locals 2

    iget-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/2addr p0, v1

    add-int/lit8 p0, p0, 0xb

    return p0

    :cond_0
    iget p0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    if-gt p0, v1, :cond_1

    mul-int/2addr p0, v1

    add-int/lit8 p0, p0, 0xf

    return p0

    :cond_1
    mul-int/lit8 v0, p0, 0x4

    sub-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 2

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result p1

    :goto_0
    add-int/2addr p1, p4

    invoke-direct {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/2addr v0, p3

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p3

    sub-int/2addr p1, p4

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-ne v1, p2, :cond_1

    add-int/2addr v0, p3

    goto :goto_1

    :cond_1
    sub-int/2addr v0, p3

    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p3, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p3

    if-ne p3, p2, :cond_2

    add-int/2addr p1, p4

    goto :goto_2

    :cond_2
    sub-int/2addr p1, p4

    new-instance p0, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object p0
.end method

.method private isValid(II)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    iget-object p0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p0

    if-ge p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValid(Lcom/google/zxing/ResultPoint;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-static {v0}, Lcom/google/android/setupdesign/R$layout;->round(F)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    invoke-static {p1}, Lcom/google/android/setupdesign/R$layout;->round(F)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result p0

    return p0
.end method

.method private sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I
    .locals 7

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/setupdesign/R$layout;->distance(FFFF)F

    move-result v0

    int-to-float v1, p3

    div-float v1, v0, v1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    div-float/2addr v4, v0

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    mul-float/2addr p2, v1

    div-float/2addr p2, v0

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    if-ge p1, p3, :cond_1

    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    int-to-float v5, p1

    mul-float v6, v5, v4

    add-float/2addr v6, v2

    invoke-static {v6}, Lcom/google/android/setupdesign/R$layout;->round(F)I

    move-result v6

    mul-float/2addr v5, p2

    add-float/2addr v5, v3

    invoke-static {v5}, Lcom/google/android/setupdesign/R$layout;->round(F)I

    move-result v5

    invoke-virtual {v1, v6, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-eqz v1, :cond_0

    sub-int v1, p3, p1

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    shl-int v1, v5, v1

    or-int/2addr v0, v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x7

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    :try_start_0
    new-instance v7, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v8, v0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v7, v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v7}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v7

    aget-object v8, v7, v4

    aget-object v9, v7, v6

    aget-object v10, v7, v5

    aget-object v7, v7, v3
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v7, v0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    div-int/2addr v7, v5

    iget-object v8, v0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    div-int/2addr v8, v5

    new-instance v9, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v10, v7, 0x7

    add-int/lit8 v11, v8, -0x7

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {v0, v9, v4, v6, v1}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v9

    new-instance v12, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/2addr v8, v2

    invoke-direct {v12, v10, v8}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {v0, v12, v4, v6, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v10

    new-instance v12, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v7, v7, -0x7

    invoke-direct {v12, v7, v8}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {v0, v12, v4, v1, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v8

    new-instance v12, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v12, v7, v11}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {v0, v12, v4, v1, v1}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v7

    move-object/from16 v38, v10

    move-object v10, v8

    move-object v8, v9

    move-object/from16 v9, v38

    :goto_0
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    add-float/2addr v12, v11

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    add-float/2addr v11, v12

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    add-float/2addr v12, v11

    const/high16 v11, 0x40800000    # 4.0f

    div-float/2addr v12, v11

    invoke-static {v12}, Lcom/google/android/setupdesign/R$layout;->round(F)I

    move-result v12

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    add-float/2addr v7, v8

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    add-float/2addr v8, v7

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    add-float/2addr v7, v8

    div-float/2addr v7, v11

    invoke-static {v7}, Lcom/google/android/setupdesign/R$layout;->round(F)I

    move-result v7

    const/16 v8, 0xf

    :try_start_1
    new-instance v9, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v10, v0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v9, v10, v8, v12, v7}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    invoke-virtual {v9}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v9

    aget-object v10, v9, v4

    aget-object v13, v9, v6

    aget-object v14, v9, v5

    aget-object v7, v9, v3
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    move-object v10, v13

    goto :goto_1

    :catch_1
    new-instance v9, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v10, v12, 0x7

    add-int/lit8 v13, v7, -0x7

    invoke-direct {v9, v10, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {v0, v9, v4, v6, v1}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v9

    new-instance v14, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/2addr v7, v2

    invoke-direct {v14, v10, v7}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {v0, v14, v4, v6, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v10

    new-instance v14, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v12, v12, -0x7

    invoke-direct {v14, v12, v7}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {v0, v14, v4, v1, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v14

    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v7, v12, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {v0, v7, v4, v1, v1}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v7

    :goto_1
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    add-float/2addr v13, v12

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    add-float/2addr v12, v13

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    add-float/2addr v13, v12

    div-float/2addr v13, v11

    invoke-static {v13}, Lcom/google/android/setupdesign/R$layout;->round(F)I

    move-result v12

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    add-float/2addr v7, v9

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v9, v7

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    add-float/2addr v7, v9

    div-float/2addr v7, v11

    invoke-static {v7}, Lcom/google/android/setupdesign/R$layout;->round(F)I

    move-result v7

    new-instance v9, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v9, v12, v7}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    iput v6, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move v7, v6

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    :goto_2
    iget v13, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/16 v14, 0x9

    if-ge v13, v14, :cond_6

    invoke-direct {v0, v9, v7, v6, v1}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v13

    invoke-direct {v0, v10, v7, v6, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v14

    invoke-direct {v0, v11, v7, v1, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v15

    invoke-direct {v0, v12, v7, v1, v1}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    iget v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    if-le v1, v5, :cond_4

    invoke-static {v8, v13}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v1

    iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    invoke-static {v12, v9}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v4

    iget v2, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v4, v2

    div-float/2addr v1, v4

    float-to-double v1, v1

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    cmpg-double v4, v1, v16

    if-ltz v4, :cond_6

    const-wide/high16 v16, 0x3ff4000000000000L    # 1.25

    cmpl-double v1, v1, v16

    if-gtz v1, :cond_6

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {v13}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v13}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v1, v2, v4}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    new-instance v2, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {v14}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v14}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v16

    add-int/lit8 v5, v16, -0x3

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    new-instance v4, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {v15}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v15}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v16

    add-int/lit8 v6, v16, -0x3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    new-instance v5, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v16

    move-object/from16 v19, v8

    add-int/lit8 v8, v16, 0x3

    invoke-direct {v5, v6, v8}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {v0, v5, v1}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v1

    if-eq v1, v6, :cond_1

    goto :goto_3

    :cond_1
    invoke-direct {v0, v2, v4}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v1

    if-eq v1, v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-direct {v0, v4, v5}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v1

    if-ne v1, v6, :cond_3

    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_5

    goto :goto_5

    :cond_4
    move-object/from16 v19, v8

    :cond_5
    xor-int/lit8 v7, v7, 0x1

    iget v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v12, v19

    const/4 v1, -0x1

    const/4 v2, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v8, 0xf

    goto/16 :goto_2

    :cond_6
    :goto_5
    iget v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8

    const/4 v4, 0x7

    if-ne v1, v4, :cond_7

    goto :goto_6

    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_6
    iget v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    :goto_7
    iput-boolean v1, v0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    new-instance v1, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v9}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    invoke-virtual {v9}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    invoke-direct {v1, v2, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v2, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v10}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    invoke-virtual {v10}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v4

    invoke-direct {v2, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v5, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v11}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    invoke-virtual {v11}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v4

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v6, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v12}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v4

    invoke-virtual {v12}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v4, 0x4

    new-array v7, v4, [Lcom/google/zxing/ResultPoint;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v1, 0x2

    aput-object v5, v7, v1

    aput-object v6, v7, v3

    iget v2, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/2addr v2, v1

    add-int/lit8 v5, v2, -0x3

    int-to-float v5, v5

    int-to-float v2, v2

    invoke-static {v7, v5, v2}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz p1, :cond_a

    aget-object v6, v2, v5

    aget-object v7, v2, v1

    aput-object v7, v2, v5

    aput-object v6, v2, v1

    :cond_a
    aget-object v6, v2, v5

    invoke-direct {v0, v6}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    aget-object v6, v2, v5

    invoke-direct {v0, v6}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v5

    if-eqz v5, :cond_14

    aget-object v5, v2, v1

    invoke-direct {v0, v5}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v5

    if-eqz v5, :cond_14

    aget-object v5, v2, v3

    invoke-direct {v0, v5}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget v5, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/2addr v5, v1

    new-array v6, v4, [I

    const/4 v8, 0x0

    aget-object v7, v2, v8

    const/4 v9, 0x1

    aget-object v10, v2, v9

    invoke-direct {v0, v7, v10, v5}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v8

    aget-object v7, v2, v9

    aget-object v10, v2, v1

    invoke-direct {v0, v7, v10, v5}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v9

    aget-object v7, v2, v1

    aget-object v9, v2, v3

    invoke-direct {v0, v7, v9, v5}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v1

    aget-object v1, v2, v3

    aget-object v7, v2, v8

    invoke-direct {v0, v1, v7, v5}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v1

    aput v1, v6, v3

    array-length v1, v6

    move v7, v8

    move v9, v7

    :goto_8
    if-ge v7, v1, :cond_b

    aget v10, v6, v7

    add-int/lit8 v11, v5, -0x2

    shr-int v11, v10, v11

    const/4 v12, 0x1

    shl-int/2addr v11, v12

    and-int/2addr v10, v12

    add-int/2addr v11, v10

    shl-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_b
    and-int/lit8 v1, v9, 0x1

    shl-int/lit8 v1, v1, 0xb

    const/4 v5, 0x1

    shr-int/lit8 v7, v9, 0x1

    add-int/2addr v1, v7

    move v5, v8

    :goto_9
    if-ge v5, v4, :cond_13

    sget-object v7, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    aget v7, v7, v5

    xor-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->bitCount(I)I

    move-result v7

    const/4 v9, 0x2

    if-gt v7, v9, :cond_12

    iput v5, v0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    const-wide/16 v9, 0x0

    move v1, v8

    :goto_a
    const/16 v5, 0xa

    if-ge v1, v4, :cond_d

    iget v7, v0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/2addr v7, v1

    rem-int/2addr v7, v4

    aget v7, v6, v7

    iget-boolean v11, v0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v11, :cond_c

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    shr-int/lit8 v5, v7, 0x1

    and-int/lit8 v5, v5, 0x7f

    goto :goto_b

    :cond_c
    const/4 v11, 0x7

    shl-long/2addr v9, v5

    shr-int/lit8 v5, v7, 0x2

    and-int/lit16 v5, v5, 0x3e0

    shr-int/lit8 v7, v7, 0x1

    and-int/lit8 v7, v7, 0x1f

    add-int/2addr v5, v7

    :goto_b
    int-to-long v12, v5

    add-long/2addr v9, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_d
    const/4 v11, 0x7

    iget-boolean v1, v0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v1, :cond_e

    move v5, v11

    const/4 v1, 0x2

    goto :goto_c

    :cond_e
    move v1, v4

    :goto_c
    sub-int v6, v5, v1

    new-array v7, v5, [I

    const/4 v12, -0x1

    :goto_d
    add-int/2addr v5, v12

    if-ltz v5, :cond_f

    long-to-int v11, v9

    const/16 v13, 0xf

    and-int/2addr v11, v13

    aput v11, v7, v5

    shr-long/2addr v9, v4

    goto :goto_d

    :cond_f
    :try_start_2
    new-instance v5, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v9, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v5, v9}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v5, v7, v6}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_2
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_2 .. :try_end_2} :catch_2

    move v5, v8

    :goto_e
    if-ge v8, v1, :cond_10

    shl-int/lit8 v5, v5, 0x4

    aget v6, v7, v8

    add-int/2addr v5, v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_10
    iget-boolean v1, v0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v1, :cond_11

    shr-int/lit8 v1, v5, 0x6

    const/4 v7, 0x1

    add-int/2addr v1, v7

    iput v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    and-int/lit8 v1, v5, 0x3f

    add-int/2addr v1, v7

    iput v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    goto :goto_f

    :cond_11
    const/4 v7, 0x1

    shr-int/lit8 v1, v5, 0xb

    add-int/2addr v1, v7

    iput v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    and-int/lit16 v1, v5, 0x7ff

    add-int/2addr v1, v7

    iput v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    :goto_f
    iget-object v1, v0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v5, v0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    rem-int/lit8 v6, v5, 0x4

    aget-object v6, v2, v6

    add-int/lit8 v7, v5, 0x1

    rem-int/2addr v7, v4

    aget-object v7, v2, v7

    add-int/lit8 v8, v5, 0x2

    rem-int/2addr v8, v4

    aget-object v8, v2, v8

    add-int/2addr v5, v3

    rem-int/2addr v5, v4

    aget-object v3, v2, v5

    invoke-static {}, Lcom/google/zxing/common/DefaultGridSampler;->getInstance()Lcom/google/zxing/common/DefaultGridSampler;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v4

    move/from16 v20, v4

    move/from16 v21, v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v5, v5

    sub-float v9, v4, v5

    move/from16 v22, v9

    move/from16 v23, v9

    move/from16 v28, v9

    move/from16 v25, v9

    add-float/2addr v4, v5

    move/from16 v26, v4

    move/from16 v27, v4

    move/from16 v29, v4

    move/from16 v24, v4

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v30

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v31

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v32

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v33

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v34

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v35

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v36

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v37

    move-object/from16 v19, v1

    invoke-virtual/range {v18 .. v37}, Lcom/google/zxing/common/DefaultGridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    iget v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/4 v9, 0x2

    mul-int/2addr v1, v9

    int-to-float v1, v1

    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v1, v3}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    new-instance v1, Lcom/google/zxing/aztec/AztecDetectorResult;

    iget-boolean v6, v0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    iget v7, v0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    iget v8, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/aztec/AztecDetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZII)V

    return-object v1

    :catch_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_12
    const/4 v7, 0x1

    const/4 v11, 0x7

    const/4 v12, -0x1

    const/16 v13, 0xf

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    :cond_13
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
