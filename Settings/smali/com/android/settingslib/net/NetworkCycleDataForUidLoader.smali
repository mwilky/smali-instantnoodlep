.class public Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;
.super Lcom/android/settingslib/net/NetworkCycleDataLoader;
.source "NetworkCycleDataForUidLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/net/NetworkCycleDataLoader<",
        "Ljava/util/List<",
        "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetrieveDetail:Z

.field private final mUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)V

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;->access$000(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mUids:Ljava/util/List;

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;->access$100(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mRetrieveDetail:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mData:Ljava/util/List;

    return-void
.end method

.method public static builder(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method bridge synthetic getCycleUsage()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->getCycleUsage()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getCycleUsage()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mData:Ljava/util/List;

    return-object p0
.end method

.method public getUids()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mUids:Ljava/util/List;

    return-object p0
.end method

.method recordUsage(JJ)V
    .locals 18

    move-object/from16 v0, p0

    :try_start_0
    iget-object v1, v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mUids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v10, v0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUid(Landroid/net/NetworkTemplate;JJI)Landroid/app/usage/NetworkStats;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->getTotalUsage(Landroid/app/usage/NetworkStats;)J

    move-result-wide v9

    cmp-long v11, v9, v2

    if-lez v11, :cond_0

    add-long/2addr v4, v9

    iget-boolean v9, v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mRetrieveDetail:Z

    if-eqz v9, :cond_0

    iget-object v9, v0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v10, v0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const/16 v16, 0x0

    const/16 v17, 0x2

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    move v15, v8

    invoke-virtual/range {v9 .. v17}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(Landroid/net/NetworkTemplate;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->getTotalUsage(Landroid/app/usage/NetworkStats;)J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_0

    :cond_1
    cmp-long v1, v4, v2

    if-lez v1, :cond_3

    new-instance v1, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;

    invoke-direct {v1}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->getObject()Lcom/android/settingslib/net/NetworkCycleData;

    move-result-object v2

    move-wide/from16 v8, p1

    invoke-static {v2, v8, v9}, Lcom/android/settingslib/net/NetworkCycleData;->access$002(Lcom/android/settingslib/net/NetworkCycleData;J)J

    invoke-virtual {v1}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->getObject()Lcom/android/settingslib/net/NetworkCycleData;

    move-result-object v2

    move-wide/from16 v8, p3

    invoke-static {v2, v8, v9}, Lcom/android/settingslib/net/NetworkCycleData;->access$102(Lcom/android/settingslib/net/NetworkCycleData;J)J

    invoke-virtual {v1, v4, v5}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setTotalUsage(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    iget-boolean v2, v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mRetrieveDetail:Z

    if-eqz v2, :cond_2

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;->setBackgroundUsage(J)Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;

    invoke-virtual {v1, v6, v7}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;->setForegroundUsage(J)Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;

    :cond_2
    iget-object v0, v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mData:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;->build()Lcom/android/settingslib/net/NetworkCycleDataForUid;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "NetworkDataForUidLoader"

    const-string v2, "Exception querying network detail."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method
