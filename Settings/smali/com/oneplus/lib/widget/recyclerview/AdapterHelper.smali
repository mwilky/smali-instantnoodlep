.class Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;,
        Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    }
.end annotation


# instance fields
.field final mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mDisableRecycler:Z

    new-instance p1, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;-><init>(Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOpReorderer:Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

    return-void
.end method

.method private canFindInPreLayout(I)Z
    .locals 7

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(II)I

    move-result v3

    if-ne v3, p1, :cond_2

    return v6

    :cond_0
    if-nez v4, :cond_2

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    :goto_1
    if-ge v4, v3, :cond_2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(II)I

    move-result v5

    if-ne v5, p1, :cond_1

    return v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 12

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v0, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    invoke-direct {p0, v1, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v0

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "op should be remove or update."

    invoke-static {v0, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move v2, v4

    :goto_0
    move v6, v0

    move v7, v1

    move v0, v5

    move v1, v0

    :goto_1
    iget v8, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v9, 0x0

    if-ge v0, v8, :cond_8

    iget v8, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v10, v2, v0

    add-int/2addr v10, v8

    iget v8, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v10, v8}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v8

    iget v10, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eq v10, v5, :cond_3

    if-eq v10, v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v6, 0x1

    if-ne v8, v10, :cond_4

    goto :goto_2

    :cond_3
    if-ne v8, v6, :cond_4

    :goto_2
    move v10, v5

    goto :goto_4

    :cond_4
    :goto_3
    move v10, v4

    :goto_4
    if-eqz v10, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    iget v10, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    iget-object v11, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v10, v6, v1, v11}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v6

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;I)V

    iget-boolean v10, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mDisableRecycler:Z

    if-nez v10, :cond_6

    iput-object v9, v6, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;

    invoke-virtual {v9, v6}, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_6
    iget v6, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v3, :cond_7

    add-int/2addr v7, v1

    :cond_7
    move v1, v5

    move v6, v8

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mDisableRecycler:Z

    if-nez v2, :cond_9

    iput-object v9, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_9
    if-lez v1, :cond_a

    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, p1, v6, v1, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;I)V

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_a

    iput-object v9, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_a
    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "should not dispatch add or move for pre layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetPositionRecordsForMove(II)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown update op type for "

    invoke-static {v0, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    invoke-virtual {p0, v0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetPositionRecordsForInsert(II)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    :goto_0
    return-void
.end method

.method private updatePositionWithPostponed(II)I
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x3

    if-ltz v0, :cond_d

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-ne v4, v2, :cond_8

    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v4

    move v4, v2

    move v2, v5

    :goto_1
    if-lt p1, v2, :cond_6

    if-gt p1, v4, :cond_6

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, v4, :cond_3

    if-nez p2, :cond_1

    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v1

    iput v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    :cond_1
    if-ne p2, v1, :cond_2

    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v1

    iput v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    if-nez p2, :cond_4

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    :cond_4
    if-ne p2, v1, :cond_5

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_6
    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v2, :cond_c

    if-nez p2, :cond_7

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v1

    iput v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_4

    :cond_7
    if-ne p2, v1, :cond_c

    add-int/lit8 v2, v2, -0x1

    iput v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v1

    iput v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_4

    :cond_8
    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, p1, :cond_a

    if-nez v4, :cond_9

    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v2

    goto :goto_4

    :cond_9
    if-ne v4, v1, :cond_c

    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v2

    goto :goto_4

    :cond_a
    if-nez p2, :cond_b

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4

    :cond_b
    if-ne p2, v1, :cond_c

    add-int/lit8 v2, v2, -0x1

    iput v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    :cond_c
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_d
    iget-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_5
    if-ltz p2, :cond_11

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_f

    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v1, v4, :cond_e

    if-gez v1, :cond_10

    :cond_e
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mDisableRecycler:Z

    if-nez v1, :cond_10

    iput-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v1, :cond_10

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mDisableRecycler:Z

    if-nez v1, :cond_10

    iput-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_11
    return p1
.end method


# virtual methods
.method consumePostponedUpdates()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->dispatchUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    return-void
.end method

.method consumeUpdatesInOnePass()V
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->consumePostponedUpdates()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->dispatchUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    iget-object v6, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v6, v5, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetPositionRecordsForMove(II)V

    iget-object v2, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iput-boolean v4, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->dispatchUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    invoke-virtual {v3, v4, v5, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->dispatchUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    iget-object v6, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v6, v5, v2, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iput-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1212(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->dispatchUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    iget-object v6, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v6, v5, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetPositionRecordsForInsert(II)V

    iget-object v2, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iput-boolean v4, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    :goto_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    return-void
.end method

.method dispatchFirstPassAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->dispatchUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2, p2, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsChanged:Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p2, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1212(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    :goto_0
    return-void
.end method

.method findPositionOffset(II)I
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_6

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    iget v2, v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget v2, v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, p1, :cond_0

    iget p1, v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    :cond_0
    if-ge v2, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget v1, v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget v3, v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_5

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    iget v1, v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    sub-int/2addr p1, v1

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    iget v1, v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v1

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    if-nez p0, :cond_0

    new-instance p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iput p3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iput-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method preProcess()V
    .locals 13

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOpReorderer:Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;->reorderOps(Ljava/util/List;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_16

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v4, :cond_14

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v4, v7, :cond_a

    const/4 v8, 0x2

    if-eq v4, v8, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto/16 :goto_a

    :cond_1
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v9, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v9, v4

    move v11, v4

    move v10, v6

    move v6, v1

    :goto_1
    if-ge v4, v9, :cond_6

    iget-object v12, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    check-cast v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    invoke-virtual {v12, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->findViewHolder(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v12

    if-nez v12, :cond_4

    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    if-ne v10, v7, :cond_3

    iget-object v10, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v8, v11, v6, v10}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    move v6, v1

    move v11, v4

    :cond_3
    move v10, v1

    goto :goto_3

    :cond_4
    :goto_2
    if-nez v10, :cond_5

    iget-object v10, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v8, v11, v6, v10}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    move v6, v1

    move v11, v4

    :cond_5
    move v10, v7

    :goto_3
    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v6, v4, :cond_8

    iget-object v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-boolean v7, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mDisableRecycler:Z

    if-nez v7, :cond_7

    iput-object v5, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;

    invoke-virtual {v5, v3}, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p0, v8, v11, v6, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v3

    :cond_8
    if-nez v10, :cond_9

    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto/16 :goto_a

    :cond_9
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto/16 :goto_a

    :cond_a
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v8, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v8, v4

    move v9, v1

    move v10, v6

    move v6, v4

    :goto_4
    if-ge v6, v8, :cond_10

    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    check-cast v11, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    invoke-virtual {v11, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->findViewHolder(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v11

    if-nez v11, :cond_d

    invoke-direct {p0, v6}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_6

    :cond_b
    if-ne v10, v7, :cond_c

    invoke-virtual {p0, v7, v4, v9, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    move v10, v7

    goto :goto_5

    :cond_c
    move v10, v1

    :goto_5
    move v11, v1

    goto :goto_8

    :cond_d
    :goto_6
    if-nez v10, :cond_e

    invoke-virtual {p0, v7, v4, v9, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    move v10, v7

    goto :goto_7

    :cond_e
    move v10, v1

    :goto_7
    move v11, v7

    :goto_8
    if-eqz v10, :cond_f

    sub-int/2addr v6, v9

    sub-int/2addr v8, v9

    move v9, v7

    goto :goto_9

    :cond_f
    add-int/lit8 v9, v9, 0x1

    :goto_9
    add-int/2addr v6, v7

    move v10, v11

    goto :goto_4

    :cond_10
    iget v6, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v9, v6, :cond_12

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mDisableRecycler:Z

    if-nez v6, :cond_11

    iput-object v5, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;

    invoke-virtual {v6, v3}, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_11
    invoke-virtual {p0, v7, v4, v9, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v3

    :cond_12
    if-nez v10, :cond_13

    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_a

    :cond_13
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_a

    :cond_14
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    :goto_a
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_15

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_16
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method reset()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    return-void
.end method
