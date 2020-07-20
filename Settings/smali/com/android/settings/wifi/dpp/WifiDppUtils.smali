.class public Lcom/android/settings/wifi/dpp/WifiDppUtils;
.super Ljava/lang/Object;
.source "WifiDppUtils.java"


# static fields
.field private static final VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/dpp/WifiDppUtils;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    return-void
.end method

.method public static getConfiguratorQrCodeGeneratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isSupportConfiguratorQrCodeGenerator(Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_GENERATOR"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->setConfiguratorIntentExtra(Landroid/content/Intent;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p0

    const/4 p1, 0x7

    if-ne p0, p1, :cond_0

    const-string p0, "security"

    const-string p1, "WPA"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getConfiguratorQrCodeScannerIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isSupportConfiguratorQrCodeScanner(Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_SCANNER"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->setConfiguratorIntentExtra(Landroid/content/Intent;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const-string p1, "networkId"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid network ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEnrolleeQrCodeScannerIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_DPP_ENROLLEE_QR_CODE_SCANNER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ssid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static getHotspotConfiguratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    iget-object p0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    const-string p0, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_GENERATOR"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->setConfiguratorIntentExtra(Landroid/content/Intent;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    const/4 p0, -0x1

    const-string p1, "networkId"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "isHotspot"

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static getSecurityString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SAE"

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "nopassowe"

    return-object p0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-nez p0, :cond_3

    const-string p0, "nopass"

    goto :goto_0

    :cond_3
    const-string p0, "WEP"

    :goto_0
    return-object p0

    :cond_4
    :goto_1
    const-string p0, "WPA"

    return-object p0
.end method

.method public static isSupportConfiguratorQrCodeGenerator(Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isSupportZxing(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isSupportConfiguratorQrCodeScanner(Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isSupportWifiDpp(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isSupportEnrolleeQrCodeScanner(Landroid/content/Context;I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isSupportWifiDpp(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isSupportZxing(Landroid/content/Context;I)Z

    move-result p0

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

.method private static isSupportWifiDpp(Landroid/content/Context;I)Z
    .locals 3

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isWifiDppEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 p0, 0x7

    if-eq p1, p0, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v2
.end method

.method private static isSupportZxing(Landroid/content/Context;I)Z
    .locals 2

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 p0, 0x7

    if-eq p1, p0, :cond_3

    const/16 p0, 0x8

    if-eq p1, p0, :cond_3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    return v0
.end method

.method public static isWifiDppEnabled(Landroid/content/Context;)Z
    .locals 1

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEasyConnectSupported()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$showLockScreen$0(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static removeFirstAndLastDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static setConfiguratorIntentExtra(Landroid/content/Intent;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 6

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->removeFirstAndLastDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getSecurityString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, v5, :cond_0

    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object p1, p1, v2

    goto :goto_0

    :cond_1
    iget-object p1, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->removeFirstAndLastDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ssid"

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "security"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "preSharedKey"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eq p1, v3, :cond_6

    if-nez p1, :cond_7

    :cond_6
    const-string p2, "hiddenSsid"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7
    return-void
.end method

.method public static showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/settings/wifi/dpp/WifiDppUtils$1;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils$1;-><init>(Ljava/lang/Runnable;)V

    new-instance p1, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {p1, p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121942

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object p0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v2, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppUtils$oTeAENAZBPIju7SIYfaPlvY-AJ0;

    invoke-direct {v2, p1}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppUtils$oTeAENAZBPIju7SIYfaPlvY-AJ0;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, v2, v1}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method static triggerVibrationForQrCodeRecognition(Landroid/content/Context;)V
    .locals 3

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/settings/wifi/dpp/WifiDppUtils;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method
