.class Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/support/v7/widget/ActionMenuView;

    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/support/v7/widget/Toolbar$1;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/Toolbar$1;->onMenuItemClick(Landroid/view/MenuItem;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/support/v7/widget/ActionMenuView;

    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;->onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V

    :cond_0
    return-void
.end method
