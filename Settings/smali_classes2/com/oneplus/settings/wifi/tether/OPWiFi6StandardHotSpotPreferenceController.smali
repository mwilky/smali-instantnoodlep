.class public Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "OPWiFi6StandardHotSpotPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field public static final KEY_WIFI_6_STANDARD_HOTSPOT_TITLE:Ljava/lang/String; = "wifi_6_standard_hotspot_title"


# instance fields
.field enableSwitch:Landroidx/preference/SwitchPreference;

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 1

    const-string v0, "wifi_6_standard_hotspot_title"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;)Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private setSoftApEnable11AX(Landroidx/preference/SwitchPreference;)V
    .locals 3

    new-instance v0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController$1;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController$1;-><init>(Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;Landroidx/preference/SwitchPreference;)V

    new-instance v1, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController$2;-><init>(Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;Landroidx/preference/SwitchPreference;)V

    iget-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;->mDialog:Landroid/app/AlertDialog;

    if-nez p1, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1210e2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x7f1210e0

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x7f1210df

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8250Products()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wifi_6_standard_hotspot_title"

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;->setSoftApEnable11AX(Landroidx/preference/SwitchPreference;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "softap_enable_11ax"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "wifi6"

    const-string p2, "status"

    const-string v0, "off"

    invoke-static {p1, p2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateDisplay()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;->enableSwitch:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "softap_enable_11ax"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;->enableSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
