.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    }
.end annotation


# instance fields
.field private dependencyOriginalTranslationX:F

.field private dependencyOriginalTranslationY:F

.field private final tmpArray:[I

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF1:Landroid/graphics/RectF;

.field private final tmpRectF2:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    return-void
.end method

.method private calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/material/animation/MotionTiming;",
            "Lcom/google/android/material/animation/MotionTiming;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    cmpl-float p1, p1, p0

    if-eqz p1, :cond_4

    cmpl-float p1, p2, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    cmpg-float p0, p2, p0

    if-ltz p0, :cond_2

    :cond_1
    if-nez p3, :cond_3

    if-lez p1, :cond_3

    :cond_2
    iget-object p0, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string p1, "translationXCurveUpwards"

    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p0

    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string p2, "translationYCurveUpwards"

    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p0, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string p1, "translationXCurveDownwards"

    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p0

    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string p2, "translationYCurveDownwards"

    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p0, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string p1, "translationXLinear"

    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p0

    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string p2, "translationYLinear"

    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p1

    :goto_1
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    const/4 p0, 0x0

    iget p1, p3, Lcom/google/android/material/animation/Positioning;->gravity:I

    and-int/lit8 p1, p1, 0x7

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget p0, v1, Landroid/graphics/RectF;->right:F

    iget p1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_1
    iget p0, v1, Landroid/graphics/RectF;->left:F

    iget p1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    :goto_0
    sub-float/2addr p0, p1

    :goto_1
    iget p1, p3, Lcom/google/android/material/animation/Positioning;->xAdjustment:F

    add-float/2addr p0, p1

    return p0
.end method

.method private calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    const/4 p0, 0x0

    iget p1, p3, Lcom/google/android/material/animation/Positioning;->gravity:I

    and-int/lit8 p1, p1, 0x70

    const/16 p2, 0x10

    if-eq p1, p2, :cond_2

    const/16 p2, 0x30

    if-eq p1, p2, :cond_1

    const/16 p2, 0x50

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget p0, v1, Landroid/graphics/RectF;->bottom:F

    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_1
    iget p0, v1, Landroid/graphics/RectF;->top:F

    iget p1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    :goto_0
    sub-float/2addr p0, p1

    :goto_1
    iget p1, p3, Lcom/google/android/material/animation/Positioning;->yAdjustment:F

    add-float/2addr p0, p1

    return p0
.end method

.method private calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F
    .locals 6

    invoke-virtual {p2}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v2

    iget-object p0, p1, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string p1, "expansion"

    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide p0

    add-long/2addr p0, v4

    const-wide/16 v4, 0x11

    add-long/2addr p0, v4

    sub-long/2addr p0, v0

    long-to-float p0, p0

    long-to-float p1, v2

    div-float/2addr p0, p1

    invoke-virtual {p2}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    invoke-static {p3, p4, p0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    int-to-float p0, p0

    invoke-virtual {p2, v0, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    neg-float p0, p0

    float-to-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method private createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JIIF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-lez p0, :cond_0

    invoke-static {p1, p4, p5, p6, p6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {p0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-interface {p7, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 0

    instance-of p0, p1, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_2

    instance-of p0, p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p0, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 0

    iget p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez p0, :cond_0

    const/16 p0, 0x50

    iput p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    :cond_0
    return-void
.end method

.method protected onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v8, v0, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;

    move-result-object v12

    if-eqz v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {p2 .. p2}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    invoke-static/range {p1 .. p1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v15, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz v11, :cond_2

    if-nez p4, :cond_1

    neg-float v0, v0

    invoke-virtual {v10, v0}, Landroid/view/View;->setTranslationZ(F)V

    :cond_1
    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v1, v7, [F

    aput v15, v1, v6

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v7, [F

    neg-float v0, v0

    aput v0, v2, v6

    invoke-static {v10, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_0
    iget-object v1, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v2, "elevation"

    invoke-virtual {v1, v2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    iget-object v1, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-direct {v8, v9, v10, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v1

    iget-object v2, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-direct {v8, v9, v10, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v2

    invoke-direct {v8, v1, v2, v11, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/material/animation/MotionTiming;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/animation/MotionTiming;

    if-eqz v11, :cond_4

    if-nez p4, :cond_3

    neg-float v5, v1

    invoke-virtual {v10, v5}, Landroid/view/View;->setTranslationX(F)V

    neg-float v5, v2

    invoke-virtual {v10, v5}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v16, v14

    new-array v14, v7, [F

    aput v15, v14, v6

    invoke-static {v10, v5, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v17, v5

    new-array v5, v7, [F

    aput v15, v5, v6

    invoke-static {v10, v14, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    neg-float v1, v1

    neg-float v2, v2

    invoke-direct {v8, v12, v4, v1, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F

    move-result v1

    invoke-direct {v8, v12, v3, v2, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F

    move-result v2

    iget-object v14, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v14}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v15, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    invoke-virtual {v15, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v14, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    invoke-direct {v8, v10, v14}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v14, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v14, v15}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-virtual {v0, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object v1, v5

    move-object/from16 v5, v17

    goto :goto_1

    :cond_4
    move-object/from16 v16, v14

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v14, v7, [F

    neg-float v1, v1

    aput v1, v14, v6

    invoke-static {v10, v5, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v14, v7, [F

    neg-float v2, v2

    aput v2, v14, v6

    invoke-static {v10, v1, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v5}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-virtual {v3, v1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v22

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v23

    iget-object v0, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-direct {v8, v9, v10, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v0

    iget-object v1, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-direct {v8, v9, v10, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v1

    invoke-direct {v8, v0, v1, v11, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/animation/MotionTiming;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/animation/MotionTiming;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v7, [F

    if-eqz v11, :cond_5

    goto :goto_2

    :cond_5
    iget v0, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    :goto_2
    aput v0, v5, v6

    invoke-static {v9, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v7, [F

    if-eqz v11, :cond_6

    goto :goto_3

    :cond_6
    iget v1, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    :goto_3
    aput v1, v5, v6

    invoke-static {v9, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v3, v0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-virtual {v2, v1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v14, v10, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    if-eqz v14, :cond_b

    instance-of v0, v9, Landroid/widget/ImageView;

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    move-object v0, v10

    check-cast v0, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    move-object v1, v9

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    if-eqz v11, :cond_a

    if-nez p4, :cond_9

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_9
    sget-object v2, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    new-array v3, v7, [I

    aput v6, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_4

    :cond_a
    sget-object v3, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    new-array v4, v7, [I

    aput v2, v4, v6

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :goto_4
    new-instance v3, Lcom/google/android/material/transformation/FabTransformationBehavior$2;

    invoke-direct {v3, v8, v10}, Lcom/google/android/material/transformation/FabTransformationBehavior$2;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v4, "iconFade"

    invoke-virtual {v3, v4}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/material/transformation/FabTransformationBehavior$3;

    invoke-direct {v2, v8, v0, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior$3;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v15, v16

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    :goto_5
    move-object/from16 v15, v16

    :goto_6
    if-nez v14, :cond_c

    goto/16 :goto_8

    :cond_c
    move-object v5, v10

    check-cast v5, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    iget-object v0, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    iget-object v1, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    iget-object v2, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    invoke-direct {v8, v9, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    iget v3, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    iget v4, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    invoke-direct {v8, v10, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-direct {v8, v9, v10, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v0

    neg-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget-object v1, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    iget-object v2, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    iget-object v3, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    invoke-direct {v8, v9, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    iget v4, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    iget v6, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    invoke-direct {v8, v10, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-direct {v8, v9, v10, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v1

    neg-float v1, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    move-object v2, v9

    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v3, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    iget-object v2, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v6, v2, v3

    iget-object v2, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v3, "expansion"

    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v4

    if-eqz v11, :cond_f

    if-nez p4, :cond_d

    new-instance v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v2, v0, v1, v6}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    invoke-interface {v5, v2}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    :cond_d
    if-eqz p4, :cond_e

    invoke-interface {v5}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    move v6, v2

    :cond_e
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v18, v0

    move/from16 v19, v1

    invoke-static/range {v18 .. v23}, Lcom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    move-result v2

    invoke-static {v5, v0, v1, v2}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v2

    new-instance v3, Lcom/google/android/material/transformation/FabTransformationBehavior$4;

    invoke-direct {v3, v8, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior$4;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v18

    float-to-int v3, v0

    float-to-int v1, v1

    move-object/from16 v0, p0

    move/from16 v17, v1

    move-object/from16 v1, p2

    move-object/from16 v20, v2

    move/from16 v21, v3

    move-wide/from16 v2, v18

    move-object/from16 v18, v4

    move/from16 v4, v21

    move-object/from16 v19, v5

    move/from16 v5, v17

    const/4 v9, 0x0

    move v9, v7

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    move-object/from16 v0, v18

    move-object/from16 v21, v19

    move-object/from16 v1, v20

    goto :goto_7

    :cond_f
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move v9, v7

    invoke-interface/range {v19 .. v19}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v2

    iget v7, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    invoke-static {v5, v0, v1, v6}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v17

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    float-to-int v4, v0

    float-to-int v1, v1

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object/from16 v1, p2

    move/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v5, v19

    move v9, v6

    move v6, v7

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v2

    iget-object v4, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionSpec;->getTotalDuration()J

    move-result-wide v4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    add-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gez v2, :cond_10

    move/from16 v3, v19

    move/from16 v2, v20

    invoke-static {v10, v2, v3, v9, v9}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    move-object/from16 v1, v17

    move-object/from16 v0, v18

    :goto_7
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v21 .. v21}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularRevealListener(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    if-nez v14, :cond_11

    goto :goto_b

    :cond_11
    move-object v0, v10

    check-cast v0, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    invoke-static/range {p1 .. p1}, Landroidx/core/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    goto :goto_9

    :cond_12
    const/4 v6, 0x0

    :goto_9
    const v1, 0xffffff

    and-int/2addr v1, v6

    if-eqz v11, :cond_14

    if-nez p4, :cond_13

    invoke-interface {v0, v6}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    :cond_13
    sget-object v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_a

    :cond_14
    const/4 v3, 0x1

    const/4 v5, 0x0

    sget-object v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    new-array v2, v3, [I

    aput v6, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_a
    invoke-static {}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->getInstance()Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object v1, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v2, "color"

    invoke-virtual {v1, v2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    instance-of v0, v10, Landroid/view/ViewGroup;

    if-nez v0, :cond_15

    :goto_c
    const/4 v4, 0x0

    goto/16 :goto_10

    :cond_15
    if-eqz v14, :cond_16

    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v0, :cond_16

    goto :goto_c

    :cond_16
    const v0, 0x7f0a044c

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-direct {v8, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_e

    :cond_17
    instance-of v0, v10, Lcom/google/android/material/transformation/TransformationChildLayout;

    if-nez v0, :cond_19

    instance-of v0, v10, Lcom/google/android/material/transformation/TransformationChildCard;

    if-eqz v0, :cond_18

    goto :goto_d

    :cond_18
    invoke-direct {v8, v10}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_e

    :cond_19
    :goto_d
    move-object v0, v10

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    :goto_e
    if-nez v0, :cond_1a

    goto :goto_c

    :cond_1a
    if-eqz v11, :cond_1c

    if-nez p4, :cond_1b

    sget-object v1, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    sget-object v1, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_f

    :cond_1c
    const/4 v2, 0x1

    const/4 v4, 0x0

    sget-object v1, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_f
    iget-object v1, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v2, "contentFade"

    invoke-virtual {v1, v2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_10
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v13}, Lcom/google/android/material/R$style;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    new-instance v1, Lcom/google/android/material/transformation/FabTransformationBehavior$1;

    move-object/from16 v2, p1

    move v9, v4

    invoke-direct {v1, v8, v11, v10, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior$1;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    :goto_11
    if-ge v9, v1, :cond_1d

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_1d
    return-object v0
.end method

.method protected abstract onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
.end method
