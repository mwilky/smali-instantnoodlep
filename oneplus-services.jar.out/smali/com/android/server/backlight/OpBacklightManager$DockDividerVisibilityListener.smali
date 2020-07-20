.class Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;
.super Landroid/view/IDockedStackListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backlight/OpBacklightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DockDividerVisibilityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backlight/OpBacklightManager;


# direct methods
.method constructor <init>(Lcom/android/server/backlight/OpBacklightManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-direct {p0}, Landroid/view/IDockedStackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdjustedForImeChanged(ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDividerVisibilityChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDockSideChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDockedStackExistsChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v0}, Lcom/android/server/backlight/OpBacklightManager;->zta(Lcom/android/server/backlight/OpBacklightManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v1}, Lcom/android/server/backlight/OpBacklightManager;->qbh(Lcom/android/server/backlight/OpBacklightManager;)Z

    move-result v1

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v1, p1}, Lcom/android/server/backlight/OpBacklightManager;->zta(Lcom/android/server/backlight/OpBacklightManager;Z)Z

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {p1}, Lcom/android/server/backlight/OpBacklightManager;->you(Lcom/android/server/backlight/OpBacklightManager;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {p1}, Lcom/android/server/backlight/OpBacklightManager;->wtn(Lcom/android/server/backlight/OpBacklightManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {p1}, Lcom/android/server/backlight/OpBacklightManager;->qbh(Lcom/android/server/backlight/OpBacklightManager;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {p1}, Lcom/android/server/backlight/OpBacklightManager;->ywr(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/backlight/OpBacklightManager$you;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v1}, Lcom/android/server/backlight/OpBacklightManager;->dma(Lcom/android/server/backlight/OpBacklightManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {p1}, Lcom/android/server/backlight/OpBacklightManager;->ywr(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/backlight/OpBacklightManager$you;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v1}, Lcom/android/server/backlight/OpBacklightManager;->dma(Lcom/android/server/backlight/OpBacklightManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {p1}, Lcom/android/server/backlight/OpBacklightManager;->ugm(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/backlight/zta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/backlight/zta;->ld()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {p1}, Lcom/android/server/backlight/OpBacklightManager;->ywr(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/backlight/OpBacklightManager$you;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {p0}, Lcom/android/server/backlight/OpBacklightManager;->dma(Lcom/android/server/backlight/OpBacklightManager;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {p0}, Lcom/android/server/backlight/OpBacklightManager;->gwm(Lcom/android/server/backlight/OpBacklightManager;)V

    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDockedStackMinimizedChanged(ZJZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
