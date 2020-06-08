.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;,
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    }
.end annotation


# instance fields
.field private final crossCheckStateCount:[I

.field private hasSkipped:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 p1, 0x5

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    return-void
.end method

.method private static centerFromEnd([II)F
    .locals 1

    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int/2addr p1, v0

    const/4 v0, 0x3

    aget v0, p0, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/4 v0, 0x2

    aget p0, p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method protected static foundPatternCross([I)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    aget v3, p0, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ge v2, v1, :cond_2

    return v0

    :cond_2
    shl-int/lit8 v2, v2, 0x8

    div-int/2addr v2, v1

    div-int/lit8 v1, v2, 0x2

    aget v3, p0, v0

    shl-int/lit8 v3, v3, 0x8

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v1, :cond_3

    aget v3, p0, v4

    shl-int/lit8 v3, v3, 0x8

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_3

    mul-int/lit8 v3, v2, 0x3

    const/4 v5, 0x2

    aget v5, p0, v5

    shl-int/lit8 v5, v5, 0x8

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v5, v1, 0x3

    if-ge v3, v5, :cond_3

    const/4 v3, 0x3

    aget v3, p0, v3

    shl-int/lit8 v3, v3, 0x8

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_3

    const/4 v3, 0x4

    aget p0, p0, v3

    shl-int/lit8 p0, p0, 0x8

    sub-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v1, :cond_3

    move v0, v4

    :cond_3
    return v0
.end method

.method private getCrossCheckStateCount()[I
    .locals 2

    iget-object p0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v0, 0x0

    aput v0, p0, v0

    const/4 v1, 0x1

    aput v0, p0, v1

    const/4 v1, 0x2

    aput v0, p0, v1

    const/4 v1, 0x3

    aput v0, p0, v1

    const/4 v1, 0x4

    aput v0, p0, v1

    return-object p0
.end method

.method private haveMultiplyConfirmedCenters()Z
    .locals 9

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v6

    add-float/2addr v6, v5

    move v5, v6

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ge v4, v1, :cond_2

    return v3

    :cond_2
    int-to-float v0, v0

    div-float v0, v5, v0

    iget-object p0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v2, v1

    goto :goto_1

    :cond_3
    const p0, 0x3d4ccccd    # 0.05f

    mul-float/2addr v5, p0

    cmpg-float p0, v2, v5

    if-gtz p0, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3
.end method


# virtual methods
.method final find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v4, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    iget-object v5, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v5

    mul-int/lit8 v6, v4, 0x3

    div-int/lit16 v6, v6, 0xe4

    const/4 v7, 0x3

    if-lt v6, v7, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v6, v7

    :cond_2
    const/4 v1, 0x5

    new-array v1, v1, [I

    add-int/lit8 v8, v6, -0x1

    move v9, v6

    move v6, v3

    :goto_1
    const/4 v11, 0x2

    if-ge v8, v4, :cond_12

    if-nez v6, :cond_12

    aput v3, v1, v3

    aput v3, v1, v2

    aput v3, v1, v11

    aput v3, v1, v7

    const/4 v12, 0x4

    aput v3, v1, v12

    move v14, v6

    move v13, v9

    move v6, v3

    move v9, v6

    :goto_2
    if-ge v6, v5, :cond_f

    iget-object v15, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v15, v6, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-eqz v15, :cond_4

    and-int/lit8 v15, v9, 0x1

    if-ne v15, v2, :cond_3

    add-int/lit8 v9, v9, 0x1

    :cond_3
    aget v15, v1, v9

    add-int/2addr v15, v2

    aput v15, v1, v9

    goto/16 :goto_7

    :cond_4
    and-int/lit8 v15, v9, 0x1

    if-nez v15, :cond_e

    if-ne v9, v12, :cond_d

    invoke-static {v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-boolean v9, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v9, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v14

    goto :goto_5

    :cond_5
    iget-object v9, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-gt v9, v2, :cond_7

    :cond_6
    move v9, v3

    goto :goto_4

    :cond_7
    iget-object v9, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v13, 0x0

    :cond_8
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v15}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v10

    if-lt v10, v11, :cond_8

    if-nez v13, :cond_9

    move-object v13, v15

    goto :goto_3

    :cond_9
    iput-boolean v2, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    sub-float/2addr v10, v13

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v9, v9

    div-int/2addr v9, v11

    :goto_4
    aget v10, v1, v11

    if-le v9, v10, :cond_a

    aget v6, v1, v11

    sub-int/2addr v9, v6

    sub-int/2addr v9, v11

    add-int/2addr v8, v9

    add-int/lit8 v6, v5, -0x1

    :cond_a
    :goto_5
    aput v3, v1, v3

    aput v3, v1, v2

    aput v3, v1, v11

    aput v3, v1, v7

    aput v3, v1, v12

    move v9, v3

    move v13, v11

    goto :goto_7

    :cond_b
    aget v9, v1, v11

    aput v9, v1, v3

    aget v9, v1, v7

    aput v9, v1, v2

    aget v9, v1, v12

    aput v9, v1, v11

    aput v2, v1, v7

    aput v3, v1, v12

    goto :goto_6

    :cond_c
    aget v9, v1, v11

    aput v9, v1, v3

    aget v9, v1, v7

    aput v9, v1, v2

    aget v9, v1, v12

    aput v9, v1, v11

    aput v2, v1, v7

    aput v3, v1, v12

    :goto_6
    move v9, v7

    goto :goto_7

    :cond_d
    add-int/lit8 v9, v9, 0x1

    aget v10, v1, v9

    add-int/2addr v10, v2

    aput v10, v1, v9

    goto :goto_7

    :cond_e
    aget v10, v1, v9

    add-int/2addr v10, v2

    aput v10, v1, v9

    :goto_7
    add-int/2addr v6, v2

    goto/16 :goto_2

    :cond_f
    invoke-static {v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v0, v1, v8, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v6

    if-eqz v6, :cond_11

    aget v6, v1, v3

    iget-boolean v9, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v9, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v9

    move/from16 v16, v9

    move v9, v6

    move/from16 v6, v16

    goto :goto_9

    :cond_10
    move v9, v6

    goto :goto_8

    :cond_11
    move v9, v13

    :goto_8
    move v6, v14

    :goto_9
    add-int/2addr v8, v9

    goto/16 :goto_1

    :cond_12
    iget-object v1, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v7, :cond_18

    const/4 v4, 0x0

    if-le v1, v7, :cond_15

    iget-object v5, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    move v8, v6

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v9

    add-float/2addr v6, v9

    mul-float/2addr v9, v9

    add-float/2addr v8, v9

    goto :goto_a

    :cond_13
    int-to-float v1, v1

    div-float/2addr v6, v1

    div-float/2addr v8, v1

    mul-float v1, v6, v6

    sub-float/2addr v8, v1

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v1, v8

    iget-object v5, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v8, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v5, v3

    :goto_b
    iget-object v8, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_15

    iget-object v8, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v7, :cond_15

    iget-object v8, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    sub-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v1

    if-lez v8, :cond_14

    iget-object v8, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    :cond_14
    add-int/2addr v5, v2

    goto :goto_b

    :cond_15
    iget-object v1, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v7, :cond_17

    iget-object v1, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    add-float/2addr v4, v5

    goto :goto_c

    :cond_16
    iget-object v1, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v1

    iget-object v1, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v5, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1, v7, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_17
    new-array v1, v7, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    iget-object v4, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v4, v1, v3

    iget-object v3, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v3, v1, v2

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v0, v1, v11

    invoke-static {v1}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v0, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object v0

    :cond_18
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method protected final handlePossibleCenter([III)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    add-int/2addr v3, v5

    const/4 v5, 0x2

    aget v6, v1, v5

    add-int/2addr v3, v6

    const/4 v6, 0x3

    aget v7, v1, v6

    add-int/2addr v3, v7

    const/4 v7, 0x4

    aget v8, v1, v7

    add-int/2addr v3, v8

    move/from16 v8, p3

    invoke-static {v1, v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v8

    float-to-int v8, v8

    aget v9, v1, v5

    iget-object v10, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v12

    move/from16 v13, p2

    :goto_0
    if-ltz v13, :cond_0

    invoke-virtual {v10, v8, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_0

    aget v14, v12, v5

    add-int/2addr v14, v4

    aput v14, v12, v5

    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    :cond_0
    if-gez v13, :cond_1

    goto/16 :goto_6

    :cond_1
    :goto_1
    if-ltz v13, :cond_2

    invoke-virtual {v10, v8, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-nez v15, :cond_2

    aget v15, v12, v4

    if-gt v15, v9, :cond_2

    aget v15, v12, v4

    add-int/2addr v15, v4

    aput v15, v12, v4

    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    :cond_2
    if-ltz v13, :cond_d

    aget v15, v12, v4

    if-le v15, v9, :cond_3

    goto/16 :goto_6

    :cond_3
    :goto_2
    if-ltz v13, :cond_4

    invoke-virtual {v10, v8, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-eqz v15, :cond_4

    aget v15, v12, v2

    if-gt v15, v9, :cond_4

    aget v15, v12, v2

    add-int/2addr v15, v4

    aput v15, v12, v2

    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    :cond_4
    aget v13, v12, v2

    if-le v13, v9, :cond_5

    goto/16 :goto_6

    :cond_5
    add-int/lit8 v13, p2, 0x1

    :goto_3
    if-ge v13, v11, :cond_6

    invoke-virtual {v10, v8, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-eqz v15, :cond_6

    aget v15, v12, v5

    add-int/2addr v15, v4

    aput v15, v12, v5

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    if-ne v13, v11, :cond_7

    goto :goto_6

    :cond_7
    :goto_4
    if-ge v13, v11, :cond_8

    invoke-virtual {v10, v8, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-nez v15, :cond_8

    aget v15, v12, v6

    if-ge v15, v9, :cond_8

    aget v15, v12, v6

    add-int/2addr v15, v4

    aput v15, v12, v6

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_8
    if-eq v13, v11, :cond_d

    aget v15, v12, v6

    if-lt v15, v9, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    if-ge v13, v11, :cond_a

    invoke-virtual {v10, v8, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-eqz v15, :cond_a

    aget v15, v12, v7

    if-ge v15, v9, :cond_a

    aget v15, v12, v7

    add-int/2addr v15, v4

    aput v15, v12, v7

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_a
    aget v10, v12, v7

    if-lt v10, v9, :cond_b

    goto :goto_6

    :cond_b
    aget v9, v12, v2

    aget v10, v12, v4

    add-int/2addr v9, v10

    aget v10, v12, v5

    add-int/2addr v9, v10

    aget v10, v12, v6

    add-int/2addr v9, v10

    aget v10, v12, v7

    add-int/2addr v9, v10

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x5

    mul-int/lit8 v10, v3, 0x2

    if-lt v9, v10, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {v12, v13}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v9

    goto :goto_7

    :cond_d
    :goto_6
    const/high16 v9, 0x7fc00000    # Float.NaN

    :goto_7
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_1f

    float-to-int v10, v9

    aget v1, v1, v5

    iget-object v11, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v13

    move v15, v8

    :goto_8
    if-ltz v15, :cond_e

    invoke-virtual {v11, v15, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v16

    if-eqz v16, :cond_e

    aget v16, v13, v5

    add-int/lit8 v16, v16, 0x1

    aput v16, v13, v5

    add-int/lit8 v15, v15, -0x1

    goto :goto_8

    :cond_e
    if-gez v15, :cond_f

    goto/16 :goto_e

    :cond_f
    :goto_9
    if-ltz v15, :cond_10

    invoke-virtual {v11, v15, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v16

    if-nez v16, :cond_10

    aget v14, v13, v4

    if-gt v14, v1, :cond_10

    aget v14, v13, v4

    add-int/2addr v14, v4

    aput v14, v13, v4

    add-int/lit8 v15, v15, -0x1

    goto :goto_9

    :cond_10
    if-ltz v15, :cond_1b

    aget v14, v13, v4

    if-le v14, v1, :cond_11

    goto/16 :goto_e

    :cond_11
    :goto_a
    if-ltz v15, :cond_12

    invoke-virtual {v11, v15, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_12

    aget v14, v13, v2

    if-gt v14, v1, :cond_12

    aget v14, v13, v2

    add-int/2addr v14, v4

    aput v14, v13, v2

    add-int/lit8 v15, v15, -0x1

    goto :goto_a

    :cond_12
    aget v14, v13, v2

    if-le v14, v1, :cond_13

    goto/16 :goto_e

    :cond_13
    add-int/2addr v8, v4

    :goto_b
    if-ge v8, v12, :cond_14

    invoke-virtual {v11, v8, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_14

    aget v14, v13, v5

    add-int/2addr v14, v4

    aput v14, v13, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_14
    if-ne v8, v12, :cond_15

    goto :goto_e

    :cond_15
    :goto_c
    if-ge v8, v12, :cond_16

    invoke-virtual {v11, v8, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-nez v14, :cond_16

    aget v14, v13, v6

    if-ge v14, v1, :cond_16

    aget v14, v13, v6

    add-int/2addr v14, v4

    aput v14, v13, v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_16
    if-eq v8, v12, :cond_1b

    aget v14, v13, v6

    if-lt v14, v1, :cond_17

    goto :goto_e

    :cond_17
    :goto_d
    if-ge v8, v12, :cond_18

    invoke-virtual {v11, v8, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_18

    aget v14, v13, v7

    if-ge v14, v1, :cond_18

    aget v14, v13, v7

    add-int/2addr v14, v4

    aput v14, v13, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_18
    aget v10, v13, v7

    if-lt v10, v1, :cond_19

    goto :goto_e

    :cond_19
    aget v1, v13, v2

    aget v10, v13, v4

    add-int/2addr v1, v10

    aget v5, v13, v5

    add-int/2addr v1, v5

    aget v5, v13, v6

    add-int/2addr v1, v5

    aget v5, v13, v7

    add-int/2addr v1, v5

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    if-lt v1, v3, :cond_1a

    goto :goto_e

    :cond_1a
    invoke-static {v13}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {v13, v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v14

    goto :goto_f

    :cond_1b
    :goto_e
    const/high16 v14, 0x7fc00000    # Float.NaN

    :goto_f
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1f

    int-to-float v1, v3

    const/high16 v3, 0x40e00000    # 7.0f

    div-float/2addr v1, v3

    move v3, v2

    :goto_10
    iget-object v5, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1d

    iget-object v5, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v5, v1, v9, v14}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v2, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-virtual {v5, v9, v14, v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    goto :goto_11

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1d
    :goto_11
    if-nez v2, :cond_1e

    new-instance v2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v2, v14, v9, v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    iget-object v1, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v0, :cond_1e

    invoke-interface {v0, v2}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    :cond_1e
    return v4

    :cond_1f
    return v2
.end method
