.class Lcom/oneplus/settings/better/OPNightMode$1;
.super Ljava/lang/Object;
.source "OPNightMode.java"

# interfaces
.implements Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPNightMode;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPNightMode;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPNightMode;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    iput p2, p0, Lcom/oneplus/settings/better/OPNightMode$1;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/oneplus/lib/widget/TimePicker;II)V
    .locals 2

    invoke-static {p2, p3}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object p1

    iget p2, p0, Lcom/oneplus/settings/better/OPNightMode$1;->val$dialogId:I

    const/4 p3, 0x1

    const v0, 0x7f1216b2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {p2}, Lcom/oneplus/settings/better/OPNightMode;->access$000(Lcom/oneplus/settings/better/OPNightMode;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomEndTime()Ljava/time/LocalTime;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPNightMode;->access$100(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPNightMode;->access$000(Lcom/oneplus/settings/better/OPNightMode;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayCustomStartTime(Ljava/time/LocalTime;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {p2}, Lcom/oneplus/settings/better/OPNightMode;->access$000(Lcom/oneplus/settings/better/OPNightMode;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomStartTime()Ljava/time/LocalTime;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPNightMode;->access$200(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPNightMode;->access$000(Lcom/oneplus/settings/better/OPNightMode;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayCustomEndTime(Ljava/time/LocalTime;)Z

    :goto_0
    return-void
.end method
