.class Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;
.super Lcom/oneplus/lib/menu/BaseWrapper;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnActionExpandListenerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/menu/BaseWrapper<",
        "Landroid/view/MenuItem$OnActionExpandListener;",
        ">;",
        "Landroid/view/MenuItem$OnActionExpandListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/MenuItemWrapperICS;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnActionExpandListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Lcom/oneplus/lib/menu/MenuItemWrapperICS;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnActionExpandListener;

    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Lcom/oneplus/lib/menu/MenuItemWrapperICS;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/BaseMenuWrapper;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnActionExpandListener;

    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Lcom/oneplus/lib/menu/MenuItemWrapperICS;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/BaseMenuWrapper;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
