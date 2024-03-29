.class public Lcom/android/settingslib/net/NetworkStatsSummaryLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "NetworkStatsSummaryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Landroid/app/usage/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEnd:J

.field private final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field private final mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private final mStart:J


# direct methods
.method synthetic constructor <init>(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;Lcom/android/settingslib/net/NetworkStatsSummaryLoader$1;)V
    .locals 2

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;->access$000(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;->access$100(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mStart:J

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;->access$200(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mEnd:J

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;->access$300(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;)Landroid/net/NetworkTemplate;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;->access$000(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "netstats"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    return-void
.end method


# virtual methods
.method public loadInBackground()Ljava/lang/Object;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v1, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    iget-wide v2, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mStart:J

    iget-wide v4, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mEnd:J

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NetworkDetailLoader"

    const-string v1, "Exception querying network detail."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected onReset()V
    .locals 0

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    return-void
.end method
