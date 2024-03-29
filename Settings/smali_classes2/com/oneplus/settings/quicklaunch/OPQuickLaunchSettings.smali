.class public Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPQuickLaunchSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mActivity:Lcom/android/settings/SettingsActivity;

.field private mDefaultQuickLaunchAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableQuickLaunch:Landroidx/preference/SwitchPreference;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHasFingerprint:Z

.field private mPayWaysName:[Ljava/lang/String;

.field private mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

.field private mQuickLaunchPreferece:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->MY_USER_ID:I

    new-instance v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    return-void
.end method

.method private checkFingerPrint()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v1, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mHasFingerprint:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mHasFingerprint:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public gotoFingerprintEnrollIntroduction(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->checkFingerPrint()V

    iget-boolean p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mHasFingerprint:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "op_quickpay_enable"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    iput-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const v1, 0x7f1600b4

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v1, "op_quick_launcher_settings"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchPreferece:Landroidx/preference/Preference;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportQuickLaunch()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchPreferece:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    const-string v1, "key_enable_quick_launch"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mEnableQuickLaunch:Landroidx/preference/SwitchPreference;

    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mEnableQuickLaunch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "key_quick_launch_instructions"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    iput-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    const-string v3, "op_quick_launch_guide_active_white.json"

    const-string v4, "op_quick_launch_guide_exit_white.json"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setAnimationWhiteResources([Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    const-string v3, "op_quick_launch_guide_active_dark.json"

    const-string v4, "op_quick_launch_guide_exit_dark.json"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setAnimationDarkResources([Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setTitleResources([I)V

    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setDescriptionIdResources([I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "op_quick_launcher_edited"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    const/4 v6, 0x4

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v2, "net.one97.paytm"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/oneplus/settings/better/OPAppModel;

    iget-object v7, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v9, v7, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v8, "net.one97.paytm"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v6, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v6, v2}, Lcom/oneplus/settings/utils/OPUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v7, "voice_shortcut"

    invoke-static {v6, v2, v7, v1}, Lcom/oneplus/settings/utils/OPUtils;->loadShortcutByPackageNameAndShortcutId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v1

    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v2, "com.oneplus.note"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v7, "new_note"

    invoke-static {v6, v2, v7, v1}, Lcom/oneplus/settings/utils/OPUtils;->loadShortcutByPackageNameAndShortcutId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v1

    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v2, "com.google.android.music"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v7, "music-mylibrary"

    invoke-static {v6, v2, v7, v1}, Lcom/oneplus/settings/utils/OPUtils;->loadShortcutByPackageNameAndShortcutId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v1

    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v2, "com.google.android.calendar"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v7, "launcher_shortcuts_shortcut_new_event"

    invoke-static {v6, v2, v7, v1}, Lcom/oneplus/settings/utils/OPUtils;->loadShortcutByPackageNameAndShortcutId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v1

    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/settings/better/OPAppModel;

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {v6}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v8

    if-nez v8, :cond_8

    invoke-static {v6}, Lcom/oneplus/settings/utils/OPUtils;->getQuickLaunchAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_8
    invoke-virtual {v6}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v8

    if-ne v8, v5, :cond_9

    invoke-static {v6}, Lcom/oneplus/settings/utils/OPUtils;->getQuickLaunchShortcutsString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_9
    invoke-virtual {v6}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v8

    if-ne v8, v3, :cond_a

    invoke-static {v6}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v7

    :cond_a
    :goto_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/settings/utils/OPUtils;->saveQuickLaunchStrings(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v7, "com.tencent.mm"

    invoke-static {v1, v7}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v7, 0x3

    if-eqz v1, :cond_c

    new-instance v1, Lcom/oneplus/settings/better/OPAppModel;

    iget-object v8, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v10, v8, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x0

    const-string v9, "com.tencent.mm"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v8, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v8, v2}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Lcom/oneplus/settings/better/OPAppModel;

    iget-object v9, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v15, v9, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x0

    const-string v14, "com.tencent.mm"

    move-object v13, v8

    invoke-direct/range {v13 .. v18}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v8, v3}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v9, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v9, v5}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v15, Lcom/oneplus/settings/better/OPAppModel;

    iget-object v9, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v11, v9, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const-string v10, "com.tencent.mm"

    move-object v9, v15

    move/from16 v13, v19

    move/from16 v14, v20

    invoke-direct/range {v9 .. v14}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v15, v7}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v9, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v9, v2}, Lcom/oneplus/settings/utils/OPUtils;->getQuickMiniProgrameconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v2, "com.eg.android.AlipayGphone"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/oneplus/settings/better/OPAppModel;

    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v10, v2, v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v9, "com.eg.android.AlipayGphone"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/oneplus/settings/better/OPAppModel;

    iget-object v8, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v14, v8, v6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const-string v13, "com.eg.android.AlipayGphone"

    move-object v12, v2

    invoke-direct/range {v12 .. v17}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v3, v7}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isQuickPayModel(Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_e
    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isWeChatMiniProgrameModel(Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->getQuickMiniProgrameString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_4
    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oneplus/settings/utils/OPUtils;->saveQuickLaunchStrings(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickLaunch()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_11
    return-void

    nop

    :array_0
    .array-data 4
        0x7f120f3c
        0x7f120f3a
    .end array-data

    :array_1
    .array-data 4
        0x7f120f3b
        0x7f120f39
    .end array-data
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->releaseAnim()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->stopAnim()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mEnableQuickLaunch:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mHasFingerprint:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->gotoFingerprintEnrollIntroduction(I)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_quickpay_enable"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickLaunchToggle()V

    return p2

    :cond_1
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceViewClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->checkFingerPrint()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_quickpay_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mHasFingerprint:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mEnableQuickLaunch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mEnableQuickLaunch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mEnableQuickLaunch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->startAnim()V

    :cond_2
    return-void
.end method
