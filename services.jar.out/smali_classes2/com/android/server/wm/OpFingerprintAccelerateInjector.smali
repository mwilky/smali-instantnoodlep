.class public Lcom/android/server/wm/OpFingerprintAccelerateInjector;
.super Ljava/lang/Object;
.source "OpFingerprintAccelerateInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpFingerprintAccelerate"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAppSupportsAccelerting(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    nop

    const-string v1, "fingerprint"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p0}, Landroid/hardware/fingerprint/IFingerprintService;->isAppSupportAccelerate(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "OpFingerprintAccelerate"

    const-string v4, "isAppSupportsAccelerting: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public static shouldSkipSleep(Lcom/android/server/wm/ActivityDisplay;Lcom/android/server/wm/ActivityStack;)Z
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x50

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mIsFingerprintEnabled:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    goto :goto_1

    :cond_2
    if-ne v3, v5, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    :cond_3
    :goto_1
    if-ne v4, p1, :cond_4

    iget-object v5, p1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldSleepActivities return false for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " focusStack="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "OpFingerprintAccelerate"

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    return v2

    :cond_5
    :goto_2
    return v2
.end method
