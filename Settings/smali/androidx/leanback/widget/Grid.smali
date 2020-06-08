.class abstract Landroidx/leanback/widget/Grid;
.super Ljava/lang/Object;
.source "Grid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/Grid$Location;,
        Landroidx/leanback/widget/Grid$Provider;
    }
.end annotation


# instance fields
.field protected mFirstVisibleIndex:I

.field protected mLastVisibleIndex:I

.field protected mNumRows:I

.field protected mProvider:Landroidx/leanback/widget/Grid$Provider;

.field protected mReversedFlow:Z

.field protected mSpacing:I

.field protected mStartIndex:I

.field mTmpItem:[Ljava/lang/Object;

.field protected mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iput v0, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    return-void
.end method

.method private resetVisibleIndexIfEmpty()V
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iput v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    :cond_0
    return-void
.end method


# virtual methods
.method public appendOneColumnVisibleItems()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/leanback/widget/Grid;->appendVisibleItems(IZ)Z

    move-result p0

    return p0
.end method

.method protected abstract appendVisibleItems(IZ)Z
.end method

.method protected final checkAppendOverLimit(I)Z
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v0

    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr p1, p0

    if-gt v0, p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v2}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v0

    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr p1, p0

    if-lt v0, p1, :cond_2

    :goto_0
    move v1, v3

    :cond_2
    return v1
.end method

.method protected final checkPrependOverLimit(I)Z
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v2}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v0

    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr p1, p0

    if-lt v0, p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v0

    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr p1, p0

    if-gt v0, p1, :cond_2

    :goto_0
    move v1, v3

    :cond_2
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    return-void
.end method

.method protected abstract findRowMax(ZI[I)I
.end method

.method public final findRowMax(Z[I)I
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Landroidx/leanback/widget/Grid;->findRowMax(ZI[I)I

    move-result p0

    return p0
.end method

.method protected abstract findRowMin(ZI[I)I
.end method

.method public final findRowMin(Z[I)I
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Landroidx/leanback/widget/Grid;->findRowMin(ZI[I)I

    move-result p0

    return p0
.end method

.method public abstract getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;
.end method

.method public abstract getLocation(I)Landroidx/leanback/widget/Grid$Location;
.end method

.method public final getRowIndex(I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget p0, p0, Landroidx/leanback/widget/Grid$Location;->row:I

    return p0
.end method

.method public invalidateItemsAfter(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v0, :cond_1

    return-void

    :cond_1
    if-lt v0, p1, :cond_2

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :cond_2
    invoke-direct {p0}, Landroidx/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-gez v0, :cond_3

    iput p1, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    :cond_3
    return-void
.end method

.method protected abstract prependVisibleItems(IZ)Z
.end method

.method public removeInvisibleItemsAtEnd(II)V
    .locals 4

    :goto_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v0, v1, :cond_2

    if-le v0, p1, :cond_2

    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v0

    if-lt v0, p2, :cond_1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v0

    if-gt v0, p2, :cond_1

    :goto_1
    move v2, v3

    :cond_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$2;->removeItem(I)V

    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroidx/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    return-void
.end method

.method public removeInvisibleItemsAtFront(II)V
    .locals 5

    :goto_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v0, v1, :cond_2

    if-ge v1, p1, :cond_2

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    move-result v0

    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v4, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v1, v4}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v1

    add-int/2addr v1, v0

    if-gt v1, p2, :cond_1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v4, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v1, v4}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v1

    sub-int/2addr v1, v0

    if-lt v1, p2, :cond_1

    :goto_1
    move v2, v3

    :cond_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$2;->removeItem(I)V

    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroidx/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    return-void
.end method

.method setNumRows(I)V
    .locals 2

    if-lez p1, :cond_2

    iget v0, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    iget p1, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    new-array p1, p1, [Landroidx/collection/CircularIntArray;

    iput-object p1, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    new-instance v1, Landroidx/collection/CircularIntArray;

    invoke-direct {v1}, Landroidx/collection/CircularIntArray;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
