.class public Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "AppOpsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/AppOpsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mLastConfig:Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

.field mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

.field final mState:Lcom/android/settings/applications/appops/AppOpsState;

.field final mTemplate:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appops/AppOpsState;Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

    invoke-direct {p1}, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mLastConfig:Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

    iput-object p2, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    iput-object p3, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mTemplate:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isReset()Z

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public loadInBackground()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    iget-object p0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mTemplate:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    sget-object v1, Lcom/android/settings/applications/appops/AppOpsState;->LABEL_COMPARATOR:Ljava/util/Comparator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/android/settings/applications/appops/AppOpsState;->buildState(Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;ILjava/lang/String;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    return-void
.end method

.method protected onReset()V
    .locals 3

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 7

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onContentChanged()V

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isReset()Z

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, v0}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;-><init>(Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;)V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mLastConfig:Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v2

    iget v3, v0, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;->mLastDensity:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v6

    :goto_0
    if-nez v3, :cond_4

    and-int/lit16 v2, v2, 0x304

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v0, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;->mLastDensity:I

    :goto_2
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    :cond_6
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    return-void
.end method
