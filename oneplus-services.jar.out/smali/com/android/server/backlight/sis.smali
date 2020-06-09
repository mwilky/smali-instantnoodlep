.class Lcom/android/server/backlight/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backlight/OpBacklightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backlight/OpBacklightManager;


# direct methods
.method constructor <init>(Lcom/android/server/backlight/OpBacklightManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backlight/sis;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backlight/sis;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v0}, Lcom/android/server/backlight/OpBacklightManager;->zta(Lcom/android/server/backlight/OpBacklightManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wireless-reduce check => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backlight/sis;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v2}, Lcom/android/server/backlight/OpBacklightManager;->bvj(Lcom/android/server/backlight/OpBacklightManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/backlight/OpBacklightManager;->E(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backlight/sis;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v1}, Lcom/android/server/backlight/OpBacklightManager;->bvj(Lcom/android/server/backlight/OpBacklightManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/backlight/sis;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    iget-object p0, p0, Lcom/android/server/backlight/sis;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    const-string v2, "special_wireless"

    invoke-static {p0, v2}, Lcom/android/server/backlight/OpBacklightManager;->zta(Lcom/android/server/backlight/OpBacklightManager;Ljava/lang/String;)Lcom/android/server/backlight/zta;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/backlight/OpBacklightManager;->sis(Lcom/android/server/backlight/OpBacklightManager;Lcom/android/server/backlight/zta;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/backlight/sis;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v1}, Lcom/android/server/backlight/OpBacklightManager;->ibl(Lcom/android/server/backlight/OpBacklightManager;)V

    iget-object p0, p0, Lcom/android/server/backlight/sis;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {p0}, Lcom/android/server/backlight/OpBacklightManager;->gwm(Lcom/android/server/backlight/OpBacklightManager;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
