.class Lcom/android/server/am/ActivityManagerService$5;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 44

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-static {}, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->getDeviceTemp()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->updateSystemTempreture(I)V

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PEEK_SYSTEM_TEMP: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->getSystemTempreture()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :pswitch_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityManager"

    const-string v3, "PERSIST_CPU_TRACKER"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->tryPersistToDisk()V

    goto :goto_1

    :pswitch_2
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/OomAdjusterInjector;->getInstance(Landroid/content/Context;)Lcom/android/server/am/OomAdjusterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterInjector;->forceUpdateOnlineConfig()V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/ColdStartInjector;->getInstance(Landroid/content/Context;)Lcom/android/server/am/ColdStartInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ColdStartInjector;->forceUpdateOnlineConfig()V

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_4

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PSS activity start deferral interval ended; now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-gez v0, :cond_5

    const-string v3, "ActivityManager"

    const-string v4, "Activity start nesting undercount!"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    :cond_4
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Still deferring PSS, nesting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    goto :goto_1

    :cond_6
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;)V

    nop

    :goto_1
    return-void

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    const/4 v10, 0x0

    if-eqz v0, :cond_8

    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v10, v0, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-wide/from16 v21, v6

    goto/16 :goto_12

    :cond_8
    :goto_2
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    if-eqz v8, :cond_c

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    const-wide/16 v11, 0x0

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v9

    :try_start_3
    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    sget-object v14, Lcom/android/server/am/-$$Lambda$ActivityManagerService$5$BegFiGFfKLYS7VRmiWluczgOC5k;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$5$BegFiGFfKLYS7VRmiWluczgOC5k;

    invoke-virtual {v13, v14}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v13

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v9, 0x0

    move-wide/from16 v26, v11

    :goto_3
    if-ge v9, v14, :cond_a

    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v11

    :try_start_4
    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v15, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v12, v15}, Lcom/android/server/am/ActivityManagerService$PidMap;->indexOfKey(I)I

    move-result v12

    if-ltz v12, :cond_9

    monitor-exit v11

    goto :goto_4

    :cond_9
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v11, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v11, v0, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v11

    add-long v26, v26, v11

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_a
    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v11, :cond_b

    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Collected native and kernel memory in "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    sub-long v4, v15, v6

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v4

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v11

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v15

    move-wide/from16 v28, v15

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v15

    move-wide/from16 v30, v15

    const-wide/16 v15, 0x400

    mul-long v32, v4, v15

    mul-long v34, v11, v15

    mul-long v36, v28, v15

    mul-long v38, v30, v15

    mul-long v40, v26, v15

    invoke-static/range {v32 .. v41}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    iget-object v15, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-wide/from16 v16, v4

    move-wide/from16 v18, v11

    move-wide/from16 v20, v28

    move-wide/from16 v22, v30

    move-wide/from16 v24, v26

    invoke-virtual/range {v15 .. v25}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_5

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :cond_c
    :goto_5
    const/4 v4, 0x0

    new-array v3, v3, [J

    :goto_6
    const/4 v5, -0x1

    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_e

    if-gtz v9, :cond_f

    :try_start_a
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_e

    :cond_d
    const-string v0, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Collected pss of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " processes in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4
    move-exception v0

    move-object v10, v3

    move/from16 v25, v4

    move-wide/from16 v21, v6

    goto/16 :goto_11

    :cond_f
    :try_start_b
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    iget v12, v9, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    iget v13, v9, Lcom/android/server/am/ProcessRecord;->pssStatType:I

    move/from16 v39, v13

    iget-wide v13, v9, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    const-wide/16 v18, 0x3e8

    if-eqz v10, :cond_10

    :try_start_c
    iget v10, v9, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v12, v10, :cond_10

    add-long v20, v13, v18

    cmp-long v10, v20, v15

    if-gez v10, :cond_10

    iget v10, v9, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move v5, v10

    move-wide/from16 v21, v6

    goto :goto_8

    :cond_10
    :try_start_d
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v10}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    if-eqz v10, :cond_11

    :try_start_e
    const-string v10, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped pss collection of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": still need "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    add-long v18, v13, v18

    move v2, v5

    move-wide/from16 v21, v6

    sub-long v5, v18, v15

    :try_start_f
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms until safe"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    move v5, v2

    move-object v10, v3

    move/from16 v25, v4

    goto/16 :goto_11

    :catchall_6
    move-exception v0

    move v2, v5

    move-wide/from16 v21, v6

    move-object v10, v3

    move/from16 v25, v4

    goto/16 :goto_11

    :cond_11
    move v2, v5

    move-wide/from16 v21, v6

    :goto_7
    const/4 v9, 0x0

    const/4 v0, 0x0

    move v5, v0

    :goto_8
    :try_start_10
    monitor-exit v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v9, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    const/4 v0, 0x0

    invoke-static {v5, v3, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v15

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-eqz v18, :cond_13

    :try_start_12
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_13

    iget v0, v9, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v0, v12, :cond_13

    iget v0, v9, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    if-ne v0, v5, :cond_13

    move-wide/from16 v18, v10

    :try_start_13
    iget-wide v10, v9, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v0, v10, v13

    if-nez v0, :cond_12

    add-int/lit8 v4, v4, 0x1

    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    aget-wide v33, v3, v10

    const/16 v17, 0x1

    aget-wide v35, v3, v17

    const/16 v23, 0x2

    aget-wide v37, v3, v23

    sub-long v40, v15, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v42

    move-object/from16 v28, v0

    move-object/from16 v29, v9

    move/from16 v30, v12

    move-wide/from16 v31, v18

    invoke-virtual/range {v28 .. v43}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJIJJ)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move-object v10, v3

    goto/16 :goto_e

    :cond_12
    const/4 v10, 0x0

    const/16 v17, 0x1

    const/16 v23, 0x2

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object v10, v3

    goto/16 :goto_f

    :catchall_8
    move-exception v0

    move-wide/from16 v18, v10

    move-object v10, v3

    goto/16 :goto_f

    :cond_13
    move-wide/from16 v18, v10

    const/4 v10, 0x0

    const/16 v17, 0x1

    const/16 v23, 0x2

    :goto_9
    :try_start_14
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_17

    const-string v0, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipped pss collection of "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    if-nez v10, :cond_14

    :try_start_15
    const-string v10, "NO_THREAD "
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    goto :goto_a

    :cond_14
    :try_start_16
    const-string v10, ""

    :goto_a
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    if-eq v10, v5, :cond_15

    :try_start_17
    const-string v10, "PID_CHANGED "
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    goto :goto_b

    :cond_15
    :try_start_18
    const-string v10, ""

    :goto_b
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " initState="

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " curState="

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    move-object v10, v3

    move/from16 v25, v4

    :try_start_19
    iget-wide v3, v9, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v3, v3, v13

    if-eqz v3, :cond_16

    const-string v3, "TIME_CHANGED"

    goto :goto_c

    :cond_16
    const-string v3, ""

    :goto_c
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    goto :goto_d

    :catchall_9
    move-exception v0

    move/from16 v4, v25

    goto :goto_f

    :cond_17
    move-object v10, v3

    move/from16 v25, v4

    :goto_d
    move/from16 v4, v25

    :goto_e
    :try_start_1a
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_10

    :catchall_a
    move-exception v0

    move-object v10, v3

    move/from16 v25, v4

    goto :goto_f

    :catchall_b
    move-exception v0

    move/from16 v25, v4

    move-wide/from16 v18, v10

    move-object v10, v3

    :goto_f
    :try_start_1b
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_f

    :cond_18
    move-object v10, v3

    move/from16 v25, v4

    const/16 v17, 0x1

    const/16 v23, 0x2

    :goto_10
    move-object/from16 v2, p1

    move-object v3, v10

    move-wide/from16 v6, v21

    const/4 v0, 0x0

    const/4 v10, 0x0

    goto/16 :goto_6

    :catchall_d
    move-exception v0

    move-object v10, v3

    move/from16 v25, v4

    goto :goto_11

    :catchall_e
    move-exception v0

    move-object v10, v3

    move/from16 v25, v4

    move v2, v5

    move-wide/from16 v21, v6

    :goto_11
    :try_start_1c
    monitor-exit v11
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_f
    move-exception v0

    goto :goto_11

    :catchall_10
    move-exception v0

    move-wide/from16 v21, v6

    :goto_12
    :try_start_1d
    monitor-exit v9
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_11
    move-exception v0

    goto :goto_12

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
