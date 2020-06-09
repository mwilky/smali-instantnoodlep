.class Lcom/android/server/z$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/z;


# direct methods
.method public constructor <init>(Lcom/android/server/z;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/z$zta;->this$0:Lcom/android/server/z;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/z$zta;->this$0:Lcom/android/server/z;

    invoke-static {p1}, Lcom/android/server/z;->rtg(Lcom/android/server/z;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/z$zta;->this$0:Lcom/android/server/z;

    invoke-static {p1}, Lcom/android/server/z;->rtg(Lcom/android/server/z;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object p0, p0, Lcom/android/server/z$zta;->this$0:Lcom/android/server/z;

    const-string p1, "cpu wakelock released"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/z$zta;->this$0:Lcom/android/server/z;

    invoke-static {p1}, Lcom/android/server/z;->rtg(Lcom/android/server/z;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/z$zta;->this$0:Lcom/android/server/z;

    invoke-static {p1}, Lcom/android/server/z;->rtg(Lcom/android/server/z;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object p0, p0, Lcom/android/server/z$zta;->this$0:Lcom/android/server/z;

    const-string p1, "cpu wakelock acquired"

    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/z;->zta(Lcom/android/server/z;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/server/z$zta;->this$0:Lcom/android/server/z;

    const-string v0, "detect timeout"

    invoke-static {p1, v0}, Lcom/android/server/z;->zta(Lcom/android/server/z;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/z$zta;->this$0:Lcom/android/server/z;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/z$zta;->this$0:Lcom/android/server/z;

    invoke-static {v0}, Lcom/android/server/z;->you(Lcom/android/server/z;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/z$zta;->this$0:Lcom/android/server/z;

    invoke-static {v0}, Lcom/android/server/z;->sis(Lcom/android/server/z;)V

    iget-object v0, p0, Lcom/android/server/z$zta;->this$0:Lcom/android/server/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/z;->zta(Lcom/android/server/z;Z)Z

    iget-object v0, p0, Lcom/android/server/z$zta;->this$0:Lcom/android/server/z;

    invoke-static {v0, v1}, Lcom/android/server/z;->you(Lcom/android/server/z;Z)Z

    iget-object p0, p0, Lcom/android/server/z$zta;->this$0:Lcom/android/server/z;

    invoke-static {p0}, Lcom/android/server/z;->tsu(Lcom/android/server/z;)V

    :cond_3
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    iget-object p0, p0, Lcom/android/server/z$zta;->this$0:Lcom/android/server/z;

    invoke-static {p0}, Lcom/android/server/z;->zta(Lcom/android/server/z;)V

    :cond_5
    :goto_1
    return-void
.end method
