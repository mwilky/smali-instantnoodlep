.class public Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;
.super Lcom/android/settings/widget/EmptyTextSettings;
.source "PremiumSmsAccess.java"

# interfaces
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$1;

    invoke-direct {v0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/EmptyTextSettings;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object p0
.end method

.method private updatePrefs(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f121272

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/EmptyTextSettings;->setEmptyText(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;-><init>(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/oneplus/settings/widget/OPFooterPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/oneplus/settings/widget/OPFooterPreference;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121273

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x184

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1600dd

    return p0
.end method

.method logSpecialPermissionChange(ILjava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x30c

    goto :goto_0

    :cond_1
    const/16 v0, 0x30b

    goto :goto_0

    :cond_2
    const/16 v0, 0x30a

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getMetricsCategory()I

    move-result v4

    move-object v5, p2

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    new-instance p1, Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, v0, v1, p0}, Lcom/android/settings/applications/AppStateSmsPremBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateBaseBridge;->release()V

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    sget-object v1, Lcom/android/settings/applications/AppStateSmsPremBridge;->FILTER_APP_PREMIUM_SMS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->updatePrefs(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateBaseBridge;->pause()V

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;->access$000(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->logSpecialPermissionChange(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-static {p1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;->access$000(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/AppStateSmsPremBridge;->setSmsState(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->updatePrefs(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->resume()V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    return-void
.end method
