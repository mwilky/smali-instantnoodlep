.class Lcom/oneplus/settings/permission/PermissionManager$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/permission/PermissionManager;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/permission/PermissionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/permission/PermissionManager$1;->this$0:Lcom/oneplus/settings/permission/PermissionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "PermissionManager"

    const-string v0, "Connected to custom permission control service."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/settings/permission/PermissionManager$1;->this$0:Lcom/oneplus/settings/permission/PermissionManager;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/oneplus/settings/permission/PermissionManager;->access$102(Lcom/oneplus/settings/permission/PermissionManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object p1, p0, Lcom/oneplus/settings/permission/PermissionManager$1;->this$0:Lcom/oneplus/settings/permission/PermissionManager;

    invoke-static {p1}, Lcom/oneplus/settings/permission/PermissionManager;->access$000(Lcom/oneplus/settings/permission/PermissionManager;)Lcom/oneplus/settings/permission/PermissionManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/permission/PermissionManager$1;->this$0:Lcom/oneplus/settings/permission/PermissionManager;

    invoke-static {p0}, Lcom/oneplus/settings/permission/PermissionManager;->access$000(Lcom/oneplus/settings/permission/PermissionManager;)Lcom/oneplus/settings/permission/PermissionManager$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/settings/permission/PermissionManager$Callback;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/settings/permission/PermissionManager$1;->this$0:Lcom/oneplus/settings/permission/PermissionManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/settings/permission/PermissionManager;->access$102(Lcom/oneplus/settings/permission/PermissionManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object p1, p0, Lcom/oneplus/settings/permission/PermissionManager$1;->this$0:Lcom/oneplus/settings/permission/PermissionManager;

    invoke-static {p1}, Lcom/oneplus/settings/permission/PermissionManager;->access$200(Lcom/oneplus/settings/permission/PermissionManager;)Landroid/os/HandlerThread;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/permission/PermissionManager$1;->this$0:Lcom/oneplus/settings/permission/PermissionManager;

    invoke-static {p0}, Lcom/oneplus/settings/permission/PermissionManager;->access$200(Lcom/oneplus/settings/permission/PermissionManager;)Landroid/os/HandlerThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method
