.class Lcom/android/server/am/x$tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tsu"
.end annotation


# instance fields
.field packageName:Ljava/lang/String;

.field procState:I

.field final synthetic this$0:Lcom/android/server/am/x;

.field uE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field uid:I

.field vE:Ljava/lang/String;

.field wE:J


# direct methods
.method private constructor <init>(Lcom/android/server/am/x;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/x$tsu;->this$0:Lcom/android/server/am/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/x$tsu;->uid:I

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/am/x$tsu;->packageName:Ljava/lang/String;

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/x$tsu;->procState:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/x$tsu;->uE:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/am/x$tsu;->vE:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/am/x$tsu;->wE:J

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/x$tsu;->uid:I

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/x$tsu;->packageName:Ljava/lang/String;

    iget p1, p0, Lcom/android/server/am/x$tsu;->uid:I

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->getProcState(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/x$tsu;->procState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/x;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/am/OpJobController$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/x$tsu;-><init>(Lcom/android/server/am/x;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method private Jb(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/x$tsu;->procState:I

    return-void
.end method

.method private Ra()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/x$tsu;->procState:I

    return p0
.end method

.method private op()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/x$tsu;->vE:Ljava/lang/String;

    return-object p0
.end method

.method private pp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/x$tsu;->wE:J

    return-wide v0
.end method

.method private qp()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/x$tsu;->vE:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/am/x$tsu;->wE:J

    return-void
.end method

.method private rp()V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/x$tsu;->qp()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/x$tsu;->uE:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    iget-wide v5, p0, Lcom/android/server/am/x$tsu;->wE:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_0

    iput-wide v3, p0, Lcom/android/server/am/x$tsu;->wE:J

    iput-object v2, p0, Lcom/android/server/am/x$tsu;->vE:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/x$tsu;->uE:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic sis(Lcom/android/server/am/x$tsu;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/x$tsu;->op()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/am/x$tsu;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/x$tsu;->Ra()I

    move-result p0

    return p0
.end method

.method static synthetic you(Lcom/android/server/am/x$tsu;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/x$tsu;->pp()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic you(Lcom/android/server/am/x$tsu;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/x$tsu;->zta(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method private you(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/x$tsu;->uE:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/x$tsu;->uE:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Lcom/android/server/am/x;->access$1000()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic zta(Lcom/android/server/am/x$tsu;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/x$tsu;->rp()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/x$tsu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/x$tsu;->Jb(I)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/x$tsu;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/x$tsu;->you(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method private zta(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/x$tsu;->uE:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
