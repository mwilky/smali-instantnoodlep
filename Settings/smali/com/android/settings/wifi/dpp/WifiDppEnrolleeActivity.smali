.class public Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "WifiDppEnrolleeActivity.java"

# interfaces
.implements Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;


# instance fields
.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity$1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;)Landroidx/fragment/app/FragmentManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x63c

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->setLightNavigationBar(Landroid/view/Window;I)V

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f13012b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    :cond_0
    const v0, 0x7f0d0384

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x7c1bddca

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "android.settings.WIFI_DPP_ENROLLEE_QR_CODE_SCANNER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_3

    const-string p1, "WifiDppEnrolleeActivity"

    const-string v1, "Launch with an invalid action"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_3
    const-string v1, "ssid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v2, "qr_code_scanner_fragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v3, 0x7f0a02a8

    invoke-virtual {p1, v3, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setElevation(F)V

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_7
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onDestroy()V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onScanWifiDppSuccess(Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 0

    return-void
.end method
