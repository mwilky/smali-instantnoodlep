.class public Lcom/android/settingslib/net/NetworkCycleChartDataLoader;
.super Lcom/android/settingslib/net/NetworkCycleDataLoader;
.source "NetworkCycleChartDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/net/NetworkCycleDataLoader<",
        "Ljava/util/List<",
        "Lcom/android/settingslib/net/NetworkCycleChartData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleChartData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;Lcom/android/settingslib/net/NetworkCycleChartDataLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->mData:Ljava/util/List;

    return-void
.end method

.method public static builder(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getUsageBuckets(JJ)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleData;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-wide v3, Lcom/android/settingslib/net/NetworkCycleChartData;->BUCKET_DURATION_MS:J

    add-long v3, p1, v3

    move-wide/from16 v13, p1

    :goto_0
    move-wide v11, v3

    cmp-long v0, v11, p3

    if-gtz v0, :cond_2

    const-wide/16 v15, 0x0

    :try_start_0
    iget-boolean v0, v1, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mIsHotspot:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settingslib/RestrictedLockUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    iget-object v3, v1, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/settingslib/net/NetworkCycleDataLoader;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    const/4 v10, -0x5

    move-wide v6, v13

    move-wide v8, v11

    invoke-virtual/range {v3 .. v10}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    invoke-virtual {v3}, Landroid/app/usage/NetworkStats;->close()V

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v4, v1, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    move-wide v5, v13

    move-wide v7, v11

    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-long v15, v3, v5

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v3, "NetworkCycleChartLoader"

    const-string v4, "Exception querying network detail."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    move-wide v3, v15

    new-instance v0, Lcom/android/settingslib/net/NetworkCycleData$Builder;

    invoke-direct {v0}, Lcom/android/settingslib/net/NetworkCycleData$Builder;-><init>()V

    invoke-virtual {v0, v13, v14}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setStartTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    invoke-virtual {v0, v11, v12}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setEndTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setTotalUsage(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    invoke-virtual {v0}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->build()Lcom/android/settingslib/net/NetworkCycleData;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-wide v3, Lcom/android/settingslib/net/NetworkCycleChartData;->BUCKET_DURATION_MS:J

    add-long/2addr v3, v11

    move-wide v13, v11

    goto :goto_0

    :cond_2
    return-object v2
.end method


# virtual methods
.method bridge synthetic getCycleUsage()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->getCycleUsage()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getCycleUsage()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleChartData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->mData:Ljava/util/List;

    return-object p0
.end method

.method recordUsage(JJ)V
    .locals 9

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mIsHotspot:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settingslib/RestrictedLockUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    iget-object v1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    const/4 v8, -0x5

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v8}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    :goto_0
    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    move-wide v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v5

    add-long/2addr v3, v5

    :goto_1
    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    new-instance v0, Lcom/android/settingslib/net/NetworkCycleChartData$Builder;

    invoke-direct {v0}, Lcom/android/settingslib/net/NetworkCycleChartData$Builder;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->getUsageBuckets(JJ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/NetworkCycleChartData$Builder;->setUsageBuckets(Ljava/util/List;)Lcom/android/settingslib/net/NetworkCycleChartData$Builder;

    invoke-virtual {v0}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->getObject()Lcom/android/settingslib/net/NetworkCycleData;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/settingslib/net/NetworkCycleData;->access$002(Lcom/android/settingslib/net/NetworkCycleData;J)J

    invoke-virtual {v0}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->getObject()Lcom/android/settingslib/net/NetworkCycleData;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/android/settingslib/net/NetworkCycleData;->access$102(Lcom/android/settingslib/net/NetworkCycleData;J)J

    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setTotalUsage(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->mData:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/settingslib/net/NetworkCycleChartData$Builder;->build()Lcom/android/settingslib/net/NetworkCycleChartData;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "NetworkCycleChartLoader"

    const-string p2, "Exception querying network detail."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method
