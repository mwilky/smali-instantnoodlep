.class public Lcom/oneplus/support/core/fragment/app/FragmentActivity;
.super Lcom/oneplus/support/core/app/ComponentActivity;
.source "FragmentActivity.java"

# interfaces
.implements Lcom/oneplus/support/lifecycle/ViewModelStoreOwner;
.implements Lcom/oneplus/support/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/oneplus/support/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/fragment/app/FragmentActivity$HostCallbacks;,
        Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


# instance fields
.field mCreated:Z

.field final mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field mNextCandidateRequestIndex:I

.field mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mResumed:Z

.field mStartedActivityFromFragment:Z

.field mStartedIntentSenderFromFragment:Z

.field mStopped:Z

.field private mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/support/core/app/ComponentActivity;-><init>()V

    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity$1;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentActivity$HostCallbacks;

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity$HostCallbacks;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentActivity;)V

    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->createController(Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;)Lcom/oneplus/support/core/fragment/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStopped:Z

    return-void
.end method

.method static checkForValidRequestCode(I)V
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can only use lower 16 bits for requestCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static markState(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/lifecycle/Lifecycle$State;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/oneplus/support/core/fragment/app/Fragment;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    invoke-virtual {v3}, Lcom/oneplus/support/lifecycle/Lifecycle;->getCurrentState()Lcom/oneplus/support/lifecycle/Lifecycle$State;

    move-result-object v3

    sget-object v4, Lcom/oneplus/support/lifecycle/Lifecycle$State;->STARTED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    if-eqz v3, :cond_3

    iget-object v1, v2, Lcom/oneplus/support/core/fragment/app/Fragment;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    invoke-virtual {v1, p1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->markState(Lcom/oneplus/support/lifecycle/Lifecycle$State;)V

    move v1, v4

    :cond_3
    iget-object v2, v2, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    invoke-static {v2, p1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->markState(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/lifecycle/Lifecycle$State;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_4
    return v1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-static {p0}, Lcom/oneplus/support/loader/app/LoaderManager;->getInstance(Lcom/oneplus/support/lifecycle/LifecycleOwner;)Lcom/oneplus/support/loader/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/oneplus/support/loader/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->getSupportFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;
    .locals 0

    invoke-super {p0}, Lcom/oneplus/support/core/app/ComponentActivity;->getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;

    move-result-object p0

    return-object p0
.end method

.method public getViewModelStore()Lcom/oneplus/support/lifecycle/ViewModelStore;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/support/lifecycle/ViewModelStore;

    invoke-direct {v0}, Lcom/oneplus/support/lifecycle/ViewModelStore;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->noteStateNotSaved()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {p1, v0}, Lcom/oneplus/support/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {p2, v0}, Lcom/oneplus/support/collection/SparseArrayCompat;->remove(I)V

    const-string p2, "FragmentActivity"

    if-nez p1, :cond_0

    const-string p0, "Activity result delivered for unknown Fragment."

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Activity result no fragment exists for who: "

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline41(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/oneplus/support/core/app/ActivityCompat;->getPermissionCompatDelegate()V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->getSupportFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->noteStateNotSaved()V

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentController;->attachHost(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    invoke-super {p0, p1}, Lcom/oneplus/support/core/app/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;->viewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    iput-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_4

    const-string v3, "android:support:fragments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;->fragments:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    :cond_1
    invoke-virtual {v4, v3, v1}, Lcom/oneplus/support/core/fragment/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;)V

    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "android:support:request_fragment_who"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    array-length v1, v0

    array-length v3, p1

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/oneplus/support/collection/SparseArrayCompat;

    array-length v3, v0

    invoke-direct {v1, v3}, Lcom/oneplus/support/collection/SparseArrayCompat;-><init>(I)V

    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    move v1, v2

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    aget v4, v0, v1

    aget-object v5, p1, v1

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/support/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string p1, "FragmentActivity"

    const-string v0, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    if-nez p1, :cond_5

    new-instance p1, Lcom/oneplus/support/collection/SparseArrayCompat;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/oneplus/support/collection/SparseArrayCompat;-><init>(I)V

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    iput v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    :cond_5
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchCreate()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p0

    or-int/2addr p0, p1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    invoke-virtual {v0}, Lcom/oneplus/support/lifecycle/ViewModelStore;->clear()V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchLowMemory()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchMultiWindowModeChanged(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->noteStateNotSaved()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mResumed:Z

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchResume()V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchPause()V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchPictureInPictureModeChanged(Z)V

    return-void
.end method

.method protected onPostResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchResume()V

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->execPendingActions()Z

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0, p3}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    or-int/2addr p0, p1

    return p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p2}, Lcom/oneplus/support/core/fragment/app/FragmentController;->noteStateNotSaved()V

    shr-int/lit8 p1, p1, 0x10

    const p2, 0xffff

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {p2, p1}, Lcom/oneplus/support/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {p3, p1}, Lcom/oneplus/support/collection/SparseArrayCompat;->remove(I)V

    const-string p1, "FragmentActivity"

    if-nez p2, :cond_0

    const-string p0, "Activity result delivered for unknown Fragment."

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Activity result no fragment exists for who: "

    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline41(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mResumed:Z

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->execPendingActions()Z

    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->retainNestedNonConfig()Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;

    invoke-direct {v1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    iput-object p0, v1, Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;->viewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    iput-object v0, v1, Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;->fragments:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    return-object v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/oneplus/support/core/app/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->getSupportFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$State;->CREATED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-static {v0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->markState(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v0}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    const-string v1, "android:support:next_request_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v0}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v1}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v3}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v3, v2}, Lcom/oneplus/support/collection/SparseArrayCompat;->keyAt(I)I

    move-result v3

    aput v3, v0, v2

    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v3, v2}, Lcom/oneplus/support/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "android:support:request_indicies"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p0, "android:support:request_fragment_who"

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStopped:Z

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mCreated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mCreated:Z

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchActivityCreated()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->noteStateNotSaved()V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->execPendingActions()Z

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchStart()V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->noteStateNotSaved()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStopped:Z

    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->getSupportFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$State;->CREATED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-static {v0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->markState(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchStop()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
