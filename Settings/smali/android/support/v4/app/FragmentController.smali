.class public Landroid/support/v4/app/FragmentController;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field private final mHost:Landroid/support/v4/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v4/app/FragmentHostCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentHostCallback<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    return-void
.end method

.method public static createController(Landroid/support/v4/app/FragmentHostCallback;)Landroid/support/v4/app/FragmentController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentHostCallback<",
            "*>;)",
            "Landroid/support/v4/app/FragmentController;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/app/FragmentController;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentController;-><init>(Landroid/support/v4/app/FragmentHostCallback;)V

    return-object v0
.end method


# virtual methods
.method public attachHost(Landroid/support/v4/app/Fragment;)V
    .locals 2

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v1, :cond_0

    iput-object p0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iput-object p0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    iput-object p1, v0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already attached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispatchActivityCreated()V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public dispatchCreate()V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p0

    return p0
.end method

.method public dispatchDestroy()V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    return-void
.end method

.method public dispatchLowMemory()V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V

    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public dispatchPause()V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPause()V

    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public dispatchReallyStop()V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V

    return-void
.end method

.method public dispatchResume()V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    return-void
.end method

.method public dispatchStart()V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    return-void
.end method

.method public dispatchStop()V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStop()V

    return-void
.end method

.method public execPendingActions()Z
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result p0

    return p0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    return-object p0
.end method

.method public noteStateNotSaved()V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public restoreAllState(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V

    return-void
.end method

.method public retainNestedNonConfig()Landroid/support/v4/app/FragmentManagerNonConfig;
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->retainNonConfig()Landroid/support/v4/app/FragmentManagerNonConfig;

    move-result-object p0

    return-object p0
.end method

.method public saveAllState()Landroid/os/Parcelable;
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method
