.class Lcom/android/server/irq;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/qeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/qeg;


# direct methods
.method constructor <init>(Lcom/android/server/qeg;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/irq;->this$0:Lcom/android/server/qeg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_8

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/irq;->this$0:Lcom/android/server/qeg;

    invoke-static {p0}, Lcom/android/server/qeg;->zta(Lcom/android/server/qeg;)V

    goto/16 :goto_0

    :cond_1
    if-nez v0, :cond_2

    const-string p0, "CommonFrontMonitor"

    const-string p1, "[scene] arguments is null while handling CMD_FETCH_CONFIG"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-array p1, v1, [I

    const/16 v2, 0xd7

    const/4 v3, 0x0

    aput v2, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "CONFIG_NAME_VIDEO_ENHANCEMENT"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/server/irq;->this$0:Lcom/android/server/qeg;

    invoke-static {v2, p1}, Lcom/android/server/qeg;->zta(Lcom/android/server/qeg;Ljava/lang/String;)V

    :cond_3
    new-array p1, v1, [I

    const/16 v2, 0x82

    aput v2, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "CONFIG_NAME_SMART5G"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/server/irq;->this$0:Lcom/android/server/qeg;

    invoke-static {v2, p1}, Lcom/android/server/qeg;->zta(Lcom/android/server/qeg;Ljava/lang/String;)V

    :cond_4
    new-array p1, v1, [I

    const/16 v2, 0x116

    aput v2, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "CONFIG_NAME_FASTOUTPUT"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/server/irq;->this$0:Lcom/android/server/qeg;

    invoke-static {v2, p1}, Lcom/android/server/qeg;->zta(Lcom/android/server/qeg;Ljava/lang/String;)V

    :cond_5
    new-array p1, v1, [I

    const/16 v2, 0x13a

    aput v2, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "CONFIG_NAME_GAME_DOLBY"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/android/server/irq;->this$0:Lcom/android/server/qeg;

    invoke-static {v2, p1}, Lcom/android/server/qeg;->zta(Lcom/android/server/qeg;Ljava/lang/String;)V

    :cond_6
    new-array p1, v1, [I

    const/16 v1, 0x14b

    aput v1, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "CONFIG_NAME_IMAGE_QUALITY"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/android/server/irq;->this$0:Lcom/android/server/qeg;

    invoke-static {v1, p1}, Lcom/android/server/qeg;->zta(Lcom/android/server/qeg;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/android/server/qeg;->access$200()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "CONFIG_NAME_LMKD_WATERMARK"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/server/irq;->this$0:Lcom/android/server/qeg;

    invoke-static {p0, p1}, Lcom/android/server/qeg;->zta(Lcom/android/server/qeg;Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method
