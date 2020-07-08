.class Lcom/android/server/wtn$zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wtn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field private sis:Z

.field final synthetic this$0:Lcom/android/server/wtn;


# direct methods
.method private constructor <init>(Lcom/android/server/wtn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wtn;Lcom/android/server/igw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wtn$zta;-><init>(Lcom/android/server/wtn;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusChargingGuarder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "net.oneplus.charingguarder.intent.mdm"

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v0}, Lcom/android/server/wtn;->fto(Lcom/android/server/wtn;)Lcom/android/server/wtn$sis;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v0}, Lcom/android/server/wtn;->hmo(Lcom/android/server/wtn;)Z

    move-result v0

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    const-string v0, "/proc/wireless/quiet_mode"

    const-string v5, "com.oneplus.chargingguarder.open_quietmode"

    if-ne p1, v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v7}, Lcom/android/server/wtn;->lqr(Lcom/android/server/wtn;)J

    move-result-wide v7

    const-wide/32 v9, 0x6ddd00

    add-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string v5, "com.oneplus.chargingguarder.close_quietmode"

    if-ne p1, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-static {v5, v6, v0}, Lcom/android/server/wtn;->zta(Lcom/android/server/wtn;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v0}, Lcom/android/server/wtn;->fto(Lcom/android/server/wtn;)Lcom/android/server/wtn$sis;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_3
    const-string v5, "com.oneplus.chargingguarder.close_quietmode.notification"

    if-ne p1, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/server/wtn;->zta(Lcom/android/server/wtn;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/android/server/wtn;->zta(Lcom/android/server/wtn;J)J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v5}, Lcom/android/server/wtn;->lqr(Lcom/android/server/wtn;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v5}, Lcom/android/server/wtn;->ear(Lcom/android/server/wtn;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "opcg_recover_charge_data"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v0}, Lcom/android/server/wtn;->fto(Lcom/android/server/wtn;)Lcom/android/server/wtn$sis;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v0}, Lcom/android/server/wtn;->you(Lcom/android/server/wtn;)J

    move-result-wide v5

    const-wide/32 v7, 0x36ee80

    sub-long/2addr v5, v7

    iget-object v0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v0}, Lcom/android/server/wtn;->sis(Lcom/android/server/wtn;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-object v0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v0}, Lcom/android/server/wtn;->lqr(Lcom/android/server/wtn;)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v0, v3}, Lcom/android/server/wtn;->zta(Lcom/android/server/wtn;Z)Z

    goto :goto_2

    :cond_4
    const-string v0, "android.intent.action.TIME_SET"

    if-eq p1, v0, :cond_2

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v0, "net.oneplus.chargingguarder.intent.enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v8

    goto :goto_4

    :sswitch_1
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v6

    goto :goto_4

    :sswitch_2
    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v7

    goto :goto_4

    :sswitch_3
    const-string v0, "net.oneplus.charingguarder.intent.OPCG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v3

    goto :goto_4

    :sswitch_4
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v4

    goto :goto_4

    :sswitch_5
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v5

    goto :goto_4

    :cond_6
    :goto_3
    move p1, v9

    :goto_4
    if-eqz p1, :cond_c

    if-eq p1, v3, :cond_b

    if-eq p1, v8, :cond_a

    if-eq p1, v6, :cond_9

    if-eq p1, v5, :cond_8

    if-eq p1, v7, :cond_7

    goto/16 :goto_a

    :cond_7
    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->zta(Lcom/android/server/wtn;)I

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->zta(Lcom/android/server/wtn;)I

    move-result p1

    if-eq p1, v9, :cond_18

    iget-object p0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p0}, Lcom/android/server/wtn;->fto(Lcom/android/server/wtn;)Lcom/android/server/wtn$sis;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    goto :goto_5

    :cond_8
    iget-object p0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p0}, Lcom/android/server/wtn;->fto(Lcom/android/server/wtn;)Lcom/android/server/wtn$sis;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->zta(Lcom/android/server/wtn;)I

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->zta(Lcom/android/server/wtn;)I

    move-result p1

    if-eq p1, v9, :cond_18

    iget-object p0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p0}, Lcom/android/server/wtn;->fto(Lcom/android/server/wtn;)Lcom/android/server/wtn$sis;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    goto :goto_5

    :cond_a
    iget-object p0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p0}, Lcom/android/server/wtn;->fto(Lcom/android/server/wtn;)Lcom/android/server/wtn$sis;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    goto :goto_5

    :cond_b
    iget-object p0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p0}, Lcom/android/server/wtn;->fto(Lcom/android/server/wtn;)Lcom/android/server/wtn$sis;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    :goto_5
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_a

    :cond_c
    const-string p1, "status"

    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    if-eq p1, v8, :cond_e

    if-ne p1, v7, :cond_d

    goto :goto_6

    :cond_d
    move p1, v4

    goto :goto_7

    :cond_e
    :goto_6
    move p1, v3

    :goto_7
    invoke-static {v0, p1}, Lcom/android/server/wtn;->you(Lcom/android/server/wtn;Z)Z

    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->zta(Lcom/android/server/wtn;)I

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->zta(Lcom/android/server/wtn;)I

    move-result p1

    if-eq p1, v9, :cond_f

    const-string p1, "level"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x64

    mul-int/2addr p1, v0

    const-string v5, "scale"

    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    div-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v0}, Lcom/android/server/wtn;->ssp(Lcom/android/server/wtn;)I

    move-result v0

    if-eq p1, v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " level="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v0, p1}, Lcom/android/server/wtn;->you(Lcom/android/server/wtn;I)I

    iget-object v0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v0}, Lcom/android/server/wtn;->fto(Lcom/android/server/wtn;)Lcom/android/server/wtn$sis;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v1}, Lcom/android/server/wtn;->rtg(Lcom/android/server/wtn;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_f
    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->hmo(Lcom/android/server/wtn;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    const-string v0, "quiet_mode"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/wtn;->sis(Lcom/android/server/wtn;Z)Z

    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    const-string v0, "wireless_status"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/wtn;->tsu(Lcom/android/server/wtn;Z)Z

    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->cno(Lcom/android/server/wtn;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/server/wtn$zta;->sis:Z

    const/16 v1, 0xc

    if-eq p1, v0, :cond_11

    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->ire(Lcom/android/server/wtn;)I

    move-result p1

    if-eq p1, v3, :cond_11

    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->cno(Lcom/android/server/wtn;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->fto(Lcom/android/server/wtn;)Lcom/android/server/wtn$sis;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    goto :goto_8

    :cond_10
    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->fto(Lcom/android/server/wtn;)Lcom/android/server/wtn$sis;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    :goto_8
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->rtg(Lcom/android/server/wtn;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->kth(Lcom/android/server/wtn;)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->ire(Lcom/android/server/wtn;)I

    move-result p1

    if-eq p1, v3, :cond_12

    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->fto(Lcom/android/server/wtn;)Lcom/android/server/wtn$sis;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_12
    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->kth(Lcom/android/server/wtn;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v0}, Lcom/android/server/wtn;->bio(Lcom/android/server/wtn;)Z

    move-result v0

    if-eq p1, v0, :cond_13

    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->kth(Lcom/android/server/wtn;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->wtn(Lcom/android/server/wtn;)I

    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->fto(Lcom/android/server/wtn;)Lcom/android/server/wtn$sis;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_13
    const-string p1, "deviated_wireless_charge"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v0}, Lcom/android/server/wtn;->gck(Lcom/android/server/wtn;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v0}, Lcom/android/server/wtn;->qbh(Lcom/android/server/wtn;)I

    :cond_14
    iget-object v0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {v0}, Lcom/android/server/wtn;->rtg(Lcom/android/server/wtn;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "wireless_fastcharge_type"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p2}, Lcom/android/server/wtn;->oif(Lcom/android/server/wtn;)I

    move-result p2

    if-eq p2, v8, :cond_17

    iget-object p2, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p2, v8}, Lcom/android/server/wtn;->rtg(Lcom/android/server/wtn;I)I

    goto :goto_9

    :cond_15
    iget-object p2, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p2}, Lcom/android/server/wtn;->kth(Lcom/android/server/wtn;)Z

    move-result p2

    if-eqz p2, :cond_16

    iget-object p2, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p2}, Lcom/android/server/wtn;->oif(Lcom/android/server/wtn;)I

    move-result p2

    if-eq p2, v3, :cond_17

    iget-object p2, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p2}, Lcom/android/server/wtn;->oif(Lcom/android/server/wtn;)I

    move-result p2

    if-eq p2, v8, :cond_17

    iget-object p2, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p2, v3}, Lcom/android/server/wtn;->rtg(Lcom/android/server/wtn;I)I

    goto :goto_9

    :cond_16
    iget-object p2, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p2}, Lcom/android/server/wtn;->oif(Lcom/android/server/wtn;)I

    move-result p2

    if-ne p2, v9, :cond_17

    iget-object p2, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p2, v4}, Lcom/android/server/wtn;->rtg(Lcom/android/server/wtn;I)I

    :cond_17
    :goto_9
    iget-object p2, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p2, p1}, Lcom/android/server/wtn;->ssp(Lcom/android/server/wtn;Z)Z

    iget-object p1, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p1}, Lcom/android/server/wtn;->cno(Lcom/android/server/wtn;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wtn$zta;->sis:Z

    iget-object p0, p0, Lcom/android/server/wtn$zta;->this$0:Lcom/android/server/wtn;

    invoke-static {p0}, Lcom/android/server/wtn;->kth(Lcom/android/server/wtn;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/wtn;->rtg(Lcom/android/server/wtn;Z)Z

    :cond_18
    :goto_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7073f927 -> :sswitch_5
        -0x5bb23923 -> :sswitch_4
        -0x52b53c72 -> :sswitch_3
        -0x185734ab -> :sswitch_2
        0x3cbf870b -> :sswitch_1
        0x5bfb1469 -> :sswitch_0
    .end sparse-switch
.end method
