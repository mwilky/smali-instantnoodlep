.class public Landroid/arch/lifecycle/ReportFragment;
.super Landroid/app/Fragment;
.source "ReportFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    instance-of v0, p0, Landroid/arch/lifecycle/LifecycleRegistryOwner;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/arch/lifecycle/LifecycleRegistryOwner;

    invoke-interface {p0}, Landroid/arch/lifecycle/LifecycleRegistryOwner;->getLifecycle()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void

    :cond_0
    instance-of v0, p0, Landroid/arch/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {p0}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p0

    instance-of v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    :cond_1
    return-void
.end method

.method public static injectIfNeededIn(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroid/arch/lifecycle/ReportFragment;

    invoke-direct {v2}, Landroid/arch/lifecycle/ReportFragment;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    sget-object p1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/ReportFragment;->dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method
