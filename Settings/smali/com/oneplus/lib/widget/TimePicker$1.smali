.class Lcom/oneplus/lib/widget/TimePicker$1;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/TimePicker;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/TimePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePicker$1;->this$0:Lcom/oneplus/lib/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V
    .locals 0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePicker$1;->this$0:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManager;

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker$1;->this$0:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p1, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    return-void
.end method
