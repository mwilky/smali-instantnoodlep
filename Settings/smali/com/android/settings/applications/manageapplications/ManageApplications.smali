.class public Lcom/android/settings/applications/manageapplications/ManageApplications;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settings/applications/UninstallAppsBackend$PackageForUninstallCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;,
        Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;,
        Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/core/InstrumentedFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/internal/os/BatteryStatsHelper;",
        ">;",
        "Lcom/android/settings/applications/UninstallAppsBackend$PackageForUninstallCallback;"
    }
.end annotation


# static fields
.field public static final LIST_TYPES_WITH_INSTANT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private failedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllAppsSelectedForUninstall:Z

.field private mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mCurrentNotificationsSentState:Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mCurrentUid:I

.field private mEmptyView:Landroid/view/View;

.field mExpandSearch:Z

.field private mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

.field mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mFilterType:I

.field private mInflater:Landroid/view/MenuInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mIsWorkOnly:Z

.field private mListContainer:Landroid/view/View;

.field public mListType:I

.field private mLoadingContainer:Landroid/view/View;

.field private mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mOptionsMenu:Landroid/view/Menu;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

.field private mRootView:Landroid/view/View;

.field private mSearchView:Lcom/oneplus/lib/widget/SearchView;

.field private mSelectAll:Landroid/view/MenuItem;

.field private mSelectedCountTextView:Landroid/widget/TextView;

.field private mShowSystem:Z

.field mSortOrder:I

.field mSpinnerHeader:Landroid/view/View;

.field private mStorageType:I

.field private mUninstallAppsBackend:Lcom/android/settings/applications/UninstallAppsBackend;

.field private mUninstallMode:Z

.field private mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field private mUserManager:Landroid/os/UserManager;

.field private mVolumeUuid:Ljava/lang/String;

.field private mWorkUserId:I

.field private observer:Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;

.field private successfullyUninstalledApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->LIST_TYPES_WITH_INSTANT:Ljava/util/Set;

    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$5;

    invoke-direct {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$5;-><init>()V

    sput-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const v0, 0x7f0a068a

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/manageapplications/ManageApplications;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterType:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/AppFilterItem;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/app/usage/IUsageStatsManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/oneplus/lib/widget/SearchView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Lcom/oneplus/lib/widget/SearchView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallMode:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;)Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->observer:Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->failedApps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settings/applications/manageapplications/ManageApplications;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->failedApps:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->successfullyUninstalledApps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/settings/applications/manageapplications/ManageApplications;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->successfullyUninstalledApps:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->uninstallPackagesSilently()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/UninstallAppsBackend;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallAppsBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    return-object p0
.end method

