.class public final Lcom/google/zxing/datamatrix/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;,
        Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    }
.end annotation


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    new-instance v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    return-void
.end method

.method private static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p0

    invoke-static {p0}, Lcom/google/android/setupdesign/R$layout;->round(F)I

    move-result p0

    return p0
.end method

.method private static increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/ResultPoint;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/zxing/ResultPoint;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isValid(Lcom/google/zxing/ResultPoint;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-static {}, Lcom/google/zxing/common/DefaultGridSampler;->getInstance()Lcom/google/zxing/common/DefaultGridSampler;

    move-result-object v0

    move/from16 v4, p5

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    move v8, v4

    move v6, v4

    move/from16 v4, p6

    int-to-float v4, v4

    sub-float v11, v4, v5

    move v9, v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual/range {v0 .. v19}, Lcom/google/zxing/common/DefaultGridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method private transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v5, v4, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v6, v3, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v5, v6, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    if-eqz v5, :cond_1

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    :cond_1
    sub-int v6, v3, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v9, v4, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    neg-int v10, v6

    shr-int/2addr v10, v8

    const/4 v11, -0x1

    if-ge v2, v4, :cond_2

    move v12, v8

    goto :goto_1

    :cond_2
    move v12, v11

    :goto_1
    if-ge v1, v3, :cond_3

    goto :goto_2

    :cond_3
    move v8, v11

    :goto_2
    iget-object v11, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz v5, :cond_4

    move v13, v2

    goto :goto_3

    :cond_4
    move v13, v1

    :goto_3
    if-eqz v5, :cond_5

    move v14, v1

    goto :goto_4

    :cond_5
    move v14, v2

    :goto_4
    invoke-virtual {v11, v13, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    :goto_5
    if-eq v1, v3, :cond_b

    iget-object v13, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz v5, :cond_6

    move v14, v2

    goto :goto_6

    :cond_6
    move v14, v1

    :goto_6
    if-eqz v5, :cond_7

    move v15, v1

    goto :goto_7

    :cond_7
    move v15, v2

    :goto_7
    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eq v13, v11, :cond_8

    add-int/lit8 v7, v7, 0x1

    move v11, v13

    :cond_8
    add-int/2addr v10, v9

    if-lez v10, :cond_a

    if-ne v2, v4, :cond_9

    goto :goto_8

    :cond_9
    add-int/2addr v2, v12

    sub-int/2addr v10, v6

    :cond_a
    add-int/2addr v1, v8

    goto :goto_5

    :cond_b
    :goto_8
    new-instance v0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v2, v3, v7, v1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;-><init>(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;ILcom/google/zxing/datamatrix/detector/Detector$1;)V

    return-object v0
.end method


# virtual methods
.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-virtual {v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    const/4 v4, 0x1

    aget-object v5, v1, v4

    const/4 v6, 0x2

    aget-object v7, v1, v6

    const/4 v8, 0x3

    aget-object v1, v1, v8

    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v3, v5}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v3, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v5, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v7, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>(Lcom/google/zxing/datamatrix/detector/Detector$1;)V

    invoke-static {v9, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/google/zxing/ResultPoint;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/google/zxing/ResultPoint;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V

    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/google/zxing/ResultPoint;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V

    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/google/zxing/ResultPoint;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v11, v12

    move-object v14, v11

    move-object v15, v14

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/zxing/ResultPoint;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v6, :cond_0

    move-object/from16 v14, v17

    goto :goto_1

    :cond_0
    if-nez v11, :cond_1

    move-object/from16 v11, v17

    goto :goto_1

    :cond_1
    move-object/from16 v15, v17

    :goto_1
    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    if-eqz v11, :cond_17

    if-eqz v14, :cond_17

    if-eqz v15, :cond_17

    new-array v9, v8, [Lcom/google/zxing/ResultPoint;

    aput-object v11, v9, v2

    aput-object v14, v9, v4

    aput-object v15, v9, v6

    invoke-static {v9}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    aget-object v11, v9, v2

    aget-object v12, v9, v4

    aget-object v9, v9, v6

    invoke-interface {v13, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    move-object v1, v3

    goto :goto_2

    :cond_3
    invoke-interface {v13, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object v1, v5

    goto :goto_2

    :cond_4
    invoke-interface {v13, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object v1, v7

    :cond_5
    :goto_2
    invoke-direct {v0, v9, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v3

    invoke-direct {v0, v11, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v5

    and-int/lit8 v7, v3, 0x1

    if-ne v7, v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-int/2addr v3, v6

    and-int/lit8 v7, v5, 0x1

    if-ne v7, v4, :cond_7

    add-int/lit8 v5, v5, 0x1

    :cond_7
    add-int/2addr v5, v6

    mul-int/lit8 v7, v3, 0x4

    mul-int/lit8 v13, v5, 0x7

    if-ge v7, v13, :cond_f

    mul-int/lit8 v7, v5, 0x4

    mul-int/lit8 v13, v3, 0x7

    if-lt v7, v13, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v12, v11}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v3, v3

    div-float/2addr v5, v3

    invoke-static {v9, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v7

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    sub-float/2addr v13, v14

    int-to-float v7, v7

    div-float/2addr v13, v7

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    sub-float/2addr v14, v15

    div-float/2addr v14, v7

    new-instance v7, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    mul-float/2addr v13, v5

    add-float/2addr v13, v15

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    mul-float/2addr v5, v14

    add-float/2addr v5, v15

    invoke-direct {v7, v13, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-static {v12, v9}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-static {v11, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    sub-float/2addr v13, v14

    int-to-float v3, v3

    div-float/2addr v13, v3

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    sub-float/2addr v14, v15

    div-float/2addr v14, v3

    new-instance v3, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    mul-float/2addr v13, v5

    add-float/2addr v13, v15

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    mul-float/2addr v5, v14

    add-float/2addr v5, v15

    invoke-direct {v3, v13, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-direct {v0, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-direct {v0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    invoke-direct {v0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_3

    :cond_b
    invoke-direct {v0, v9, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v5

    invoke-direct {v0, v11, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v13

    sub-int/2addr v5, v13

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-direct {v0, v9, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v13

    invoke-direct {v0, v11, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-gt v5, v13, :cond_c

    :goto_3
    move-object v3, v7

    :cond_c
    :goto_4
    if-nez v3, :cond_d

    goto :goto_5

    :cond_d
    move-object v1, v3

    :goto_5
    invoke-direct {v0, v9, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v3

    invoke-direct {v0, v11, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v4

    and-int/lit8 v5, v3, 0x1

    if-ne v5, v4, :cond_e

    add-int/lit8 v3, v3, 0x1

    :cond_e
    move/from16 v24, v3

    iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v18, v0

    move-object/from16 v19, v9

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move-object/from16 v22, v1

    move/from16 v23, v24

    invoke-static/range {v18 .. v24}, Lcom/google/zxing/datamatrix/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    goto/16 :goto_9

    :cond_f
    :goto_6
    invoke-static {v12, v11}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v7

    int-to-float v7, v7

    int-to-float v13, v3

    div-float/2addr v7, v13

    invoke-static {v9, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v13

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    sub-float/2addr v14, v15

    int-to-float v13, v13

    div-float/2addr v14, v13

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    sub-float v15, v15, v16

    div-float/2addr v15, v13

    new-instance v13, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    mul-float/2addr v14, v7

    add-float v14, v14, v16

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    mul-float/2addr v7, v15

    add-float v7, v7, v16

    invoke-direct {v13, v14, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-static {v12, v9}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v7

    int-to-float v7, v7

    int-to-float v14, v5

    div-float/2addr v7, v14

    invoke-static {v11, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v14

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    sub-float v15, v15, v16

    int-to-float v14, v14

    div-float/2addr v15, v14

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    sub-float v16, v16, v17

    div-float v16, v16, v14

    new-instance v14, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    mul-float/2addr v15, v7

    add-float v15, v15, v17

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    mul-float v7, v7, v16

    add-float v7, v7, v17

    invoke-direct {v14, v15, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-direct {v0, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-direct {v0, v14}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    move-object v13, v14

    goto :goto_7

    :cond_11
    const/4 v13, 0x0

    goto :goto_7

    :cond_12
    invoke-direct {v0, v14}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v7

    if-nez v7, :cond_13

    goto :goto_7

    :cond_13
    invoke-direct {v0, v9, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v7

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-direct {v0, v11, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v15

    sub-int v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    add-int/2addr v15, v7

    invoke-direct {v0, v9, v14}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v7

    sub-int/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {v0, v11, v14}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v5, v3

    if-gt v15, v5, :cond_10

    :goto_7
    if-nez v13, :cond_14

    goto :goto_8

    :cond_14
    move-object v1, v13

    :goto_8
    invoke-direct {v0, v9, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v3

    invoke-direct {v0, v11, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v5

    and-int/lit8 v7, v3, 0x1

    if-ne v7, v4, :cond_15

    add-int/lit8 v3, v3, 0x1

    :cond_15
    move/from16 v23, v3

    and-int/lit8 v3, v5, 0x1

    if-ne v3, v4, :cond_16

    add-int/lit8 v5, v5, 0x1

    :cond_16
    move/from16 v24, v5

    iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v18, v0

    move-object/from16 v19, v9

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move-object/from16 v22, v1

    invoke-static/range {v18 .. v24}, Lcom/google/zxing/datamatrix/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    :goto_9
    new-instance v3, Lcom/google/zxing/common/DetectorResult;

    new-array v5, v10, [Lcom/google/zxing/ResultPoint;

    aput-object v9, v5, v2

    aput-object v12, v5, v4

    aput-object v11, v5, v6

    aput-object v1, v5, v8

    invoke-direct {v3, v0, v5}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v3

    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
