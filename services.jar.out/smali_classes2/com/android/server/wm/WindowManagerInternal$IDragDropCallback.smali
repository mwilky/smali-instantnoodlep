.class public interface abstract Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;
.super Ljava/lang/Object;
.source "WindowManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDragDropCallback"
.end annotation


# virtual methods
.method public postCancelDragAndDrop()V
    .locals 0

    return-void
.end method

.method public postPerformDrag()V
    .locals 0

    return-void
.end method

.method public postReportDropResult()V
    .locals 0

    return-void
.end method

.method public preCancelDragAndDrop(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public prePerformDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public preReportDropResult(Landroid/view/IWindow;Z)V
    .locals 0

    return-void
.end method

.method public registerInputChannel(Lcom/android/server/wm/DragState;Landroid/view/Display;Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)Z
    .locals 1

    invoke-virtual {p4}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wm/DragState;->mTransferTouchFromToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DragState;->register(Landroid/view/Display;)V

    const/4 v0, 0x1

    return v0
.end method
