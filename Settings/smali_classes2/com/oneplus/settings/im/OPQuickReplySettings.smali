.class public Lcom/oneplus/settings/im/OPQuickReplySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPQuickReplySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultQuickReplyAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableQuickReply:Landroidx/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mNoSupportedApps:Landroidx/preference/Preference;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

.field private mSupportedApps:Landroidx/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/im/OPQuickReplySettings$2;

    invoke-direct {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/im/OPQuickReplySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mDefaultQuickReplyAppList:Ljava/util/List;

    new-instance v0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/im/OPQuickReplySettings$1;-><init>(Lcom/oneplus/settings/im/OPQuickReplySettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/im/OPQuickReplySettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/PreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mSupportedApps:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/im/OPQuickReplySettings;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mDefaultQuickReplyAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroid/content/ContentResolver;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroid/content/ContentResolver;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mNoSupportedApps:Landroidx/preference/Preference;

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    new-instance p1, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p1, v0, v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    :cond_0
    const p1, 0x7f1600b6

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "oneplus_surpported_apps"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mSupportedApps:Landroidx/preference/PreferenceCategory;

    const-string p1, "oneplus_no_surpported_apps"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mNoSupportedApps:Landroidx/preference/Preference;

    const-string p1, "key_enable_quick_reply"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mEnableQuickReply:Landroidx/preference/SwitchPreference;

    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mEnableQuickReply:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "key_quick_reply_instructions"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    iput-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setType(I)V

    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    const-string v0, "op_quick_reply_guide_light.json"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setAnimationWhiteResources([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    const-string v0, "op_quick_reply_guide_dark.json"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setAnimationDarkResources([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f120f29

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setTitleResources([I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    new-array v0, v0, [I

    const v1, 0x7f120f2b

    aput v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setDescriptionIdResources([I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    new-array v0, v0, [I

    const v1, 0x7f120f2a

    aput v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setDescriptionIdResources([I)V

    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-virtual {p1, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setNeedLoadWorkProfileApps(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object p0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object p0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->releaseAnim()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    iget-object p0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->stopAnim()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mEnableQuickReply:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "op_quickreply_ime_adjust"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickReplyKeyboardStatus()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "op_quickreply_ime_adjust"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mEnableQuickReply:Landroidx/preference/SwitchPreference;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->startAnim()V

    :cond_1
    return-void
.end method
