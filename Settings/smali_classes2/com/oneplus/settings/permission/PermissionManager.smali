.class public Lcom/oneplus/settings/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/permission/PermissionManager$IncomingHandler;,
        Lcom/oneplus/settings/permission/PermissionManager$Holder;,
        Lcom/oneplus/settings/permission/PermissionManager$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/oneplus/settings/permission/PermissionManager$Callback;

.field private mHandler:Landroid/os/Handler;

.field private mIsBound:Z

.field private mLocalClient:Landroid/os/Messenger;

.field private mLock:Ljava/lang/Object;

.field private mRemoteService:Landroid/os/Messenger;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/permission/PermissionManager;->mCallback:Lcom/oneplus/settings/permission/PermissionManager$Callback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/permission/PermissionManager;->mIsBound:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/permission/PermissionManager;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/oneplus/settings/permission/PermissionManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/permission/PermissionManager$1;-><init>(Lcom/oneplus/settings/permission/PermissionManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/permission/PermissionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/permission/PermissionManager;)Lcom/oneplus/settings/permission/PermissionManager$Callback;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/permission/PermissionManager;->mCallback:Lcom/oneplus/settings/permission/PermissionManager$Callback;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/permission/PermissionManager;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mRemoteService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/permission/PermissionManager;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/permission/PermissionManager;->mWorker:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static get()Lcom/oneplus/settings/permission/PermissionManager;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/permission/PermissionManager$Holder;->INSTANCE:Lcom/oneplus/settings/permission/PermissionManager;

    return-object v0
.end method


# virtual methods
.method public connectToPermissionControlService(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/permission/PermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mIsBound:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PermissionDataClient"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mWorker:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/oneplus/settings/permission/PermissionManager$IncomingHandler;

    iget-object v2, p0, Lcom/oneplus/settings/permission/PermissionManager;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/settings/permission/PermissionManager$IncomingHandler;-><init>(Lcom/oneplus/settings/permission/PermissionManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/oneplus/settings/permission/PermissionManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mLocalClient:Landroid/os/Messenger;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oneplus.service.bind"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.permissionutil"

    const-string v4, "com.oneplus.permissionutil.ControlService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/oneplus/settings/permission/PermissionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mIsBound:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mCallback:Lcom/oneplus/settings/permission/PermissionManager$Callback;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/settings/permission/PermissionManager;->mCallback:Lcom/oneplus/settings/permission/PermissionManager$Callback;

    invoke-interface {p0}, Lcom/oneplus/settings/permission/PermissionManager$Callback;->onServiceConnected()V

    :cond_1
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

.method public queryPermissionData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key_pkg_name"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mLocalClient:Landroid/os/Messenger;

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object p1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mRemoteService:Landroid/os/Messenger;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/permission/PermissionManager;->mRemoteService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Got exception while query permission data for "

    const-string v0, "PermissionManager"

    invoke-static {p1, p2, v0, p0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline42(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCallback(Lcom/oneplus/settings/permission/PermissionManager$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mCallback:Lcom/oneplus/settings/permission/PermissionManager$Callback;

    return-void
.end method
