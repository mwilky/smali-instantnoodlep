.class public Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;
.super Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;
.source "SetupFingerprintEnrollIntroduction.java"


# instance fields
.field private mAlreadyHadLockScreenSetup:Z

.field private mForFingerprint:Z

.field private mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mForFingerprint:Z

    return-void
.end method

.method private getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    const-string v0, ":settings:password_quality"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1
.end method

.method private isKeyguardSecure()Z
    .locals 1

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x20000

    const-string v2, "lockscreen.password_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "show_options_button"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf9

    return p0
.end method

.method protected initViews()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->initViews()V

    const v0, 0x7f0a06d2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f12144b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f120e0e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const v2, 0x7f12144a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getCancelButton()Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121447

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const-string v1, "SetupFingerprintEnrollIntroduction"

    const-string v2, "initViews cancelButton is null !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const v1, 0x7f0a02b1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060409

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060407

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    new-instance v2, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction$1;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction$1;-><init>(Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v1, 0x7f060343

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    const v2, 0x7f0a06c6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    const v1, 0x7f0603b3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0a0659

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060544

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :cond_4
    return-void
.end method

.method protected launchChooseLockForSkip()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->getChooseLockIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getChallenge()J

    move-result-wide v1

    const-string v3, "minimum_quality"

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x1

    const-string v4, "hide_disabled_prefs"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "has_challenge"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "challenge"

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getExtraKeyForBiometric()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0xb

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->skipToNextPage()V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    :cond_2
    if-ne p1, v1, :cond_4

    if-ne p2, v0, :cond_4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->skipToNextPage()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_4
    if-ne p1, v1, :cond_5

    if-nez p2, :cond_5

    return-void

    :cond_5
    const-string v0, "hw_auth_token"

    if-ne p1, v1, :cond_a

    if-ne p2, v1, :cond_9

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mForFingerprint:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->skipToNextPage()V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->updatePasswordQuality()V

    if-eqz p3, :cond_8

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->launchNextEnrollingActivity([B)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->launchFindSensor([B)V

    :cond_8
    :goto_0
    return-void

    :cond_9
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_a
    const/4 v1, 0x4

    if-ne p1, v1, :cond_c

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p1, -0x1

    if-ne p2, p1, :cond_b

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->launchNextEnrollingActivity([B)V

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :cond_c
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    invoke-static {}, Landroidx/transition/R$id;->getTheme()I

    move-result p2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCancelButtonClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "SetupFingerprintEnrollIntroduction"

    const-string v0, "onCancelButtonClick"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasPassword:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mForFingerprint:Z

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->launchChooseLockForSkip()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mNeedLaunchLock:Z

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->setLightStatusBar(Landroid/view/Window;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f060315

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mFromSetup:Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0d024e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    const v2, 0x7f120d78

    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->setHeaderText(I)V

    const v2, 0x7f0a04d7

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v2, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "op_custom_fingerprint_guide.json"

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    goto :goto_1

    :cond_3
    const-string v1, "wasLockScreenPresent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->initFootBarButton()V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->adjustTitleSize()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_0
    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 2

    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasPassword:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mForFingerprint:Z

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->launchChooseLock()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getConfirmLockTitleResId()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getChallenge()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->launchConfirmLock(IJ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->launchFindSensor([B)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const-string v0, "wasLockScreenPresent"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onStart()V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onStop()V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :cond_0
    return-void
.end method

.method protected skipToNextPage()V
    .locals 2

    const-string v0, "SetupFingerprintEnrollIntroduction"

    const-string v1, "skipToNextPage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
