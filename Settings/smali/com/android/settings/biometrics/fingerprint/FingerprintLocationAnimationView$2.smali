.class Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FingerprintLocationAnimationView.java"


# instance fields
.field mCancelled:Z

.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->access$102(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;->mCancelled:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->access$200(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
