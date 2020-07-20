.class public Lcom/oneplus/lib/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"


# annotations
.annotation runtime Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;,
        Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;,
        Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;,
        Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;
    }
.end annotation


# instance fields
.field private mCollapsed:Z

.field private mCollapsible:Z

.field private mDownPreScrollRange:I

.field private mDownScrollRange:I

.field private mHaveChildWithInterpolator:Z

.field private mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAction:I

.field private final mTmpStatesArray:[I

.field private mTotalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mTotalScrollRange:I

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownPreScrollRange:I

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownScrollRange:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mPendingAction:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mTmpStatesArray:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->setOrientation(I)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0}, Lcom/oneplus/lib/design/widget/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    const v3, 0x7f1305c9

    invoke-static {p0, p2, v0, v3}, Lcom/oneplus/lib/design/widget/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    sget-object v4, Lcom/oneplus/commonctrl/R$styleable;->OpAppBarLayout:[I

    invoke-virtual {p1, p2, v4, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpAppBarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/oneplus/support/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->setExpanded(Z)V

    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p0, p2}, Lcom/oneplus/lib/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/oneplus/lib/design/widget/AppBarLayout$1;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$1;-><init>(Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    invoke-static {p0, p1}, Lcom/oneplus/support/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private invalidateScrollRanges()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mTotalScrollRange:I

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownPreScrollRange:I

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownScrollRange:I

    return-void
.end method


# virtual methods
.method public addOnOffsetChangedListener(Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    return p0
.end method

.method dispatchOffsetUpdates(I)V
    .locals 12

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v3, :cond_5

    check-cast v3, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;

    iget-object v4, v3, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    iput p1, v4, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    iget-object v4, v4, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    iget-object v5, v3, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_3

    iget-object v7, v3, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-static {v7}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    move-result-object v9

    iget v10, v8, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    const/4 v7, 0x2

    if-eq v10, v7, :cond_1

    goto :goto_3

    :cond_1
    neg-int v7, p1

    int-to-float v7, v7

    iget v8, v8, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v9, v7}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_3

    :cond_2
    neg-int v8, p1

    iget-object v10, v3, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v10, v7}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v7

    invoke-static {v8, v1, v7}, Lcom/oneplus/lib/design/widget/Utils;->constrain(III)I

    move-result v7

    invoke-virtual {v9, v7}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, v3, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v5}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    iget-object v5, v3, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    iget-object v6, v5, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    if-lez v4, :cond_4

    invoke-static {v5}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    iget-object v5, v3, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    iget-object v6, v3, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-static {v6}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    iget-object v3, v3, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    iget-object v3, v3, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->generateDefaultLayoutParams()Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->generateDefaultLayoutParams()Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    .locals 2

    new-instance p0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    .locals 1

    new-instance v0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    .locals 0

    instance-of p0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method getDownNestedPreScrollRange()I
    .locals 9

    iget v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownPreScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v4

    add-int/2addr v7, v2

    and-int/lit8 v2, v6, 0x8

    if-eqz v2, :cond_1

    invoke-static {v3}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v7

    goto :goto_1

    :cond_1
    and-int/lit8 v2, v6, 0x2

    if-eqz v2, :cond_2

    invoke-static {v3}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v5, v2

    add-int/2addr v5, v7

    move v2, v5

    goto :goto_1

    :cond_2
    add-int/2addr v7, v5

    move v2, v7

    goto :goto_1

    :cond_3
    if-lez v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownPreScrollRange:I

    return v0
.end method

.method getDownNestedScrollRange()I
    .locals 9

    iget v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    iget v5, v5, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_2

    add-int/2addr v3, v7

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mDownScrollRange:I

    return v0
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method getPendingAction()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mPendingAction:I

    return p0
.end method

.method public getTargetElevation()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method final getTopInset()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    iget v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mTotalScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v5, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_2

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    add-int/2addr v3, v6

    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mTotalScrollRange:I

    return v0
.end method

.method getUpNestedPreScrollRange()I
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    return p0
.end method

.method hasChildWithInterpolator()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    return p0
.end method

.method hasScrollableChildren()Z
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mTmpStatesArray:[I

    array-length v1, v0

    add-int/2addr p1, v1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mCollapsible:Z

    if-eqz v1, :cond_0

    const v1, 0x7f04036c

    goto :goto_0

    :cond_0
    const v1, -0x7f04036c

    :goto_0
    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mCollapsible:Z

    if-eqz v2, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mCollapsed:Z

    if-eqz p0, :cond_1

    const p0, 0x7f04036b

    goto :goto_1

    :cond_1
    const p0, -0x7f04036b

    :goto_1
    aput p0, v0, v1

    invoke-static {p1, v0}, Landroid/widget/LinearLayout;->mergeDrawableStates([I[I)[I

    move-result-object p0

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->invalidateScrollRanges()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    move p3, p1

    :goto_0
    const/4 p4, 0x1

    if-ge p3, p2, :cond_1

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {p5}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p5

    if-eqz p5, :cond_0

    iput-boolean p4, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    move p3, p1

    :goto_2
    if-ge p3, p2, :cond_3

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {p5}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->isCollapsible()Z

    move-result p5

    if-eqz p5, :cond_2

    move p1, p4

    goto :goto_3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-boolean p2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mCollapsible:Z

    if-eq p2, p1, :cond_4

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mCollapsible:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->invalidateScrollRanges()V

    return-void
.end method

.method onWindowInsetChanged(Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;
    .locals 2

    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Lcom/oneplus/lib/design/widget/Utils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->invalidateScrollRanges()V

    :cond_1
    return-object p1
.end method

.method public removeOnOffsetChangedListener(Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method resetPendingAction()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mPendingAction:I

    return-void
.end method

.method setCollapsedState(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mCollapsed:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mCollapsed:Z

    if-eqz p1, :cond_0

    const p1, 0x7f08044b

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f08044a

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setExpanded(Z)V
    .locals 1

    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    or-int/2addr p1, p2

    iput p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout;->mPendingAction:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTargetElevation(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0, p1}, Lcom/oneplus/lib/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    return-void
.end method
