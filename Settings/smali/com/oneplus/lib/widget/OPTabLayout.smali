.class public Lcom/oneplus/lib/widget/OPTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "OPTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;,
        Lcom/oneplus/lib/widget/OPTabLayout$TabView;,
        Lcom/oneplus/lib/widget/OPTabLayout$Tab;,
        Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;
    }
.end annotation


# instance fields
.field private fast_out_slow_in_interpolator:Landroid/view/animation/Interpolator;

.field private mContentInsetStart:I

.field private mIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mMode:I

.field private mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

.field private final mRequestedTabMaxWidth:I

.field private mScrollAnimator:Landroid/animation/ValueAnimator;

.field private mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

.field private final mTabBackgroundResId:I

.field private mTabClickListener:Landroid/view/View$OnClickListener;

.field private mTabGravity:I

.field private mTabHorizontalSpacing:I

.field private mTabMaxWidth:I

.field private mTabMinWidth:I

.field private mTabPaddingBottom:I

.field private mTabPaddingEnd:I

.field private mTabPaddingStart:I

.field private mTabPaddingTop:I

.field private final mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

.field private mTabTextAppearance:I

.field private mTabTextColors:Landroid/content/res/ColorStateList;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/OPTabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f040009

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/lib/widget/OPTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040009

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMaxWidth:I

    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->fast_out_slow_in_interpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    new-instance v2, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;-><init>(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v3, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;II)V

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout:[I

    const v3, 0x7f13031e

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/4 p3, 0x5

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/4 p3, 0x4

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    const/16 p2, 0xf

    const p3, 0x7f13020e

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextAppearance:I

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingBottom:I

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingEnd:I

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingTop:I

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingStart:I

    iget p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingStart:I

    const/16 p3, 0xc

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingStart:I

    iget p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingTop:I

    const/16 p3, 0xd

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingTop:I

    iget p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingEnd:I

    const/16 p3, 0xb

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingEnd:I

    iget p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingBottom:I

    const/16 p3, 0xa

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingBottom:I

    iget p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextAppearance:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->TextAppearance:[I

    invoke-virtual {p3, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x3

    :try_start_0
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    :cond_0
    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    new-array v4, v3, [[I

    new-array v5, v3, [I

    sget-object v6, Landroid/widget/HorizontalScrollView;->SELECTED_STATE_SET:[I

    aput-object v6, v4, v0

    aput p2, v5, v0

    sget-object p2, Landroid/widget/HorizontalScrollView;->EMPTY_STATE_SET:[I

    aput-object p2, v4, v1

    aput v2, v5, v1

    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    :cond_1
    const/4 p2, 0x7

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMinWidth:I

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mRequestedTabMaxWidth:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabBackgroundResId:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mContentInsetStart:I

    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_horizontalSpacing:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabHorizontalSpacing:I

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->applyModeAndGravity()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/OPTabLayout;I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->update()V

    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    return p0
.end method

.method static synthetic access$1202(Lcom/oneplus/lib/widget/OPTabLayout;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    return p1
.end method

.method static synthetic access$1300(Lcom/oneplus/lib/widget/OPTabLayout;I)I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/oneplus/lib/widget/OPTabLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewsLayoutParams()V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->fast_out_slow_in_interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabBackgroundResId:I

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingStart:I

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingTop:I

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingEnd:I

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingBottom:I

    return p0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMinWidth:I

    return p0
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMaxWidth:I

    return p0
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextAppearance:I

    return p0
.end method

.method private animateToTab(I)V
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    if-gtz v6, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-direct {p0, p1, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_4

    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/oneplus/lib/widget/OPTabLayout;->fast_out_slow_in_interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/oneplus/lib/widget/OPTabLayout$2;

    invoke-direct {v5, p0}, Lcom/oneplus/lib/widget/OPTabLayout$2;-><init>(Lcom/oneplus/lib/widget/OPTabLayout;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v0, v5, v4

    aput v1, v5, v2

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    return-void

    :cond_6
    :goto_2
    invoke-virtual {p0, p1, v1, v2}, Lcom/oneplus/lib/widget/OPTabLayout;->setScrollPosition(IFZ)V

    return-void
.end method

.method private applyModeAndGravity()V
    .locals 3

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mContentInsetStart:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewsLayoutParams()V

    return-void
.end method

.method private calculateScrollXForTab(IF)I
    .locals 3

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    add-int/2addr v2, v1

    int-to-float v1, v2

    mul-float/2addr v1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr v1, p2

    float-to-int p2, v1

    add-int/2addr p1, p2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p2, p0

    return p2

    :cond_3
    return v1
.end method

.method private getDefaultMaxWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mRequestedTabMaxWidth:I

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getTabCount()I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method private setSelectedTabView(I)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateTab(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->update()V

    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 p0, 0x3f800000    # 1.0f

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p0, 0x0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    return-void
.end method

.method private updateTabViewsLayoutParams()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->addTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Z)V

    return-void
.end method

.method public addTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Z)V
    .locals 6

    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->access$000(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)Lcom/oneplus/lib/widget/OPTabLayout;

    move-result-object v0

    if-ne v0, p0, :cond_5

    new-instance v0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;-><init>(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/content/Context;Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_0

    new-instance v2, Lcom/oneplus/lib/widget/OPTabLayout$1;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/OPTabLayout$1;-><init>(Lcom/oneplus/lib/widget/OPTabLayout;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabHorizontalSpacing:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setSelected(Z)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setPosition(I)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    add-int/2addr v0, v1

    if-ge v0, v2, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-virtual {v3, v0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setPosition(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->select()V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab belongs to a different OPTabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSelectedTabPosition()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getTabAt(I)Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    return-object p0
.end method

.method public getTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getTabGravity()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    return p0
.end method

.method public getTabMode()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    return p0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public newTab()Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 1

    new-instance v0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;-><init>(Lcom/oneplus/lib/widget/OPTabLayout;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-le v2, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v4, v2}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_2
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mRequestedTabMaxWidth:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getDefaultMaxWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-eqz v0, :cond_3

    if-le v0, v1, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMaxWidth:I

    if-eq v1, v0, :cond_5

    iput v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMaxWidth:I

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    :cond_5
    return-void
.end method

.method public removeAllTabs()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setPosition(I)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    return-void
.end method

.method selectTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->selectTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Z)V

    return-void
.end method

.method selectTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-ne v0, p1, :cond_1

    if-eqz v0, :cond_7

    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    if-eqz p2, :cond_0

    check-cast p2, Lcom/oneplus/settings/quicklaunch/TabUtils$ViewPagerOnTabSelectedListener;

    invoke-virtual {p2, v0}, Lcom/oneplus/settings/quicklaunch/TabUtils$ViewPagerOnTabSelectedListener;->onTabReselected(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout;->animateToTab(I)V

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getPosition()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->setSelectedTabView(I)V

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getPosition()I

    move-result p2

    if-ne p2, v0, :cond_4

    :cond_3
    if-eq v1, v0, :cond_4

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, p2, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->setScrollPosition(IFZ)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->animateToTab(I)V

    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_6

    check-cast v0, Lcom/oneplus/settings/quicklaunch/TabUtils$ViewPagerOnTabSelectedListener;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/quicklaunch/TabUtils$ViewPagerOnTabSelectedListener;->onTabUnselected(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V

    :cond_6
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    iget-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    if-eqz p0, :cond_7

    check-cast p0, Lcom/oneplus/settings/quicklaunch/TabUtils$ViewPagerOnTabSelectedListener;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/quicklaunch/TabUtils$ViewPagerOnTabSelectedListener;->onTabSelected(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPTabLayout;->calculateScrollXForTab(IF)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    if-eqz p3, :cond_2

    int-to-float p1, p1

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout;->setSelectedTabView(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabMinWidth(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMinWidth:I

    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTab(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
