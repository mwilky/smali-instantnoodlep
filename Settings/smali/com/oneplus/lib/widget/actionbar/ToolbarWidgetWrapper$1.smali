.class Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final mNavItem:Lcom/oneplus/lib/menu/ActionMenuItem;

.field final synthetic this$0:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;)V
    .locals 7

    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;->this$0:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/oneplus/lib/menu/ActionMenuItem;

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;->this$0:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    iget-object v0, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;->this$0:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    iget-object v6, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;->mNavItem:Lcom/oneplus/lib/menu/ActionMenuItem;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;->this$0:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    iget-object v0, p1, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mMenuPrepared:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;->mNavItem:Lcom/oneplus/lib/menu/ActionMenuItem;

    invoke-interface {v0, p1, p0}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
