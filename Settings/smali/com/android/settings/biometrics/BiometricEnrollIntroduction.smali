.class public abstract Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "BiometricEnrollIntroduction.java"

# interfaces
.implements Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;


# instance fields
.field private mBiometricUnlockDisabledByAdmin:Z

.field protected mBtnCancel:Lcom/oneplus/lib/widget/button/OPButton;

.field protected mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

.field protected mErrorText:Landroid/widget/TextView;

.field protected mHasPassword:Z

.field protected mNeedLaunchLock:Z

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mNeedLaunchLock:Z

    return-void
.end method


# virtual methods
.method protected abstract checkMaxEnrolled()I
.end method

.method protected abstract getChallenge()J
.end method

.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

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

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected abstract getConfirmLockTitleResId()I
.end method

.method protected abstract getDescriptionResDisabledByAdmin()I
.end method

.method protected abstract getEnrollingIntent()Landroid/content/Intent;
.end method

.method protected abstract getErrorTextView()Landroid/widget/TextView;
.end method

.method protected abstract getExtraKeyForBiometric()Ljava/lang/String;
.end method

.method protected abstract getHeaderResDefault()I
.end method

.method protected abstract getHeaderResDisabledByAdmin()I
.end method

.method protected abstract getLayoutResource()I
.end method

.method protected abstract getNextButton()Lcom/oneplus/lib/widget/button/OPButton;
.end method

.method protected initViews()V
    .locals 2

    const v0, 0x7f0a06d2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBiometricUnlockDisabledByAdmin:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getDescriptionResDisabledByAdmin()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method protected abstract isDisabledByAdmin()Z
.end method

.method protected launchChooseLock()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getChooseLockIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getChallenge()J

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

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getExtraKeyForBiometric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected launchNextEnrollingActivity([B)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    iget p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_1

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    const-string v1, "from_settings_summary"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f010045

    const v0, 0x7f010044

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_7

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const v0, 0x7f01006e

    const v2, 0x7f01006d

    const-string v3, "hw_auth_token"

    if-ne p1, v1, :cond_4

    if-ne p2, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->updatePasswordQuality()V

    if-nez p3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :cond_3
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    const/4 v1, -0x1

    if-ne p2, v1, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    const v0, 0x7f01006b

    const v1, 0x7f01006c

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_7
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCancelButtonClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "theme"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/sysprop/SetupWizardProperties;->theme()Ljava/util/Optional;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->isDisabledByAdmin()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBiometricUnlockDisabledByAdmin:Z

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getLayoutResource()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBiometricUnlockDisabledByAdmin:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getHeaderResDisabledByAdmin()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getHeaderResDefault()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getErrorTextView()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->updatePasswordQuality()V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCreate  isInMultiWindowMode"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f120725

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mNeedLaunchLock:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasPassword:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->launchChooseLock()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getConfirmLockTitleResId()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getChallenge()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->launchConfirmLock(IJ)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->checkMaxEnrolled()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->launchNextEnrollingActivity([B)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->checkMaxEnrolled()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getNextButton()Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getNextButton()Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120667

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getNextButton()Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected updatePasswordQuality()V
    .locals 3

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasPassword:Z

    return-void
.end method
