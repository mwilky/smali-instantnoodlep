.class public Lcom/oneplus/settings/edgeeffect/SpringListView2;
.super Landroid/widget/ListView;
.source "SpringListView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;,
        Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;,
        Lcom/oneplus/settings/edgeeffect/SpringListView2$ViewEdgeEffectFactory;,
        Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;
    }
.end annotation


# static fields
.field private static final DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/oneplus/settings/edgeeffect/SpringListView2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;

.field private mAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mDampedScrollShift:F

.field private mDispatchScrollCounter:I

.field private mDistance:F

.field private mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;

.field private mFirstChildTop:I

.field mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mGlowing:Z

.field private mInitialTouchY:I

.field mLastChildBottom:I

.field private mLastTouchY:I

.field private mLastX:F

.field private mLastY:F

.field private mLastYVel:F

.field private mMaxFlingVelocity:I

.field private mNestedOffsets:[I

.field mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

.field mOverScrollNested:Z

.field private mPullCount:I

.field mPullGrowBottom:F

.field mPullGrowTop:F

.field mScrollConsumed:[I

.field private mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field mScrollStepConsumed:[I

.field private mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oneplus/settings/edgeeffect/SpringListView2$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOverScrollNested:Z

    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowTop:F

    const p1, 0x3f666666    # 0.9f

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowBottom:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGlowing:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDistance:F

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullCount:I

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastYVel:F

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mFirstChildTop:I

    new-instance p1, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView2;)V

    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOverScrollNested:Z

    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowTop:F

    const p1, 0x3f666666    # 0.9f

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowBottom:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGlowing:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDistance:F

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullCount:I

    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastYVel:F

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mFirstChildTop:I

    new-instance p1, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView2;)V

    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOverScrollNested:Z

    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowTop:F

    const p1, 0x3f666666    # 0.9f

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowBottom:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGlowing:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDistance:F

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullCount:I

    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastYVel:F

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mFirstChildTop:I

    new-instance p1, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView2;)V

    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    return p0
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastY:F

    return p0
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastYVel:F

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/settings/edgeeffect/SpringListView2;FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->pullGlows(FFFF)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->finishScrollWithVelocity(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDistance:F

    return p0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)F
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDistance:F

    return p1
.end method

