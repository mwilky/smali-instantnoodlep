.class public Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPWifiTetherCustomAutoTurnOffPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CUSTOM_AUTO_TURN_OFF_10_MIN_VALUE:I = 0x2

.field private static final CUSTOM_AUTO_TURN_OFF_15_MIN_VALUE:I = 0x3

.field private static final CUSTOM_AUTO_TURN_OFF_20_MIN_VALUE:I = 0x4

.field private static final CUSTOM_AUTO_TURN_OFF_30_MIN_VALUE:I = 0x6

.field private static final CUSTOM_AUTO_TURN_OFF_5_MIN_VALUE:I = 0x1

.field private static final CUSTOM_AUTO_TURN_OFF_60_MIN_VALUE:I = 0xc

.field private static final CUSTOM_AUTO_TURN_OFF_ALWAYS_VALUE:I = 0x0

.field private static final PREF_KEY:Ljava/lang/String; = "wifi_tether_custom_auto_turn_off"


# instance fields
.field private final mCustomEntries:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "wifi_tether_custom_auto_turn_off"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f030159

    goto :goto_0

    :cond_0
    const v0, 0x7f030152

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    return-void
.end method

.method private getSummaryForDisplay(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_6

    if-ne p1, v3, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v2

    return-object p0

    :cond_0
    if-ne p1, v4, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v3

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v4

    return-object p0

    :cond_2
    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    iget-object p0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    :cond_3
    const/16 v1, 0xc

    if-ne p1, v1, :cond_4

    iget-object p0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_4
    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    const/4 p1, 0x5

    aget-object p0, p0, p1

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v4

    return-object p0

    :cond_6
    if-ne p1, v3, :cond_7

    iget-object p0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v2

    return-object p0

    :cond_7
    if-ne p1, v4, :cond_8

    iget-object p0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v3

    return-object p0

    :cond_8
    if-ne p1, v1, :cond_9

    iget-object p0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v4

    return-object p0

    :cond_9
    if-nez p1, :cond_a

    iget-object p0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    :cond_a
    iget-object p0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v2

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f03015a

    goto :goto_0

    :cond_0
    const v1, 0x7f030153

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    :goto_1
    const-string v2, "soft_ap_timeout_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->getSummaryForDisplay(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wifi_tether_custom_auto_turn_off"

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->getSummaryForDisplay(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "soft_ap_timeout_enabled"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method
