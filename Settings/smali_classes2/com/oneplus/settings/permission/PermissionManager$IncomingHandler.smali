.class Lcom/oneplus/settings/permission/PermissionManager$IncomingHandler;
.super Landroid/os/Handler;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/permission/PermissionManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/permission/PermissionManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/permission/PermissionManager$IncomingHandler;->this$0:Lcom/oneplus/settings/permission/PermissionManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KEY_PKG_PEMISSIONS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/util/GlobalPermissionState$PackagePermissionState;

    iget-object v0, p0, Lcom/oneplus/settings/permission/PermissionManager$IncomingHandler;->this$0:Lcom/oneplus/settings/permission/PermissionManager;

    invoke-static {v0}, Lcom/oneplus/settings/permission/PermissionManager;->access$000(Lcom/oneplus/settings/permission/PermissionManager;)Lcom/oneplus/settings/permission/PermissionManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/settings/permission/PermissionManager$IncomingHandler;->this$0:Lcom/oneplus/settings/permission/PermissionManager;

    invoke-static {p0}, Lcom/oneplus/settings/permission/PermissionManager;->access$000(Lcom/oneplus/settings/permission/PermissionManager;)Lcom/oneplus/settings/permission/PermissionManager$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oneplus/settings/permission/PermissionManager$Callback;->onPermissionDataObtained(Landroid/util/GlobalPermissionState$PackagePermissionState;)V

    goto :goto_0

    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/oneplus/settings/permission/PermissionManager$IncomingHandler;->this$0:Lcom/oneplus/settings/permission/PermissionManager;

    invoke-static {v0}, Lcom/oneplus/settings/permission/PermissionManager;->access$000(Lcom/oneplus/settings/permission/PermissionManager;)Lcom/oneplus/settings/permission/PermissionManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/settings/permission/PermissionManager$IncomingHandler;->this$0:Lcom/oneplus/settings/permission/PermissionManager;

    invoke-static {p0}, Lcom/oneplus/settings/permission/PermissionManager;->access$000(Lcom/oneplus/settings/permission/PermissionManager;)Lcom/oneplus/settings/permission/PermissionManager$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oneplus/settings/permission/PermissionManager$Callback;->onPermissionDataUpdated(I)V

    :cond_2
    :goto_0
    return-void
.end method
