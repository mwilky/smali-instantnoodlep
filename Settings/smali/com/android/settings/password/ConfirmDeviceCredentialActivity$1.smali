.class Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "ConfirmDeviceCredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmDeviceCredentialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$000(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z

    move-result p2

    if-nez p2, :cond_3

    const/16 p2, 0xa

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$400(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$100(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$300(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/hardware/biometrics/BiometricManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$200(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/hardware/biometrics/BiometricManager;->onConfirmDeviceCredentialError(ILjava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    const-string v0, "ConfirmDeviceCredentialActivity"

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$400(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$600(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/app/trust/TrustManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$500(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$700(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$800(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$500(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)I

    move-result v1

    invoke-static {p1, v0, v1}, Landroidx/transition/R$id;->reportSuccessfulAttempt(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/UserManager;I)V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p1}, Landroidx/transition/R$id;->checkForPendingIntent(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$100(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$300(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/hardware/biometrics/BiometricManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricManager;->onConfirmDeviceCredentialSuccess()V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->finish()V

    return-void
.end method
