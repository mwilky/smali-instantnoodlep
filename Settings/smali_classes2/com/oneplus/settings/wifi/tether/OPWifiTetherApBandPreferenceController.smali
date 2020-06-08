.class public Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "OPWifiTetherApBandPreferenceController.java"


# static fields
.field public static final BAND_VALUES:[Ljava/lang/String;

.field private static final PREF_KEY:Ljava/lang/String; = "wifi_tether_network_ap_band_single_select"

.field private static final TAG:Ljava/lang/String; = "OPWifiTetherApBandPref"


# instance fields
.field private final mBandEntries:[Ljava/lang/String;

.field private mBandIndex:I

.field private final mBandSummaries:[Ljava/lang/String;

.field private mNewBandIndex:I

.field onWarningDialogCLickListner:Landroid/content/DialogInterface$OnClickListener;

.field private preference:Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->BAND_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 1

    const-string v0, "wifi_tether_network_ap_band_single_select"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Ljava/lang/String;)V

    new-instance p1, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController$1;-><init>(Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;)V

    iput-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->onWarningDialogCLickListner:Landroid/content/DialogInterface$OnClickListener;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f03012c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandEntries:[Ljava/lang/String;

    const p2, 0x7f03012f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mNewBandIndex:I

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;)Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->preference:Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;)Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    return-object p0
.end method

.method private is5GhzBandSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    invoke-static {}, Landroidx/transition/R$id;->isSupportDualBand()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->getAvailabilityStatus()I

    move-result p0

    return p0
.end method

.method public getBandIndex()I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    return p0
.end method

.method getConfigSummary()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/icu/text/ListFormatter;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wifi_tether_network_ap_band_single_select"

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getHotspotConfiguratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Preference change"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mNewBandIndex:I

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f12138c

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f121805

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    iget-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->onWarningDialogCLickListner:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->onWarningDialogCLickListner:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    const-string p2, "Band preference changed, updating band index to "

    invoke-static {p2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    const-string v1, "OPWifiTetherApBandPref"

    invoke-static {p2, v0, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline44(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateDisplay()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    const-string v2, "OPWifiTetherApBandPref"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iput v3, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    const-string v4, "Updating band index to 0 because no config"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v4, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    const-string v4, "Updating band index to "

    invoke-static {v4}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-static {v4, v5, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline44(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iget-object v4, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v4, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    const-string v4, "5Ghz not supported, updating band index to "

    invoke-static {v4}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-static {v4, v5, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline44(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v2, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    iput-object v2, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->preference:Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    iget v2, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    iget-object v4, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandEntries:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_2

    iput v1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->preference:Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->preference:Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->preference:Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    const v0, 0x7f1218b3

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->preference:Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->setExistingConfigValue(I)V

    iget-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->preference:Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method
