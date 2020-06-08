.class public Lcom/android/settings/applications/ProcStatsData$MemInfo;
.super Ljava/lang/Object;
.source "ProcStatsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcStatsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemInfo"
.end annotation


# instance fields
.field baseCacheRam:J

.field freeWeight:D

.field mMemStateWeights:[D

.field memTotalTime:J

.field public realFreeRam:D

.field public realTotalRam:D

.field public realUsedRam:D

.field totalRam:D

.field totalScale:D

.field usedWeight:D

.field weightToRam:D


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;JLcom/android/settings/applications/ProcStatsData$1;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v4, 0xe

    new-array v5, v4, [D

    iput-object v5, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->mMemStateWeights:[D

    iput-wide v2, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->memTotalTime:J

    new-instance v5, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v5}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v5

    long-to-double v5, v5

    iput-wide v5, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    iget-wide v5, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    iget-wide v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    add-double/2addr v5, v7

    iput-wide v5, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    iget-wide v5, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    add-double/2addr v5, v7

    iput-wide v5, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-boolean v5, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    if-nez v5, :cond_0

    iget-wide v5, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-wide v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    add-double/2addr v5, v7

    iput-wide v5, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    if-ge v5, v4, :cond_3

    const/4 v8, 0x6

    if-ne v5, v8, :cond_1

    iget-object v8, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->mMemStateWeights:[D

    aput-wide v6, v8, v5

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->mMemStateWeights:[D

    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v8, v7, v5

    aput-wide v8, v6, v5

    const/16 v6, 0x9

    if-lt v5, v6, :cond_2

    iget-wide v8, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    aget-wide v6, v7, v5

    add-double/2addr v8, v6

    iput-wide v8, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    goto :goto_1

    :cond_2
    iget-wide v8, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    aget-wide v6, v7, v5

    add-double/2addr v8, v6

    iput-wide v8, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-wide v4, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double/2addr v4, v8

    long-to-double v1, v2

    div-double/2addr v4, v1

    iget-wide v10, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    mul-double/2addr v10, v8

    div-double/2addr v10, v1

    add-double v12, v4, v10

    iput-wide v12, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalRam:D

    iget-wide v12, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    iget-wide v14, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalRam:D

    div-double/2addr v12, v14

    iput-wide v12, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalScale:D

    iget-wide v12, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalScale:D

    div-double v1, v12, v1

    mul-double/2addr v1, v8

    iput-wide v1, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double/2addr v4, v12

    iput-wide v4, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    mul-double/2addr v12, v10

    iput-wide v12, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v2, "activity"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v3, v1

    iget-wide v8, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    cmpl-double v5, v3, v8

    if-ltz v5, :cond_4

    iput-wide v10, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    iput-wide v6, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    iget-wide v1, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    double-to-long v1, v1

    iput-wide v1, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->baseCacheRam:J

    goto :goto_2

    :cond_4
    iget-wide v5, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    add-double/2addr v5, v3

    iput-wide v5, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    sub-double/2addr v8, v3

    iput-wide v8, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    iput-wide v1, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->baseCacheRam:J

    :goto_2
    return-void
.end method


# virtual methods
.method public getWeightToRam()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    return-wide v0
.end method
