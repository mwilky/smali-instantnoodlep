.class Lcom/oneplus/lib/widget/TextInputTimePickerView$5;
.super Ljava/lang/Object;
.source "TextInputTimePickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/TextInputTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/TextInputTimePickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$5;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const v3, 0x7f0a008e

    if-ne p1, v3, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$5;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {p1, v2}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$600(Lcom/oneplus/lib/widget/TextInputTimePickerView;Z)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$5;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {p0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$700(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$5;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$5;->onValueChanged(II)V

    goto :goto_0

    :cond_0
    const v3, 0x7f0a0573

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$5;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {p1, v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$600(Lcom/oneplus/lib/widget/TextInputTimePickerView;Z)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$5;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {p0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$700(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$5;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$5;->onValueChanged(II)V

    :cond_1
    :goto_0
    return-void
.end method
