.class Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Lcom/oneplus/lib/widget/ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/menu/ActionMenuItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/oneplus/lib/menu/ActionMenuItemView;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/oneplus/lib/menu/ShowableListMenu;
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/oneplus/lib/menu/ActionMenuItemView;

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->getPopup()Lcom/oneplus/lib/menu/MenuPopup;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/oneplus/lib/menu/ActionMenuItemView;

    iget-object v1, v0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemInvoker:Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-interface {v1, v0}, Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/oneplus/lib/menu/ActionMenuItemView;

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->getPopup()Lcom/oneplus/lib/menu/MenuPopup;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oneplus/lib/menu/ShowableListMenu;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
