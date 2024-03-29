.class public Lcom/android/settings/applications/AppAndNotificationDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AppAndNotificationDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAllAppsInfoPreferenceController:Lcom/android/settings/applications/AllAppsInfoPreferenceController;

.field private mRecentAppStatsMixin:Lcom/android/settings/applications/RecentAppStatsMixin;

.field private mRecentAppsPreferenceController:Lcom/android/settings/applications/RecentAppsPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/applications/OPDataUsageControlPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/OPDataUsageControlPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;

    const-string v2, "app_and_notif_cell_broadcast_settings"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const p0, 0x7f120809

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AppAndNotifDashboard"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2ec

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f160015

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->setSession(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    :cond_0
    new-instance v0, Lcom/android/settings/applications/RecentAppStatsMixin;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/settings/applications/RecentAppStatsMixin;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mRecentAppStatsMixin:Lcom/android/settings/applications/RecentAppStatsMixin;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mRecentAppStatsMixin:Lcom/android/settings/applications/RecentAppStatsMixin;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mRecentAppStatsMixin:Lcom/android/settings/applications/RecentAppStatsMixin;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/RecentAppStatsMixin;->addListener(Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;)V

    const-class p1, Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/RecentAppsPreferenceController;

    iput-object p1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mRecentAppsPreferenceController:Lcom/android/settings/applications/RecentAppsPreferenceController;

    iget-object p1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mRecentAppsPreferenceController:Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/RecentAppsPreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    iget-object p1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mRecentAppStatsMixin:Lcom/android/settings/applications/RecentAppStatsMixin;

    iget-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mRecentAppsPreferenceController:Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/RecentAppStatsMixin;->addListener(Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;)V

    const-class p1, Lcom/android/settings/applications/AllAppsInfoPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/AllAppsInfoPreferenceController;

    iput-object p1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mAllAppsInfoPreferenceController:Lcom/android/settings/applications/AllAppsInfoPreferenceController;

    iget-object p1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mRecentAppStatsMixin:Lcom/android/settings/applications/RecentAppStatsMixin;

    iget-object p0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mAllAppsInfoPreferenceController:Lcom/android/settings/applications/AllAppsInfoPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/RecentAppStatsMixin;->addListener(Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "manage_perms"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-boolean v0, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "com.oneplus.permissioncontroller.action.OPPERMISSION"

    invoke-static {p0, v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onReloadDataCompleted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
