.class public Lcom/android/settings/applications/UninstallAppsBackend;
.super Ljava/lang/Object;
.source "UninstallAppsBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/UninstallAppsBackend$PackageForUninstallCallback;
    }
.end annotation


# instance fields
.field callback:Lcom/android/settings/applications/UninstallAppsBackend$PackageForUninstallCallback;

.field private selectedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/UninstallAppsBackend;->selectedApps:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addApp(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/UninstallAppsBackend;->isAddedToSelectedAppsList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/UninstallAppsBackend;->selectedApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/applications/UninstallAppsBackend;->callback:Lcom/android/settings/applications/UninstallAppsBackend$PackageForUninstallCallback;

    invoke-interface {p0, p1}, Lcom/android/settings/applications/UninstallAppsBackend$PackageForUninstallCallback;->onPackageAddedForUninstall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/UninstallAppsBackend;->selectedApps:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/UninstallAppsBackend;->selectedApps:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public isAddedToSelectedAppsList(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/UninstallAppsBackend;->selectedApps:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method printList()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/UninstallAppsBackend;->selectedApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "UninstallAppsBackend"

    if-nez v0, :cond_0

    const-string p0, "PrintList: no apps in selected list"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "PrintList: "

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/UninstallAppsBackend;->selectedApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public remove(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/UninstallAppsBackend;->selectedApps:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/UninstallAppsBackend;->selectedApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/settings/applications/UninstallAppsBackend;->printList()V

    return-void
.end method

.method removeApp(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/UninstallAppsBackend;->selectedApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/UninstallAppsBackend;->selectedApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/applications/UninstallAppsBackend;->callback:Lcom/android/settings/applications/UninstallAppsBackend$PackageForUninstallCallback;

    invoke-interface {p0, p1}, Lcom/android/settings/applications/UninstallAppsBackend$PackageForUninstallCallback;->onPackageRemovedForUninstall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPackageForUninstallCallback(Lcom/android/settings/applications/UninstallAppsBackend$PackageForUninstallCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/UninstallAppsBackend;->callback:Lcom/android/settings/applications/UninstallAppsBackend$PackageForUninstallCallback;

    return-void
.end method
