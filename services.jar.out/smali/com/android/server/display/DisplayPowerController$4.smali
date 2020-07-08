.class Lcom/android/server/display/DisplayPowerController$4;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/RampAnimator$Listener;


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

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x112

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->getBrightnessValue()I

    move-result v0

    const/16 v2, 0x6e

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$500(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$600(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$100(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v0

    const/16 v2, 0x7d0

    invoke-virtual {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->adjustBrightenDebounceTime(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$100(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v0

    const/16 v2, 0xfa0

    invoke-virtual {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->adjustBrightenDebounceTime(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$702(Lcom/android/server/display/DisplayPowerController;Z)Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$400(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method

.method public setDimmingSpeed(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$800(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$900(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x58

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$900(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$900(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
