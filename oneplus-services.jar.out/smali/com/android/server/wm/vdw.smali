.class Lcom/android/server/wm/vdw;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/OpPowerConsumpStats;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/android/server/wm/OpPowerConsumpStats;->access$100()Z

    move-result p1

    const-string v0, "OPCS"

    if-nez p1, :cond_0

    const-string p0, "# mDebugReceiver # onReceive # sENABLE false, return"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p0, "# mDebugReceiver # onReceive # intent is null, return"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# mDebugReceiver # onReceive # action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.OPCS.action.debug"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "code"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "dumpPkgStatInfo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/OpBatteryStatsInjector;->getScreenBrightness()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Cap] Now mDisableMDMReporting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->ivd(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Cap] Now brightnessLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cap] Now LockScreenDisabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->c(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " UserId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cap] Now mKeyguardStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->d(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mOccludedStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "pkg"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "dumpCapicityConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "=== Capacity ==="

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCapacityReportEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->rtg(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->oxb(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string p0, "BaseTimer not yet timing, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v1, "dump"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->ssp(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iget-object p0, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->cno(Lcom/android/server/wm/OpPowerConsumpStats;)V

    goto/16 :goto_2

    :cond_5
    const-string v1, "persist"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p1, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    const-string v1, "cmd persist"

    invoke-static {p1, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p0, "# mGeneralReceiver # onReceive # persist # data is null, return"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const-string v0, "orderby"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->fromString(Ljava/lang/String;)Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist order by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$PersistType;->Fza:Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    sget-object p2, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->BY_DROP:Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    :goto_1
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$qbh;Lcom/android/server/wm/OpPowerConsumpStats$PersistType;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V

    goto/16 :goto_2

    :cond_8
    const-string v1, "calculate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object p0, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    const-string p1, "cmd calculate"

    invoke-static {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    goto/16 :goto_2

    :cond_9
    const-string v1, "report"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object p1, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->ivd(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    const-string v0, "immediately"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    new-array p1, p1, [I

    const/16 v0, 0x65

    const/4 v1, 0x0

    aput v0, p1, v1

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->oif(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->oif(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    iget-object p1, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->oif(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->oif(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->notifyBGCMDMReady(Ljava/lang/StringBuilder;Z)V

    goto/16 :goto_2

    :cond_c
    const-string p0, "Under Q testing mode, skip react to simulated 03:00AM ACTION_REPORT event."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_d
    const-string p2, "calculatePower"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    const-string p1, "cmd_calculatePower"

    invoke-static {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->sis(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const-string p2, "generatePowerConsumptionData"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p0, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->kth(Lcom/android/server/wm/OpPowerConsumpStats;)V

    goto :goto_2

    :cond_f
    const-string p2, "generateSortListAndSystemList"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p0, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    const-string p1, "cmd generateSortListAndSystemList"

    invoke-static {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$qbh;)V

    goto :goto_2

    :cond_10
    const-string p2, "dumpBaseEventList"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->bio(Lcom/android/server/wm/OpPowerConsumpStats;)V

    goto :goto_2

    :cond_11
    const-string p2, "calculateKernelWakeLocks"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->tsu(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Ljava/util/HashMap;

    goto :goto_2

    :cond_12
    const-string p2, "simulateAlarmTriggering"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    iget-object p1, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->oif(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->oif(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_13
    iget-object p0, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->oif(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_14
    const-string p2, "generateCapacityData"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/android/server/wm/vdw;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->igw(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :cond_15
    :goto_2
    return-void
.end method
