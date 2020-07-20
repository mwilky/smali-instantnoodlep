.class public Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RecentNotifyingAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final KEY_DIVIDER:Ljava/lang/String; = "all_notifications_divider"

.field static final KEY_SEE_ALL:Ljava/lang/String; = "all_notifications"


# instance fields
.field private final mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/NotifyingApp;",
            ">;"
        }
    .end annotation
.end field

.field private mCal:Ljava/util/Calendar;

.field private mCategory:Landroidx/preference/PreferenceCategory;

.field private mDivider:Landroidx/preference/Preference;

.field private final mHost:Landroidx/fragment/app/Fragment;

.field private final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mSeeAllPref:Landroidx/preference/Preference;

.field private mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field protected mUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Lcom/android/settingslib/applications/ApplicationsState;Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iput-object p6, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    iput-object p5, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iput-object p2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iput-object p3, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUserIds:Ljava/util/List;

    iget-object p1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUserIds:Ljava/util/List;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-static {p4, p1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    const/16 p2, -0x2710

    if-eq p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static getKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "all_notifications"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    const-string v0, "all_notifications_divider"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mDivider:Landroidx/preference/Preference;

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object p1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->refreshUi(Landroid/content/Context;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "recent_notifications_category"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$displayRecentApps$0$RecentNotifyingAppsPreferenceController(Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    iget-object p0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-nez p3, :cond_0

    move p3, p4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    return p4
.end method

.method refreshUi(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->reloadData()V

    iget-object v1, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApps:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/NotifyingApp;

    iget-object v8, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v6}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v9

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    iget-object v11, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v10, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    if-nez v10, :cond_3

    iget-object v10, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v10, v8, v9}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_2

    invoke-static {v9}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    const-string v9, "Not a user visible or instant app, skipping "

    const-string v10, "RecentNotisCtrl"

    invoke-static {v9, v8, v10}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline40(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v8, v4

    goto :goto_1

    :cond_3
    move v8, v7

    :goto_1
    if-nez v8, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v2, :cond_0

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "all_notifications"

    const/4 v5, 0x0

    if-nez v2, :cond_e

    iget-object v2, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    const v6, 0x7f121324

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v2, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mDivider:Landroidx/preference/Preference;

    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v2, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    const v5, 0x7f0801cb

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setIcon(I)V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iget-object v5, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_7

    iget-object v8, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v8, v6}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    check-cast v8, Lcom/android/settings/notification/NotificationAppPreference;

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v5, v4

    :goto_3
    if-ge v4, v3, :cond_d

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/NotifyingApp;

    invoke-virtual {v6}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v6}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v9

    if-nez v9, :cond_8

    move-object/from16 v11, p1

    goto/16 :goto_7

    :cond_8
    invoke-virtual {v6}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v10

    invoke-static {v10, v8}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/notification/NotificationAppPreference;

    if-nez v10, :cond_9

    new-instance v10, Lcom/android/settings/notification/NotificationAppPreference;

    move-object/from16 v11, p1

    invoke-direct {v10, v11}, Lcom/android/settings/notification/NotificationAppPreference;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :cond_9
    move-object/from16 v11, p1

    move v5, v7

    :goto_4
    invoke-virtual {v6}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v12

    invoke-static {v12, v8}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v12, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v10, v12}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v12, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v13, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12, v13}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Lcom/android/settingslib/TwoTargetPreference;->setIconSize(I)V

    iget-object v12, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v6}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v15

    sub-long/2addr v13, v15

    long-to-double v13, v13

    invoke-static {v12, v13, v14, v7}, Lcom/android/settingslib/RestrictedLockUtils;->formatRelativeTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v4}, Landroidx/preference/Preference;->setOrder(I)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v12, "package"

    invoke-virtual {v6, v12, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v13, "uid"

    invoke-virtual {v6, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v12, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v13, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v13, Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v12

    const v13, 0x7f120bed

    invoke-virtual {v12, v13}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v6

    new-instance v12, Landroid/os/UserHandle;

    iget-object v13, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v12}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v6

    const/16 v12, 0x85

    invoke-virtual {v6, v12}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object v6, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v12, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v13, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v12, v13}, Lcom/android/settings/notification/NotificationBackend;->isBlockable(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    invoke-virtual {v10, v6}, Lcom/android/settings/notification/NotificationAppPreference;->setSwitchEnabled(Z)V

    new-instance v6, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$DW6PXwoffjl06zozhNaHcbYkcjI;

    invoke-direct {v6, v0, v8, v9}, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$DW6PXwoffjl06zozhNaHcbYkcjI;-><init>(Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v12, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v8, v12}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v6, v7

    invoke-virtual {v10, v6}, Lcom/android/settings/notification/NotificationAppPreference;->setChecked(Z)V

    const-string v6, "com.oneplus.deskclock"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "com.android.incallui"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "com.google.android.calendar"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "com.oneplus.calendar"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "com.android.dialer"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    iget-object v6, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v8, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v9, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v8, v9}, Lcom/android/settings/notification/NotificationBackend;->isBlockable(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    invoke-virtual {v10, v6}, Lcom/android/settings/notification/NotificationAppPreference;->setSwitchEnabled(Z)V

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v6, 0x0

    invoke-virtual {v10, v6}, Lcom/android/settings/notification/NotificationAppPreference;->setSwitchEnabled(Z)V

    :goto_6
    if-nez v5, :cond_c

    iget-object v5, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_c
    :goto_7
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_d
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    iget-object v3, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_8

    :cond_e
    iget-object v1, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mDivider:Landroidx/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    const v2, 0x7f120bed

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v1, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    :cond_f
    :goto_9
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_10

    iget-object v2, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_9

    :cond_10
    return-void
.end method

.method reloadData()V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApps:Ljava/util/List;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCal:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCal:Ljava/util/Calendar;

    const/4 v1, 0x6

    const/4 v2, -0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUserIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v9, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    iget-object v3, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCal:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move v7, v1

    invoke-interface/range {v2 .. v8}, Landroid/app/usage/IUsageStatsManager;->queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    if-eqz v9, :cond_0

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v3}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    :cond_1
    :goto_2
    invoke-virtual {v9}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v9, v3}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotifyingApp;

    if-nez v4, :cond_2

    new-instance v4, Landroid/service/notification/NotifyingApp;

    invoke-direct {v4}, Landroid/service/notification/NotifyingApp;-><init>()V

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/service/notification/NotifyingApp;->setPackage(Ljava/lang/String;)Landroid/service/notification/NotifyingApp;

    invoke-virtual {v4, v1}, Landroid/service/notification/NotifyingApp;->setUserId(I)Landroid/service/notification/NotifyingApp;

    :cond_2
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/service/notification/NotifyingApp;->setLastNotified(J)Landroid/service/notification/NotifyingApp;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApps:Ljava/util/List;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceControllerMixin;->updateNonIndexableKeys(Ljava/util/List;)V

    const-string p0, "recent_notifications_category"

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "all_notifications_divider"

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->refreshUi(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f121325

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
