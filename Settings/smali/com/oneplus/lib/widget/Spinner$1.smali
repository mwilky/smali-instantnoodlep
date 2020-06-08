.class Lcom/oneplus/lib/widget/Spinner$1;
.super Lcom/oneplus/lib/widget/ForwardingListener;
.source "Spinner.java"


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/Spinner;

.field final synthetic val$popup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/Spinner;Landroid/view/View;Lcom/oneplus/lib/widget/Spinner$DropdownPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/Spinner$1;->this$0:Lcom/oneplus/lib/widget/Spinner;

    iput-object p3, p0, Lcom/oneplus/lib/widget/Spinner$1;->val$popup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/oneplus/lib/menu/ShowableListMenu;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/Spinner$1;->val$popup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    return-object p0
.end method

.method public onForwardingStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner$1;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-static {v0}, Lcom/oneplus/lib/widget/Spinner;->access$000(Lcom/oneplus/lib/widget/Spinner;)Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/Spinner$1;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-static {p0}, Lcom/oneplus/lib/widget/Spinner;->access$000(Lcom/oneplus/lib/widget/Spinner;)Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->show()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
