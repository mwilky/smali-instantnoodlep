.class public Lcom/google/zxing/qrcode/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method private calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 4

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v1, p2, v2, p1}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result p0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    const/high16 p2, 0x40e00000    # 7.0f

    if-eqz p1, :cond_0

    div-float/2addr p0, p2

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_1

    div-float/2addr v0, p2

    return v0

    :cond_1
    add-float/2addr v0, p0

    const/high16 p0, 0x41600000    # 14.0f

    div-float/2addr v0, p0

    return v0
.end method

.method private sizeOfBlackWhiteBlackRun(IIII)F
    .locals 17

    sub-int v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p3, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move/from16 v6, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v1, p4

    goto :goto_1

    :cond_1
    move/from16 v4, p1

    move/from16 v6, p2

    move/from16 v1, p3

    move/from16 v5, p4

    :goto_1
    sub-int v7, v1, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v8, v5, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    neg-int v9, v7

    shr-int/2addr v9, v3

    const/4 v10, -0x1

    if-ge v4, v1, :cond_2

    move v11, v3

    goto :goto_2

    :cond_2
    move v11, v10

    :goto_2
    if-ge v6, v5, :cond_3

    move v10, v3

    :cond_3
    add-int/2addr v1, v11

    move v12, v6

    move v14, v9

    const/4 v13, 0x0

    move v9, v4

    :goto_3
    if-eq v9, v1, :cond_b

    if-eqz v0, :cond_4

    move v2, v12

    goto :goto_4

    :cond_4
    move v2, v9

    :goto_4
    if-eqz v0, :cond_5

    move v15, v9

    goto :goto_5

    :cond_5
    move v15, v12

    :goto_5
    if-ne v13, v3, :cond_6

    move/from16 v16, v0

    move/from16 p2, v1

    move v0, v3

    move-object/from16 v3, p0

    goto :goto_6

    :cond_6
    move-object/from16 v3, p0

    move/from16 v16, v0

    move/from16 p2, v1

    const/4 v0, 0x0

    :goto_6
    iget-object v1, v3, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, v2, v15}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x2

    if-ne v13, v0, :cond_7

    invoke-static {v9, v12, v4, v6}, Lcom/google/android/setupdesign/R$layout;->distance(IIII)F

    move-result v0

    return v0

    :cond_7
    add-int/lit8 v13, v13, 0x1

    :cond_8
    add-int/2addr v14, v8

    if-lez v14, :cond_a

    if-ne v12, v5, :cond_9

    goto :goto_7

    :cond_9
    add-int/2addr v12, v10

    sub-int/2addr v14, v7

    :cond_a
    add-int/2addr v9, v11

    move/from16 v1, p2

    move/from16 v0, v16

    const/4 v3, 0x1

    goto :goto_3

    :cond_b
    move/from16 p2, v1

    :goto_7
    const/4 v0, 0x2

    if-ne v13, v0, :cond_c

    move/from16 v1, p2

    invoke-static {v1, v5, v4, v6}, Lcom/google/android/setupdesign/R$layout;->distance(IIII)F

    move-result v0

    return v0

    :cond_c
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method private sizeOfBlackWhiteBlackRunBothWays(IIII)F
    .locals 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v0

    sub-int/2addr p3, p1

    sub-int p3, p1, p3

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez p3, :cond_0

    int-to-float v3, p1

    sub-int p3, p1, p3

    int-to-float p3, p3

    div-float p3, v3, p3

    move v3, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    if-lt p3, v3, :cond_1

    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    sub-int/2addr p3, p1

    int-to-float p3, p3

    div-float p3, v3, p3

    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    move v3, p3

    move p3, v2

    :goto_0
    int-to-float v4, p2

    sub-int/2addr p4, p2

    int-to-float p4, p4

    mul-float/2addr p4, p3

    sub-float p3, v4, p4

    float-to-int p3, p3

    if-gez p3, :cond_2

    sub-int p3, p2, p3

    int-to-float p3, p3

    div-float p3, v4, p3

    goto :goto_1

    :cond_2
    iget-object p4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p4

    if-lt p3, p4, :cond_3

    iget-object p4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    sub-int/2addr p4, p2

    int-to-float p4, p4

    sub-int/2addr p3, p2

    int-to-float p3, p3

    div-float p3, p4, p3

    iget-object p4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p4

    add-int/lit8 v1, p4, -0x1

    goto :goto_1

    :cond_3
    move v1, p3

    move p3, v2

    :goto_1
    int-to-float p4, p1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr v3, p4

    float-to-int p3, v3

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result p0

    add-float/2addr v0, p0

    sub-float/2addr v0, v2

    return v0
