.class public Lcom/android/server/wm/OpScreenModeService$sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpScreenModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "sis"
.end annotation


# static fields
.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final ab:I = 0x2

.field private static final bb:I = 0x3

.field private static final db:I = 0x4

.field private static final eb:I = 0x5

.field private static final fb:I = 0x6

.field private static final gb:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/OpScreenModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OpScreenModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget-object v1, v1, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget-object v3, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget-object v4, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget v4, v4, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/OpScreenModeService;->getModeRecordIgnoreSetting(II)Lcom/android/server/wm/OpScreenModeService$zta;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/OpScreenModeService$zta;->mode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/OpScreenModeService;->mDirectMode:I

    iget-object v2, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget-object v2, v2, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget-object v2, v2, Lcom/android/server/wm/OpScreenModeService;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v5

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget v7, v2, Lcom/android/server/wm/OpScreenModeService;->mDirectMode:I

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayProperties(IZFIZ)V

    sget-boolean v2, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ScreenModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRateDirectly begin. rate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mDirectMode "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget v0, v0, Lcom/android/server/wm/OpScreenModeService;->mDirectMode:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mCurrentMode "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget v0, v0, Lcom/android/server/wm/OpScreenModeService;->mCurrentModeId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {v0}, Lcom/android/server/wm/OpScreenModeService;->access$000(Lcom/android/server/wm/OpScreenModeService;)Lcom/android/server/wm/OpScreenModeService$sis;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {v0}, Lcom/android/server/wm/OpScreenModeService;->access$000(Lcom/android/server/wm/OpScreenModeService;)Lcom/android/server/wm/OpScreenModeService$sis;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p0}, Lcom/android/server/wm/OpScreenModeService;->access$000(Lcom/android/server/wm/OpScreenModeService;)Lcom/android/server/wm/OpScreenModeService$sis;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget-object p1, p1, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_2
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    const/4 v1, 0x0

    iput v1, p1, Lcom/android/server/wm/OpScreenModeService;->mDirectMode:I

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    sget-boolean p0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "ScreenModeService"

    const-string p1, "setRateDirectly end timeout"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget-object v0, v0, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget p0, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v1, "oneplus_screen_resolution_backup"

    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->access$600(Lcom/android/server/wm/OpScreenModeService;I)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget v0, p1, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    iget v1, p1, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/OpScreenModeService;->getModeRecord(II)Lcom/android/server/wm/OpScreenModeService$zta;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/OpScreenModeService$zta;->mode:Landroid/view/Display$Mode;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v0

    iput v0, p1, Lcom/android/server/wm/OpScreenModeService;->mCurrentModeId:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateResolution to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget p0, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenModeService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    invoke-static {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->access$500(Lcom/android/server/wm/OpScreenModeService;Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p0}, Lcom/android/server/wm/OpScreenModeService;->access$400(Lcom/android/server/wm/OpScreenModeService;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
