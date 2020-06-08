.class Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutState"
.end annotation


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mExtra:I

.field mItemDirection:I

.field mLastScrollDelta:I

.field mLayoutDirection:I

.field mOffset:I

.field mRecycle:Z

.field mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mScrollingOffset:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public assignPositionFromScrapList(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    if-eq v4, p1, :cond_3

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    mul-int/2addr v5, v6

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    if-ge v5, v2, :cond_3

    move-object v1, v4

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v2, v5

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    :goto_3
    return-void
.end method

.method next(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v2

    if-ne v3, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return-object v1

    :cond_3
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    return-object p1
.end method
