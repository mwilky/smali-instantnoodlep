.class Lcom/android/server/am/les$kth;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/les;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "kth"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/les;


# direct methods
.method public constructor <init>(Lcom/android/server/am/les;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/les$kth;->this$0:Lcom/android/server/am/les;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    const-string v2, " uid = "

    const-string v3, "OPBF"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "UNDATE_SYSTEMUI_VISIBILITY_TIMEOUT"

    goto/16 :goto_1

    :sswitch_1
    sget v0, Lcom/android/server/Watchdog;->mPhonePid:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/les$kth;->this$0:Lcom/android/server/am/les;

    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0}, Lcom/android/server/am/les;->rtg(Lcom/android/server/am/les;I)I

    move-result p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne p0, v0, :cond_0

    sget p0, Lcom/android/server/Watchdog;->mPhonePid:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GET_GETVTDATAUSAGE_TIMEOUT kill phone process , pid = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p1, Landroid/os/Message;->arg2:I

    const-string p1, "GET_GETVTDATAUSAGE_TIMEOUT"

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/android/server/Watchdog;->mPhonePid:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/les$kth;->this$0:Lcom/android/server/am/les;

    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0}, Lcom/android/server/am/les;->rtg(Lcom/android/server/am/les;I)I

    move-result p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne p0, v0, :cond_0

    sget p0, Lcom/android/server/Watchdog;->mPhonePid:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GET_CONFIGFORSUBID_TIMEOUT kill phone process , pid = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p1, Landroid/os/Message;->arg2:I

    const-string p1, "GET_CONFIGFORSUBID_TIMEOUT"

    :goto_0
    invoke-static {v1, p0, p1}, Lcom/android/server/am/les;->zta(IILjava/lang/String;)V

    goto :goto_2

    :sswitch_3
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "NOTIFY_CHANGE_TIMEOUT"

    goto :goto_1

    :sswitch_4
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "ATTACH_APPLICATION_LOCKED_TIMEOUT"

    goto :goto_1

    :sswitch_5
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "BIND_SERVICE_LOCKED_TIMEOUT"

    goto :goto_1

    :sswitch_6
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "DISPATCH_RESIZED_TIMEOUT"

    goto :goto_1

    :sswitch_7
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "DISPATCH_APP_VISIBILITY_TIMEOUT"

    goto :goto_1

    :sswitch_8
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "DISPLAY_EVENT_LOCAL_TIMEOUT"

    goto :goto_1

    :sswitch_9
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "DISPLAY_EVENT_TIMEOUT"

    goto :goto_1

    :sswitch_a
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "INPUT_DEVICES_CHANGE_TIMEOUT"

    goto :goto_1

    :sswitch_b
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "PUBLISH_SERVICE_TIMEOUT"

    :goto_1
    invoke-static {p0, p1, v0}, Lcom/android/server/am/les;->zta(IILjava/lang/String;)V

    goto :goto_2

    :sswitch_c
    iget-object p0, p0, Lcom/android/server/am/les$kth;->this$0:Lcom/android/server/am/les;

    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0}, Lcom/android/server/am/les;->rtg(Lcom/android/server/am/les;I)I

    move-result p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne p0, v0, :cond_0

    iget p0, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p0}, Landroid/os/Process;->killProcessGroup(II)I

    :cond_0
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x2328 -> :sswitch_b
        0x238c -> :sswitch_a
        0x23f0 -> :sswitch_9
        0x2422 -> :sswitch_8
        0x2454 -> :sswitch_7
        0x24b8 -> :sswitch_6
        0x251c -> :sswitch_5
        0x2580 -> :sswitch_4
        0x25e4 -> :sswitch_3
        0x2648 -> :sswitch_2
        0x26ac -> :sswitch_1
        0x2710 -> :sswitch_0
    .end sparse-switch
.end method
