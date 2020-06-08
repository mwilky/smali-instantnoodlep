.class public Lcom/oneplus/lib/menu/MenuItemWrapperICS;
.super Lcom/oneplus/lib/menu/BaseMenuWrapper;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;,
        Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;,
        Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;,
        Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/menu/BaseMenuWrapper<",
        "Lcom/oneplus/lib/menu/SupportMenuItem;",
        ">;",
        "Landroid/view/MenuItem;"
    }
.end annotation


# instance fields
.field private mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;


# virtual methods
.method public collapseActionView()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Lcom/oneplus/lib/menu/SupportMenuItem;->collapseActionView()Z

    move-result p0

    return p0
.end method

.method public expandActionView()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Lcom/oneplus/lib/menu/SupportMenuItem;->expandActionView()Z

    move-result p0

    return p0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getSupportActionProvider()Lcom/oneplus/lib/widget/ActionProvider;

    move-result-object p0

    instance-of v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;

    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getActionView()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->mWrappedView:Landroid/view/CollapsibleActionView;

    check-cast p0, Landroid/view/View;

    :cond_0
    return-object p0
.end method

.method public getAlphabeticModifiers()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getAlphabeticModifiers()I

    move-result p0

    return p0
.end method

.method public getAlphabeticShortcut()C
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result p0

    return p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getGroupId()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getGroupId()I

    move-result p0

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getItemId()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    return p0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p0

    return-object p0
.end method

.method public getNumericModifiers()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getNumericModifiers()I

    move-result p0

    return p0
.end method

.method public getNumericShortcut()C
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getNumericShortcut()C

    move-result p0

    return p0
.end method

.method public getOrder()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getOrder()I

    move-result p0

    return p0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/BaseMenuWrapper;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Lcom/oneplus/lib/menu/SupportMenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public hasSubMenu()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result p0

    return p0
.end method

.method public isActionViewExpanded()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Lcom/oneplus/lib/menu/SupportMenuItem;->isActionViewExpanded()Z

    move-result p0

    return p0
.end method

.method public isCheckable()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->isCheckable()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->isChecked()Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->isVisible()Z

    move-result p0

    return p0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;

    iget-object v2, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;-><init>(Lcom/oneplus/lib/menu/MenuItemWrapperICS;Landroid/content/Context;Landroid/view/ActionProvider;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setSupportActionProvider(Lcom/oneplus/lib/widget/ActionProvider;)Lcom/oneplus/lib/menu/SupportMenuItem;

    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setActionView(I)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p1, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    new-instance v1, Lcom/oneplus/lib/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-direct {v1, p1}, Lcom/oneplus/lib/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_0
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/menu/SupportMenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setExclusiveCheckable"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MenuItemWrapper"

    const-string v0, "Error while calling setExclusiveCheckable"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/menu/SupportMenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;-><init>(Lcom/oneplus/lib/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnActionExpandListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;-><init>(Lcom/oneplus/lib/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1, p2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oneplus/lib/menu/SupportMenuItem;->setShortcut(CCII)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/SupportMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/lib/menu/SupportMenuItem;

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method