.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "FingerprintEnrollFinish.java"


# annotations
.annotation runtime Lcom/oneplus/support/annotation/GestureBarAdapter;
    transparentGestureButton = false
.end annotation


# static fields
.field static final FINGERPRINT_SUGGESTION_ACTIVITY:Ljava/lang/String; = "com.android.settings.SetupFingerprintSuggestionActivity"

.field static final REQUEST_ADD_ANOTHER:I = 0x1


# instance fields
.field protected isSetupPage:Z

.field protected mBtnAdd:Lcom/oneplus/lib/widget/button/OPButton;

.field protected mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

.field private mLaunchingEnroll:Z

.field private mNeedJumpToFingerprintSettings:Z

.field protected mToken:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mNeedJumpToFingerprintSettings:Z

    return-void
.end method

.method public static synthetic lambda$pbvaovi36rC6rWx2OXL1O9T7RaQ(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->onAddAnotherButtonClick(Landroid/view/View;)V

    return-void
.end method

.method private onAddAnotherButtonClick(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mLaunchingEnroll:Z

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getFingerprintEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private setFingerprintEnrolling(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mLaunchingEnroll:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oem_acc_fingerprint_enrolling"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eq p1, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateFingerprintSuggestionEnableState()V
    .locals 6

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.settings.SetupFingerprintSuggestionActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v3, v2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.android.settings.SetupFingerprintSuggestionActivity enabled state = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "FingerprintEnrollFinish"

    invoke-static {p0, v1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline46(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected adjustTitleSize()V
    .locals 4

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerFontSize(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerScreenZoom(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    const/high16 v1, 0x41500000    # 13.0f

    const/high16 v2, 0x41900000    # 18.0f

    if-eqz v0, :cond_0

    const v0, 0x7f0a03f9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v2, 0x7f0a03fc

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0a06c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0a06d5

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf2

    return p0
.end method

.method public synthetic lambda$onCreate$0$FingerprintEnrollFinish(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->onNextButtonClick(Landroid/view/View;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->updateFingerprintSuggestionEnableState()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->updateFingerprintSuggestionEnableState()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1301dd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p0, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline29(Landroid/app/Activity;I)V

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDynamicEnrollAnimation()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->isSetupPage:Z

    if-eqz p1, :cond_2

    const p1, 0x7f0d01cc

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    :cond_2
    const p1, 0x7f0d01c7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->isSetupPage:Z

    if-eqz p1, :cond_4

    const p1, 0x7f0d01ce

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    :cond_4
    const p1, 0x7f0d01c9

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    :cond_5
    const p1, 0x7f0d00b3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p1

    const v1, 0x7f12142d

    if-eqz p1, :cond_6

    const p1, 0x7f0a03f9

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f060341

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a03fc

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f120f61

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->setHeaderText(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mToken:[B

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "needJumpToFingerprintSettings"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mNeedJumpToFingerprintSettings:Z

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setElevation(F)V

    :cond_7
    const p1, 0x7f0a045c

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

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollFinish$FuTKHYXCbQzLLu3tH8bt4aQY7FY;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollFinish$FuTKHYXCbQzLLu3tH8bt4aQY7FY;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;)V

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

    if-lt p1, v0, :cond_8

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mBtnAdd:Lcom/oneplus/lib/widget/button/OPButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->adjustTitleSize()V

    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->updateFingerprintSuggestionEnableState()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    const-string v0, "hw_auth_token"

    const-string v1, "com.android.settings"

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result p1

    if-gez p1, :cond_1

    const-string v2, "postEnroll failed: result = "

    const-string v3, "FingerprintEnrollFinish"

    invoke-static {v2, p1, v3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline33(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.settings.FINGERPRINT_SETTINGS"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mToken:[B

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 v2, 0x24000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mNeedJumpToFingerprintSettings:Z

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mNeedJumpToFingerprintSettings:Z

    const-string v2, "needJumpToFingerprintSettings"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->setFingerprintEnrolling(Z)V

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mLaunchingEnroll:Z

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->setFingerprintEnrolling(Z)V

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mBtnAdd:Lcom/oneplus/lib/widget/button/OPButton;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mBtnAdd:Lcom/oneplus/lib/widget/button/OPButton;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollFinish$pbvaovi36rC6rWx2OXL1O9T7RaQ;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollFinish$pbvaovi36rC6rWx2OXL1O9T7RaQ;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method protected setHeaderText(I)V
    .locals 1

    const v0, 0x7f0a06c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