.end method


# virtual methods
.method public final detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/ResultPointCallback;

    :goto_0
    iput-object v3, v0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    new-instance v3, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;

    iget-object v4, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget-object v5, v0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    invoke-virtual {v3, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v1

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v5

    invoke-direct {v0, v3, v1}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v5, v6

    if-ltz v7, :cond_7

    invoke-static {v3, v4}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v7

    div-float/2addr v7, v5

    invoke-static {v7}, Lcom/google/android/setupdesign/R$layout;->round(F)I

    move-result v7

    invoke-static {v3, v1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v8

    div-float/2addr v8, v5

    invoke-static {v8}, Lcom/google/android/setupdesign/R$layout;->round(F)I

    move-result v8

    add-int/2addr v8, v7

    const/4 v7, 0x1

    shr-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x7

    and-int/lit8 v9, v8, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eqz v9, :cond_3

    if-eq v9, v10, :cond_2

    if-eq v9, v11, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    :goto_1
    invoke-static {v8}, Lcom/google/zxing/qrcode/decoder/Version;->getProvisionalVersionForDimension(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v12

    add-int/lit8 v12, v12, -0x7

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Version;->getAlignmentPatternCenters()[I

    move-result-object v9

    array-length v9, v9

    const/4 v13, 0x4

    const/high16 v14, 0x40400000    # 3.0f

    if-lez v9, :cond_4

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    sub-float/2addr v9, v15

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    add-float/2addr v15, v9

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    sub-float v9, v9, v16

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    add-float v16, v16, v9

    int-to-float v9, v12

    div-float v9, v14, v9

    sub-float/2addr v6, v9

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    sub-float/2addr v15, v12

    mul-float/2addr v15, v6

    add-float/2addr v15, v9

    float-to-int v9, v15

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    sub-float v16, v16, v15

    mul-float v16, v16, v6

    add-float v6, v16, v12

    float-to-int v6, v6

    move v12, v13

    :goto_2
    const/16 v15, 0x10

    if-gt v12, v15, :cond_4

    int-to-float v15, v12

    :try_start_0
    invoke-virtual {v0, v5, v9, v6, v15}, Lcom/google/zxing/qrcode/detector/Detector;->findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    shl-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    int-to-float v5, v8

    const/high16 v6, 0x40600000    # 3.5f

    sub-float v22, v5, v6

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    sub-float v9, v22, v14

    move/from16 v27, v5

    move/from16 v28, v6

    move/from16 v20, v9

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    add-float/2addr v6, v5

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    sub-float/2addr v5, v9

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v9, v5

    move/from16 v27, v6

    move/from16 v28, v9

    move/from16 v20, v22

    :goto_4
    const/high16 v15, 0x40600000    # 3.5f

    const/high16 v16, 0x40600000    # 3.5f

    const/high16 v18, 0x40600000    # 3.5f

    const/high16 v21, 0x40600000    # 3.5f

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v23

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v25

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v26

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v29

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v30

    move/from16 v17, v22

    move/from16 v19, v20

    invoke-static/range {v15 .. v30}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v5

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-static {}, Lcom/google/zxing/common/DefaultGridSampler;->getInstance()Lcom/google/zxing/common/DefaultGridSampler;

    move-result-object v6

    invoke-virtual {v6, v0, v8, v8, v5}, Lcom/google/zxing/common/DefaultGridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    const/4 v5, 0x0

    if-nez v2, :cond_6

    new-array v2, v11, [Lcom/google/zxing/ResultPoint;

    aput-object v1, v2, v5

    aput-object v3, v2, v7

    aput-object v4, v2, v10

    goto :goto_5

    :cond_6
    new-array v6, v13, [Lcom/google/zxing/ResultPoint;

    aput-object v1, v6, v5

    aput-object v3, v6, v7

    aput-object v4, v6, v10

    aput-object v2, v6, v11

    move-object v2, v6

    :goto_5
    new-instance v1, Lcom/google/zxing/common/DetectorResult;

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v1

    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method protected final findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    mul-float/2addr p4, p1

    float-to-int p4, p4

    sub-int v0, p2, p4

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p2, p4

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v6, p2, v4

    int-to-float p2, v6

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p1

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_1

    sub-int p2, p3, p4

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object p2, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v7, p2, v5

    int-to-float p2, v7

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_0

    new-instance p2, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;

    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    move-object v2, p2

    move v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->find()Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method
