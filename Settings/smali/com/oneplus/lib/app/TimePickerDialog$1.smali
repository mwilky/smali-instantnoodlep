.class Lcom/oneplus/lib/app/TimePickerDialog$1;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/TimePickerDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/TimePickerDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/TimePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/TimePickerDialog$1;->this$0:Lcom/oneplus/lib/app/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/lib/app/TimePickerDialog$1;->this$0:Lcom/oneplus/lib/app/TimePickerDialog;

    invoke-static {p1}, Lcom/oneplus/lib/app/TimePickerDialog;->access$000(Lcom/oneplus/lib/app/TimePickerDialog;)Lcom/oneplus/lib/widget/TimePicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/TimePicker;->validateInput()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/app/TimePickerDialog$1;->this$0:Lcom/oneplus/lib/app/TimePickerDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, p1, v0}, Lcom/oneplus/lib/app/TimePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p0, p0, Lcom/oneplus/lib/app/TimePickerDialog$1;->this$0:Lcom/oneplus/lib/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
