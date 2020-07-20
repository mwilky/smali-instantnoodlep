.class public Lcom/android/settings/applications/ProcStatsData;
.super Ljava/lang/Object;
.source "ProcStatsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProcStatsData$MemInfo;
    }
.end annotation


# static fields
.field static final sEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Lcom/android/internal/app/procstats/ProcessStats;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mMemInfo:Lcom/android/settings/applications/ProcStatsData$MemInfo;

.field private mMemStates:[I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

.field private mStates:[I

.field private mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private mUseUss:Z

.field private memTotalTime:J

.field private pkgEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/ProcStatsData$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcStatsData$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    const-string p1, "procstats"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsData;->mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

    sget-object p1, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsData;->mMemStates:[I

    sget-object p1, Lcom/android/internal/app/procstats/ProcessStats;->BACKGROUND_PROC_STATES:[I

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsData;->mStates:[I

    if-eqz p2, :cond_0

    sget-object p1, Lcom/android/settings/applications/ProcStatsData;->sStatsXfer:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    return-wide v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/ProcStatsData;->mMemInfo:Lcom/android/settings/applications/ProcStatsData$MemInfo;

    return-object p0
.end method

.method public getMemState()I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget p0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x4

    :cond_1
    return p0
.end method

.method public refreshStats(Z)V
    .locals 31

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const-string v2, "ProcStatsManager"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/android/settings/applications/ProcStatsData;->mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

    iget-wide v4, v1, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    invoke-interface {v0, v4, v5}, Lcom/android/internal/app/procstats/IProcessStats;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v4, v3}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    iput-object v4, v1, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-object v0, v1, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, v4}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :try_start_2
    iget-object v0, v1, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reading process stats: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "RemoteException:"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, v1, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    move-wide v10, v12

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    iget-object v5, v1, Lcom/android/settings/applications/ProcStatsData;->mMemStates:[I

    invoke-direct {v0, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    iget-object v4, v1, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v4, v0, v12, v13}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    new-instance v4, Lcom/android/settings/applications/ProcStatsData$MemInfo;

    iget-object v7, v1, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    iget-wide v9, v1, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    const/4 v11, 0x0

    move-object v6, v4

    move-object v8, v0

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/applications/ProcStatsData$MemInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;JLcom/android/settings/applications/ProcStatsData$1;)V

    iput-object v4, v1, Lcom/android/settings/applications/ProcStatsData;->mMemInfo:Lcom/android/settings/applications/ProcStatsData$MemInfo;

    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    iget-object v6, v1, Lcom/android/settings/applications/ProcStatsData;->mMemStates:[I

    iget-object v7, v1, Lcom/android/settings/applications/ProcStatsData;->mStates:[I

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    new-instance v5, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    iget-object v7, v1, Lcom/android/settings/applications/ProcStatsData;->mMemStates:[I

    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    invoke-direct {v5, v6, v7, v8}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v7}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iget-object v8, v1, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v8}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    move v9, v3

    :goto_1
    const-string v10, "/"

    const-wide/16 v19, 0x0

    if-ge v3, v8, :cond_8

    iget-object v11, v1, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v11, v11, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    move v12, v9

    :goto_2
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v9, v13, :cond_7

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Landroid/util/LongSparseArray;

    move v14, v12

    :goto_3
    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v13

    if-ge v14, v13, :cond_6

    invoke-virtual {v15, v14}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move/from16 p1, v8

    :goto_4
    iget-object v8, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v12, v8, :cond_5

    iget-object v8, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v18, v11

    iget-object v11, v1, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v11, v11, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move/from16 v16, v12

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v12

    move/from16 v17, v14

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v14

    invoke-virtual {v11, v12, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v11, :cond_2

    const-string v11, "No process found for pkg "

    invoke-static {v11}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " proc name "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v23, v0

    move-object v0, v13

    move-object/from16 v25, v15

    move/from16 v21, v16

    move/from16 v24, v17

    goto :goto_5

    :cond_2
    invoke-virtual {v11}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v12

    invoke-virtual {v7, v8, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/ProcStatsEntry;

    if-nez v8, :cond_3

    new-instance v8, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v14, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    iget-boolean v12, v1, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move/from16 v22, v12

    move/from16 v21, v16

    move-object v12, v8

    move-object/from16 v23, v0

    move-object v0, v13

    move-object v13, v11

    move/from16 v24, v17

    move-object/from16 v25, v15

    move-object v15, v4

    move-object/from16 v16, v5

    move/from16 v17, v22

    invoke-direct/range {v12 .. v17}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Z)V

    iget-wide v12, v8, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    cmpl-double v12, v12, v19

    if-lez v12, :cond_4

    invoke-virtual {v11}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v11

    invoke-virtual {v7, v12, v11, v8}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3
    move-object/from16 v23, v0

    move-object v0, v13

    move-object/from16 v25, v15

    move/from16 v21, v16

    move/from16 v24, v17

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/android/settings/applications/ProcStatsEntry;->addPackage(Ljava/lang/String;)V

    :cond_4
    :goto_5
    add-int/lit8 v12, v21, 0x1

    move-object v13, v0

    move-object/from16 v11, v18

    move-object/from16 v0, v23

    move/from16 v14, v24

    move-object/from16 v15, v25

    goto/16 :goto_4

    :cond_5
    move-object/from16 v23, v0

    move-object/from16 v18, v11

    move/from16 v24, v14

    move-object/from16 v25, v15

    add-int/lit8 v14, v24, 0x1

    const/4 v12, 0x0

    move/from16 v8, p1

    goto/16 :goto_3

    :cond_6
    move-object/from16 v23, v0

    move/from16 p1, v8

    move-object/from16 v18, v11

    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_7
    move-object/from16 v23, v0

    move/from16 p1, v8

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v23, v0

    iget-object v0, v1, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_e

    iget-object v8, v1, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v8}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    const/4 v9, 0x0

    :goto_7
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v9, v11, :cond_d

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/LongSparseArray;

    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v11}, Landroid/util/LongSparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_c

    invoke-virtual {v11, v12}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v14, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v14, :cond_b

    move/from16 p1, v0

    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_a

    move-object/from16 v16, v11

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v17, v13

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v7, v11, v13}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/ProcStatsEntry;

    if-eqz v11, :cond_9

    invoke-virtual {v11, v0}, Lcom/android/settings/applications/ProcStatsEntry;->addService(Lcom/android/internal/app/procstats/ServiceState;)V

    goto :goto_a

    :cond_9
    const-string v11, "No process "

    invoke-static {v11}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " for service "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ServiceState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_a
    move-object/from16 v16, v11

    move-object/from16 v17, v13

    :goto_a
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, p1

    move-object/from16 v11, v16

    move-object/from16 v13, v17

    goto :goto_9

    :cond_b
    move/from16 p1, v0

    move-object/from16 v16, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_c
    move/from16 p1, v0

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    :cond_d
    move/from16 p1, v0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_e
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_b
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_10

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v13, v1, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v14, v1, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v17, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v7, v1, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move-object v12, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move/from16 v18, v7

    invoke-virtual/range {v12 .. v18}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    iget-object v7, v3, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/ProcStatsPackageEntry;

    if-nez v7, :cond_f

    new-instance v7, Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v8, v3, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    iget-wide v9, v1, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    invoke-direct {v7, v8, v9, v10}, Lcom/android/settings/applications/ProcStatsPackageEntry;-><init>(Ljava/lang/String;J)V

    iget-object v8, v3, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {v7, v3}, Lcom/android/settings/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V

    goto :goto_b

    :cond_10
    move-object/from16 v2, v23

    iget-wide v6, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    cmpl-double v0, v6, v19

    const-wide/16 v8, 0x0

    if-lez v0, :cond_16

    iget-boolean v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    if-nez v0, :cond_16

    iget-wide v10, v1, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    long-to-double v10, v10

    div-double/2addr v6, v10

    double-to-long v6, v6

    iget-object v0, v1, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move-wide v10, v8

    :goto_c
    if-ltz v0, :cond_12

    iget-object v3, v1, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v12, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    :goto_d
    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_11

    iget-object v13, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v13, v13, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    add-long/2addr v10, v13

    goto :goto_d

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_12
    iget-object v0, v1, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_16

    cmp-long v3, v10, v8

    if-lez v3, :cond_16

    iget-object v3, v1, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v12, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-wide/from16 v25, v8

    :goto_f
    if-ltz v12, :cond_14

    iget-object v13, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v13, v13, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    add-long/2addr v8, v13

    cmp-long v15, v13, v25

    if-lez v15, :cond_13

    move-wide/from16 v25, v13

    :cond_13
    add-int/lit8 v12, v12, -0x1

    goto :goto_f

    :cond_14
    mul-long v12, v6, v8

    div-long v27, v12, v10

    const-wide/16 v12, 0x0

    cmp-long v12, v27, v12

    if-lez v12, :cond_15

    sub-long v6, v6, v27

    sub-long/2addr v10, v8

    new-instance v8, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v9, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    const/16 v23, 0x0

    iget-object v12, v1, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v13, 0x7f1212ad

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    iget-wide v12, v1, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-wide/from16 v29, v12

    invoke-direct/range {v21 .. v30}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJJ)V

    iget-object v13, v1, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v14, v1, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v17, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v9, v1, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move-object v12, v8

    move/from16 v18, v9

    invoke-virtual/range {v12 .. v18}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    invoke-virtual {v3, v8}, Lcom/android/settings/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V

    :cond_15
    add-int/lit8 v0, v0, -0x1

    const-wide/16 v8, 0x0

    goto :goto_e

    :cond_16
    iget-object v0, v1, Lcom/android/settings/applications/ProcStatsData;->mMemInfo:Lcom/android/settings/applications/ProcStatsData$MemInfo;

    iget-wide v6, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->baseCacheRam:J

    new-instance v0, Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-wide v8, v1, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    const-string v3, "os"

    invoke-direct {v0, v3, v8, v9}, Lcom/android/settings/applications/ProcStatsPackageEntry;-><init>(Ljava/lang/String;J)V

    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    cmpl-double v3, v8, v19

    if-lez v3, :cond_17

    new-instance v3, Lcom/android/settings/applications/ProcStatsEntry;

    const/4 v10, 0x0

    iget-object v8, v1, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v9, 0x7f1212ac

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-wide v14, v1, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    long-to-double v12, v14

    div-double/2addr v8, v12

    double-to-long v12, v8

    const-string v9, "os"

    move-object v8, v3

    move-wide/from16 v16, v12

    move-wide v12, v14

    move-wide/from16 v21, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v21

    invoke-direct/range {v8 .. v17}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJJ)V

    iget-object v13, v1, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v14, v1, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v17, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v8, v1, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move-object v12, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move/from16 v18, v8

    invoke-virtual/range {v12 .. v18}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V

    :cond_17
    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    cmpl-double v3, v8, v19

    if-lez v3, :cond_18

    new-instance v3, Lcom/android/settings/applications/ProcStatsEntry;

    const/4 v10, 0x0

    iget-object v8, v1, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v9, 0x7f1212aa

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-wide v14, v1, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    long-to-double v12, v14

    div-double/2addr v8, v12

    double-to-long v12, v8

    const-string v9, "os"

    move-object v8, v3

    move-wide/from16 v16, v12

    move-wide v12, v14

    move-wide/from16 v18, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    invoke-direct/range {v8 .. v17}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJJ)V

    iget-object v13, v1, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v14, v1, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v17, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v2, v1, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move-object v12, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move/from16 v18, v2

    invoke-virtual/range {v12 .. v18}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V

    :cond_18
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_19

    new-instance v2, Lcom/android/settings/applications/ProcStatsEntry;

    const/4 v10, 0x0

    iget-object v3, v1, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v8, 0x7f1212a9

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-wide v14, v1, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    const-string v9, "os"

    move-object v8, v2

    move-wide v12, v14

    move-wide/from16 v16, v14

    move-wide v14, v6

    invoke-direct/range {v8 .. v17}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJJ)V

    iget-object v13, v1, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v14, v1, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v17, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v3, v1, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move-object v12, v2

    move-object v15, v4

    move-object/from16 v16, v5

    move/from16 v18, v3

    invoke-virtual/range {v12 .. v18}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V

    :cond_19
    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDuration(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    :cond_0
    return-void
.end method

.method public xferStats()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sput-object p0, Lcom/android/settings/applications/ProcStatsData;->sStatsXfer:Lcom/android/internal/app/procstats/ProcessStats;

    return-void
.end method
