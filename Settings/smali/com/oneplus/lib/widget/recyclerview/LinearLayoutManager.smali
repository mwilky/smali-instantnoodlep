.class public Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ViewDropHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;,
        Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;,
        Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;,
        Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;
    }
.end annotation


# instance fields
.field final mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

.field private mLastStackFromEnd:Z

.field private mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

.field mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setReverseLayout(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    iget p2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    iget-boolean p2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setReverseLayout(Z)V

    iget-boolean p1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void
.end method

.method private computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

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
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

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
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)I

    move-result p0

    return p0
.end method

.method private findFirstReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;III)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findLastReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v6

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;III)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private fixLayoutEndGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private fixLayoutStartGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private recycleByLayoutState(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;)V
    .locals 5

    iget-boolean v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    iget p2, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-gez p2, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEnd()I

    move-result v3

    sub-int/2addr v3, p2

    iget-boolean p2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p2, :cond_3

    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_a

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    if-ge v2, v3, :cond_2

    invoke-direct {p0, p1, v1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V

    goto :goto_4

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v0, v2

    move p2, v0

    :goto_1
    if-ltz p2, :cond_a

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_4

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V

    goto :goto_4

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_5
    iget p2, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-gez p2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_8

    add-int/2addr v0, v2

    move v1, v0

    :goto_2
    if-ltz v1, :cond_a

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_7

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_8
    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_a

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_9

    invoke-direct {p0, p1, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V

    goto :goto_4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    return-void
.end method

.method private recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    invoke-virtual {p0, p3, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    invoke-virtual {p0, p2, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    :goto_1
    return-void
.end method

.method private updateLayoutState(IIZLcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getExtraLayoutSpace(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p4

    iput p4, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p1, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget p1, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndPadding()I

    move-result v2

    add-int/2addr p1, v2

    iput p1, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    iget-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    iget-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v2, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v2

    iput v0, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p4, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p4, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    iget-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v2, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iput v0, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    iget-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v2, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v2

    iput v0, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p4, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p4, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result p4

    add-int/2addr p1, p4

    :goto_1
    iget-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p2, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-eqz p3, :cond_3

    iget p2, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr p2, p1

    iput p2, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    :cond_3
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput p1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

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

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeHorizontalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method createLayoutState()Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;
    .locals 0

    new-instance p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;-><init>()V

    return-object p0
.end method

.method ensureLayoutState()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->createLayoutState()Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->createOrientationHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;I)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    :cond_1
    return-void
.end method

.method fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I
    .locals 7

    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-gez v0, :cond_0

    add-int/2addr v1, v0

    iput v1, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleByLayoutState(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;)V

    :cond_1
    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    add-int/2addr v1, v3

    new-instance v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;-><init>()V

    :cond_2
    if-lez v1, :cond_9

    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    const/4 v5, 0x0

    if-ltz v4, :cond_3

    invoke-virtual {p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v6

    if-ge v4, v6, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_0
    if-eqz v4, :cond_9

    iput v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iput-boolean v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    iput-boolean v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    iput-boolean v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {p0, p1, p3, p2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->layoutChunk(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;)V

    iget-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v6, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    iput v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_5

    invoke-virtual {p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v4, v5

    iput v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v1, v5

    :cond_6
    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v4, v2, :cond_8

    iget v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v4, :cond_7

    iget v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    add-int/2addr v5, v4

    iput v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleByLayoutState(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;)V

    :cond_8
    if-eqz p4, :cond_2

    iget-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v4, :cond_2

    :cond_9
    :goto_1
    iget p0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public findLastVisibleItemPosition()I
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eq p1, p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-ge v5, v1, :cond_3

    if-le v6, v0, :cond_3

    if-eqz p3, :cond_2

    if-lt v5, v0, :cond_1

    if-gt v6, v1, :cond_1

    return-object v4

    :cond_1
    if-eqz p4, :cond_3

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_2
    return-object v4

    :cond_3
    :goto_2
    add-int/2addr p1, v2

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method findReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;III)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result p2

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    if-eq p3, p4, :cond_5

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_4

    if-ge v4, p5, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_2

    goto :goto_2

    :cond_2
    return-object v3

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    move-object v1, v3

    :cond_4
    :goto_3
    add-int/2addr p3, v0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v2

    :goto_4
    return-object v1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    sub-int v3, p1, v3

    if-ltz v3, :cond_1

    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-ne v3, p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    if-ne v5, p1, :cond_4

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move-object v1, v3

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object v1
.end method

.method public generateDefaultLayoutParams()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 1

    new-instance p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method protected getExtraLayoutSpace(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    return p0
.end method

.method protected isLayoutRTL()Z
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

.method layoutChunk(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;)V
    .locals 8

    invoke-virtual {p3, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->next(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput-boolean p2, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-object v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_1

    move v3, p2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ne v0, v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_4

    move v3, p2

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_5

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    :goto_2
    invoke-virtual {p0, p1, v2, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne v0, p2, :cond_8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    :goto_3
    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_7

    iget p3, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v1, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v1, p3, v1

    goto :goto_4

    :cond_7
    iget v1, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget p3, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr p3, v1

    :goto_4
    move v7, v1

    move v1, p3

    move p3, v0

    move v0, v7

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_9

    iget p3, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v1, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v1, p3, v1

    move v7, v2

    move v2, v1

    goto :goto_5

    :cond_9
    iget p3, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v1, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v1, p3

    move v7, v2

    move v2, p3

    move p3, v1

    :goto_5
    move v1, v7

    :goto_6
    iget v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v0

    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v4, p3, v0

    iget p3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v5, v1, p3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result p0

    if-nez p0, :cond_a

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    iput-boolean p2, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result p0

    iput-boolean p0, p4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    return-void
.end method

.method onAnchorReady(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iget-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->clear()V

    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 6

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->resolveShouldLayoutReverse()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x1

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    if-eq p2, p1, :cond_7

    const/4 v3, 0x2

    if-eq p2, v3, :cond_6

    const/16 v3, 0x11

    if-eq p2, v3, :cond_4

    const/16 v3, 0x21

    if-eq p2, v3, :cond_3

    const/16 v3, 0x42

    if-eq p2, v3, :cond_2

    const/16 v3, 0x82

    if-eq p2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne p2, p1, :cond_5

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-nez p2, :cond_5

    goto :goto_1

    :cond_3
    iget p2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne p2, p1, :cond_5

    goto :goto_2

    :cond_4
    iget p2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    :goto_0
    move p2, v1

    goto :goto_3

    :cond_6
    :goto_1
    move p2, p1

    goto :goto_3

    :cond_7
    :goto_2
    move p2, v2

    :goto_3
    if-ne p2, v1, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    if-ne p2, v2, :cond_a

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_9

    invoke-direct {p0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findLastReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    goto :goto_4

    :cond_9
    invoke-direct {p0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    goto :goto_4

    :cond_a
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_b

    invoke-direct {p0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    goto :goto_4

    :cond_b
    invoke-direct {p0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findLastReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    :goto_4
    if-nez v3, :cond_c

    return-object v0

    :cond_c
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    const v4, 0x3ea8f5c3    # 0.33f

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    const/4 v5, 0x0

    invoke-direct {p0, p2, v4, v5, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutState(IIZLcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v1, v4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iput-boolean v5, v4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    invoke-virtual {p0, p3, v4, p4, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    if-ne p2, v2, :cond_d

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p0

    goto :goto_5

    :cond_d
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p0

    :goto_5
    if-eq p0, v3, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_6

    :cond_e
    return-object p0

    :cond_f
    :goto_6
    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    const/4 v4, -0x1

    if-nez v3, :cond_0

    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    return-void

    :cond_1
    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->resolveShouldLayoutReverse()V

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    const/high16 v6, -0x80000000

    iput v6, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    iput-boolean v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-boolean v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v8, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v7, v8

    iput-boolean v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_12

    iget v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v7, v4, :cond_3

    goto/16 :goto_5

    :cond_3
    if-ltz v7, :cond_11

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v9

    if-lt v7, v9, :cond_4

    goto/16 :goto_4

    :cond_4
    iget v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    iput v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget-boolean v7, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-boolean v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget v9, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr v7, v9

    iput v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_3

    :cond_5
    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget v9, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v7, v9

    iput v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_3

    :cond_6
    iget v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v7, v6, :cond_f

    iget v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v0, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v9

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v10

    if-le v9, v10, :cond_7

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto/16 :goto_3

    :cond_7
    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v10

    sub-int/2addr v9, v10

    if-gez v9, :cond_8

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    iput v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    iput-boolean v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto/16 :goto_3

    :cond_8
    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v9

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v10, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v9, v10

    if-gez v9, :cond_9

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    iput v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    iput-boolean v8, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_3

    :cond_9
    iget-boolean v9, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v9, :cond_a

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpaceChange()I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_0

    :cond_a
    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    :goto_0
    iput v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_3

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_e

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    iget v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    if-ge v9, v7, :cond_c

    move v7, v8

    goto :goto_1

    :cond_c
    move v7, v5

    :goto_1
    iget-boolean v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v7, v9, :cond_d

    move v7, v8

    goto :goto_2

    :cond_d
    move v7, v5

    :goto_2
    iput-boolean v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    :cond_e
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto :goto_3

    :cond_f
    iget-boolean v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_10

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    iget v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v7, v9

    iput v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_3

    :cond_10
    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    iget v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v7, v9

    iput v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_3
    move v7, v8

    goto :goto_6

    :cond_11
    :goto_4
    iput v4, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    iput v6, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    :cond_12
    :goto_5
    move v7, v5

    :goto_6
    if-eqz v7, :cond_13

    goto/16 :goto_f

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    if-nez v7, :cond_14

    goto/16 :goto_c

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_17

    invoke-static {v3, v7, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->access$000(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpaceChange()I

    move-result v9

    if-ltz v9, :cond_15

    invoke-virtual {v3, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    goto/16 :goto_b

    :cond_15
    iget-object v10, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-virtual {v10, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    iput v10, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget-boolean v10, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v10, :cond_16

    iget-object v10, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v10, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    sub-int/2addr v10, v9

    iget-object v9, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v10, v9

    iget-object v9, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v9

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    if-lez v10, :cond_1f

    iget-object v9, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v9

    iget v11, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    sub-int/2addr v11, v9

    iget-object v9, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    iget-object v12, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v12, v12, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v12, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v7, v9

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v7, v9

    sub-int/2addr v11, v7

    if-gez v11, :cond_1f

    iget v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int v9, v11

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v9, v7

    iput v9, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_b

    :cond_16
    iget-object v10, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v10, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v10, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    iget-object v11, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v11, v11, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v11}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v11

    sub-int v11, v10, v11

    iput v10, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    if-lez v11, :cond_1f

    iget-object v12, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v12, v12, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v12, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v12

    add-int/2addr v10, v12

    iget-object v12, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v12, v12, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v12}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v12

    sub-int/2addr v12, v9

    iget-object v9, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v12, v7

    iget-object v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int/2addr v7, v9

    sub-int/2addr v7, v10

    if-gez v7, :cond_1f

    iget v9, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int v7, v7

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v9, v7

    iput v9, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_b

    :cond_17
    iget-boolean v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    if-eq v7, v9, :cond_18

    goto/16 :goto_c

    :cond_18
    iget-boolean v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_1a

    iget-boolean v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_19

    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v7

    goto :goto_7

    :cond_19
    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findLastReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v7

    goto :goto_7

    :cond_1a
    iget-boolean v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_1b

    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findLastReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v7

    goto :goto_7

    :cond_1b
    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v7

    :goto_7
    if-eqz v7, :cond_20

    invoke-virtual {v3, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v9

    if-eqz v9, :cond_1f

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    if-ge v9, v10, :cond_1d

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    if-ge v7, v9, :cond_1c

    goto :goto_8

    :cond_1c
    move v7, v5

    goto :goto_9

    :cond_1d
    :goto_8
    move v7, v8

    :goto_9
    if-eqz v7, :cond_1f

    iget-boolean v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_1e

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    goto :goto_a

    :cond_1e
    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    :goto_a
    iput v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :cond_1f
    :goto_b
    move v7, v8

    goto :goto_d

    :cond_20
    :goto_c
    move v7, v5

    :goto_d
    if-eqz v7, :cond_21

    goto :goto_f

    :cond_21
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    iget-boolean v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v7, :cond_22

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v7

    add-int/2addr v7, v4

    goto :goto_e

    :cond_22
    move v7, v5

    :goto_e
    iput v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    :goto_f
    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getExtraLayoutSpace(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v3

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v7, :cond_23

    move v7, v3

    move v3, v5

    goto :goto_10

    :cond_23
    move v7, v5

    :goto_10
    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndPadding()I

    move-result v9

    add-int/2addr v7, v9

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v9

    if-eqz v9, :cond_26

    iget v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v9, v4, :cond_26

    iget v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v10, v6, :cond_26

    invoke-virtual {v0, v9}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_26

    iget-boolean v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v10, :cond_24

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    iget-object v11, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v11, v9}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v10, v9

    iget v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    goto :goto_11

    :cond_24
    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v10, v9}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    :goto_11
    sub-int/2addr v10, v9

    if-lez v10, :cond_25

    add-int/2addr v3, v10

    goto :goto_12

    :cond_25
    sub-int/2addr v7, v10

    :cond_26
    :goto_12
    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v0, v1, v2, v9}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->onAnchorReady(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    iget-boolean v10, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v10, :cond_29

    iget v10, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v9, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {v0, v10, v9}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v3, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    invoke-virtual {v0, v1, v9, v2, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v9, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v10, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v3, :cond_27

    add-int/2addr v7, v3

    :cond_27
    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    iget v11, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {v0, v11, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v11, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v7, v11

    iput v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v0, v1, v3, v2, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v3, :cond_28

    invoke-direct {v0, v10, v9}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v3, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    invoke-virtual {v0, v1, v9, v2, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v9, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    :cond_28
    move v3, v7

    move v7, v9

    goto :goto_13

    :cond_29
    iget v10, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v9, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {v0, v10, v9}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v7, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    invoke-virtual {v0, v1, v9, v2, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v9, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v10, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v7, :cond_2a

    add-int/2addr v3, v7

    :cond_2a
    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    iget v11, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {v0, v11, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v3, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget v3, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v11, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v11

    iput v3, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v0, v1, v7, v2, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v3, :cond_2b

    invoke-direct {v0, v10, v9}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v3, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    invoke-virtual {v0, v1, v9, v2, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    goto :goto_13

    :cond_2b
    move v3, v9

    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v9

    if-lez v9, :cond_2d

    iget-boolean v9, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v9, v10

    if-eqz v9, :cond_2c

    invoke-direct {v0, v3, v1, v2, v8}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fixLayoutEndGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v9

    add-int/2addr v7, v9

    add-int/2addr v3, v9

    invoke-direct {v0, v7, v1, v2, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fixLayoutStartGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v9

    goto :goto_14

    :cond_2c
    invoke-direct {v0, v7, v1, v2, v8}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fixLayoutStartGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v9

    add-int/2addr v7, v9

    add-int/2addr v3, v9

    invoke-direct {v0, v3, v1, v2, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fixLayoutEndGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v9

    :goto_14
    add-int/2addr v7, v9

    add-int/2addr v3, v9

    :cond_2d
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v9

    if-eqz v9, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v9

    if-eqz v9, :cond_36

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v9

    if-nez v9, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v9

    if-nez v9, :cond_2e

    goto/16 :goto_1a

    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v12

    move v13, v5

    move v14, v13

    move v15, v14

    :goto_15
    if-ge v13, v11, :cond_33

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v16

    if-eqz v16, :cond_2f

    goto :goto_18

    :cond_2f
    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    if-ge v6, v12, :cond_30

    const/4 v6, 0x1

    goto :goto_16

    :cond_30
    move v6, v5

    :goto_16
    iget-boolean v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v6, v10, :cond_31

    move v6, v4

    goto :goto_17

    :cond_31
    const/4 v6, 0x1

    :goto_17
    if-ne v6, v4, :cond_32

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-object v8, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v8}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v6

    add-int/2addr v14, v6

    goto :goto_18

    :cond_32
    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-object v8, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v8}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v6

    add-int/2addr v15, v6

    :goto_18
    add-int/lit8 v13, v13, 0x1

    const/high16 v6, -0x80000000

    const/4 v8, 0x1

    goto :goto_15

    :cond_33
    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput-object v9, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-lez v14, :cond_34

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    invoke-direct {v0, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v14, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iput v5, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v6, v2, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    :cond_34
    if-lez v15, :cond_35

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    invoke-direct {v0, v6, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v15, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iput v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v3, v2, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    goto :goto_19

    :cond_35
    const/4 v6, 0x0

    :goto_19
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput-object v6, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    :cond_36
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-nez v1, :cond_37

    iput v4, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->onLayoutComplete()V

    :cond_37
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLastStackFromEnd:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    new-instance p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;-><init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;-><init>()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    iput p0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->invalidateAnchor()V

    :goto_0
    return-object v0
.end method

.method scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {p0, v0, v3, v2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutState(IIZLcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-virtual {p0, p2, v2, p3, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result p2

    add-int/2addr v4, p2

    if-gez v4, :cond_2

    return v1

    :cond_2
    if-le v3, v4, :cond_3

    mul-int p1, v0, v4

    :cond_3
    iget-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public scrollHorizontallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public scrollToPosition(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->invalidateAnchor()V

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public setOrientation(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid orientation:"

    invoke-static {v0, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline12(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
