.class Lcom/android/server/am/vdw;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/qeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/qeg;


# direct methods
.method constructor <init>(Lcom/android/server/am/qeg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "OnePlusDuallteManager"

    if-nez p2, :cond_0

    const-string p0, "# mGeneralReceiver # onReceive # intent is null, return"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# mGeneralReceiver # onReceive # action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.Duallte.action.debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "code"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "dump"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {p1}, Lcom/android/server/am/qeg;->dma(Lcom/android/server/am/qeg;)V

    iget-object p0, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {p0}, Lcom/android/server/am/qeg;->zta(Lcom/android/server/am/qeg;)V

    goto/16 :goto_1

    :cond_1
    const-string p1, "dumpTest"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {p0}, Lcom/android/server/am/qeg;->you(Lcom/android/server/am/qeg;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {v0}, Lcom/android/server/am/qeg;->sis(Lcom/android/server/am/qeg;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-string v1, "phone"

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {v0}, Lcom/android/server/am/qeg;->bio(Lcom/android/server/am/qeg;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-static {v0, v2}, Lcom/android/server/am/qeg;->zta(Lcom/android/server/am/qeg;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {v0}, Lcom/android/server/am/qeg;->sis(Lcom/android/server/am/qeg;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {v0}, Lcom/android/server/am/qeg;->sis(Lcom/android/server/am/qeg;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    const/4 v0, -0x1

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_9

    const/4 v1, 0x1

    if-gt v0, v1, :cond_9

    iget-object v2, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {v2}, Lcom/android/server/am/qeg;->tsu(Lcom/android/server/am/qeg;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v0

    sget-boolean p2, Lcom/android/server/am/qeg;->DBG:Z

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simstate "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {v2}, Lcom/android/server/am/qeg;->tsu(Lcom/android/server/am/qeg;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {p1}, Lcom/android/server/am/qeg;->tsu(Lcom/android/server/am/qeg;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    const-string p2, "LOADED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/server/am/qeg;->access$1400()[Z

    move-result-object p1

    aput-boolean v1, p1, v0

    iget-object p1, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {p1}, Lcom/android/server/am/qeg;->rtg(Lcom/android/server/am/qeg;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/server/am/qeg;->access$1400()[Z

    move-result-object p1

    const/4 p2, 0x0

    aput-boolean p2, p1, v0

    :goto_0
    iget-object p1, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {p1}, Lcom/android/server/am/qeg;->tsu(Lcom/android/server/am/qeg;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object p2, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {p2}, Lcom/android/server/am/qeg;->ssp(Lcom/android/server/am/qeg;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {p1}, Lcom/android/server/am/qeg;->cno(Lcom/android/server/am/qeg;)V

    iget-object p1, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {p1}, Lcom/android/server/am/qeg;->kth(Lcom/android/server/am/qeg;)V

    :cond_6
    iget-object p1, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {p1}, Lcom/android/server/am/qeg;->ssp(Lcom/android/server/am/qeg;)[Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {p0}, Lcom/android/server/am/qeg;->tsu(Lcom/android/server/am/qeg;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    aput-object p0, p1, v0

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p0, "networkInfo"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkInfo;

    sget-boolean p0, Lcom/android/server/am/qeg;->DBG:Z

    goto :goto_1

    :cond_8
    const-string p1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/server/am/vdw;->this$0:Lcom/android/server/am/qeg;

    invoke-static {p0}, Lcom/android/server/am/qeg;->rtg(Lcom/android/server/am/qeg;)V

    :cond_9
    :goto_1
    return-void
.end method