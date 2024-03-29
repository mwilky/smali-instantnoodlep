.class final Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/RegisteredMediaRouteProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private final mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

.field private final mScanPackagesRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    new-instance v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$1;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$1;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;)V

    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$2;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$2;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;)V

    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mCallback:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method scanPackages()V
    .locals 9

    iget-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MediaRouteProviderService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v6, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_3

    iget-object v8, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    invoke-virtual {v8, v4, v5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    :goto_2
    if-gez v7, :cond_4

    new-instance v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    iget-object v5, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-virtual {v4}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->start()V

    iget-object v3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mCallback:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v1, v4}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->addProvider(Landroidx/mediarouter/media/MediaRouteProvider;)V

    move v1, v5

    goto :goto_0

    :cond_4
    if-lt v7, v1, :cond_1

    iget-object v3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    invoke-virtual {v3}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->start()V

    invoke-virtual {v3}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->rebindIfDisconnected()V

    iget-object v3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v7, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v1, v4

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-lt v0, v1, :cond_6

    iget-object v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    iget-object v3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mCallback:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v3, v2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->removeProvider(Landroidx/mediarouter/media/MediaRouteProvider;)V

    iget-object v3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->stop()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public start()V
    .locals 5

    iget-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mRunning:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
