.class Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$2;
.super Ljava/lang/Object;
.source "FingerprintEnrollFindSensor.java"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->access$000(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->access$002(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;Z)Z

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {p0, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->access$200(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;Z)V

    :cond_0
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->access$002(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;Z)Z

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->access$100(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->access$100(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {p0, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->access$200(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;Z)V

    :cond_0
    return-void
.end method
