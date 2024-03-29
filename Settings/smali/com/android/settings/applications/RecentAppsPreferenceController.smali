.class public Lcom/android/settings/applications/RecentAppsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "RecentAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;


# static fields
.field static final KEY_DIVIDER:Ljava/lang/String; = "recent_apps_divider"


# instance fields
.field mAppEntitiesController:Lcom/android/settingslib/widget/AppEntitiesHeaderController;

.field private final mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field mDivider:Landroidx/preference/Preference;

.field private mHost:Landroidx/fragment/app/Fragment;

.field private final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private mRecentApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field mRecentAppsPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mUserId:I

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RecentAppsPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private createAppEntity(Landroid/app/usage/UsageStats;)Lcom/android/settingslib/widget/AppEntityInfo;
    .locals 8

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v2, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mUserId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v2, Lcom/android/settingslib/widget/AppEntityInfo$Builder;

    invoke-direct {v2}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/widget/AppEntityInfo$Builder;

    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settingslib/widget/AppEntityInfo$Builder;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const/4 p1, 0x0

    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-static {v3, v4, v5, p1, v6}, Lcom/android/settingslib/RestrictedLockUtils;->formatRelativeTime(Landroid/content/Context;DZLandroid/icu/text/RelativeDateTimeFormatter$Style;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settingslib/widget/AppEntityInfo$Builder;

    new-instance p1, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$M3cWnW9MwZL0-3os_mLS9QZCJMw;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$M3cWnW9MwZL0-3os_mLS9QZCJMw;-><init>(Lcom/android/settings/applications/RecentAppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v2, p1}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/AppEntityInfo$Builder;

    invoke-virtual {v2}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->build()Lcom/android/settingslib/widget/AppEntityInfo;

    move-result-object p0

    return-object p0
.end method

.method private displayRecentApps()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    invoke-direct {p0, v2}, Lcom/android/settings/applications/RecentAppsPreferenceController;->createAppEntity(Landroid/app/usage/UsageStats;)Lcom/android/settingslib/widget/AppEntityInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mAppEntitiesController:Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1, v2}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setAppEntity(ILcom/android/settingslib/widget/AppEntityInfo;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private refreshUi()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/RecentAppsPreferenceController;->displayRecentApps()V

    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentAppsPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mDivider:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mDivider:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentAppsPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "recent_apps_divider"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mDivider:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentAppsPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentAppsPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a04ae

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->newInstance(Landroid/content/Context;Landroid/view/View;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    move-result-object p1

    const v0, 0x7f121323

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setHeaderTitleRes(I)Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    new-instance v0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$lSTV08Ev1kIAejEfOXr-6eUBel8;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$lSTV08Ev1kIAejEfOXr-6eUBel8;-><init>(Lcom/android/settings/applications/RecentAppsPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setHeaderDetailsClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mAppEntitiesController:Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$createAppEntity$1$RecentAppsPreferenceController(Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/view/View;)V
    .locals 7

    const-class v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    const v1, 0x7f1201bb

    const/16 v5, 0x3e9

    const/16 v6, 0x2ec

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    return-void
.end method

.method public synthetic lambda$displayPreference$0$RecentAppsPreferenceController(Landroid/view/View;)V
    .locals 0

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const p1, 0x7f1201bb

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x2ec

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public onReloadDataCompleted(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentApps:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/settings/applications/RecentAppsPreferenceController;->refreshUi()V

    new-instance p1, Lcom/android/settings/applications/RecentAppsPreferenceController$1;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p1, p0, v0, v2, v1}, Lcom/android/settings/applications/RecentAppsPreferenceController$1;-><init>(Lcom/android/settings/applications/RecentAppsPreferenceController;Landroid/content/Context;ILandroid/content/pm/PackageManager;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    return-void
.end method
