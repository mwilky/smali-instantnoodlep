.class abstract Landroidx/mediarouter/media/MediaRouteProviderProtocol;
.super Ljava/lang/Object;
.source "MediaRouteProviderProtocol.java"


# direct methods
.method public static removeCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$Callback;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    return-void
.end method
