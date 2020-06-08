.class Landroid/support/v4/media/MediaController2ImplLegacy$3;
.super Landroid/os/ResultReceiver;
.source "MediaController2ImplLegacy.java"


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaController2ImplLegacy;


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$300()Landroid/os/HandlerThread;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, -0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_2

    if-eqz p1, :cond_1

    return-void

    :cond_1
    throw v0

    :cond_2
    invoke-static {}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Landroid/support/v4/media/MediaController2ImplLegacy$3$1;

    invoke-direct {p2, p0}, Landroid/support/v4/media/MediaController2ImplLegacy$3$1;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$3;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    throw v0
.end method
