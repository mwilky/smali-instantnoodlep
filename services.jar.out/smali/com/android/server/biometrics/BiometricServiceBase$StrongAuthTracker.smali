.class public Lcom/android/server/biometrics/BiometricServiceBase$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "BiometricServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StrongAuthTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$StrongAuthTracker;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onStrongAuthRequiredChanged$0$BiometricServiceBase$StrongAuthTracker(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$StrongAuthTracker;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->onStrongAuthChanged(I)V

    return-void
.end method

.method public onStrongAuthRequiredChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$StrongAuthTracker;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$StrongAuthTracker$BmneRFsrj9x9LUC3RPRhML_66og;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$StrongAuthTracker$BmneRFsrj9x9LUC3RPRhML_66og;-><init>(Lcom/android/server/biometrics/BiometricServiceBase$StrongAuthTracker;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
