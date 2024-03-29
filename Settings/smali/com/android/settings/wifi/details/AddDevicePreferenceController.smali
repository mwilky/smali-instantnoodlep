.class public Lcom/android/settings/wifi/details/AddDevicePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AddDevicePreferenceController.java"


# static fields
.field private static final KEY_ADD_DEVICE:Ljava/lang/String; = "add_device_to_network"

.field private static final TAG:Ljava/lang/String; = "AddDevicePreferenceController"


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "add_device_to_network"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/details/AddDevicePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private launchWifiDppConfiguratorQrCodeScanner()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/AddDevicePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/details/AddDevicePreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getConfiguratorQrCodeScannerIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "AddDevicePreferenceController"

    const-string v0, "Launch Wi-Fi QR code scanner with a wrong Wi-Fi network!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/details/AddDevicePreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v0, p0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isSupportConfiguratorQrCodeScanner(Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "add_device_to_network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/wifi/details/-$$Lambda$AddDevicePreferenceController$O4Vr5ZnezxjC8N10Otd21gQHFos;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/-$$Lambda$AddDevicePreferenceController$O4Vr5ZnezxjC8N10Otd21gQHFos;-><init>(Lcom/android/settings/wifi/details/AddDevicePreferenceController;)V

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public init(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/details/AddDevicePreferenceController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/AddDevicePreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object p0
.end method

.method public synthetic lambda$handlePreferenceTreeClick$0$AddDevicePreferenceController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details/AddDevicePreferenceController;->launchWifiDppConfiguratorQrCodeScanner()V

    return-void
.end method
