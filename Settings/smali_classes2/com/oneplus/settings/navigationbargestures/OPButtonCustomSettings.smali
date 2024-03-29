.class public Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPButtonCustomSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mBackDoubleTapAction:Landroidx/preference/ListPreference;

.field private mBackLongPressAction:Landroidx/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mHideNavkeys:Landroidx/preference/SwitchPreference;

.field private mHomeDoubleTapAction:Landroidx/preference/ListPreference;

.field private mHomeLongPressAction:Landroidx/preference/ListPreference;

.field private mMenuDoubleTapAction:Landroidx/preference/ListPreference;

.field private mMenuLongPressAction:Landroidx/preference/ListPreference;

.field private mSwapNavkeys:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    return v0
.end method

.method private handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_0
    instance-of p1, p1, Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_4

    instance-of p1, p2, Ljava/lang/Boolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-static {p0, p3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    :goto_2
    return-void
.end method

.method private initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-object p1
.end method

.method private static isSupportHardwareKeys()Z
    .locals 2

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f160089

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    const-string p1, "buttons_swap_navkeys"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "hide_navkeys"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    iget-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "OP_FEATURE_HIDE_NAVBAR"

    invoke-static {p1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_0
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    if-ne p1, v4, :cond_3

    const-string p1, "oem_acc_key_define"

    invoke-direct {p0, v4, p2, p1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    const-string p0, "swap_button"

    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return v2

    :cond_3
    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    if-ne p1, v4, :cond_5

    const-string p1, "op_gesture_button_enabled"

    invoke-direct {p0, v4, p2, p1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "op_navigation_bar_type"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_4

    const/4 p0, 0x4

    const-string p1, "nav&gestures_settings"

    invoke-static {p1, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    :cond_4
    return v2

    :cond_5
    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_1

    :cond_6
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_9

    const-string p1, "key_home_long_press_action"

    invoke-direct {p0, v0, p2, p1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    const-string p1, "11"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoQuickPaySettingsPage(Landroid/content/Context;)V

    :cond_8
    return v2

    :cond_9
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_a

    const-string p1, "key_home_double_tap_action"

    invoke-direct {p0, v0, p2, p1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_a
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_b

    const-string p1, "key_app_switch_long_press_action"

    invoke-direct {p0, v0, p2, p1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_b
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_c

    const-string p1, "key_app_switch_double_tap_action"

    invoke-direct {p0, v0, p2, p1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_c
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_d

    const-string p1, "key_back_long_press_action"

    invoke-direct {p0, v0, p2, p1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_d
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_e

    const-string p1, "key_back_double_tap_action"

    invoke-direct {p0, v0, p2, p1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_e
    return v1
.end method

.method public onResume()V
    .locals 8

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0x10e006d

    const-string v2, "key_home_long_press_action"

    invoke-static {p0, v1, v0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline2(Landroidx/fragment/app/Fragment;ILandroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const-string v2, "hardware_keys_home_long_press"

    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x10e0051

    const-string v2, "key_home_double_tap_action"

    invoke-static {p0, v1, v0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline2(Landroidx/fragment/app/Fragment;ILandroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const-string v2, "hardware_keys_home_double_tap"

    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    const v1, 0x5090016

    const-string v2, "key_app_switch_long_press_action"

    invoke-static {p0, v1, v0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline2(Landroidx/fragment/app/Fragment;ILandroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const-string v2, "hardware_keys_menu_long_press"

    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x509000b

    const-string v2, "key_app_switch_double_tap_action"

    invoke-static {p0, v1, v0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline2(Landroidx/fragment/app/Fragment;ILandroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const-string v2, "hardware_keys_menu_double_tap"

    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    const v1, 0x5090017

    const-string v2, "key_back_long_press_action"

    invoke-static {p0, v1, v0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline2(Landroidx/fragment/app/Fragment;ILandroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const-string v2, "hardware_keys_back_long_press"

    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x509000c

    const-string v2, "key_back_double_tap_action"

    invoke-static {p0, v1, v0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline2(Landroidx/fragment/app/Fragment;ILandroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const-string v1, "hardware_keys_back_double_tap"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    const v1, 0x7f03009c

    const v2, 0x7f0300a0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.google.android.googlequicksearchbox"

    const/16 v6, 0x2000

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move v0, v4

    :goto_0
    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f03008a

    const v2, 0x7f030086

    const v5, 0x7f0300a1

    const v6, 0x7f03009d

    if-nez v0, :cond_7

    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v7, 0x7f030087

    invoke-virtual {v0, v7}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v7, 0x7f03008b

    invoke-virtual {v0, v7}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v7, 0x7f03009e

    invoke-virtual {v0, v7}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v7, 0x7f0300a2

    invoke-virtual {v0, v7}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :goto_1
    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f030085

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f030089

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f030088

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f03008c

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f03009f

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f0300a3

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :goto_2
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->methodIsMigrated(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f1207d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_key_define"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    goto :goto_3

    :cond_f
    move v0, v4

    :goto_3
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_navigation_bar_type"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v5, 0x2

    if-ne v5, v1, :cond_10

    move v1, v3

    goto :goto_4

    :cond_10
    move v1, v4

    :goto_4
    if-eqz v1, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v3, v0, :cond_12

    move v0, v3

    goto :goto_6

    :cond_12
    :goto_5
    move v0, v4

    :goto_6
    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_7

    :cond_13
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_7
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_gesture_button_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_15

    if-eqz v0, :cond_14

    goto :goto_8

    :cond_14
    move v3, v4

    :goto_8
    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_15
    return-void
.end method
