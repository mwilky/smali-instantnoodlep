.class public Lcom/android/server/am/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/IOpBGFrozen;


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final TAG:Ljava/lang/String; = "OpBGFrozen"


# instance fields
.field private QD:Lcom/android/server/am/les;

.field private RD:Lcom/android/server/vdb;

.field private SD:Lcom/android/server/am/v;

.field private mInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/p;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/p;->mInited:Z

    return-void
.end method


# virtual methods
.method public addDisplayCallback(IILandroid/hardware/display/IDisplayManagerCallback;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/les;->addDisplayCallback(IILandroid/hardware/display/IDisplayManagerCallback;)V

    return-void
.end method

.method public addProc(IILcom/android/server/am/ProcessRecord;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/les;->addProc(IILcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public bindServiceLockedEvent(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/les;->bindServiceLockedEvent(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-void
.end method

.method public broadcastTimeoutEvent(IILandroid/content/Intent;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/les;->broadcastTimeoutEvent(IILandroid/content/Intent;)V

    return-void
.end method

.method public bumpServiceEvent(IIZLjava/lang/String;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/les;->bumpServiceEvent(IIZLjava/lang/String;)V

    return-void
.end method

.method public checkAppInLaunchingProviders(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/irq$sis;->checkAppInLaunchingProviders(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/irq$zta;->checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z

    move-result p0

    return p0
.end method

.method public checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/irq$sis;->checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0
.end method

.method public checkTimeoutBegin(III)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/les;->checkTimeoutBegin(III)V

    return-void
.end method

.method public checkTimeoutEnd(I)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/les;->checkTimeoutEnd(I)V

    return-void
.end method

.method public clearImportantUids()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/p;->QD:Lcom/android/server/am/les;

    invoke-virtual {p0}, Lcom/android/server/am/les;->clearImportantUids()V

    return-void
.end method

.method public clientConnectionRemoveEvent(II)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/les;->clientConnectionRemoveEvent(II)V

    return-void
.end method

.method public contentNotifyResumeEvent(IZ)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/les;->contentNotifyResumeEvent(IZ)V

    return-void
.end method

.method public getEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/les;->getEnable()Z

    move-result p0

    return p0
.end method

.method public getJobTimeout()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/p;->SD:Lcom/android/server/am/v;

    invoke-virtual {p0}, Lcom/android/server/am/v;->getJobTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public importantProviderChangeEvent(IZLcom/android/server/am/ProcessRecord;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/les;->importantProviderChangeEvent(IZLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public initFromLMS(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V
    .locals 1

    const-string p0, "OpBGFrozen"

    const-string v0, "===initFromLMS==="

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/vdb;->getInstance()Lcom/android/server/vdb;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vdb;->initFromLMS(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V

    return-void
.end method

.method public initInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/IPackageManager;)V
    .locals 3

    const-string v0, "OpBGFrozen"

    const-string v1, "===initInstance=== Start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/am/les;->initInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/les;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/p;->QD:Lcom/android/server/am/les;

    invoke-static {}, Lcom/android/server/am/irq;->getInstance()Lcom/android/server/am/irq;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/am/irq;->zta(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-static {p1}, Lcom/android/server/am/v;->you(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/v;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/p;->SD:Lcom/android/server/am/v;

    iget-object p2, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/oneplus/server/kth;->zta(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    invoke-static {}, Lcom/android/server/vdb;->getInstance()Lcom/android/server/vdb;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/p;->RD:Lcom/android/server/vdb;

    iget-object p2, p0, Lcom/android/server/am/p;->RD:Lcom/android/server/vdb;

    invoke-virtual {p2, p1}, Lcom/android/server/vdb;->zta(Lcom/android/server/am/ActivityManagerService;)V

    iget-object p1, p0, Lcom/android/server/am/p;->RD:Lcom/android/server/vdb;

    invoke-virtual {p1, p3}, Lcom/android/server/vdb;->zta(Landroid/content/pm/IPackageManager;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/p;->mInited:Z

    const-string p0, "===initInstance=== End"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isBlockedGpsUid(I)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/vdb;->isBlockedGpsUid(I)Z

    move-result p0

    return p0
.end method

.method public isDeliverDisplayChange(I)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/irq$you;->isDeliverDisplayChange(I)Z

    move-result p0

    return p0
.end method

.method public isJobRestrict(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/v;->isJobRestrict(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public isResStopServiceForIdle(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/les;->isResStopServiceForIdle(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isUidFrozen(I)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/les;->isUidFrozen(I)Z

    move-result p0

    return p0
.end method

.method public isUidImperceptible(I)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/les;->isUidImperceptible(I)Z

    move-result p0

    return p0
.end method

.method public mediaProjectionEvent(IZ)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/les;->mediaProjectionEvent(IZ)V

    return-void
.end method

.method public permRequestDecEvent(I)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/les;->permRequestDecEvent(I)V

    return-void
.end method

.method public receiveBroadcastEvent(IIZZLandroid/content/Intent;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/am/les;->receiveBroadcastEvent(IIZZLandroid/content/Intent;)V

    return-void
.end method

.method public removeDisplayCallback(II)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/les;->removeDisplayCallback(II)V

    return-void
.end method

.method public removeProc(II)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/les;->removeProc(II)V

    return-void
.end method

.method public reportRestrictJob(Lcom/android/server/job/controllers/JobStatus;J)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/v;->reportRestrictJob(Lcom/android/server/job/controllers/JobStatus;J)V

    return-void
.end method

.method public screenStateChangedEvent(Z)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/OnePlusUtil$zta;->screenStateChangedEvent(Z)V

    return-void
.end method

.method public serviceTimeoutEvent(IILjava/lang/String;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/les;->serviceTimeoutEvent(IILjava/lang/String;)V

    return-void
.end method

.method public shellCommand(Ljava/lang/String;I[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1

    iget-boolean p2, p0, Lcom/android/server/am/p;->mInited:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const-string p2, "OPBF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/p;->QD:Lcom/android/server/am/les;

    invoke-virtual {p0, p4, p3}, Lcom/android/server/am/les;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public skipBroadcastLocked(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/irq$zta;->skipBroadcastLocked(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result p0

    return p0
.end method

.method public skipBroadcastLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/irq$zta;->skipBroadcastLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "OpBGFrozen"

    const-string p2, "skipBroadcastLocked failed:"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public startMonitoring(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/v;->startMonitoring(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public startProcessEvent(Lcom/android/server/am/ProcessRecord;I)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/les;->startProcessEvent(Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method

.method public stopMonitoring(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/v;->stopMonitoring(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public triggerResume(ILjava/lang/String;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/les;->triggerResume(ILjava/lang/String;)V

    return-void
.end method

.method public updateDisplayEvent(II)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/les;->updateDisplayEvent(II)V

    return-void
.end method

.method public updateImportantUids(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/p;->QD:Lcom/android/server/am/les;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/les;->updateImportantUids(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public updateImportantUids(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/p;->QD:Lcom/android/server/am/les;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/les;->updateImportantUids(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public updateLastImportantUidsIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/p;->QD:Lcom/android/server/am/les;

    invoke-virtual {p0}, Lcom/android/server/am/les;->updateLastImportantUidsIfNeeded()V

    return-void
.end method

.method public updateLocationReceiverUidsChange(IZZZ)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/vdb;->updateLocationReceiverUidsChange(IZZZ)V

    return-void
.end method

.method public virtualDeviceChangeEvent(IZLjava/lang/String;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/p;->mInited:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/les;->virtualDeviceChangeEvent(IZLjava/lang/String;)V

    return-void
.end method
