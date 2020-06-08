.class Lcom/oneplus/lib/widget/recyclerview/ChildHelper;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;,
        Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;
    }
.end annotation


# instance fields
.field final mBucket:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

.field final mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

.field final mHiddenViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    new-instance p1, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    invoke-direct {p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mBucket:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mHiddenViews:Ljava/util/List;

    return-void
.end method

.method private getOffset(I)I
    .locals 4

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->getChildCount()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mBucket:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result v3

    sub-int v3, v2, v3

    sub-int v3, p1, v3

    if-nez v3, :cond_2

    :goto_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mBucket:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {p1, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->get(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return v0
.end method

.method private unhideViewInternal(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->onLeftHiddenState(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method addView(Landroid/view/View;IZ)V
    .locals 1

    if-gez p2, :cond_0

    iget-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->getChildCount()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getOffset(I)I

    move-result p2

    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mBucket:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {v0, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->insert(IZ)V

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast p3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {p3, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->onEnteredHiddenState(Landroid/view/View;)V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    iget-object p3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {p3, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)V

    return-void
.end method

.method attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 1

    if-gez p2, :cond_0

    iget-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->getChildCount()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getOffset(I)I

    move-result p2

    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mBucket:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {v0, p2, p4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->insert(IZ)V

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast p4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {p4, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->onEnteredHiddenState(Landroid/view/View;)V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method detachViewFromParent(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getOffset(I)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mBucket:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->remove(I)Z

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "called detach on an already detached child "

    invoke-static {p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_2
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    return-void
.end method

.method getChildAt(I)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getOffset(I)I

    move-result p1

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->getChildCount()I

    move-result v0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method getUnfilteredChildAt(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getUnfilteredChildCount()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->getChildCount()I

    move-result p0

    return p0
.end method

.method isHidden(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method removeView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mBucket:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->remove(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->removeViewAt(I)V

    return-void
.end method

.method removeViewAt(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getOffset(I)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mBucket:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->remove(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->removeViewAt(I)V

    return-void
.end method

.method removeViewIfHidden(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    return v2

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mBucket:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mBucket:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->remove(I)Z

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->removeViewAt(I)V

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mBucket:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
