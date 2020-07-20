.class public final Lcom/oneplus/server/OnePlusService;
.super Lcom/oneplus/os/IOnePlusService$Stub;
.source ""


# static fields
.field private static final CREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/os/IOnePlusService;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OnePlusService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNavBarColorConfig:Lcom/oneplus/onlineconfig/OpNavBarColorConfig;

.field private mOnePlusThemeController:Lcom/oneplus/server/theme/ssp;

.field private mOpCommonFrontMonitor:Lcom/android/server/qeg;

.field private opams:Lcom/android/server/am/vdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/server/OnePlusService;->DEBUG:Z

    new-instance v0, Lcom/oneplus/server/bio;

    invoke-direct {v0}, Lcom/oneplus/server/bio;-><init>()V

    sput-object v0, Lcom/oneplus/server/OnePlusService;->CREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/os/IOnePlusService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/OnePlusService;->opams:Lcom/android/server/am/vdb;

    sget-boolean p0, Lcom/oneplus/server/OnePlusService;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OnePlusService"

    const-string v0, "construct called"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getDefault()Lcom/oneplus/os/IOnePlusService;
    .locals 1

    sget-object v0, Lcom/oneplus/server/OnePlusService;->CREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/os/IOnePlusService;

    return-object v0
.end method


# virtual methods
.method public changeFont(II)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/OpFontControlInjector;->changeFontForUser(II)V

    return-void
.end method

