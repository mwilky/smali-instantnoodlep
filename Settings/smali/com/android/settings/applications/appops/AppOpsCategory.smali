.class public Lcom/android/settings/applications/appops/AppOpsCategory;
.super Landroidx/fragment/app/ListFragment;
.source "AppOpsCategory.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;,
        Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;,
        Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;,
        Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/ListFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

.field mState:Lcom/android/settings/applications/appops/AppOpsState;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;)V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "template"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "No applications"

    invoke-virtual {p0, p1}, Landroidx/fragment/app/ListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    new-instance p1, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appops/AppOpsState;)V

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    iget-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/ListFragment;->setListShown(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/settings/applications/appops/AppOpsState;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/applications/appops/AppOpsState;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "template"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    invoke-direct {p2, v0, p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appops/AppOpsState;Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;)V

    return-object p2
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    iget-object p1, p1, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    if-eqz p1, :cond_1

    const p3, 0x7f0a04ff

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p3

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setChecked(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object p5

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p2, p4

    :goto_0
    iget-object p0, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    iget-object p0, p0, Lcom/android/settings/applications/appops/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p5}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result p3

    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    iget-object p5, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p3, p4, p5, p2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->overridePrimaryOpMode(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/appops/AppOpsCategory;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    iput-object p2, p1, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Landroidx/fragment/app/ListFragment;->setListShown(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/fragment/app/ListFragment;->setListShownNoAnimation(Z)V

    :goto_0
    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
