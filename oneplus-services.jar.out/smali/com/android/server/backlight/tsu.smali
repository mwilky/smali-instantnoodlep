.class Lcom/android/server/backlight/tsu;
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

    iput-object p1, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v0}, Lcom/android/server/backlight/OpBacklightManager;->zta(Lcom/android/server/backlight/OpBacklightManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    iget-object v2, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v2}, Lcom/android/server/backlight/OpBacklightManager;->ugm(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/backlight/zta;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/backlight/OpBacklightManager;->zta(Lcom/android/server/backlight/OpBacklightManager;Lcom/android/server/backlight/zta;)Lcom/android/server/backlight/zta$zta;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParamLocked is null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {p0}, Lcom/android/server/backlight/OpBacklightManager;->ugm(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/backlight/zta;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backlight/OpBacklightManager;->myLog(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v2}, Lcom/android/server/backlight/OpBacklightManager;->sis(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/display/IOpBacklightController;

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v2}, Lcom/android/server/backlight/OpBacklightManager;->tsu(Lcom/android/server/backlight/OpBacklightManager;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v3}, Lcom/android/server/backlight/OpBacklightManager;->rtg(Lcom/android/server/backlight/OpBacklightManager;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v4}, Lcom/android/server/backlight/OpBacklightManager;->you(Lcom/android/server/backlight/OpBacklightManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v2}, Lcom/android/server/backlight/OpBacklightManager;->ssp(Lcom/android/server/backlight/OpBacklightManager;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v3}, Lcom/android/server/backlight/OpBacklightManager;->cno(Lcom/android/server/backlight/OpBacklightManager;)I

    move-result v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v4}, Lcom/android/server/backlight/OpBacklightManager;->wtn(Lcom/android/server/backlight/OpBacklightManager;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v2}, Lcom/android/server/backlight/OpBacklightManager;->kth(Lcom/android/server/backlight/OpBacklightManager;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v3}, Lcom/android/server/backlight/OpBacklightManager;->bio(Lcom/android/server/backlight/OpBacklightManager;)I

    move-result v3

    :cond_3
    :goto_0
    move v10, v2

    move v9, v3

    iget-object v2, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    iget-object v3, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v3}, Lcom/android/server/backlight/OpBacklightManager;->ugm(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/backlight/zta;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backlight/OpBacklightManager;->you(Lcom/android/server/backlight/OpBacklightManager;Lcom/android/server/backlight/zta;)I

    move-result v11

    iget-object v2, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v2}, Lcom/android/server/backlight/OpBacklightManager;->ugm(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/backlight/zta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/backlight/zta;->ld()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_4

    iget-object v2, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v2}, Lcom/android/server/backlight/OpBacklightManager;->sis(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/display/IOpBacklightController;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/backlight/zta$zta;->ed()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/android/server/backlight/zta$zta;->gd()I

    move-result v5

    iget-object v1, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v1}, Lcom/android/server/backlight/OpBacklightManager;->igw(Lcom/android/server/backlight/OpBacklightManager;)I

    move-result v7

    move-object v1, v2

    move-wide v2, v3

    move v4, v5

    move v5, v9

    move v6, v10

    invoke-interface/range {v1 .. v7}, Lcom/android/server/display/IOpBacklightController;->animateScreenBrightness(DIIII)V

    iget-object v1, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v1}, Lcom/android/server/backlight/OpBacklightManager;->gck(Lcom/android/server/backlight/OpBacklightManager;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v2}, Lcom/android/server/backlight/OpBacklightManager;->ugm(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/backlight/zta;

    move-result-object v2

    invoke-virtual {v2, v8, v11}, Lcom/android/server/backlight/zta;->you(ZI)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v2}, Lcom/android/server/backlight/OpBacklightManager;->ywr(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/backlight/OpBacklightManager$you;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {p0}, Lcom/android/server/backlight/OpBacklightManager;->dma(Lcom/android/server/backlight/OpBacklightManager;)Ljava/lang/Runnable;

    move-result-object p0

    int-to-long v3, v1

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v2}, Lcom/android/server/backlight/OpBacklightManager;->ugm(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/backlight/zta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/backlight/zta;->ld()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v2}, Lcom/android/server/backlight/OpBacklightManager;->sis(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/display/IOpBacklightController;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/backlight/zta$zta;->jd()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/android/server/backlight/zta$zta;->hd()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v6}, Lcom/android/server/backlight/OpBacklightManager;->igw(Lcom/android/server/backlight/OpBacklightManager;)I

    move-result v8

    move v6, v9

    move v7, v10

    invoke-interface/range {v2 .. v8}, Lcom/android/server/display/IOpBacklightController;->animateScreenBrightness(DIIII)V

    iget-object v2, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v2}, Lcom/android/server/backlight/OpBacklightManager;->gck(Lcom/android/server/backlight/OpBacklightManager;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v3}, Lcom/android/server/backlight/OpBacklightManager;->ugm(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/backlight/zta;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v11}, Lcom/android/server/backlight/zta;->you(ZI)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v1}, Lcom/android/server/backlight/OpBacklightManager;->ywr(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/backlight/OpBacklightManager$you;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {p0}, Lcom/android/server/backlight/OpBacklightManager;->dma(Lcom/android/server/backlight/OpBacklightManager;)Ljava/lang/Runnable;

    move-result-object p0

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/android/server/backlight/zta$zta;->jd()D

    move-result-wide v2

    const-wide v4, 0x3fefff2e48e8a71eL    # 0.9999

    cmpg-double v2, v2, v4

    if-gez v2, :cond_6

    const-string v2, "ERROR, DO EXTRA RESUME!"

    invoke-static {v2}, Lcom/android/server/backlight/OpBacklightManager;->myLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {v2}, Lcom/android/server/backlight/OpBacklightManager;->sis(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/display/IOpBacklightController;

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1}, Lcom/android/server/backlight/zta$zta;->hd()I

    move-result v5

    iget-object p0, p0, Lcom/android/server/backlight/tsu;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-static {p0}, Lcom/android/server/backlight/OpBacklightManager;->igw(Lcom/android/server/backlight/OpBacklightManager;)I

    move-result v7

    move-object v1, v2

    move-wide v2, v3

    move v4, v5

    move v5, v9

    move v6, v10

    invoke-interface/range {v1 .. v7}, Lcom/android/server/display/IOpBacklightController;->animateScreenBrightness(DIIII)V

    :cond_6
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