.method public disableTheme(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oneplus/server/OnePlusService;->mOnePlusThemeController:Lcom/oneplus/server/theme/ssp;

    invoke-virtual {p0, p1}, Lcom/oneplus/server/theme/ssp;->disableTheme(Ljava/lang/String;)V

    return-void
.end method

.method public enableTheme(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oneplus/server/OnePlusService;->mOnePlusThemeController:Lcom/oneplus/server/theme/ssp;

    invoke-virtual {p0, p1}, Lcom/oneplus/server/theme/ssp;->enableTheme(Ljava/lang/String;)V

    return-void
.end method

.method public flingEvent(Ljava/lang/String;I)V
    .locals 0

    sget-boolean p0, Lcom/oneplus/server/DynamicVsyncManager;->Lxa:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/server/DynamicVsyncManager;->getInstance()Lcom/oneplus/server/DynamicVsyncManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/server/DynamicVsyncManager;->flingEvent(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public getAllAppControlModes(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/appboot/AppControlMode;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/am/vdb;->getAllAppControlModes(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAppControlMode(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/vdb;->getAppControlMode(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getAppControlState(I)I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/server/OnePlusService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/am/vdb;->zta(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getBgPowerHungryList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    const/16 v1, 0x67

    aput v1, p0, v0

    invoke-static {p0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->getBgPowerHungryList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getBlackList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/server/OnePlusService;->mNavBarColorConfig:Lcom/oneplus/onlineconfig/OpNavBarColorConfig;

    invoke-virtual {p0}, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->getBlackList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDynamicVsyncConfig(Ljava/lang/String;)I
    .locals 0

    sget-boolean p0, Lcom/oneplus/server/DynamicVsyncManager;->Lxa:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/server/DynamicVsyncManager;->getInstance()Lcom/oneplus/server/DynamicVsyncManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/server/DynamicVsyncManager;->getDynamicVsyncConfig(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getGameMultiTouchList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/OnePlusGameShakeControllerInjector;->getGameMultiTouchList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGameShakeConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/OnePlusGameShakeControllerInjector;->getGameShakeConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWhiteList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/server/OnePlusService;->mNavBarColorConfig:Lcom/oneplus/onlineconfig/OpNavBarColorConfig;

    invoke-virtual {p0}, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->getWhiteList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isFullscreenScene()Z
    .locals 0

    invoke-static {}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->isFullscreenScene()Z

    move-result p0

    return p0
.end method

.method public isInConfigList(ILjava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isInSpecialTesting()Z
    .locals 0

    invoke-static {}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->isInSpecialTesting()Z

    move-result p0

    return p0
.end method

.method public noteBluetoothConnectedChanged(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/OpAppRecordInjector;->noteBluetoothConnectedChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public noteStartAudio(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/OpAppRecordInjector;->noteStartAudio(II)V

    return-void
.end method

.method public noteStartVideo(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/OpAppRecordInjector;->noteStartVideo(II)V

    return-void
.end method

.method public noteStopAudio(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/OpAppRecordInjector;->noteStopAudio(II)V

    return-void
.end method

.method public noteStopVideo(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/OpAppRecordInjector;->noteStopVideo(II)V

    return-void
.end method

.method public notifySurfaceFlingerUpdate()V
    .locals 4

    const-string p0, "SurfaceFlinger"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v1, 0x4e21

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "OnePlusService"

    const-string v2, "Exception notifySurfaceFlingerUpdate"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_0
    :goto_2
    return-void
.end method

.method public processDisableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oneplus/server/OnePlusService;->mOnePlusThemeController:Lcom/oneplus/server/theme/ssp;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/server/theme/ssp;->processDisableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processEnableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oneplus/server/OnePlusService;->mOnePlusThemeController:Lcom/oneplus/server/theme/ssp;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/server/theme/ssp;->processEnableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/server/OnePlusService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/oneplus/server/OnePlusService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/os/IOnePlusService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string p1, "opservice"

    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public reportJank(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/android/server/am/jankmanager/JankManagerInjector;->reportJank(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public reportSyspropChanged()V
    .locals 0

    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 0

    sget-boolean p0, Lcom/oneplus/server/DynamicVsyncManager;->Lxa:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/server/DynamicVsyncManager;->getInstance()Lcom/oneplus/server/DynamicVsyncManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/server/DynamicVsyncManager;->resume(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAppControlMode(Ljava/lang/String;II)I
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/am/vdb;->setAppControlMode(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public setAppControlState(II)I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/server/OnePlusService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/vdb;->zta(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    const/16 v1, 0x67

    aput v1, p0, v0

    invoke-static {p0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->stopBgPowerHungryApp(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/server/OnePlusService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/vdb;->getInstance(Landroid/content/Context;)Lcom/android/server/am/vdb;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/server/OnePlusService;->opams:Lcom/android/server/am/vdb;

    iget-object v0, p0, Lcom/oneplus/server/OnePlusService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/server/theme/ssp;->getInstance(Landroid/content/Context;)Lcom/oneplus/server/theme/ssp;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/server/OnePlusService;->mOnePlusThemeController:Lcom/oneplus/server/theme/ssp;

    iget-object v0, p0, Lcom/oneplus/server/OnePlusService;->mOnePlusThemeController:Lcom/oneplus/server/theme/ssp;

    invoke-virtual {v0}, Lcom/oneplus/server/theme/ssp;->Ig()V

    invoke-static {}, Lcom/android/server/qeg;->getInstance()Lcom/android/server/qeg;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/server/OnePlusService;->mOpCommonFrontMonitor:Lcom/android/server/qeg;

    iget-object v0, p0, Lcom/oneplus/server/OnePlusService;->mOpCommonFrontMonitor:Lcom/android/server/qeg;

    iget-object v1, p0, Lcom/oneplus/server/OnePlusService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/qeg;->init(Landroid/content/Context;)V

    sget-boolean v0, Lcom/oneplus/server/DynamicVsyncManager;->Lxa:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/server/DynamicVsyncManager;->FEATURE_EXTREME_ENABLE:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/oneplus/server/DynamicVsyncManager;->getInstance()Lcom/oneplus/server/DynamicVsyncManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/server/OnePlusService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oneplus/server/DynamicVsyncManager;->initEnv(Landroid/content/Context;)V

    :cond_1
    new-instance v0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;

    iget-object v1, p0, Lcom/oneplus/server/OnePlusService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/server/OnePlusService;->mNavBarColorConfig:Lcom/oneplus/onlineconfig/OpNavBarColorConfig;

    sget-boolean v0, Lcom/oneplus/theme/OpFontHelperInjector;->sFeatureEnable:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/server/OnePlusService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/am/OpFontControlInjector;->initForFontCtrl(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/am/OpFontControlInjector;->resetAllFontLinkToDefault()Z

    const/4 v0, 0x1

    const-string v1, "persist.sys.font"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const-string v1, "OPDFont"

    const-string v2, "Force Reset To Default Font"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/server/OnePlusService;->changeFont(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateVelocity(Ljava/lang/String;FD)V
    .locals 0

    sget-boolean p0, Lcom/oneplus/server/DynamicVsyncManager;->Lxa:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/server/DynamicVsyncManager;->getInstance()Lcom/oneplus/server/DynamicVsyncManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/server/DynamicVsyncManager;->updateVelocity(Ljava/lang/String;FD)V

    :cond_0
    return-void
.end method
