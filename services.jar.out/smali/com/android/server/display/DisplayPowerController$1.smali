.class Lcom/android/server/display/DisplayPowerController$1;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTorchModeChanged(): cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$100(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$100(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->setTorchModeEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
