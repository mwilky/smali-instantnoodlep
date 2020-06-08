.class public Lcom/android/settings/wifi/tether/WifiTetherUpstreamTypePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiTetherUpstreamTypePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final PREF_KEY:Ljava/lang/String; = "wifi_tether_upstream_network_type_select"

.field private static final SOFT_AP_UPSTREAM_NETWORK_TYPE:Ljava/lang/String; = "softap_upstream_network_type"

.field private static final TAG:Ljava/lang/String; = "WifiTetherUpstreamTypePref"

.field private static final UPSTREAM_AUTO:I = 0x0

.field private static final UPSTREAM_CELL:I = 0x2

.field private static final UPSTREAM_WIFI:I = 0x1


# instance fields
.field private mUpstreamTypeEntries:[Ljava/lang/String;

.field private mUpstreamTypeIndex:I

.field private mUpstreamTypeSummaries:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "wifi_tether_upstream_network_type_select"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherUpstreamTypePreferenceController;->updatePreferenceEntries()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherUpstreamTypePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;

    const-string v0, "Upstream type:"

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/tether/WifiTetherUpstreamTypePreferenceController;->mUpstreamTypeIndex:I

    const-string v2, "WifiTetherUpstreamTypePref"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline44(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "softap_upstream_network_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/tether/WifiTetherUpstreamTypePreferenceController;->mUpstreamTypeIndex:I

    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherUpstreamTypePreferenceController;->mUpstreamTypeIndex:I

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->setExistingConfigValue(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherUpstreamTypePreferenceController;->mUpstreamTypeSummaries:[Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/wifi/tether/WifiTetherUpstreamTypePreferenceController;->mUpstreamTypeIndex:I

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportStaSapMode()Z

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

    const-string p0, "wifi_tether_upstream_network_type_select"

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/tether/WifiTetherUpstreamTypePreferenceController;->mUpstreamTypeIndex:I

    const-string p2, "Upstream type preference changed, updating to "

    invoke-static {p2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherUpstreamTypePreferenceController;->mUpstreamTypeIndex:I

    const-string v1, "WifiTetherUpstreamTypePref"

    invoke-static {p2, v0, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline44(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherUpstreamTypePreferenceController;->mUpstreamTypeIndex:I

    const-string v1, "softap_upstream_network_type"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherUpstreamTypePreferenceController;->mUpstreamTypeSummaries:[Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/wifi/tether/WifiTetherUpstreamTypePreferenceController;->mUpstreamTypeIndex:I

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method

.method updatePreferenceEntries()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherUpstreamTypePreferenceController;->mUpstreamTypeEntries:[Ljava/lang/String;

    const v1, 0x7f030136

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherUpstreamTypePreferenceController;->mUpstreamTypeSummaries:[Ljava/lang/String;

    return-void
.end method
