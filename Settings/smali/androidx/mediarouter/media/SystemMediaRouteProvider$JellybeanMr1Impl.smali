.class Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;
.super Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;
.source "SystemMediaRouteProvider.java"

# interfaces
.implements Landroidx/mediarouter/media/MediaRouterJellybeanMr1$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/SystemMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellybeanMr1Impl"
.end annotation


# instance fields
.field private mActiveScanWorkaround:Landroidx/mediarouter/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

.field private mIsConnectingWorkaround:Landroidx/mediarouter/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;)V

    return-void
.end method


# virtual methods
.method protected createCallbackObj()Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroidx/mediarouter/media/MediaRouterJellybeanMr1$CallbackProxy;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouterJellybeanMr1$CallbackProxy;-><init>(Landroidx/mediarouter/media/MediaRouterJellybeanMr1$Callback;)V

    return-object v0
.end method

.method protected isConnecting(Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;)Z
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mIsConnectingWorkaround:Landroidx/mediarouter/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;

    if-eqz p0, :cond_0

    iget-object p1, p1, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;->isConnecting(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method protected onBuildSystemRouteDescriptor(Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->onBuildSystemRouteDescriptor(Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;)V

    iget-object v0, p1, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setEnabled(Z)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;->isConnecting(Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setConnecting(Z)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    :cond_1
    iget-object p0, p1, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    :try_start_0
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MediaRouterJellybeanMr1"

    const-string v0, "Cannot get presentation display for the route."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    invoke-virtual {p2, p0}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setPresentationDisplayId(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    :cond_2
    return-void
.end method

.method protected updateCallback()V
    .locals 4

    iget-boolean v0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->mCallbackRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->mCallbackRegistered:Z

    iget-object v0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->mCallbackObj:Ljava/lang/Object;

    invoke-static {v0, v2}, Landroidx/mediarouter/media/MediaRouteProviderProtocol;->removeCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->mRouteTypes:I

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->mCallbackRegistered:Z

    iget-object v2, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->mCallbackObj:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaRouter;

    check-cast v3, Landroid/media/MediaRouter$Callback;

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mActiveScanWorkaround:Landroidx/mediarouter/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->mActiveScan:Z

    if-eqz v2, :cond_2

    iget v1, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->mRouteTypes:I

    :cond_2
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;->setActiveScanRouteTypes(I)V

    return-void

    :cond_3
    new-instance v0, Landroidx/mediarouter/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroidx/mediarouter/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 p0, 0x0

    throw p0
.end method
