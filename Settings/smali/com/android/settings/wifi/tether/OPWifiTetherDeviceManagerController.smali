.class public Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "OPWifiTetherDeviceManagerController.java"


# static fields
.field public static final PREF_KEY:Ljava/lang/String; = "connected_device_manager"

.field private static final TAG:Ljava/lang/String; = "OPWifiTetherDeviceManagerController"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 1

    const-string v0, "connected_device_manager"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "com.oneplus.wifiapsettings"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "isAppPakExist = "

    const-string v2, "OPWifiTetherDeviceManagerController"

    invoke-static {v1, v0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline43(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0

    const/16 v4, 0xd

    if-ne p0, v4, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    const-string v4, "wifiStateEnabled = "

    invoke-static {v4, p0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline43(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    :goto_2
    return v3
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "connected_device_manager"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "connected_device_manager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "com.oneplus.wifiapsettings"

    invoke-static {p1, v0}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.oem.intent.action.OPWIFIAP_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Start intent : android.oem.intent.action.OPWIFIAP_SETTINGS fail."

    const-string v0, "OPWifiTetherDeviceManagerController"

    invoke-static {p1, p0, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateDisplay()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    const-string v0, "OPWifiTetherDeviceManagerController"

    const-string v1, "mPreference != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    const-string v2, "available = "

    invoke-static {v2, v1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline43(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method
