.class Lcom/oneplus/settings/OPColorPickerActivity$4;
.super Ljava/lang/Object;
.source "OPColorPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPColorPickerActivity;

.field final synthetic val$mPalette:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPColorPickerActivity;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    iput-object p2, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->val$mPalette:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->val$mPalette:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$600(Lcom/oneplus/settings/OPColorPickerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->setSelectionGone()V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$702(Lcom/oneplus/settings/OPColorPickerActivity;I)I

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->setSelectionVisible()V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->val$mPalette:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-static {v0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$602(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    const/4 p1, 0x0

    invoke-static {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$600(Lcom/oneplus/settings/OPColorPickerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$800(Lcom/oneplus/settings/OPColorPickerActivity;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
