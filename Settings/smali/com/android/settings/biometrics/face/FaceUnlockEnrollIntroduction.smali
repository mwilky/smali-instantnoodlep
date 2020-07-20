.class public Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;
.super Lcom/android/settings/biometrics/face/FingerprintEnrollBase;
.source "FaceUnlockEnrollIntroduction.java"


# instance fields
.field private mAlreadyHadLockScreenSetup:Z

.field private mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

.field private mFaceUnlockConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    new-instance v0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction$1;-><init>(Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result p0

    return p0
.end method

.method private isFaceAdded()Z
    .locals 5

    const-string v0, "FaceUnlockIntroduction"

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

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


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf9

    return p0
.end method

.method protected getNextButton()Lcom/oneplus/lib/widget/button/OPButton;
    .locals 1

    const v0, 0x7f0a0284

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/button/OPButton;

    return-object p0
.end method

.method protected initViews()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->getNextButton()Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a06d2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f12144b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->getNextButton()Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result v2

    const v3, 0x7f120d53

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->setHeaderText(I)V

    const v2, 0x7f120d65

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a05ee

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f1210b8

    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->setHeaderText(I)V

    const v2, 0x7f1210b7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v2, 0x7f120d52

    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->setHeaderText(I)V

    const v2, 0x7f120d51

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a027c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f120f18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a02b1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction$2;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction$2;-><init>(Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a027c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->onCancelButtonClick()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->getNextButton()Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->onNextButtonClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    const-class p1, Landroid/app/KeyguardManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "wasLockScreenPresent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    :goto_0
    const p1, 0x7f0d01b3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setElevation(F)V

    :cond_1
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerFontSize(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerScreenZoom(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0a06c6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, 0x7f0a06d2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    const p1, 0x7f0a0323

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result v0

    if-nez v0, :cond_3

    iget p0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 p0, p0, 0x2

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerFontSize(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerScreenZoom(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget p0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 p0, p0, 0x2

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_4
    :goto_1
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "com.oneplus.faceunlock"

    const-string v2, "com.oneplus.faceunlock.FaceUnlockActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "FaceUnlockActivity.StartMode"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :catch_1
    const-string p0, "No activity found for "

    const-string v1, "OPFaceUnlockSettings"

    invoke-static {p0, v0, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "FaceUnlockIntroduction"

    const-string v1, "Start unbind oneplus face unlockservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    const-string v0, "FaceUnlockIntroduction"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.oneplus.faceunlock"

    const-string v3, "com.oneplus.faceunlock.FaceSettingService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v1, "Start bind oneplus face unlockservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Bind oneplus face unlockservice exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean p0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const-string v0, "wasLockScreenPresent"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setHeaderText(I)V
    .locals 1

    const v0, 0x7f0a06c6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