.method static synthetic access$316(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)F
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDistance:F

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$502(Lcom/oneplus/settings/edgeeffect/SpringListView2;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/oneplus/settings/edgeeffect/SpringListView2;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/edgeeffect/SpringListView2;Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;

    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/settings/edgeeffect/SpringListView2;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mFirstChildTop:I

    return p0
.end method

.method static synthetic access$702(Lcom/oneplus/settings/edgeeffect/SpringListView2;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mFirstChildTop:I

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGlowing:Z

    return p0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastX:F

    return p0
.end method

.method private finishScrollWithVelocity(F)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mMaxFlingVelocity:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollStepConsumed:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollOffset:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mNestedOffsets:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollConsumed:[I

    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->createViewEdgeEffectFactory()Lcom/oneplus/settings/edgeeffect/SpringListView2$ViewEdgeEffectFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setEdgeEffectFactory(Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/oneplus/settings/edgeeffect/SpringListView2;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v2, 0x44138000    # 590.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private isReadyToOverScroll(Z)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result p0

    if-lt p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    if-nez p1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    if-gt p1, v0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    cmpg-float v1, p4, v0

    const/4 v2, 0x1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowBottom:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->ensureTopGlow()V

    iget-object p3, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v1, p4

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {p3, v1, p1}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iput-boolean v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGlowing:Z

    goto :goto_0

    :cond_1
    cmpl-float v1, p4, v0

    if-lez v1, :cond_2

    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowBottom:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->ensureBottomGlow()V

    iget-object p3, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v3, p1

    invoke-virtual {p3, v1, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iput-boolean v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGlowing:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidateOnAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method private releaseGlows()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iput-boolean v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGlowing:Z

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    iput-boolean v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGlowing:Z

    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private setActiveEdge(Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;

    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;

    return-void
.end method


# virtual methods
.method considerReleasingGlowsOnScroll(II)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    if-gez p2, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method public createViewEdgeEffectFactory()Lcom/oneplus/settings/edgeeffect/SpringListView2$ViewEdgeEffectFactory;
    .locals 2

    new-instance v0, Lcom/oneplus/settings/edgeeffect/SpringListView2$ViewEdgeEffectFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2$ViewEdgeEffectFactory;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView2;Lcom/oneplus/settings/edgeeffect/SpringListView2$1;)V

    return-object v0
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDispatchScrollCounter:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->onScrolled(II)V

    iget p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDispatchScrollCounter:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setEdgeEffectFactory first, please!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method ensureTopGlow()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setEdgeEffectFactory first, please!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getScrollState()I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollState:I

    return p0
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mInitialTouchY:I

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_4
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->releaseGlows()V

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setScrollState(I)V

    goto/16 :goto_1

    :cond_5
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_6

    return v5

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollState:I

    if-eq v1, v4, :cond_e

    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mInitialTouchY:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTouchSlop:I

    if-le v1, v2, :cond_7

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    move v5, v4

    :cond_7
    if-eqz v5, :cond_e

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setScrollState(I)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual {p0}, Landroid/widget/ListView;->stopNestedScroll()V

    goto :goto_1

    :cond_9
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_a

    return v5

    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_b

    move v0, v4

    goto :goto_0

    :cond_b
    move v0, v5

    :goto_0
    xor-int/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->isReadyToOverScroll(Z)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mInitialTouchY:I

    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollState:I

    if-ne v0, v3, :cond_d

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setScrollState(I)V

    :cond_d
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mNestedOffsets:[I

    aput v5, v0, v4

    aput v5, v0, v5

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->startNestedScroll(I)Z

    :cond_e
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onRecyclerViewScrolled()V
    .locals 2

    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDistance:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullCount:I

    invoke-direct {p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->finishScrollWithVelocity(F)V

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mNestedOffsets:[I

    aput v4, v5, v3

    aput v4, v5, v4

    :cond_1
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mNestedOffsets:[I

    aget v6, v5, v4

    int-to-float v6, v6

    aget v5, v5, v3

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v5, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v1, :cond_10

    if-eq v1, v3, :cond_d

    if-eq v1, v5, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mInitialTouchY:I

    goto/16 :goto_4

    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :cond_5
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->releaseGlows()V

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setScrollState(I)V

    goto/16 :goto_4

    :cond_6
    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_7

    const-string p1, "Error processing scroll; pointer index for id "

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringListView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    sub-int/2addr v2, v1

    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollConsumed:[I

    iget-object v6, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollOffset:[I

    invoke-virtual {p0, v4, v2, v5, v6}, Landroid/widget/ListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollConsumed:[I

    aget v5, v5, v3

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollOffset:[I

    aget v6, v5, v4

    int-to-float v6, v6

    aget v5, v5, v3

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mNestedOffsets:[I

    aget v6, v5, v4

    iget-object v7, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollOffset:[I

    aget v8, v7, v4

    add-int/2addr v6, v8

    aput v6, v5, v4

    aget v6, v5, v3

    aget v7, v7, v3

    add-int/2addr v6, v7

    aput v6, v5, v3

    :cond_8
    iget v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollState:I

    if-eq v5, v3, :cond_c

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTouchSlop:I

    if-le v5, v6, :cond_a

    if-lez v2, :cond_9

    sub-int/2addr v2, v6

    goto :goto_0

    :cond_9
    add-int/2addr v2, v6

    :goto_0
    move v5, v2

    move v2, v3

    goto :goto_1

    :cond_a
    move v5, v2

    move v2, v4

    :goto_1
    if-eqz v2, :cond_b

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setScrollState(I)V

    :cond_b
    move v2, v5

    :cond_c
    iget v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollState:I

    if-ne v5, v3, :cond_12

    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollOffset:[I

    aget v5, v5, v3

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    invoke-virtual {p0, v4, v2, v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4

    :cond_d
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mMaxFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_e

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setScrollState(I)V

    goto :goto_2

    :cond_e
    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastYVel:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastY:F

    :goto_2
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :cond_f
    invoke-virtual {p0}, Landroid/widget/ListView;->stopNestedScroll()V

    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->releaseGlows()V

    goto :goto_5

    :cond_10
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mInitialTouchY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_11

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastChildBottom:I

    goto :goto_3

    :cond_11
    iput v4, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastChildBottom:I

    :goto_3
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->startNestedScroll(I)Z

    :cond_12
    :goto_4
    move v3, v4

    :goto_5
    if-nez v3, :cond_13

    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_13
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p4

    move/from16 v6, p6

    move/from16 v9, p9

    invoke-super/range {v0 .. v9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {p0, v2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->isReadyToOverScroll(Z)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollStepConsumed:[I

    invoke-virtual {p0, p1, p2, v2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->scrollStep(II[I)V

    iget-object v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollStepConsumed:[I

    aget v3, v2, v1

    aget v2, v2, v0

    sub-int v4, p1, v3

    sub-int v5, p2, v2

    goto :goto_1

    :cond_2
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_1
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    iget-object v11, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollOffset:[I

    move-object v6, p0

    move v7, v3

    move v8, v2

    move v9, v4

    move v10, v5

    invoke-virtual/range {v6 .. v11}, Landroid/widget/ListView;->dispatchNestedScroll(IIII[I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v7, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    iget-object v8, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollOffset:[I

    aget v9, v8, v0

    sub-int/2addr v7, v9

    iput v7, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    if-eqz p3, :cond_3

    aget v7, v8, v1

    int-to-float v7, v7

    aget v8, v8, v0

    int-to-float v8, v8

    invoke-virtual {p3, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_3
    iget-object v7, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mNestedOffsets:[I

    aget v8, v7, v1

    iget-object v9, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollOffset:[I

    aget v10, v9, v1

    add-int/2addr v8, v10

    aput v8, v7, v1

    aget v8, v7, v0

    aget v9, v9, v0

    add-int/2addr v8, v9

    aput v8, v7, v0

    :cond_4
    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOverScrollNested:Z

    if-eqz v6, :cond_7

    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getOverScrollMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    if-eqz p3, :cond_6

    const/16 v6, 0x2002

    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    int-to-float v5, v5

    invoke-direct {p0, v6, v4, p3, v5}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->pullGlows(FFFF)V

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->considerReleasingGlowsOnScroll(II)V

    :cond_7
    if-nez v3, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    invoke-virtual {p0, v3, v2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->dispatchOnScrolled(II)V

    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_a
    if-nez v3, :cond_c

    if-eqz v2, :cond_b

    goto :goto_2

    :cond_b
    move v0, v1

    :cond_c
    :goto_2
    return v0
.end method

.method scrollStep(II[I)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    const/4 p1, 0x0

    aput p1, p3, p0

    :cond_0
    return-void
.end method

.method protected setDampedScrollShift(F)V
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEdgeEffectFactory(Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;

    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->invalidateGlows()V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :goto_0
    return-void
.end method

.method setScrollState(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollState:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollState:I

    :cond_0
    return-void
.end method
