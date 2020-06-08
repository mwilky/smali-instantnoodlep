.class public final Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# instance fields
.field accessibilityDelegateCheckFailed:Z

.field mAccessibilityDelegateField:Ljava/lang/reflect/Field;

.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerPool:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheMax:I

.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mViewCacheMax:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->accessibilityDelegateCheckFailed:Z

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    return-object p0
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    const/4 p2, 0x4

    if-ne p0, p2, :cond_3

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_1
    iput-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getRecycledViewPool()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->putRecycledView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    return-void
.end method

.method clearOldPositions()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(II)I

    move-result p0

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "invalid position "

    const-string v2, ". State item count is "

    invoke-static {v1, p1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline24(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getRecycledViewPool()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mRecyclerPool:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mRecyclerPool:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mRecyclerPool:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    return-object p0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object p0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 13

    if-ltz p1, :cond_31

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_31

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const-wide/16 v1, -0x1

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    move v7, v5

    :goto_0
    if-ge v7, v0, :cond_2

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v9

    if-ne v9, p1, :cond_1

    invoke-virtual {v8, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v7, p1, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(II)I

    move-result v7

    if-lez v7, :cond_4

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemId(I)J

    move v7, v5

    :goto_1
    if-ge v7, v0, :cond_4

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v9

    if-nez v9, :cond_3

    iget-wide v9, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemId:J

    cmp-long v9, v9, v1

    if-nez v9, :cond_3

    invoke-virtual {v8, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move-object v8, v4

    :goto_3
    if-eqz v8, :cond_6

    move v0, v6

    goto :goto_4

    :cond_5
    move-object v8, v4

    :cond_6
    move v0, v5

    :goto_4
    if-nez v8, :cond_17

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v5

    :goto_5
    if-ge v8, v7, :cond_9

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v10

    if-ne v10, p1, :cond_8

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v10, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v10

    if-nez v10, :cond_8

    :cond_7
    invoke-virtual {v9, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    goto/16 :goto_9

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    iget-object v8, v7, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v9, v5

    :goto_6
    if-ge v9, v8, :cond_b

    iget-object v10, v7, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    iget-object v11, v7, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast v11, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {v11, v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v12

    if-ne v12, p1, :cond_a

    invoke-virtual {v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v11

    if-nez v11, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    move-object v10, v4

    :goto_7
    if-eqz v10, :cond_c

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v8, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    invoke-virtual {v7, v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_c
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v5

    :goto_8
    if-ge v8, v7, :cond_e

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v10

    if-ne v10, p1, :cond_d

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_9

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_e
    move-object v9, v4

    :goto_9
    if-eqz v9, :cond_18

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_b

    :cond_f
    iget v7, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v7, :cond_16

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v8

    if-ge v7, v8, :cond_16

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v7

    iget v8, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v7, v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemViewType(I)I

    iget v7, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemViewType:I

    if-eqz v7, :cond_10

    goto :goto_a

    :cond_10
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-wide v7, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemId:J

    iget-object v10, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v10

    iget v11, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v10, v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemId(I)J

    cmp-long v7, v7, v1

    if-nez v7, :cond_11

    goto :goto_b

    :cond_11
    :goto_a
    move v7, v5

    goto :goto_c

    :cond_12
    :goto_b
    move v7, v6

    :goto_c
    if-nez v7, :cond_15

    const/4 v7, 0x4

    invoke-virtual {v9, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isScrap()Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v8, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v8, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_d

    :cond_13
    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    :cond_14
    :goto_d
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    move-object v9, v4

    goto :goto_e

    :cond_15
    move v0, v6

    goto :goto_e

    :cond_16
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Inconsistency detected. Invalid view holder adapter position"

    invoke-static {p1, v9}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    move-object v9, v8

    :cond_18
    :goto_e
    if-nez v9, :cond_24

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v7, p1, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(II)I

    move-result v7

    if-ltz v7, :cond_23

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v8

    if-ge v7, v8, :cond_23

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemViewType(I)I

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_20

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemId(I)J

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :cond_19
    :goto_f
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_1b

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-wide v10, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemId:J

    cmp-long v10, v10, v1

    if-nez v10, :cond_19

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v10

    if-nez v10, :cond_19

    iget v10, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemViewType:I

    if-nez v10, :cond_1a

    invoke-virtual {v9, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v9, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setFlags(II)V

    goto :goto_11

    :cond_1a
    iget-object v10, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v10, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v11, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v11, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    goto :goto_f

    :cond_1b
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_1c
    :goto_10
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1e

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-wide v9, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemId:J

    cmp-long v9, v9, v1

    if-nez v9, :cond_1c

    iget v9, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemViewType:I

    if-nez v9, :cond_1d

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v9, v8

    goto :goto_11

    :cond_1d
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_10

    :cond_1e
    move-object v9, v4

    :cond_1f
    :goto_11
    if-eqz v9, :cond_20

    iput v7, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    move v0, v6

    :cond_20
    if-nez v9, :cond_22

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getRecycledViewPool()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->getRecycledView(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->resetInternal()V

    invoke-static {}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3900()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_21

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    :cond_21
    move-object v9, v1

    :cond_22
    if-nez v9, :cond_24

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, v2, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v9

    goto :goto_12

    :cond_23
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Inconsistency detected. Invalid item position "

    const-string v2, "(offset:"

    const-string v3, ").state:"

    invoke-static {v1, p1, v2, v7, v3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline25(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    :goto_12
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isBound()Z

    move-result v1

    if-eqz v1, :cond_25

    iput p1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_13

    :cond_25
    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isBound()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_14

    :cond_26
    :goto_13
    move p1, v5

    goto/16 :goto_18

    :cond_27
    :goto_14
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v1, p1, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(II)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iput-object v2, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2, v9, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->bindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v1, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_28
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->accessibilityDelegateCheckFailed:Z

    if-eqz v2, :cond_29

    goto :goto_16

    :cond_29
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_2a

    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "mAccessibilityDelegate"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_15

    :catchall_0
    iput-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->accessibilityDelegateCheckFailed:Z

    goto :goto_16

    :cond_2a
    :goto_15
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2b

    move v2, v6

    goto :goto_17

    :catchall_1
    iput-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->accessibilityDelegateCheckFailed:Z

    :cond_2b
    :goto_16
    move v2, v5

    :goto_17
    if-nez v2, :cond_2c

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_2c
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_2d

    iput p1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_2d
    move p1, v6

    :goto_18
    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_2e

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_19

    :cond_2e
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_19

    :cond_2f
    move-object p0, v1

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    :goto_19
    iput-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_30

    if-eqz p1, :cond_30

    move v5, v6

    :cond_30
    iput-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    iget-object p0, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0

    :cond_31
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid item position "

    const-string v2, "("

    const-string v3, "). Item count:"

    invoke-static {v1, p1, v2, p1, v3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline25(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->access$4202(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method recycleAndClearCachedViews()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method recycleCachedViewAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isScrap()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method recycleViewHolderInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 5

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isScrap()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->access$4100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onFailedToRecycleView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x4e

    invoke-virtual {p1, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mViewCacheMax:I

    if-ne v3, v4, :cond_2

    if-lez v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    :cond_2
    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mViewCacheMax:I

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-nez v3, :cond_5

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    move v2, v1

    goto :goto_1

    :cond_4
    move v3, v2

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    if-nez v3, :cond_6

    if-nez v2, :cond_6

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    :cond_6
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-static {v0, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAttached:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method scrapView(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setScrapContainer(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method setRecycledViewPool(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mRecyclerPool:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->detach()V

    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mRecyclerPool:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mRecyclerPool:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->attach(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    :cond_1
    return-void
.end method

.method setViewCacheExtension(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewCacheExtension;)V
    .locals 0

    return-void
.end method

.method public setViewCacheSize(I)V
    .locals 2

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mViewCacheMax:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method unscrapView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->access$4202(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    return-void
.end method
