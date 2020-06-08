.class Landroidx/recyclerview/widget/OpReorderer;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/OpReorderer$Callback;
    }
.end annotation


# instance fields
.field final mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/OpReorderer$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    return-void
.end method


# virtual methods
.method reorderOps(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/4 v4, -0x1

    if-ltz v0, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v5, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_1
    move v3, v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_2
    if-eq v0, v4, :cond_22

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v7, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v7, v1, :cond_1d

    const/4 v4, 0x0

    const/4 v8, 0x2

    if-eq v7, v8, :cond_b

    const/4 v2, 0x4

    if-eq v7, v2, :cond_4

    goto :goto_0

    :cond_4
    iget v7, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v8, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v7, v8, :cond_5

    add-int/lit8 v8, v8, -0x1

    iput v8, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    :cond_5
    iget v9, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_6

    add-int/lit8 v9, v9, -0x1

    iput v9, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v7, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    iget v8, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget-object v9, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    check-cast v7, Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v7, v2, v8, v1, v9}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v1

    goto :goto_4

    :cond_6
    :goto_3
    move-object v1, v4

    :goto_4
    iget v7, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v8, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v7, v8, :cond_7

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_5

    :cond_7
    iget v9, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_8

    sub-int/2addr v8, v7

    iget-object v4, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    add-int/lit8 v7, v7, 0x1

    iget-object v9, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v4, v2, v7, v8, v9}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v4

    iget v2, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v8

    iput v2, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_8
    :goto_5
    invoke-interface {p1, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v2, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lez v2, :cond_9

    invoke-interface {p1, v0, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    check-cast v2, Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    :goto_6
    if-eqz v1, :cond_a

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_a
    if-eqz v4, :cond_0

    invoke-interface {p1, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    iget v7, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v9, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v7, v9, :cond_d

    iget v10, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v10, v7, :cond_c

    iget v10, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v9, v7

    if-ne v10, v9, :cond_c

    move v7, v2

    move v2, v1

    goto :goto_8

    :cond_c
    :goto_7
    move v7, v2

    goto :goto_8

    :cond_d
    iget v10, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v11, v9, 0x1

    if-ne v10, v11, :cond_e

    iget v10, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v7, v9

    if-ne v10, v7, :cond_e

    move v2, v1

    goto :goto_7

    :cond_e
    move v7, v1

    :goto_8
    iget v9, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v10, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v9, v10, :cond_f

    add-int/lit8 v10, v10, -0x1

    iput v10, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_9

    :cond_f
    iget v11, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_10

    add-int/lit8 v11, v11, -0x1

    iput v11, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iput v8, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    iput v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v0, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-nez v0, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto/16 :goto_0

    :cond_10
    :goto_9
    iget v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v9, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v1, v9, :cond_11

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_a

    :cond_11
    iget v10, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v9, v10

    if-ge v1, v9, :cond_12

    sub-int/2addr v9, v1

    iget-object v10, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    add-int/lit8 v1, v1, 0x1

    check-cast v10, Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v10, v8, v1, v9, v4}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v4

    iget v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v8, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v1, v8

    iput v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_12
    :goto_a
    if-eqz v2, :cond_13

    invoke-interface {p1, v0, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto/16 :goto_0

    :cond_13
    if-eqz v7, :cond_17

    if-eqz v4, :cond_15

    iget v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v1, v2, :cond_14

    iget v2, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v1, v2

    iput v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_14
    iget v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v1, v2, :cond_15

    iget v2, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v1, v2

    iput v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_15
    iget v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v1, v2, :cond_16

    iget v2, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v1, v2

    iput v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_16
    iget v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v1, v2, :cond_1b

    iget v2, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v1, v2

    iput v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_b

    :cond_17
    if-eqz v4, :cond_19

    iget v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v1, v2, :cond_18

    iget v2, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v1, v2

    iput v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_18
    iget v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v1, v2, :cond_19

    iget v2, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v1, v2

    iput v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_19
    iget v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v1, v2, :cond_1a

    iget v2, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v1, v2

    iput v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_1a
    iget v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v1, v2, :cond_1b

    iget v2, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v1, v2

    iput v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_1b
    :goto_b
    invoke-interface {p1, v0, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v1, v2, :cond_1c

    invoke-interface {p1, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_1c
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_c
    if-eqz v4, :cond_0

    invoke-interface {p1, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1d
    iget v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v7, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v7, :cond_1e

    move v2, v4

    :cond_1e
    iget v1, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v4, :cond_1f

    add-int/lit8 v2, v2, 0x1

    :cond_1f
    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v1, v4, :cond_20

    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v1

    iput v4, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_20
    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, v4, :cond_21

    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v1

    iput v4, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_21
    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v2

    iput v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    invoke-interface {p1, v0, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_22
    return-void
.end method
