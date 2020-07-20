.class public Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherApChannelPreferenceController.java"


# static fields
.field private static final PREF_KEY:Ljava/lang/String; = "wifi_tether_ap_channel"

.field private static final TAG:Ljava/lang/String; = "WifiTetherApChannelPref"


# instance fields
.field private mBandEntries:[Ljava/lang/String;

.field private mBandIndex:I

.field private mBandSummaries:[Ljava/lang/String;

.field private mChannelIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 1

    const-string v0, "wifi_tether_ap_channel"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->mBandIndex:I

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput p1, p0, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->mBandIndex:I

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput p1, p0, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->mChannelIndex:I

    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->updatePreferenceEntries()V

    return-void
.end method

.method private updatePreferenceEntries()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->mBandIndex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f030134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->mBandEntries:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->mBandSummaries:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->mChannelIndex:I

    goto :goto_0

    :cond_0
    const v1, 0x7f030133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->mBandEntries:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->mBandSummaries:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->getChannelIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->mChannelIndex:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public getChannelIndex()I
    .locals 0

    iget p0, p0, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->mChannelIndex:I

    return p0
.end method

.method getConfigSummary()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->mBandIndex:I

    const v1, 0x7f1218cd

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->getChannelIndex()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->getChannelIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wifi_tether_ap_channel"

    return-object p0
.end method

.method public onBandIndexChange(I)V
    .locals 2

    iput p1, p0, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->mBandIndex:I

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/ListPreference;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->getChannelIndex()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->updateDisplay()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->mChannelIndex:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    const/4 p0, 0x1

    return p0
.end method

.method public updateDisplay()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->updatePreferenceEntries()V

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->mBandSummaries:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->mBandEntries:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->mBandIndex:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApChannelPreferenceController;->getChannelIndex()I

    move-result p0

    iput p0, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    :cond_1
    :goto_0
    return-void
.end method
