.class Lcom/android/server/v$kth;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "kth"
.end annotation


# instance fields
.field private Ri:J

.field private mStartTimeMs:J

.field final synthetic this$0:Lcom/android/server/v;


# direct methods
.method private constructor <init>(Lcom/android/server/v;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/v$kth;->this$0:Lcom/android/server/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/v;Lcom/android/server/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/v$kth;-><init>(Lcom/android/server/v;)V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/v$kth;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/v$kth;->isStopped()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStarted()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/v$kth;->mStartTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStopped()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/v$kth;->Ri:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public na()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/v$kth;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/v$kth;->mStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/v$kth;->stop()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/v$kth;->mStartTimeMs:J

    iput-wide v0, p0, Lcom/android/server/v$kth;->Ri:J

    return-void
.end method

.method public start()Lcom/android/server/v$kth;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/v$kth;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/v$kth;->mStartTimeMs:J

    :cond_0
    return-object p0
.end method

.method public stop()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/v$kth;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/v$kth;->Ri:J

    :cond_0
    iget-wide v0, p0, Lcom/android/server/v$kth;->Ri:J

    iget-wide v2, p0, Lcom/android/server/v$kth;->mStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
