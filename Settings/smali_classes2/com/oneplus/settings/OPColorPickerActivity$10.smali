.class Lcom/oneplus/settings/OPColorPickerActivity$10;
.super Ljava/lang/Object;
.source "OPColorPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPColorPickerActivity;->showColotEditDialog()V
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

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$1000(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$1200(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    const p1, 0x7f12114d

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->setSelectionGone()V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/oneplus/settings/OPColorPickerActivity;->access$702(Lcom/oneplus/settings/OPColorPickerActivity;I)I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "#FF"

    invoke-static {v0, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline17(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$602(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$1300(Lcom/oneplus/settings/OPColorPickerActivity;)Lcom/oneplus/settings/ui/ColorPickerView;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline17(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/ColorPickerView;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0, v1, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$800(Lcom/oneplus/settings/OPColorPickerActivity;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$1400(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
