.class public Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SubscribedAccessPointsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroid/net/wifi/WifiManager$ActionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SubscribedAPPrefCtrl"


# instance fields
.field private final mChildrenCache:Lcom/android/settings/utils/PreferenceGroupChildrenCache;

.field private mHost:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private final mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p2, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance p1, Lcom/android/settings/utils/PreferenceGroupChildrenCache;

    invoke-direct {p1}, Lcom/android/settings/utils/PreferenceGroupChildrenCache;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mChildrenCache:Lcom/android/settings/utils/PreferenceGroupChildrenCache;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->refreshSubscribedAccessPoints()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$postRefreshSubscribedAccessPoints$0$SubscribedAccessPointsPreferenceController()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->refreshSubscribedAccessPoints()V

    return-void
.end method

.method public onFailure(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->postRefreshSubscribedAccessPoints()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mHost:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->showWifiPage(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->refreshSubscribedAccessPoints()V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method

.method public postRefreshSubscribedAccessPoints()V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SubscribedAccessPointsPreferenceController$miv4h3pTz3Xne3x0U_ExjYVzHzM;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SubscribedAccessPointsPreferenceController$miv4h3pTz3Xne3x0U_ExjYVzHzM;-><init>(Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method refreshSubscribedAccessPoints()V
    .locals 12

    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const-string v1, "SubscribedAPPrefCtrl"

    if-nez v0, :cond_0

    const-string p0, "PreferenceGroup is null, skipping."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mHost:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->isSubscriptionsFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->getAllConfigs(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/android/settings/wifi/savedaccesspoints/SavedNetworkComparator;->INSTANCE:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v4, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mChildrenCache:Lcom/android/settings/utils/PreferenceGroupChildrenCache;

    iget-object v5, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v5}, Lcom/android/settings/utils/PreferenceGroupChildrenCache;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    iget-object v4, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v6, v2

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_4

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mChildrenCache:Lcom/android/settings/utils/PreferenceGroupChildrenCache;

    invoke-virtual {v10, v9}, Lcom/android/settings/utils/PreferenceGroupChildrenCache;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/wifi/AccessPointPreference;

    if-nez v10, :cond_3

    new-instance v10, Lcom/android/settingslib/wifi/AccessPointPreference;

    iget-object v11, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-direct {v10, v8, v0, v11, v7}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;Z)V

    invoke-virtual {v10, v9}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v7, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v7, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setOrder(I)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mChildrenCache:Lcom/android/settings/utils/PreferenceGroupChildrenCache;

    iget-object v3, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v3}, Lcom/android/settings/utils/PreferenceGroupChildrenCache;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v0, v7, :cond_5

    const-string v0, "Subscribed networks activity loaded, but there are no subscribed networks!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v7}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_2
    return-void
.end method

.method public setHost(Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mHost:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    return-object p0
.end method