.method static getCompositeFilter(IILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .locals 1

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;

    invoke-direct {v0, p2}, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x3

    if-ne p0, p2, :cond_2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    new-instance p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    new-instance p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_OTHER_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    return-object p0

    :cond_2
    const/16 p1, 0x9

    if-ne p0, p1, :cond_3

    new-instance p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-object p0

    :cond_3
    const/16 p1, 0xa

    if-ne p0, p1, :cond_4

    new-instance p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-object p0

    :cond_4
    const/16 p1, 0xb

    if-ne p0, p1, :cond_5

    new-instance p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PHOTOS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private declared-synchronized handleAllPickItemChecked()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mAllAppsSelectedForUninstall:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallAppsBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    invoke-virtual {v0}, Lcom/android/settings/applications/UninstallAppsBackend;->removeAll()V

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mAllAppsSelectedForUninstall:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mAllAppsSelectedForUninstall:Z

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$800(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/settings/Utils;->isUninstallablePackage(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallAppsBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/UninstallAppsBackend;->addApp(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSelectAll:Landroid/view/MenuItem;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mAllAppsSelectedForUninstall:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSelectAll:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mAllAppsSelectedForUninstall:Z

    if-eqz v1, :cond_4

    const v1, 0x7f08043d

    goto :goto_3

    :cond_4
    const v1, 0x7f08043e

    :goto_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    :cond_5
    const-string v0, "ManageApplications"

    const-string v1, "togglAllPickIcon: menu item is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateDeleteButtonVisibility()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private makeAllPickItemChecked()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$800(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/settings/Utils;->isUninstallablePackage(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "makeAllPickItemChecked: count = "

    const-string v3, " size = "

    invoke-static {v0, v2, v3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline24(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallAppsBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    invoke-virtual {v3}, Lcom/android/settings/applications/UninstallAppsBackend;->getSize()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ManageApplications"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallAppsBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    invoke-virtual {v0}, Lcom/android/settings/applications/UninstallAppsBackend;->getSize()I

    move-result v0

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallAppsBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    invoke-virtual {v0}, Lcom/android/settings/applications/UninstallAppsBackend;->getSize()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mAllAppsSelectedForUninstall:Z

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mAllAppsSelectedForUninstall:Z

    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSelectAll:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mAllAppsSelectedForUninstall:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSelectAll:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mAllAppsSelectedForUninstall:Z

    if-eqz v1, :cond_3

    const v1, 0x7f08043d

    goto :goto_2

    :cond_3
    const v1, 0x7f08043e

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_4
    const-string v0, "makeAllPickItemChecked: menu item is null"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateDeleteButtonVisibility()V

    return-void
.end method

.method private startAppInfoFragment(Ljava/lang/Class;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v6

    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    return-void
.end method

.method private declared-synchronized uninstallPackagesSilently()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallAppsBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    invoke-virtual {v1}, Lcom/android/settings/applications/UninstallAppsBackend;->getSize()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uninstallPackagesSilently: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallAppsBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/UninstallAppsBackend;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallAppsBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/UninstallAppsBackend;->get(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallAppsBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/UninstallAppsBackend;->remove(I)V

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->observer:Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find package, not deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallAppsBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/UninstallAppsBackend;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string v0, "ManageApplications"

    const-string v1, "No apps to uninstall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateDeleteButtonVisibility()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mAllAppsSelectedForUninstall:Z

    const v1, 0x7f0a03fd

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallAppsBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    invoke-virtual {v0}, Lcom/android/settings/applications/UninstallAppsBackend;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSelectedCountTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallAppsBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    invoke-virtual {v2}, Lcom/android/settings/applications/UninstallAppsBackend;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f12171d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method createHeader()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0569

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x7f0d003c

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    const v3, 0x7f0a0278

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getDefaultFilterType(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v3, 0x9

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->hasMultiAppProfiles(Landroid/os/UserManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_1

    :goto_0
    move v2, v5

    :cond_1
    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    :cond_2
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v2, 0x10

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->disableFilter(I)V

    :cond_3
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v6, 0x5

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v1, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    :cond_4
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v5, 0xe

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->disableFilter(I)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x12

    invoke-virtual {v1, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x13

    invoke-virtual {v1, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    :cond_5
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v5, 0xf

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->disableFilter(I)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x14

    invoke-virtual {v1, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x15

    invoke-virtual {v1, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    :cond_6
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->disableFilter(I)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    :cond_7
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getCompositeFilter(IILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    if-eqz v2, :cond_8

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilter()Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v0

    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    invoke-direct {v2, v1, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v1, v2

    :cond_8
    if-eqz v1, :cond_9

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setCompositeFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    :cond_9
    return-void
.end method

.method getHelpResource()I
    .locals 1

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const v0, 0x7f1207ed

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const p0, 0x7f1207e8

    return p0

    :pswitch_1
    const p0, 0x7f1207f0

    return p0

    :pswitch_2
    const p0, 0x7f1207ee

    return p0

    :pswitch_3
    const p0, 0x7f1207ec

    return p0

    :pswitch_4
    return v0

    :pswitch_5
    const p0, 0x7f1207eb

    return p0

    :pswitch_6
    const p0, 0x7f1207f1

    return p0

    :pswitch_7
    return v0

    :pswitch_8
    const p0, 0x7f1207ea

    return p0

    :pswitch_9
    const p0, 0x7f120835

    return p0

    :pswitch_a
    const p0, 0x7f1207ef

    return p0

    :pswitch_b
    const p0, 0x7f1207f7

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMetricsCategory()I
    .locals 3

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v1, 0xdd

    const/16 v2, 0x41

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    return v2

    :pswitch_2
    const/16 p0, 0x152

    return p0

    :pswitch_3
    const/16 p0, 0x444

    return p0

    :pswitch_4
    const/16 p0, 0x3a7

    return p0

    :pswitch_5
    const/16 p0, 0x346

    return p0

    :pswitch_6
    const/16 p0, 0x328

    return p0

    :pswitch_7
    return v1

    :pswitch_8
    const/16 p0, 0xb8

    return p0

    :pswitch_9
    const/16 p0, 0x5f

    return p0

    :pswitch_a
    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x347

    return p0

    :cond_0
    const/16 p0, 0xb6

    return p0

    :pswitch_b
    const/16 p0, 0x85

    return p0

    :pswitch_c
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method hideUninstallMultipleAppsListMenu()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallMode:Z

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1201bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInflater:Landroid/view/MenuInflater;

    const v1, 0x7f0e0002

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu()V

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne p3, p2, :cond_0

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$200(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-virtual {p1, p2, p0}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    const/4 p2, 0x5

    if-eq p3, p2, :cond_2

    const/4 p2, 0x6

    if-eq p3, p2, :cond_2

    const/4 p2, 0x7

    if-eq p3, p2, :cond_2

    const/16 p2, 0xe

    if-eq p3, p2, :cond_2

    const/16 p2, 0xf

    if-eq p3, p2, :cond_2

    const/16 p2, 0x10

    if-ne p3, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$200(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-virtual {p1, p2, p0}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const-string v0, "onClick: position = "

    const-string v1, "ManageApplications"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline31(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const-string p0, "Cannot find position for child, skipping onClick handling"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getApplicationCount()I

    move-result v0

    if-le v0, p1, :cond_7

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentNotificationsSentState:Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    :cond_2
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const-string v0, "uid"

    const-string v1, "package"

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-class p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const v0, 0x7f1201bb

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_8

    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    new-instance v4, Lcom/oneplus/settings/better/ReadingModeEffectDetail;

    invoke-direct {v4}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v4, p0, v2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p1, Lcom/oneplus/settings/better/ReadingModeEffectDetail;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v6

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v8

    if-ne v8, v0, :cond_3

    move-object p1, v7

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move-object p1, v2

    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v13

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->removeHiddenBatterySippers(Ljava/util/List;)D

    move-result-wide v11

    iget-wide v7, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v9

    invoke-virtual/range {v6 .. v13}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDDI)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "user"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    new-instance v9, Lcom/android/settings/fuelgauge/BatteryEntry;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v9, v3, v2, v1, p1}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iput-object p1, v9, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v8, 0x0

    invoke-static {v0}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;ILcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-static {v5, p1, p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_8

    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    new-instance v4, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;

    invoke-direct {v4}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v4, p0, v2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_4
    const-class p1, Lcom/android/settings/wifi/ChangeWifiStateDetails;

    const v0, 0x7f120434

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto/16 :goto_2

    :pswitch_5
    const-class p1, Lcom/android/settings/applications/AppStorageSettings;

    const v0, 0x7f1215c2

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto/16 :goto_2

    :pswitch_6
    const-class p1, Lcom/android/settings/applications/AppStorageSettings;

    const v0, 0x7f1215bd

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto/16 :goto_2

    :pswitch_7
    const-class p1, Lcom/android/settings/applications/AppStorageSettings;

    const v0, 0x7f12079c

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto/16 :goto_2

    :pswitch_8
    const-class p1, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;

    const v0, 0x7f120881

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto/16 :goto_2

    :pswitch_9
    const-class p1, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;

    const v0, 0x7f121a73

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto/16 :goto_2

    :pswitch_a
    const-class p1, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;

    const v0, 0x7f1211de

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto/16 :goto_2

    :pswitch_b
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    new-instance v4, Lcom/android/settings/fuelgauge/HighPowerDetail;

    invoke-direct {v4}, Lcom/android/settings/fuelgauge/HighPowerDetail;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v4, p0, v2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p1, Lcom/android/settings/fuelgauge/HighPowerDetail;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_c
    const-class p1, Lcom/android/settings/applications/UsageAccessDetails;

    const v0, 0x7f121767

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_2

    :pswitch_d
    const-class p1, Lcom/android/settings/applications/AppStorageSettings;

    const v0, 0x7f1215c4

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_2

    :pswitch_e
    const-class p1, Lcom/android/settings/notification/AppNotificationSettings;

    const v3, 0x7f120bed

    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentNotificationsSentState:Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v4, :cond_6

    iget-object v0, v4, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->instantAppPKG:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v4, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->instantAppPKG:Ljava/lang/String;

    const-string v1, "arg_instant_package_name"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$1100(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/settings/applications/manageapplications/FileViewHolderController;->onClick(Landroidx/fragment/app/Fragment;)V

    :cond_8
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mAllAppsSelectedForUninstall:Z

    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallMode:Z

    new-instance v3, Lcom/android/settings/applications/UninstallAppsBackend;

    invoke-direct {v3}, Lcom/android/settings/applications/UninstallAppsBackend;-><init>()V

    iput-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallAppsBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const v5, 0x7f1201bb

    const-string v6, ":settings:show_fragment_title_resid"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v4, :cond_0

    const-string v7, "classname"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_1

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    :cond_1
    const-class v3, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v8, -0x1

    const v9, 0x7f120844

    const-string v10, "storageType"

    const v11, 0x7f0a068d

    if-eqz v3, :cond_3

    if-eqz v4, :cond_2

    const-string v0, "volumeUuid"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-virtual {v4, v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    :goto_1
    iput v11, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    goto/16 :goto_3

    :cond_3
    const-class v3, Lcom/android/settings/Settings$UsageAccessSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v12, 0x4

    if-eqz v3, :cond_4

    iput v12, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const v6, 0x7f121767

    goto/16 :goto_3

    :cond_4
    const-class v3, Lcom/android/settings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v13, 0xf

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    :cond_5
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v12, v3, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    iput v13, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    :goto_2
    move v6, v9

    goto/16 :goto_3

    :cond_6
    const-class v3, Lcom/android/settings/Settings$OverlaySettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const v6, 0x7f12165d

    goto/16 :goto_3

    :cond_7
    const-class v3, Lcom/android/settings/Settings$WriteSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const v6, 0x7f121a6d

    goto/16 :goto_3

    :cond_8
    const-class v3, Lcom/android/settings/Settings$ManageExternalSourcesActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const v6, 0x7f120881

    goto/16 :goto_3

    :cond_9
    const-class v3, Lcom/android/settings/Settings$GamesStorageActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    iput v11, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    goto/16 :goto_3

    :cond_a
    const-class v3, Lcom/android/settings/Settings$MoviesStorageActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    iput v11, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    goto/16 :goto_3

    :cond_b
    const-class v3, Lcom/android/settings/Settings$PhotosStorageActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    iput v11, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    invoke-virtual {v4, v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    goto/16 :goto_3

    :cond_c
    const-class v3, Lcom/android/settings/Settings$ChangeWifiStateActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const v6, 0x7f120434

    goto/16 :goto_3

    :cond_d
    const-class v3, Lcom/android/settings/Settings$NotificationAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const-string v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    const v0, 0x7f0a068c

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    const v6, 0x7f1201a5

    goto :goto_3

    :cond_e
    const-class v3, Lcom/android/settings/Settings$DisplaySizeAdaptionAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const v6, 0x7f120c56

    goto :goto_3

    :cond_f
    const-class v3, Lcom/android/settings/Settings$ReadingModeAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const v6, 0x7f120f5d

    goto :goto_3

    :cond_10
    const-class v3, Lcom/android/settings/Settings$BgOptimizeAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v3

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v3, v12, v5, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    iput v13, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    goto/16 :goto_2

    :cond_11
    if-ne v6, v8, :cond_12

    move v6, v5

    :cond_12
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    :goto_3
    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getDefaultFilterType(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    if-eqz v4, :cond_13

    const-string v0, "workProfileOnly"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    :cond_13
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    if-eqz v4, :cond_14

    const-string v0, "workId"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    :cond_14
    iput v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mWorkUserId:I

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "expand_search_view"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mExpandSearch:Z

    if-eqz p1, :cond_15

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    const-string v2, "sortOrder"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    const-string v2, "showSystem"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    const/4 v0, 0x2

    const-string v2, "filterType"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterType:I

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mExpandSearch:Z

    :cond_15
    const p1, 0x7f120893

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    new-instance p1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-direct {p1, v1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    if-lez v6, :cond_16

    invoke-virtual {v1, v6}, Landroid/app/Activity;->setTitle(I)V

    :cond_16
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getHelpResource()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInflater:Landroid/view/MenuInflater;

    const v0, 0x7f0e0002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0621

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/lib/widget/SearchView;

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Lcom/oneplus/lib/widget/SearchView;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Lcom/oneplus/lib/widget/SearchView;

    const v0, 0x7f1213ff

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/oneplus/lib/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Lcom/oneplus/lib/widget/SearchView;

    invoke-virtual {p2, p0}, Lcom/oneplus/lib/widget/SearchView;->setOnQueryTextListener(Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;)V

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Lcom/oneplus/lib/widget/SearchView;

    const v0, 0x7f0a062d

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Lcom/oneplus/lib/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060343

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "#44444444"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060341

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "#88888888"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    :goto_0
    iget-boolean p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mExpandSearch:Z

    if-eqz p2, :cond_3

    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSystemAlertWindowEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const p2, 0x7f0d010a

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    return-object p0

    :cond_0
    const v0, 0x7f0d0109

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    const v0, 0x7f0a03ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    const v0, 0x7f0a03c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListContainer:Landroid/view/View;

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    const v3, 0x1020004

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyView:Landroid/view/View;

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListContainer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyView:Landroid/view/View;

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyView:Landroid/view/View;

    instance-of v3, p1, Lcom/oneplus/lib/widget/OPEmptyPageView;

    if-eqz v3, :cond_1

    check-cast p1, Lcom/oneplus/lib/widget/OPEmptyPageView;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPEmptyPageView;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object p1

    const v3, 0x7f120eb9

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyView:Landroid/view/View;

    check-cast p1, Lcom/oneplus/lib/widget/OPEmptyPageView;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPEmptyPageView;->getEmptyImageView()Landroid/widget/ImageView;

    move-result-object p1

    const v3, 0x7f0804ab

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-direct {p1, v3, p0, v4, p3}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/AppFilterItem;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    const-string v3, "hasEntries"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {p1, v3}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$002(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)Z

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    const-string v3, "hasBridge"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {p1, v3}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$102(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)Z

    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mWorkUserId:I

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    :goto_0
    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    if-ne v3, v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    new-instance v5, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;

    new-instance v6, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v6, v3}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {v5, v3, v6, v7, p1}, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setExtraViewController(Lcom/android/settings/applications/manageapplications/FileViewHolderController;)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    new-instance v5, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;

    new-instance v6, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v6, v3}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {v5, v3, v6, v7, p1}, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setExtraViewController(Lcom/android/settings/applications/manageapplications/FileViewHolderController;)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListContainer:Landroid/view/View;

    const v3, 0x7f0a00b5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListContainer:Landroid/view/View;

    const v1, 0x7f0a0698

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-virtual {p1, v3}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->addSpringView(I)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/android/settings/applications/manageapplications/ManageApplications$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$1;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_6
    instance-of p1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v0, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->createHeader()V

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {p1, p3}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {p1, p3}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->getFilter(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setFilter(Lcom/android/settings/applications/manageapplications/AppFilterItem;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->onLoadFinished(Landroidx/loader/content/Loader;Lcom/android/internal/os/BatteryStatsHelper;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallAppsBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/UninstallAppsBackend;->setPackageForUninstallCallback(Lcom/android/settings/applications/UninstallAppsBackend$PackageForUninstallCallback;)V

    iput-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallMode:Z

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->showUninstallMultipleAppsListMenu()V

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateDeleteButtonVisibility()V

    const/16 p1, 0x12

    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return v1

    :sswitch_1
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0

    :sswitch_2
    const/16 p1, 0x11

    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    return v1

    :sswitch_3
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->buildResetDialog()V

    return v1

    :sswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12171c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12171b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$2;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$2;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    const v0, 0x7f12171a

    invoke-virtual {v2, v0, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$3;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$3;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    const v0, 0x7f120113

    invoke-virtual {v2, v0, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->handleAllPickItemChecked()V

    goto :goto_0

    :sswitch_6
    iget-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallMode:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu()V

    :cond_1
    return v1

    :sswitch_7
    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.BACKGROUND_OPTIMIZE_SWITCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "classname"

    const-class v2, Lcom/android/settings/Settings$BgOptimizeSwitchActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object p1, v0

    :catch_1
    const-string p0, "No activity found for "

    const-string v0, "ManageApplications"

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return v1

    :sswitch_8
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v0, 0x2

    if-ne p1, v1, :cond_2

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const v2, 0x7f1204a9

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_2

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a007b -> :sswitch_8
        0x7f0a00e2 -> :sswitch_7
        0x7f0a02fa -> :sswitch_6
        0x7f0a03fc -> :sswitch_5
        0x7f0a03fd -> :sswitch_4
        0x7f0a05e3 -> :sswitch_3
        0x7f0a0666 -> :sswitch_6
        0x7f0a0689 -> :sswitch_2
        0x7f0a068a -> :sswitch_1
        0x7f0a068d -> :sswitch_1
        0x7f0a0783 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPackageAddedForUninstall(Ljava/lang/String;)V
    .locals 2

    const-string v0, "onPackageAddedForUninstall: "

    const-string v1, "ManageApplications"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline40(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->makeAllPickItemChecked()V

    return-void
.end method

.method public onPackageRemovedForUninstall(Ljava/lang/String;)V
    .locals 2

    const-string v0, "onPackageRemovedForUninstall: "

    const-string v1, "ManageApplications"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline40(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->makeAllPickItemChecked()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu()V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->filterSearch(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    const-string v1, "sortOrder"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    const-string v1, "showSystem"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$000(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z

    move-result v0

    const-string v1, "hasEntries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$100(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z

    move-result v0

    const-string v1, "hasBridge"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Lcom/oneplus/lib/widget/SearchView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView;->isIconified()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "expand_search_view"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result v0

    const-string v1, "filterType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateView()V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->resume(I)V

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateLoading()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->pause()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->stop()V

    :cond_1
    return-void
.end method

.method public setHasDisabled(Z)V
    .locals 2

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    return-void
.end method

.method public setHasInstant(Z)V
    .locals 2

    sget-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->LIST_TYPES_WITH_INSTANT:Ljava/util/Set;

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    :cond_0
    return-void
.end method

.method showUninstallMultipleAppsListMenu()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d0155

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const v0, 0x7f0a0641

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/settings/applications/manageapplications/ManageApplications$4;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$4;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0642

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSelectedCountTextView:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInflater:Landroid/view/MenuInflater;

    const v1, 0x7f0e0004

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v1, 0x7f0a03fc

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSelectAll:Landroid/view/MenuItem;

    return-void
.end method

.method updateOptionsMenu()V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "updateOptionsMenu: mListType = "

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSortOrder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    const-string v2, "ManageApplications"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline44(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUninstallMode:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v1, 0x7f0a0689

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result v2

    const/16 v3, 0x11

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    if-eq v2, v1, :cond_2

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_2

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v5

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v1, 0x7f0a007b

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result v0

    const v1, 0x7f0a068d

    const v2, 0x7f0a068a

    const/4 v6, 0x3

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eq v7, v6, :cond_3

    if-eq v7, v3, :cond_3

    if-nez v7, :cond_4

    :cond_3
    iget v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    if-eq v7, v2, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v5

    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eq v2, v6, :cond_5

    if-eq v2, v3, :cond_5

    if-nez v2, :cond_6

    :cond_5
    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    if-eq v2, v1, :cond_6

    move v1, v4

    goto :goto_2

    :cond_6
    move v1, v5

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v7, v6, :cond_8

    iget v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    if-eq v7, v2, :cond_8

    move v2, v4

    goto :goto_3

    :cond_8
    move v2, v5

    :goto_3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v2, v6, :cond_9

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    if-eq v2, v1, :cond_9

    move v1, v4

    goto :goto_4

    :cond_9
    move v1, v5

    :goto_4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_5
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v1, 0x7f0a0666

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    const/4 v7, 0x5

    if-nez v2, :cond_a

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eq v2, v7, :cond_a

    move v2, v4

    goto :goto_6

    :cond_a
    move v2, v5

    :goto_6
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f0a02fa

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    if-eqz v8, :cond_b

    iget v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eq v8, v7, :cond_b

    move v7, v4

    goto :goto_7

    :cond_b
    move v7, v5

    :goto_7
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result v0

    const v7, 0x7f0a05e3

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eqz v8, :cond_d

    if-eq v8, v3, :cond_d

    if-ne v8, v6, :cond_c

    goto :goto_8

    :cond_c
    move v6, v5

    goto :goto_9

    :cond_d
    :goto_8
    move v6, v4

    :goto_9
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_b

    :cond_e
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-nez v6, :cond_f

    move v6, v4

    goto :goto_a

    :cond_f
    move v6, v5

    :goto_a
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_b
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v6, 0x7f0a068c

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v6, 0x7f0a068b

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v6, 0x7f0a00e2

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v8, 0xf

    if-ne v6, v8, :cond_10

    move v6, v4

    goto :goto_c

    :cond_10
    move v6, v5

    :goto_c
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eq v0, v8, :cond_11

    const/16 v6, 0x10

    if-ne v0, v6, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_12
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v1, 0x7f0a0783

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result v1

    if-eqz v1, :cond_13

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eqz p0, :cond_14

    if-ne p0, v3, :cond_13

    goto :goto_d

    :cond_13
    move v4, v5

    :cond_14
    :goto_d
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_e

    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->showUninstallMultipleAppsListMenu()V

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateDeleteButtonVisibility()V

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->makeAllPickItemChecked()V

    :goto_e
    return-void
.end method

.method public updateView()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method
