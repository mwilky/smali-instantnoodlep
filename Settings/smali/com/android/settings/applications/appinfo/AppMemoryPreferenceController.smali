.class public Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppMemoryPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;
    }
.end annotation


# static fields
.field private static final KEY_MEMORY:Ljava/lang/String; = "memory"


# instance fields
.field private final mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

.field private mPreference:Landroidx/preference/Preference;

.field private mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

.field private mStatsManager:Lcom/android/settings/applications/ProcStatsData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "memory"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/ProcStatsData;)Lcom/android/settings/applications/ProcStatsData;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/ProcStatsPackageEntry;)Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtils;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "memory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-static {p1, v0, p0}, Lcom/android/settings/applications/ProcessStatsBase;->launchMemoryDetail(Lcom/android/settings/SettingsActivity;Lcom/android/settings/applications/ProcStatsData$MemInfo;Lcom/android/settings/applications/ProcStatsPackageEntry;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;-><init>(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$1;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
