.class public Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;,
        Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;,
        Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;,
        Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;,
        Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    }
.end annotation


# instance fields
.field private final mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mHeightSpec:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

.field mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

.field private mRemainingSpans:Ljava/util/BitSet;

.field private mReverseLayout:Z

.field mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field private mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mWidthSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    iget p2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setOrientation(I)V

    iget p2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setSpanCount(I)V

    iget-boolean p1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result p0

    return p0
.end method

.method private checkForGaps()Z
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestLayout()V

    return v3

    :cond_2
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v4, :cond_3

    return v1

    :cond_3
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/2addr v2, v3

    invoke-virtual {v6, v0, v2, v4, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v6

    if-nez v6, :cond_5

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    return v1

    :cond_5
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget v2, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    mul-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget v1, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestLayout()V

    return v3

    :cond_7
    :goto_3
    return v1
.end method

.method private computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)I

    move-result p0

    return p0
.end method

.method private computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;ZZ)I

    move-result p0

    return p0
.end method

.method private computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)I

    move-result p0

    return p0
.end method

.method private ensureOrientationHelper()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->createOrientationHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;I)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->createOrientationHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;I)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/LayoutState;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    :cond_0
    return-void
.end method

.method private fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v1, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_0

    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    iget v1, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    iget v1, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    sub-int/2addr v0, v1

    :goto_0
    move v11, v0

    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v0, v11}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    iget-boolean v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_1
    move v12, v0

    move v0, v9

    :goto_2
    iget v1, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mCurrentPosition:I

    if-ltz v1, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v1, v10

    goto :goto_3

    :cond_2
    move v1, v9

    :goto_3
    const/4 v2, -0x1

    if-eqz v1, :cond_29

    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mCurrentPosition:I

    invoke-virtual {v7, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mCurrentPosition:I

    iget v3, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mItemDirection:I

    add-int/2addr v0, v3

    iput v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mCurrentPosition:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    invoke-virtual {v13}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    iget-object v3, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v3, :cond_4

    array-length v4, v3

    if-lt v0, v4, :cond_3

    goto :goto_4

    :cond_3
    aget v3, v3, v0

    goto :goto_5

    :cond_4
    :goto_4
    move v3, v2

    :goto_5
    if-ne v3, v2, :cond_5

    move v4, v10

    goto :goto_6

    :cond_5
    move v4, v9

    :goto_6
    if-eqz v4, :cond_11

    iget-boolean v3, v13, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_6

    iget-object v3, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v9

    goto/16 :goto_f

    :cond_6
    iget v3, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    iget v5, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v5, :cond_8

    if-ne v3, v2, :cond_7

    move v3, v10

    goto :goto_7

    :cond_7
    move v3, v9

    :goto_7
    iget-boolean v5, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v3, v5, :cond_b

    goto :goto_a

    :cond_8
    if-ne v3, v2, :cond_9

    move v3, v10

    goto :goto_8

    :cond_9
    move v3, v9

    :goto_8
    iget-boolean v5, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne v3, v5, :cond_a

    move v3, v10

    goto :goto_9

    :cond_a
    move v3, v9

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v5

    if-ne v3, v5, :cond_b

    :goto_a
    move v3, v10

    goto :goto_b

    :cond_b
    move v3, v9

    :goto_b
    if-eqz v3, :cond_c

    iget v3, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/2addr v3, v2

    move v5, v2

    move v14, v5

    goto :goto_c

    :cond_c
    iget v3, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    move v5, v3

    move v3, v9

    move v14, v10

    :goto_c
    iget v15, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    const/16 v16, 0x0

    if-ne v15, v10, :cond_e

    iget-object v15, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v15}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v15

    const v2, 0x7fffffff

    :goto_d
    if-eq v3, v5, :cond_10

    iget-object v9, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v9, v9, v3

    invoke-virtual {v9, v15}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v10

    if-ge v10, v2, :cond_d

    move-object/from16 v16, v9

    move v2, v10

    :cond_d
    add-int/2addr v3, v14

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_d

    :cond_e
    const/high16 v2, -0x80000000

    iget-object v9, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v9

    :goto_e
    if-eq v3, v5, :cond_10

    iget-object v10, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v10, v10, v3

    invoke-virtual {v10, v9}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v15

    if-le v15, v2, :cond_f

    move-object/from16 v16, v10

    move v2, v15

    :cond_f
    add-int/2addr v3, v14

    goto :goto_e

    :cond_10
    move-object/from16 v3, v16

    :goto_f
    iget-object v2, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget v5, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    aput v5, v2, v0

    goto :goto_10

    :cond_11
    iget-object v2, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v2, v3

    :goto_10
    move-object v9, v3

    iput-object v9, v13, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget v2, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    invoke-virtual {v6, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    const/4 v10, 0x0

    goto :goto_11

    :cond_12
    const/4 v10, 0x0

    invoke-virtual {v6, v1, v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    :goto_11
    iget-boolean v2, v13, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_14

    iget v2, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v2, v3, :cond_13

    iget v2, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mFullSizeSpec:I

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v5, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mHeightSpec:I

    invoke-direct {v6, v3, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getSpecForDimension(II)I

    move-result v3

    invoke-direct {v6, v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    goto :goto_12

    :cond_13
    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v3, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mWidthSpec:I

    invoke-direct {v6, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getSpecForDimension(II)I

    move-result v2

    iget v3, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mFullSizeSpec:I

    invoke-direct {v6, v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    goto :goto_12

    :cond_14
    iget v2, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    iget v2, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mWidthSpec:I

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v5, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mHeightSpec:I

    invoke-direct {v6, v3, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getSpecForDimension(II)I

    move-result v3

    invoke-direct {v6, v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    goto :goto_12

    :cond_15
    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v3, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mWidthSpec:I

    invoke-direct {v6, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getSpecForDimension(II)I

    move-result v2

    iget v3, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mHeightSpec:I

    invoke-direct {v6, v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    :goto_12
    iget v2, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    iget-boolean v2, v13, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_16

    invoke-direct {v6, v12}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v2

    goto :goto_13

    :cond_16
    invoke-virtual {v9, v12}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    :goto_13
    iget-object v3, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    if-eqz v4, :cond_18

    iget-boolean v5, v13, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_18

    new-instance v5, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    iget v14, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v14, v14, [I

    iput-object v14, v5, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    move v14, v10

    :goto_14
    iget v15, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v14, v15, :cond_17

    iget-object v15, v5, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v10, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v10, v10, v14

    invoke-virtual {v10, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v10

    sub-int v10, v2, v10

    aput v10, v15, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    goto :goto_14

    :cond_17
    const/4 v10, -0x1

    iput v10, v5, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    iput v0, v5, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    iget-object v10, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v10, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_18
    move v5, v3

    move v3, v2

    goto :goto_17

    :cond_19
    iget-boolean v2, v13, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_1a

    invoke-direct {v6, v12}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v2

    goto :goto_15

    :cond_1a
    invoke-virtual {v9, v12}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    :goto_15
    iget-object v3, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int v3, v2, v3

    if-eqz v4, :cond_1c

    iget-boolean v5, v13, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_1c

    new-instance v5, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    iget v10, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v10, v10, [I

    iput-object v10, v5, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    const/4 v10, 0x0

    :goto_16
    iget v14, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v10, v14, :cond_1b

    iget-object v14, v5, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v15, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v15, v15, v10

    invoke-virtual {v15, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v15

    sub-int/2addr v15, v2

    aput v15, v14, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_16

    :cond_1b
    const/4 v10, 0x1

    iput v10, v5, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    iput v0, v5, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    iget-object v10, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v10, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_1c
    move v5, v2

    :goto_17
    iget-boolean v2, v13, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_20

    iget v2, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mItemDirection:I

    const/4 v10, -0x1

    if-ne v2, v10, :cond_20

    if-eqz v4, :cond_1d

    const/4 v2, 0x1

    iput-boolean v2, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    goto :goto_19

    :cond_1d
    const/4 v2, 0x1

    iget v4, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v4, v2, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->areAllEndsEqual()Z

    move-result v4

    goto :goto_18

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->areAllStartsEqual()Z

    move-result v4

    :goto_18
    xor-int/2addr v4, v2

    if-eqz v4, :cond_21

    iget-object v4, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_1f

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    :cond_1f
    iput-boolean v2, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    goto :goto_19

    :cond_20
    const/4 v2, 0x1

    :cond_21
    :goto_19
    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v0, v2, :cond_23

    iget-boolean v0, v13, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_22

    iget v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    :goto_1a
    const/4 v2, -0x1

    add-int/2addr v0, v2

    if-ltz v0, :cond_25

    iget-object v2, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    goto :goto_1a

    :cond_22
    iget-object v0, v13, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    goto :goto_1c

    :cond_23
    iget-boolean v0, v13, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_24

    iget v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    :goto_1b
    const/4 v2, -0x1

    add-int/2addr v0, v2

    if-ltz v0, :cond_25

    iget-object v2, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    goto :goto_1b

    :cond_24
    iget-object v0, v13, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    :cond_25
    :goto_1c
    iget-boolean v0, v13, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_26

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_1d

    :cond_26
    iget v0, v9, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    iget v2, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v0, v2

    iget-object v2, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    add-int/2addr v0, v2

    :goto_1d
    move v4, v0

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    add-int v10, v4, v0

    iget v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v14, 0x1

    if-ne v0, v14, :cond_27

    move-object/from16 v0, p0

    move v2, v4

    move v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto :goto_1e

    :cond_27
    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    :goto_1e
    iget-boolean v0, v13, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_28

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v0, v11}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    goto :goto_1f

    :cond_28
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v9, v0, v11}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateRemainingSpans(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;II)V

    :goto_1f
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {v6, v7, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycle(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;)V

    move v0, v14

    move v10, v0

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_29
    if-nez v0, :cond_2a

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {v6, v7, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycle(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;)V

    :cond_2a
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v0

    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_20

    :cond_2b
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v0

    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int v1, v0, v1

    :goto_20
    if-lez v1, :cond_2c

    iget v0, v8, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    move/from16 v17, v9

    goto :goto_21

    :cond_2c
    const/16 v17, 0x0

    :goto_21
    return v17
.end method

.method private fixEndGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, v0

    if-lez v1, :cond_0

    neg-int v0, v1

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p1

    neg-int p1, p1

    sub-int/2addr v1, p1

    if-eqz p3, :cond_0

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    :cond_0
    return-void
.end method

.method private fixStartGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p1

    sub-int/2addr v0, p1

    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    neg-int p1, v0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    :cond_0
    return-void
.end method

.method private getFirstChildPosition()I
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method private getLastChildPosition()I
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getMaxEnd(I)I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getMinStart(I)I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getSpecForDimension(II)I
    .locals 0

    if-gez p1, :cond_0

    return p2

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private handleUpdate(III)V
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    :goto_0
    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, p1, 0x1

    move v3, v2

    move v2, p2

    goto :goto_2

    :cond_2
    add-int v2, p1, p2

    :goto_1
    move v3, v2

    move v2, p1

    :goto_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    if-eqz p3, :cond_5

    const/4 v4, 0x1

    if-eq p3, v4, :cond_4

    if-eq p3, v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p1, p2, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_3

    :cond_4
    iget-object p3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    goto :goto_3

    :cond_5
    iget-object p3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    :goto_3
    if-gt v3, v0, :cond_6

    return-void

    :cond_6
    iget-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result p1

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result p1

    :goto_4
    if-gt v2, p1, :cond_8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestLayout()V

    :cond_8
    return-void
.end method

.method private layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v4, p2, v1

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v5, p3, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v6, p4, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v7, p5, p2

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;II)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    invoke-direct {p0, p2, v1, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-direct {p0, p3, v1, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private recycle(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;)V
    .locals 4

    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v0, v1, :cond_0

    iget p2, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycleFromEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    goto/16 :goto_4

    :cond_0
    iget p2, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycleFromStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    goto :goto_4

    :cond_1
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_5

    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    if-le v2, v1, :cond_2

    move v1, v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr v0, v1

    if-gez v0, :cond_4

    iget p2, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    goto :goto_1

    :cond_4
    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    iget p2, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p2, v1, p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycleFromEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    goto :goto_4

    :cond_5
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    :goto_2
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v2, :cond_7

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    if-ge v2, v1, :cond_6

    move v1, v2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    sub-int/2addr v1, v0

    if-gez v1, :cond_8

    iget p2, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    goto :goto_3

    :cond_8
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    iget p2, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v0

    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycleFromStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    :goto_4
    return-void
.end method

.method private recycleFromEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    iget-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->access$300(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->popEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->access$300(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_3

    return-void

    :cond_3
    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->popEnd()V

    :cond_4
    invoke-virtual {p0, v2, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private recycleFromStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V
    .locals 5

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    iget-boolean v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->access$300(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->popStart()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->access$300(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    return-void

    :cond_3
    iget-object v0, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->popStart()V

    :cond_4
    invoke-virtual {p0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    :goto_1
    return-void
.end method

.method private setLayoutStateDirection(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iput p1, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mItemDirection:I

    return-void
.end method

.method private updateAllRemainingSpans(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->access$300(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateRemainingSpans(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateLayoutState(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    iput p1, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getTargetScrollPosition()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result p1

    move v2, v1

    move v1, p1

    move p1, v2

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result p0

    add-int/2addr p0, v1

    iput p0, p1, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEnd()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    neg-int p1, p1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    :goto_2
    return-void
.end method

.method private updateRemainingSpans(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;II)V
    .locals 4

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_1

    iget p2, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    iget p2, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :goto_0
    add-int/2addr p2, v0

    if-gt p2, p3, :cond_3

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {p0, p1, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_2

    :cond_1
    iget p2, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    if-eq p2, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    iget p2, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :goto_1
    sub-int/2addr p2, v0

    if-lt p2, p3, :cond_3

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {p0, p1, v3}, Ljava/util/BitSet;->set(IZ)V

    :cond_3
    :goto_2
    return-void
.end method

.method private updateSpecWithExtra(III)I
    .locals 1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method areAllEndsEqual()Z
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    if-eq v5, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method areAllStartsEqual()Z
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    if-eq v5, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canScrollVertically()Z
    .locals 1

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkLayoutParams(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    return p0
.end method

.method public computeHorizontalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;
    .locals 7

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_3

    if-lt v5, v1, :cond_0

    goto :goto_2

    :cond_0
    if-le v6, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;
    .locals 8

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_3

    if-lt v6, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ge v6, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method findFirstVisibleItemPositionInt()I
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_1
    return p0
.end method

.method public generateDefaultLayoutParams()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 1

    new-instance p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 0

    new-instance p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 0

    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getColumnCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 0

    iget p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    return p0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    :cond_2
    :goto_0
    return p2
.end method

.method public getRowCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 0

    iget p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-nez p1, :cond_0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    return p0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    :cond_2
    :goto_0
    return p2
.end method

.method hasGapsToFix()Landroid/view/View;
    .locals 12

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v1}, Ljava/util/BitSet;->set(IIZ)V

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v5, -0x1

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v6, v0

    move v0, v4

    :goto_1
    if-ge v0, v6, :cond_2

    move v5, v1

    :cond_2
    :goto_2
    if-eq v0, v6, :cond_f

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    iget-object v9, v8, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget v9, v9, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v8, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget-boolean v10, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v9

    iget-object v10, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    if-ge v9, v10, :cond_4

    goto :goto_3

    :cond_3
    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v9

    iget-object v10, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v10

    if-le v9, v10, :cond_4

    :goto_3
    move v9, v1

    goto :goto_4

    :cond_4
    move v9, v4

    :goto_4
    if-eqz v9, :cond_5

    return-object v7

    :cond_5
    iget-object v9, v8, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget v9, v9, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    :cond_6
    iget-boolean v9, v8, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v9, :cond_7

    goto :goto_9

    :cond_7
    add-int v9, v0, v5

    if-eq v9, v6, :cond_e

    invoke-virtual {p0, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-boolean v10, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v10, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v11, v9}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    if-ge v10, v11, :cond_8

    return-object v7

    :cond_8
    if-ne v10, v11, :cond_b

    goto :goto_5

    :cond_9
    iget-object v10, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v10, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v11, v9}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    if-le v10, v11, :cond_a

    return-object v7

    :cond_a
    if-ne v10, v11, :cond_b

    :goto_5
    move v10, v1

    goto :goto_6

    :cond_b
    move v10, v4

    :goto_6
    if-eqz v10, :cond_e

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    iget-object v8, v8, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget v8, v8, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget v9, v9, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v8, v9

    if-gez v8, :cond_c

    move v8, v1

    goto :goto_7

    :cond_c
    move v8, v4

    :goto_7
    if-gez v3, :cond_d

    move v9, v1

    goto :goto_8

    :cond_d
    move v9, v4

    :goto_8
    if-eq v8, v9, :cond_e

    return-object v7

    :cond_e
    :goto_9
    add-int/2addr v0, v5

    goto/16 :goto_2

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public invalidateSpanAssignments()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method isLayoutRTL()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetChildrenHorizontal(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    iget v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    add-int/2addr v2, p1

    iput v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_1
    iget v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    if-eq v2, v3, :cond_2

    add-int/2addr v2, p1

    iput v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetChildrenVertical(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    iget v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    add-int/2addr v2, p1

    iput v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_1
    iget v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    if-eq v2, v3, :cond_2

    add-int/2addr v2, p1

    iput v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    if-ge v1, p0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    if-nez p2, :cond_0

    invoke-super {p0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void

    :cond_0
    check-cast p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    iget p2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 p3, 0x1

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    iget-boolean p2, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz p2, :cond_1

    iget p3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    :cond_1
    move v1, p3

    const/4 v2, -0x1

    const/4 v3, -0x1

    iget-boolean v4, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v2

    iget-boolean p2, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz p2, :cond_3

    iget p3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    :cond_3
    move v3, p3

    iget-boolean v4, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    :goto_0
    return-void
.end method

.method public onItemsAdded(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public onItemsMoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;III)V
    .locals 0

    const/4 p1, 0x3

    invoke-direct {p0, p2, p3, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsRemoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsUpdated(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    const/4 p1, 0x2

    invoke-direct {p0, p2, p3, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 11

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    const/high16 v2, -0x80000000

    iput v2, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-nez v4, :cond_0

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-eq v4, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v6, :cond_5

    iget v7, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ne v6, v7, :cond_4

    move v4, v3

    :goto_0
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v6, :cond_5

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-object v7, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aget v7, v7, v4

    if-eq v7, v2, :cond_3

    iget-boolean v6, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    :goto_1
    add-int/2addr v7, v6

    :cond_3
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v6, v6, v4

    iput v7, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput v7, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    :cond_5
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-boolean v6, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iget-boolean v4, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v6, v1, :cond_6

    iput v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iget-boolean v4, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v4, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_2

    :cond_6
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v4, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    :goto_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    if-le v6, v5, :cond_8

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v7, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v7, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v4, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v4, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    :cond_8
    :goto_3
    invoke-virtual {p0, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateAnchorInfoForLayout(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-nez v4, :cond_a

    iget-boolean v4, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-ne v4, v6, :cond_9

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v4

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eq v4, v6, :cond_a

    :cond_9
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    iput-boolean v5, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    :cond_a
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_14

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v4, :cond_b

    iget v4, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v4, v5, :cond_14

    :cond_b
    iget-boolean v4, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    if-eqz v4, :cond_d

    move v4, v3

    :goto_4
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v6, :cond_14

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    if-eq v6, v2, :cond_c

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v7, v7, v4

    iput v6, v7, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput v6, v7, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    move v4, v3

    :goto_5
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v6, :cond_14

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v6, v6, v4

    iget-boolean v7, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iget v8, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    if-eqz v7, :cond_e

    invoke-virtual {v6, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v9

    goto :goto_6

    :cond_e
    invoke-virtual {v6, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v9

    :goto_6
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    if-ne v9, v2, :cond_f

    goto :goto_7

    :cond_f
    if-eqz v7, :cond_10

    iget-object v10, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v10, v10, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    if-lt v9, v10, :cond_13

    :cond_10
    if-nez v7, :cond_11

    iget-object v7, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    if-le v9, v7, :cond_11

    goto :goto_7

    :cond_11
    if-eq v8, v2, :cond_12

    add-int/2addr v9, v8

    :cond_12
    iput v9, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iput v9, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_13
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_14
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    iput-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateMeasureSpecs()V

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v4, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateLayoutState(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    iget-boolean v4, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v4, :cond_15

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {p0, p1, v4, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget v7, v4, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mItemDirection:I

    add-int/2addr v6, v7

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mCurrentPosition:I

    invoke-direct {p0, p1, v4, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    goto :goto_8

    :cond_15
    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {p0, p1, v4, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget v7, v4, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mItemDirection:I

    add-int/2addr v6, v7

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mCurrentPosition:I

    invoke-direct {p0, p1, v4, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    :goto_8
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_17

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_16

    invoke-direct {p0, p1, p2, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fixEndGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V

    invoke-direct {p0, p1, p2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fixStartGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V

    goto :goto_9

    :cond_16
    invoke-direct {p0, p1, p2, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fixStartGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V

    invoke-direct {p0, p1, p2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fixEndGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V

    :cond_17
    :goto_9
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_1b

    iget p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_19

    iget-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez p1, :cond_18

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_19

    :cond_18
    move v3, v5

    :cond_19
    if-eqz v3, :cond_1a

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1a
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    :cond_1b
    iget-boolean p1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    new-instance p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;-><init>()V

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v3, :cond_1

    iput-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v3, v3

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    iput-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    goto :goto_0

    :cond_1
    iput v2, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_5

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemPositionInt()I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    :goto_2
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v1, :cond_6

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    const/high16 v3, -0x80000000

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    :goto_3
    sub-int/2addr v1, v3

    :cond_4
    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, -0x1

    iput p0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput p0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v2, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    :cond_6
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->checkForGaps()Z

    :cond_0
    return-void
.end method

.method scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1, p3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateLayoutState(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mItemDirection:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mCurrentPosition:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    invoke-direct {p0, p2, v1, p3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p2

    if-ge v0, p2, :cond_1

    goto :goto_1

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p2

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    iget-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    iget-boolean p2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean p2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    return p1
.end method

.method public scrollHorizontallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public scrollVerticallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public setOrientation(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public setSpanCount(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-instance p1, Ljava/util/BitSet;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {p1, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, p1, [Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 p1, 0x0

    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-direct {v2, p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;ILcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;)V

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestLayout()V

    :cond_1
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method updateAnchorFromPendingData(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_9

    :cond_0
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_13

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget v4, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v4, v2, :cond_3

    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iput v3, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput p0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto/16 :goto_7

    :cond_3
    :goto_0
    iget p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    :goto_1
    iput v1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v1, v3, :cond_6

    iget-boolean v1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v1, v2

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    :goto_2
    return v0

    :cond_6
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v2

    if-le v1, v2, :cond_8

    iget-boolean p1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result p0

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    :goto_3
    iput p0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    return v0

    :cond_8
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_9

    neg-int p0, v1

    iput p0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    return v0

    :cond_9
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v1, p0

    if-gez v1, :cond_a

    iput v1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    return v0

    :cond_a
    iput v3, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_7

    :cond_b
    iget p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput p1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-ne p1, v3, :cond_11

    iget p1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    if-nez v3, :cond_d

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz p0, :cond_f

    :cond_c
    move v2, v0

    goto :goto_5

    :cond_d
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    if-ge p1, v3, :cond_e

    move p1, v0

    goto :goto_4

    :cond_e
    move p1, v1

    :goto_4
    iget-boolean p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq p1, p0, :cond_c

    :cond_f
    :goto_5
    if-ne v2, v0, :cond_10

    move v1, v0

    :cond_10
    iput-boolean v1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto :goto_6

    :cond_11
    iget-boolean p0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p0, :cond_12

    iget-object p0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result p0

    sub-int/2addr p0, p1

    iput p0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_6

    :cond_12
    iget-object p0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    add-int/2addr p0, p1

    iput p0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    :goto_6
    iput-boolean v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    :goto_7
    return v0

    :cond_13
    :goto_8
    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    :cond_14
    :goto_9
    return v1
.end method

.method updateAnchorInfoForLayout(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateAnchorFromPendingData(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_1

    if-ge v2, p1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_3

    if-ge v3, p1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iput v1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    const/high16 p0, -0x80000000

    iput p0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    return-void
.end method

.method updateMeasureSpecs()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mFullSizeSpec:I

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mWidthSpec:I

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mHeightSpec:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mHeightSpec:I

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mWidthSpec:I

    :goto_0
    return-void
.end method
