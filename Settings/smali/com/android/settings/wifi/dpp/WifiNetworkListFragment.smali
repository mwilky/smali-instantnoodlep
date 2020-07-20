.class public Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiNetworkListFragment.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
.implements Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;
    }
.end annotation


# instance fields
.field private mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mAddPreference:Landroidx/preference/Preference;

.field private mFakeNetworkPreference:Landroidx/preference/Preference;

.field private mIsTest:Z

.field mOnChooseNetworkListener:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAccessPointChanged$0(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->refresh()V

    :cond_0
    return-void
.end method

.method private updateAccessPointPreferences()V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->getAllConfigs(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$tHnl1H-Ezbhr-goOfuT9H8v_fns;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$tHnl1H-Ezbhr-goOfuT9H8v_fns;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$im98oMVseKI8S1PfQ-90XTsRVeE;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$im98oMVseKI8S1PfQ-90XTsRVeE;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$MDDOx8wAL2tgC__F--hp1GKaOuM;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$MDDOx8wAL2tgC__F--hp1GKaOuM;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    new-instance v9, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const v7, 0x7f0803aa

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v9, v1}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v1

    invoke-virtual {v9, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v2, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPointPreference;->refresh()V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAddPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAddPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mIsTest:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mFakeNetworkPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x63b

    return p0
.end method

.method public synthetic lambda$updateAccessPointPreferences$1$WifiNetworkListFragment(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public synthetic lambda$updateAccessPointPreferences$2$WifiNetworkListFragment(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 3

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v1

    :cond_1
    return-object p1
.end method

.method public synthetic lambda$updateAccessPointPreferences$3$WifiNetworkListFragment(Lcom/android/settingslib/wifi/AccessPoint;Lcom/android/settingslib/wifi/AccessPoint;)I
    .locals 0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    if-nez p0, :cond_2

    move-object p0, p1

    :cond_2
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 2

    const-string v0, "WifiNetworkListFragment"

    const-string v1, "onAccessPointChanged (singular) callback initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$0MXyYoxpcuvpYu82f1MtTJJVwJA;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$0MXyYoxpcuvpYu82f1MtTJJVwJA;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAccessPointsChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->updateAccessPointPreferences()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1, v1}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "test"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mIsTest:Z

    :cond_0
    new-instance p1, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$1;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "wifi_config_key"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p3, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p2, p1, p3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onAttach(Landroid/content/Context;)V

    instance-of v0, p1, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mOnChooseNetworkListener:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid context type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onConnectedChanged()V
    .locals 0

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f160120

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "access_points"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mFakeNetworkPreference:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mFakeNetworkPreference:Landroidx/preference/Preference;

    const p2, 0x7f0803aa

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mFakeNetworkPreference:Landroidx/preference/Preference;

    const-string p2, "fake_key"

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mFakeNetworkPreference:Landroidx/preference/Preference;

    const-string p2, "fake network"

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAddPreference:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAddPreference:Landroidx/preference/Preference;

    const p2, 0x7f08019f

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAddPreference:Landroidx/preference/Preference;

    const p2, 0x7f1218be

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    new-instance p1, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mOnChooseNetworkListener:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    return-void
.end method

.method public onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->onLevelChanged()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 9

    instance-of v0, p1, Lcom/android/settingslib/wifi/AccessPointPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mOnChooseNetworkListener:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;->onChooseNetwork(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid access point"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAddPreference:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_3

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1218be

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const-class v0, Lcom/android/settings/wifi/AddNetworkFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mFakeNetworkPreference:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mOnChooseNetworkListener:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;

    if-eqz p0, :cond_4

    new-instance p1, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const-string v3, "WPA"

    const-string v4, "fake network"

    const-string v5, "password"

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    invoke-interface {p0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;->onChooseNetwork(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    :cond_4
    :goto_0
    return v1

    :cond_5
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onWifiStateChanged(I)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->updateAccessPointPreferences()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method
