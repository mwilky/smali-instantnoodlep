.class Lcom/android/server/e;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/c$sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/c$sis;


# direct methods
.method constructor <init>(Lcom/android/server/c$sis;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/e;->this$1:Lcom/android/server/c$sis;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/server/e;->this$1:Lcom/android/server/c$sis;

    invoke-static {p1, v0}, Lcom/android/server/c$sis;->zta(Lcom/android/server/c$sis;Z)Z

    iget-object p1, p0, Lcom/android/server/e;->this$1:Lcom/android/server/c$sis;

    invoke-static {p1}, Lcom/android/server/c$sis;->zta(Lcom/android/server/c$sis;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/e;->this$1:Lcom/android/server/c$sis;

    invoke-virtual {p0}, Lcom/android/server/c$sis;->updateLightsLocked()V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/e;->this$1:Lcom/android/server/c$sis;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/c$sis;->zta(Lcom/android/server/c$sis;Z)Z

    iget-object p1, p0, Lcom/android/server/e;->this$1:Lcom/android/server/c$sis;

    iget-object p1, p1, Lcom/android/server/c$sis;->this$0:Lcom/android/server/c;

    invoke-static {p1}, Lcom/android/server/c;->you(Lcom/android/server/c;)I

    move-result p1

    if-eqz p1, :cond_1

    move p2, v0

    :cond_1
    iget-object p0, p0, Lcom/android/server/e;->this$1:Lcom/android/server/c$sis;

    invoke-static {p0}, Lcom/android/server/c$sis;->zta(Lcom/android/server/c$sis;)Landroid/os/Handler;

    move-result-object p0

    if-eqz p2, :cond_2

    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method
