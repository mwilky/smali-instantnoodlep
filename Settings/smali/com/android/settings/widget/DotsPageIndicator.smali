.class public Lcom/android/settings/widget/DotsPageIndicator;
.super Landroid/view/View;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;,
        Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;,
        Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;,
        Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;,
        Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;,
        Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;
    }
.end annotation


# instance fields
.field private animDuration:J

.field private animHalfDuration:J

.field private attachedState:Z

.field private final combinedUnselectedPath:Landroid/graphics/Path;

.field controlX1:F

.field controlX2:F

.field controlY1:F

.field controlY2:F

.field private currentPage:I

.field private dotBottomY:F

.field private dotCenterX:[F

.field private dotCenterY:F

.field private dotDiameter:I

.field private dotRadius:F

.field private dotRevealFractions:[F

.field private dotTopY:F

.field endX1:F

.field endX2:F

.field endY1:F

.field endY2:F

.field private gap:I

.field private halfDotRadius:F

.field private final interpolator:Landroid/view/animation/Interpolator;

.field private joiningAnimationSet:Landroid/animation/AnimatorSet;

.field private joiningAnimations:[Landroid/animation/ValueAnimator;

.field private joiningFractions:[F

.field private moveAnimation:Landroid/animation/ValueAnimator;

.field private pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private pageCount:I

.field private final rectF:Landroid/graphics/RectF;

.field private retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

.field private retreatingJoinX1:F

.field private retreatingJoinX2:F

.field private revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

.field private selectedColour:I

.field private selectedDotInPosition:Z

.field private selectedDotX:F

.field private final selectedPaint:Landroid/graphics/Paint;

.field private unselectedColour:I

.field private final unselectedDotLeftPath:Landroid/graphics/Path;

.field private final unselectedDotPath:Landroid/graphics/Path;

.field private final unselectedDotRightPath:Landroid/graphics/Path;

.field private final unselectedPaint:Landroid/graphics/Paint;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/settings/R$styleable;->DotsPageIndicator:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    mul-int/lit8 p3, v0, 0x8

    const/4 v1, 0x2

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    iget p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    div-int/2addr p3, v1

    int-to-float p3, p3

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    iget p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    mul-int/lit8 v0, v0, 0xc

    const/4 p3, 0x3

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    const/16 p3, 0x190

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    int-to-long v0, p3

    iput-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    iget-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->animHalfDuration:J

    const/4 p3, 0x4

    const v0, -0x7f000001

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedColour:I

    const/4 p3, 0x1

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedColour:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedColour:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedColour:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const p2, 0x10c000d

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    new-instance p1, Lcom/android/settings/widget/DotsPageIndicator$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/DotsPageIndicator$1;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/widget/DotsPageIndicator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->attachedState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/widget/DotsPageIndicator;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    return p0
.end method

.method static synthetic access$1100(Lcom/android/settings/widget/DotsPageIndicator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/settings/widget/DotsPageIndicator;[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    return p0
.end method

.method static synthetic access$1202(Lcom/android/settings/widget/DotsPageIndicator;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    return p0
.end method

.method static synthetic access$1302(Lcom/android/settings/widget/DotsPageIndicator;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/widget/DotsPageIndicator;IF)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    aput p2, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/widget/DotsPageIndicator;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->calculateDotPositions()V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->resetState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    return p0
.end method

.method static synthetic access$302(Lcom/android/settings/widget/DotsPageIndicator;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/widget/DotsPageIndicator;)Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settings/widget/DotsPageIndicator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/widget/DotsPageIndicator;IF)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    aput p2, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/widget/DotsPageIndicator;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->animHalfDuration:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/settings/widget/DotsPageIndicator;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    return-object p0
.end method

.method private calculateDotPositions()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRequiredWidth()I

    move-result v3

    sub-int/2addr v2, v0

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    iget v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v2

    int-to-float v4, v4

    add-float/2addr v4, v0

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    return-void
.end method

.method private cancelRunningAnimations()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->resetState()V

    return-void
.end method

.method private getDesiredHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method private getDesiredWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRequiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method private getRequiredWidth()I
    .locals 2

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    mul-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    mul-int/2addr v0, p0

    add-int/2addr v0, v1

    return v0
.end method

.method private getRetreatingJoinPath()Landroid/graphics/Path;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    return-object p0
.end method

.method private resetState()V
    .locals 3

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    iput-boolean v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    :cond_0
    return-void
.end method

.method private setCurrentPageImmediate()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    :goto_0
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    :cond_1
    return-void
.end method

.method private setPageCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->calculateDotPositions()V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->resetState()V

    return-void
.end method

.method private setSelectedPage(I)V
    .locals 13

    iget v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    if-eq p1, v6, :cond_5

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelRunningAnimations()V

    sub-int v0, p1, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v0, v0, p1

    const/4 v8, 0x2

    new-array v1, v8, [F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    const/4 v9, 0x0

    aput v2, v1, v9

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    new-instance v11, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    const/high16 v1, 0x3e800000    # 0.25f

    if-le p1, v6, :cond_1

    new-instance v2, Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    sub-float v3, v0, v3

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    invoke-direct {v2, p0, v0}, Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    invoke-static {v3, v0, v1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline0(FFFF)F

    move-result v0

    invoke-direct {v2, p0, v0}, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    :goto_0
    move-object v5, v2

    move-object v0, v11

    move-object v1, p0

    move v2, v6

    move v3, p1

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;IIILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V

    iput-object v11, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    new-instance v0, Lcom/android/settings/widget/DotsPageIndicator$3;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/DotsPageIndicator$3;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/settings/widget/DotsPageIndicator$4;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/DotsPageIndicator$4;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    const-wide/16 v1, 0x4

    if-eqz v0, :cond_2

    iget-wide v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    div-long/2addr v3, v1

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    invoke-virtual {v10, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-wide v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    const-wide/16 v11, 0x3

    mul-long/2addr v3, v11

    div-long/2addr v3, v1

    invoke-virtual {v10, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v10, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    new-array v0, v7, [Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimations:[Landroid/animation/ValueAnimator;

    :goto_2
    if-ge v9, v7, :cond_4

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimations:[Landroid/animation/ValueAnimator;

    if-le p1, v6, :cond_3

    add-int v1, v6, v9

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v6, -0x1

    sub-int/2addr v1, v9

    :goto_3
    int-to-long v2, v9

    iget-wide v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    const-wide/16 v10, 0x8

    div-long/2addr v4, v10

    mul-long/2addr v4, v2

    new-array v2, v8, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/settings/widget/DotsPageIndicator$5;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/widget/DotsPageIndicator$5;-><init>(Lcom/android/settings/widget/DotsPageIndicator;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-wide v10, p0, Lcom/android/settings/widget/DotsPageIndicator;->animHalfDuration:J

    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aput-object v2, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimations:[Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public clearAnimation()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->clearAnimation()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelRunningAnimations()V

    return-void
.end method

.method getCurrentPage()I
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    return p0
.end method

.method getDotCenterY()F
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    return p0
.end method

.method getSelectedColour()I
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedColour:I

    return p0
.end method

.method getSelectedDotX()F
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    return p0
.end method

.method getUnselectedColour()I
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedColour:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v2, :cond_c

    iget v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    const/high16 v4, -0x40800000    # -1.0f

    if-ge v2, v3, :cond_a

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v6, v5, v2

    aget v3, v5, v3

    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    if-ne v2, v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    aget v5, v5, v2

    :goto_2
    iget-object v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    aget v8, v8, v2

    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    const/4 v9, 0x0

    cmpl-float v10, v5, v9

    if-eqz v10, :cond_3

    cmpl-float v11, v5, v4

    if-nez v11, :cond_5

    :cond_3
    cmpl-float v9, v8, v9

    if-nez v9, :cond_5

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    if-ne v2, v9, :cond_4

    iget-boolean v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    if-eq v9, v7, :cond_5

    :cond_4
    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v11, v11, v2

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sget-object v14, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_5
    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v11, 0x42b40000    # 90.0f

    const/high16 v12, 0x43340000    # 180.0f

    if-lez v10, :cond_6

    cmpg-float v10, v5, v9

    if-gez v10, :cond_6

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    cmpl-float v10, v10, v4

    if-nez v10, :cond_6

    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->rewind()V

    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v10, v6, v13}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v14, v6, v13

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    add-float/2addr v13, v6

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v10, v14, v15, v13, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v10, v11, v12, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v4, v6

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    add-float/2addr v10, v4

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    add-float v10, v6, v4

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    sub-float v4, v13, v4

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    move-object/from16 v16, v4

    move/from16 v17, v14

    move/from16 v18, v15

    move/from16 v19, v12

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v13

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iput v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    add-float/2addr v9, v10

    iput v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    add-float/2addr v10, v6

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    move-object/from16 v16, v4

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    sget-object v10, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v4, v3, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v10, v3, v9

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    add-float/2addr v9, v3

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v4, v10, v12, v9, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v10, -0x3ccc0000    # -180.0f

    invoke-virtual {v4, v9, v11, v10, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v4, v3, v4

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    sub-float/2addr v4, v9

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    sub-float v9, v3, v4

    iput v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iput v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    sub-float v4, v10, v4

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    move-object/from16 v16, v4

    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v20, v15

    move/from16 v21, v9

    move/from16 v22, v10

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iput v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    add-float/2addr v9, v10

    iput v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    sub-float v10, v9, v10

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    move-object/from16 v16, v4

    move/from16 v17, v10

    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v20, v14

    move/from16 v21, v9

    move/from16 v22, v15

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    sget-object v10, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_3

    :cond_6
    move v4, v9

    :goto_3
    cmpl-float v4, v5, v4

    const/high16 v9, 0x3f800000    # 1.0f

    if-lez v4, :cond_7

    cmpg-float v4, v5, v9

    if-gez v4, :cond_7

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v4, v4, v10

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v4, v6, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v12, v6, v10

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    add-float/2addr v10, v6

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v4, v12, v13, v10, v14}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v12, 0x43340000    # 180.0f

    invoke-virtual {v4, v10, v11, v12, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float v10, v6, v4

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float/2addr v10, v11

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    mul-float v11, v5, v4

    sub-float/2addr v10, v11

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    sub-float v11, v10, v11

    iput v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    sub-float v11, v9, v5

    mul-float/2addr v4, v11

    sub-float v4, v10, v4

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    move-object/from16 v16, v12

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v15

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v4

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float v12, v11, v10

    add-float/2addr v12, v9

    iput v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iput v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    mul-float/2addr v10, v5

    add-float/2addr v10, v9

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    move-object/from16 v16, v4

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v10, v3, v9

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    add-float/2addr v9, v3

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v4, v10, v12, v9, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v10, 0x43870000    # 270.0f

    const/high16 v12, 0x43340000    # 180.0f

    invoke-virtual {v4, v9, v10, v12, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float v9, v5, v7

    add-float/2addr v4, v9

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    add-float/2addr v9, v4

    iput v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    mul-float/2addr v7, v11

    add-float/2addr v7, v4

    iput v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iput v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    move-object/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v20, v14

    move/from16 v21, v4

    move/from16 v22, v7

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v11, v7

    sub-float v9, v4, v11

    iput v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iput v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    mul-float/2addr v7, v5

    sub-float/2addr v4, v7

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    iput v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_7
    move v4, v9

    :goto_4
    cmpl-float v4, v5, v4

    if-nez v4, :cond_8

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v7, v6, v5

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    add-float/2addr v3, v5

    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v4, v7, v9, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v5, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_8
    const v3, 0x3727c5ac    # 1.0E-5f

    cmpl-float v3, v8, v3

    if-lez v3, :cond_9

    iget-object v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v5, v8

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v6, v4, v5, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_9
    iget-object v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    iget v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_b

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRetreatingJoinPath()Landroid/graphics/Path;

    move-result-object v3

    sget-object v4, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_b
    iget-object v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    iget v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    iget-object v0, v0, Lcom/android/settings/widget/DotsPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_c
    :goto_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getDesiredHeight()I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getDesiredWidth()I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    invoke-virtual {p0, p2, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->calculateDotPositions()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->attachedState:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->setSelectedPage(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    :goto_0
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->calculateDotPositions()V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/DotsPageIndicator;->setPageCount(I)V

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    new-instance v0, Lcom/android/settings/widget/DotsPageIndicator$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/DotsPageIndicator$2;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    return-void
.end method
