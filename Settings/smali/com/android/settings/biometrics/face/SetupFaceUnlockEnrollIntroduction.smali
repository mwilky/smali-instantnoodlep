.class public Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;
.super Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;
.source "SetupFaceUnlockEnrollIntroduction.java"


# instance fields
.field private mAlreadyHadLockScreenSetup:Z

.field private mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

.field private mFaceUnlockConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    new-instance v0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction$1;-><init>(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)Lcom/oneplus/lib/widget/button/OPButton;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getNextButton()Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)Lcom/oneplus/lib/widget/button/OPButton;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getNextButton()Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object p0

    return-object p0
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

.method private goToNextPage()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_1
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method private isFaceAdded()Z
    .locals 5

    const-string v0, "SetupFaceUnlockEnrollIntroduction"

    iget-object p0, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    :try_start_0
    invoke-interface {p0, v1}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->checkState(I)I

    move-result v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start check face state:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start check face State RemoteException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
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

.method private launchFaceUnlock()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getSetupFaceUnlockIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const v0, 0x7f01005a

    const v1, 0x7f01005b

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startSetupFingerprintEnrollIntroduction(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
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

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf9

    return p0
.end method

.method protected initViews()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->initViews()V

    const v0, 0x7f0a06d5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f121433

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a0284

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result v1

    const v2, 0x7f0a05f1

    const v3, 0x7f120d3b

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->setHeaderText(I)V

    const v1, 0x7f120d4d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1210a0

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->setHeaderText(I)V

    const v1, 0x7f12109f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f120d3a

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->setHeaderText(I)V

    const v1, 0x7f120d39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    new-instance v3, Lcom/android/settings/biometrics/face/-$$Lambda$ieya5yOds0DIHWaiNHPzjd6_A6o;

    invoke-direct {v3, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$ieya5yOds0DIHWaiNHPzjd6_A6o;-><init>(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a027c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBtnCancel:Lcom/oneplus/lib/widget/button/OPButton;

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBtnCancel:Lcom/oneplus/lib/widget/button/OPButton;

    new-instance v3, Lcom/android/settings/biometrics/face/-$$Lambda$lpHQg3KNzbCBGMh9I-Z1zygP-60;

    invoke-direct {v3, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$lpHQg3KNzbCBGMh9I-Z1zygP-60;-><init>(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBtnCancel:Lcom/oneplus/lib/widget/button/OPButton;

    const v3, 0x7f12142f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a02ac

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060409

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060407

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    new-instance v3, Lcom/android/settings/biometrics/face/-$$Lambda$SetupFaceUnlockEnrollIntroduction$Du2jt-QVrWPSe4IPCZOEcqQ7vAQ;

    invoke-direct {v3, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$SetupFaceUnlockEnrollIntroduction$Du2jt-QVrWPSe4IPCZOEcqQ7vAQ;-><init>(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f060343

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a06c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060347

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    const v1, 0x7f0603b3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a065c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060544

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :cond_3
    return-void
.end method

.method public synthetic lambda$initViews$0$SetupFaceUnlockEnrollIntroduction(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "op_legal_notices_type"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "key_from_settings"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected launchChooseLock()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getChooseLockIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

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

    const-string v1, "for_face"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetupFaceUnlockEnrollIntroduction"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mFromSetup:Z

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    if-nez v2, :cond_0

    invoke-direct {p0, p3}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->goToNextPage()V

    goto/16 :goto_0

    :cond_0
    const-string v2, "hw_auth_token"

    const/16 v3, 0xd

    const/4 v4, 0x4

    if-ne p1, v4, :cond_5

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "enter_faceunlock_mode_settings_from_suw"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const-string v0, "com.android.settings"

    const-string v2, "com.oneplus.settings.faceunlock.OPFaceUnlockModeSettingsActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->startSetupFingerprintEnrollIntroduction(Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->startSetupFingerprintEnrollIntroduction(Z)V

    :cond_4
    return-void

    :cond_5
    if-ne p1, v4, :cond_6

    if-nez p2, :cond_6

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_6
    const/4 v4, 0x7

    if-ne p1, v4, :cond_7

    if-ne p2, v0, :cond_7

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->launchFaceUnlock()V

    goto :goto_0

    :cond_7
    const/4 v2, 0x6

    if-ne p1, v2, :cond_9

    if-eq p2, v1, :cond_8

    const/16 v1, 0xb

    if-eq p2, v1, :cond_8

    if-eq p2, v0, :cond_8

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->goToNextPage()V

    goto :goto_0

    :cond_9
    if-ne p1, v3, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->updatePasswordQuality()V

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasPassword:Z

    if-eqz v0, :cond_a

    if-eqz p2, :cond_a

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->goToNextPage()V

    :cond_a
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_b
    :goto_0
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

.method protected onCancelButtonClick(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->startSetupFingerprintEnrollIntroduction(Z)V

    const p1, 0x7f01005a

    const v0, 0x7f01005b

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

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

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isKeyguardSecure()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    goto :goto_1

    :cond_1
    const-string v1, "wasLockScreenPresent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    :goto_1
    const p1, 0x7f0d024c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->startSetupFingerprintEnrollIntroduction(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_3
    const p1, 0x7f0a06d7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0a031e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result v3

    if-nez v3, :cond_4

    iget p0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 p0, p0, 0x2

    iput p0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerFontSize(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerScreenZoom(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget p0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 p0, p0, 0x2

    iput p0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget p0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 p0, p0, 0x2

    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasPassword:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->launchChooseLock()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->launchFaceUnlock()V

    goto :goto_0

    :cond_1
    const-string p1, "SetupFaceUnlockEnrollIntroduction"

    const-string v0, "onNext already added face"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->startSetupFingerprintEnrollIntroduction(Z)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "SetupFaceUnlockEnrollIntroduction"

    const-string v1, "Start unbind oneplus face unlockservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->updatePasswordQuality()V

    const-string v0, "SetupFaceUnlockEnrollIntroduction"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.oneplus.faceunlock"

    const-string v3, "com.oneplus.faceunlock.FaceSettingService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string p0, "Start bind oneplus face unlockservice"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Bind oneplus face unlockservice exception"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean p0, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const-string v0, "wasLockScreenPresent"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
