.class Lcom/oneplus/settings/OPColorPickerActivity$2;
.super Ljava/lang/Object;
.source "OPColorPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPColorPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPColorPickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPColorPickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$100(Lcom/oneplus/settings/OPColorPickerActivity;)Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p1, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$102(Lcom/oneplus/settings/OPColorPickerActivity;Z)Z

    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$200(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$300(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$400(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$500(Lcom/oneplus/settings/OPColorPickerActivity;)Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object p0

    const p1, 0x7f121046

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/oneplus/settings/OPColorPickerActivity;->access$102(Lcom/oneplus/settings/OPColorPickerActivity;Z)Z

    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$200(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$300(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$400(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$500(Lcom/oneplus/settings/OPColorPickerActivity;)Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object p0

    const p1, 0x7f121047

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method
