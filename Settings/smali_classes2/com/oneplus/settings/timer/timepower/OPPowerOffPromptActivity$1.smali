.class Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;
.super Ljava/lang/Object;
.source "OPPowerOffPromptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/settings/ui/OPTimerDialog;->dismiss()V

    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$002(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;Lcom/oneplus/settings/ui/OPTimerDialog;)Lcom/oneplus/settings/ui/OPTimerDialog;

    :cond_0
    const/4 p1, 0x0

    const-string p2, "sys.debug.watchdog"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p1, p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$100(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;Landroid/content/Context;)V

    const-string p1, "com.android.settings.POWER_CONFIRM_OP_OFF"

    const/high16 p2, 0x11000000

    invoke-static {p1, p2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline3(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
