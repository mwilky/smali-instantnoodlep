.class public Lcom/android/settings/location/TopLevelLocationPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TopLevelLocationPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final INTENT_FILTER_LOCATION_MODE_CHANGED:Landroid/content/IntentFilter;


# instance fields
.field private loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mNumTotal:I

.field private mNumTotalLoading:I

.field private mPreference:Landroidx/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->INTENT_FILTER_LOCATION_MODE_CHANGED:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotal:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotalLoading:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/TopLevelLocationPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/location/TopLevelLocationPreferenceController;->refreshLocationMode()V

    return-void
.end method

.method private refreshLocationMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/TopLevelLocationPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotal:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120979

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10001e

    iget p0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotal:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f12097b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$updateState$0$TopLevelLocationPreferenceController(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotalLoading:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotalLoading:I

    iget-object p1, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotalLoading:I

    invoke-virtual {p0, p1}, Lcom/android/settings/location/TopLevelLocationPreferenceController;->setLocationAppCount(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/location/TopLevelLocationPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/TopLevelLocationPreferenceController$1;-><init>(Lcom/android/settings/location/TopLevelLocationPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/location/TopLevelLocationPreferenceController;->INTENT_FILTER_LOCATION_MODE_CHANGED:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/location/TopLevelLocationPreferenceController;->refreshLocationMode()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method setLocationAppCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotal:I

    iget-object p1, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotalLoading:I

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotalLoading:I

    invoke-virtual {p0, v0}, Lcom/android/settings/location/TopLevelLocationPreferenceController;->setLocationAppCount(I)V

    goto :goto_0

    :cond_3
    const-class v1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/settings/location/-$$Lambda$TopLevelLocationPreferenceController$ndKcHy_TjWWkiukewrb7I3jrOBk;

    invoke-direct {v3, p0}, Lcom/android/settings/location/-$$Lambda$TopLevelLocationPreferenceController$ndKcHy_TjWWkiukewrb7I3jrOBk;-><init>(Lcom/android/settings/location/TopLevelLocationPreferenceController;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/permission/PermissionControllerManager;->countPermissionApps(Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_4
    return-void
.end method
