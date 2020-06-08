.class Landroidx/leanback/app/HeadersSupportFragment$1$1;
.super Ljava/lang/Object;
.source "HeadersSupportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/app/HeadersSupportFragment$1;->onCreate(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/leanback/app/HeadersSupportFragment$1;

.field final synthetic val$viewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Landroidx/leanback/app/HeadersSupportFragment$1;Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/HeadersSupportFragment$1$1;->this$1:Landroidx/leanback/app/HeadersSupportFragment$1;

    iput-object p2, p0, Landroidx/leanback/app/HeadersSupportFragment$1$1;->val$viewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/leanback/app/HeadersSupportFragment$1$1;->this$1:Landroidx/leanback/app/HeadersSupportFragment$1;

    iget-object p1, p1, Landroidx/leanback/app/HeadersSupportFragment$1;->this$0:Landroidx/leanback/app/HeadersSupportFragment;

    iget-object p1, p1, Landroidx/leanback/app/HeadersSupportFragment;->mOnHeaderClickedListener:Landroidx/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/leanback/app/HeadersSupportFragment$1$1;->val$viewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    iget-object p0, p0, Landroidx/leanback/app/HeadersSupportFragment$1$1;->val$viewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {p0}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getItem()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/Row;

    check-cast p1, Landroidx/leanback/app/BrowseSupportFragment$10;

    iget-object p0, p1, Landroidx/leanback/app/BrowseSupportFragment$10;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/app/BrowseSupportFragment;->isInHeadersTransition()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Landroidx/leanback/app/BrowseSupportFragment$10;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragment:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p1, Landroidx/leanback/app/BrowseSupportFragment$10;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrowseSupportFragment;->startHeadersTransitionInternal(Z)V

    iget-object p0, p1, Landroidx/leanback/app/BrowseSupportFragment$10;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_0
    return-void
.end method
