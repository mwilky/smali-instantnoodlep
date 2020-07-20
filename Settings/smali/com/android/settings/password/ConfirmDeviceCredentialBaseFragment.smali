.class public abstract Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;
    }
.end annotation


# instance fields
.field protected isLockedOutStage:Z

.field protected mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field protected mCancelButton:Landroid/widget/Button;

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field protected mEffectiveUserId:I

.field protected mErrorTextView:Landroid/widget/TextView;

.field protected mFingerprintHelper:Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;

.field protected mFingerprintIcon:Landroid/widget/ImageView;

.field protected mFrp:Z

.field private mFrpAlternateButtonText:Ljava/lang/CharSequence;

.field protected final mHandler:Landroid/os/Handler;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mResetErrorRunnable:Ljava/lang/Runnable;

.field protected mReturnCredentials:Z

.field protected mUserId:I

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$2;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private isInternalActivity()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected abstract authenticationSucceeded()V
.end method

.method protected abstract getLastTryErrorMessage(I)I
.end method

.method protected isFingerprintAllowed()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isFingerprintNeedShowDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isStrongAuthRequired()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method protected isFingerprintNeedShowDarkTheme()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected isStrongAuthRequired()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onAuthenticated()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "trust"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricManager;->onConfirmDeviceCredentialSuccess()V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->authenticationSucceeded()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroidx/transition/R$id;->checkForPendingIntent(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrpAlternateButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "return_credentials"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isInternalActivity()Z

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    iget p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    const/16 v1, -0x270f

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricManager;

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;->stopListening()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    const-string v0, "ConfirmDeviceCredentialBaseFragment"

    const-string v1, "onPause stopListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;->stopListening()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    return-void
.end method

.method protected abstract onShowError()V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const p2, 0x7f0a0125

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    const p2, 0x7f0a0279

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0257

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    iget v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    move-object v0, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper$Callback;I)V

    iput-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "com.android.settings.ConfirmCredentials.showCancelButton"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrpAlternateButtonText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    if-nez p2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    goto :goto_2

    :cond_2
    :goto_1
    move p2, v0

    :goto_2
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz v1, :cond_3

    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrpAlternateButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;Z)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isInternalActivity()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result v1

    invoke-static {p2, v1}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result p2

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a03e2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result p2

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f0a00c6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080701

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 0

    return-void
.end method

.method protected refreshLockScreen()V
    .locals 2

    const-string v0, "ConfirmDeviceCredentialBaseFragment"

    const-string v1, "refreshLockScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isFingerprintAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;->startListening()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;->stopListening()V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->updateErrorMessage(I)V

    return-void
.end method

.method protected reportFailedAttempt()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->updateErrorMessage(I)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    return-void
.end method

.method protected setAccessibilityTitle(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected showError(IJ)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->showError(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method protected showError(Ljava/lang/CharSequence;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onShowError()V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public startEnterAnimation()V
    .locals 0

    return-void
.end method

.method protected updateErrorMessage(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumFailedPasswordsForWipe(I)I

    move-result v0

    if-lez v0, :cond_a

    if-gtz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v5, 0x7f120983

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v1, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v5, 0x0

    invoke-virtual {p0, v1, v5, v6}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->showError(Ljava/lang/CharSequence;J)V

    :cond_1
    sub-int/2addr v0, p1

    if-le v0, v4, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v5, 0x3

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v4

    :goto_1
    if-ne v0, v4, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f120989

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getLastTryErrorMessage(I)I

    move-result p0

    const v1, 0x104000a

    invoke-static {p1, v0, p0, v1, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;IIZ)Z

    goto :goto_3

    :cond_6
    if-eq v1, v4, :cond_9

    if-eq v1, v3, :cond_8

    if-ne v1, v5, :cond_7

    const p0, 0x7f120987

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unrecognized user type:"

    invoke-static {p1, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline12(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const p0, 0x7f120986

    goto :goto_2

    :cond_9
    const p0, 0x7f120984

    :goto_2
    const/4 v0, 0x0

    const v1, 0x7f120985

    invoke-static {p1, v0, p0, v1, v4}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;IIZ)Z

    :cond_a
    :goto_3
    return-void
.end method
