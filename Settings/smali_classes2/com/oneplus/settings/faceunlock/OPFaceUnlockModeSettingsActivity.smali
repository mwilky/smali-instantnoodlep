.class public Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPFaceUnlockModeSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDoneButton:Landroid/widget/Button;

.field private mFromSetupWizard:Z

.field private mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPressPowerkey:Landroid/view/View;

.field private mPressPowerkeyButton:Landroid/widget/RadioButton;

.field private mSwipeUp:Landroid/view/View;

.field private mSwipeUpButton:Landroid/widget/RadioButton;

.field protected mToken:[B

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mFromSetupWizard:Z

    return-void
.end method


# virtual methods
.method public getUnlockMode()I
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_face_unlock_powerkey_recognize_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x6

    if-ne p1, p3, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0223

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0366

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0368

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->setViewType(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->setViewType(I)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mFromSetupWizard:Z

    if-eqz p1, :cond_5

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mToken:[B

    if-eqz v0, :cond_3

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_3
    iget v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_4

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "enter_faceunlock_mode_settings_from_suw"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mFromSetupWizard:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mToken:[B

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mUserId:I

    iget-boolean p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mFromSetupWizard:Z

    if-eqz p1, :cond_0

    const p1, 0x7f1303c3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    :cond_0
    const p1, 0x7f0d01b4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const p1, 0x7f0a0366

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mSwipeUp:Landroid/view/View;

    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mSwipeUp:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0368

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mPressPowerkey:Landroid/view/View;

    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mPressPowerkey:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0367

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mSwipeUpButton:Landroid/widget/RadioButton;

    const p1, 0x7f0a0369

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mPressPowerkeyButton:Landroid/widget/RadioButton;

    const p1, 0x7f0a04f8

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const p1, 0x7f0a0223

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mDoneButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mFromSetupWizard:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mDoneButton:Landroid/widget/Button;

    const v0, 0x7f120b29

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    :cond_1
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerFontSize(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerScreenZoom(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0a04bd

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/high16 p1, 0x41a00000    # 20.0f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->releaseAnim()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->stopAnim()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->getUnlockMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->setViewType(I)V

    return-void
.end method

.method public releaseAnim()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_0
    return-void
.end method

.method public setViewType(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_powerkey_recognize_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "pop_up_face_unlock"

    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->getUnlockMode()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mSwipeUpButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mPressPowerkeyButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mSwipeUpButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mPressPowerkeyButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->stopAnim()V

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->getUnlockMode()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "op_face_unlock_by_swipe_up_dark.json"

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "op_face_unlock_by_use_power_key_dark.json"

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public stopAnim()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_0
    return-void
.end method
