.class Landroidx/leanback/app/DetailsSupportFragment$13;
.super Ljava/lang/Object;
.source "DetailsSupportFragment.java"

# interfaces
.implements Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/app/DetailsSupportFragment;->setupDpadNavigation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/DetailsSupportFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/DetailsSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$13;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object p2, p0, Landroidx/leanback/app/DetailsSupportFragment$13;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    iget-object p2, p2, Landroidx/leanback/app/DetailsSupportFragment;->mRootView:Landroidx/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object p2

    if-eq p1, p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f0a01f0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$13;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    iget-boolean p2, p1, Landroidx/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroidx/leanback/app/DetailsSupportFragment;->slideInGridView()V

    iget-object p0, p0, Landroidx/leanback/app/DetailsSupportFragment$13;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-virtual {p0, v1}, Landroidx/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a07ac

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$13;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-virtual {p1}, Landroidx/leanback/app/DetailsSupportFragment;->slideOutGridView()V

    iget-object p0, p0, Landroidx/leanback/app/DetailsSupportFragment$13;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/leanback/app/DetailsSupportFragment$13;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-virtual {p0, v1}, Landroidx/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
