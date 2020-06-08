.class public abstract Lcom/oneplus/lib/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuPresenter;


# instance fields
.field private mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field private mItemLayoutRes:I

.field protected mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

.field protected mMenuView:Lcom/oneplus/lib/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iput p3, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mItemLayoutRes:I

    return-void
.end method


# virtual methods
.method public abstract bindItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Lcom/oneplus/lib/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCallback()Lcom/oneplus/lib/menu/MenuPresenter$Callback;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mId:I

    return p0
.end method

.method public getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    instance-of v0, p2, Lcom/oneplus/lib/menu/MenuView$ItemView;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/oneplus/lib/menu/MenuView$ItemView;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/lib/menu/MenuView$ItemView;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->bindItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Lcom/oneplus/lib/menu/MenuView$ItemView;)V

    check-cast p2, Landroid/view/View;

    return-object p2
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    return-void
.end method
