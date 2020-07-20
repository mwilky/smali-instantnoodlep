.class public Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;
.super Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;
.source "SetupFingerprintEnrollFinish.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFingerprintEnrollingIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf8

    return p0
.end method

.method protected initViews()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    const v0, 0x7f120b29

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public synthetic lambda$onCreate$0$SetupFingerprintEnrollFinish(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->onNextButtonClick(Landroid/view/View;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_0

    if-eq p2, v3, :cond_0

    if-ne p2, v2, :cond_3

    :cond_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    if-eq p2, v1, :cond_2

    if-eq p2, v3, :cond_2

    if-ne p2, v2, :cond_3

    :cond_2
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f130532

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    invoke-static {}, Landroidx/transition/R$id;->getTheme()I

    move-result p2

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->isSetupPage:Z

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0d01ce

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p0, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline29(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline29(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x2000

    invoke-static {p0, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline29(Landroid/app/Activity;I)V

    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0a03fe

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f121445

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f060341

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a0401

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f120f79

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const p1, 0x7f0a0461

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    const p1, 0x7f0a0065

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mBtnAdd:Lcom/oneplus/lib/widget/button/OPButton;

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$SetupFingerprintEnrollFinish$by0xUo16zx6grDNEtrl1GJu4EpA;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$SetupFingerprintEnrollFinish$by0xUo16zx6grDNEtrl1GJu4EpA;-><init>(Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "fingerprint"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-lt p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mBtnAdd:Lcom/oneplus/lib/widget/button/OPButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->adjustTitleSize()V

    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
