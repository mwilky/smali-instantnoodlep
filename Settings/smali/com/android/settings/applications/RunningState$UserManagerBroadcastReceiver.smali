.class final Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserManagerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningState;

.field private volatile usersChanged:Z


# direct methods
.method synthetic constructor <init>(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUsersChangedLocked()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->usersChanged:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->usersChanged:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object p1, p1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    iget-boolean p2, p2, Lcom/android/settings/applications/RunningState;->mResumed:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    const/4 v1, 0x0

    iput-boolean v1, p2, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    iget-object p2, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object p2, p2, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object p2, p2, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p2, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object p2, p2, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object p0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->usersChanged:Z

    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method register(Landroid/content/Context;)V
    .locals 6

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
