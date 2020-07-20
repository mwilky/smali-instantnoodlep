.class Lcom/android/server/am/ivd$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ivd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sis"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/am/ivd$sis;",
        ">;"
    }
.end annotation


# instance fields
.field Kt:J

.field Lt:J

.field Mt:I

.field Nt:Ljava/lang/String;

.field createTime:Ljava/lang/String;

.field pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/ivd;

.field uid:I


# direct methods
.method private constructor <init>(Lcom/android/server/am/ivd;Lcom/android/server/am/ivd$igw;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/ivd$sis;->this$0:Lcom/android/server/am/ivd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ivd$sis;->uid:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/ivd$sis;->pkgName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/ivd$sis;->createTime:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ivd$sis;->Kt:J

    iput-wide v0, p0, Lcom/android/server/am/ivd$sis;->Lt:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ivd$sis;->Mt:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/ivd$sis;->Nt:Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iget v0, p2, Lcom/android/server/am/ivd$igw;->uid:I

    iput v0, p0, Lcom/android/server/am/ivd$sis;->uid:I

    iget-object v0, p2, Lcom/android/server/am/ivd$igw;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ivd$sis;->pkgName:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/server/am/ivd$igw;->hu:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/ivd$sis;->Nt:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/am/ivd;->dma(Lcom/android/server/am/ivd;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ivd$sis;->createTime:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/ivd$sis;->Kt:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ivd;Lcom/android/server/am/ivd$igw;Lcom/android/server/am/les;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ivd$sis;-><init>(Lcom/android/server/am/ivd;Lcom/android/server/am/ivd$igw;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ivd;Lcom/android/server/am/ivd$sis;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/ivd$sis;->this$0:Lcom/android/server/am/ivd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/ivd$sis;->uid:I

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/am/ivd$sis;->pkgName:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/am/ivd$sis;->createTime:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ivd$sis;->Kt:J

    iput-wide v0, p0, Lcom/android/server/am/ivd$sis;->Lt:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/ivd$sis;->Mt:I

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/am/ivd$sis;->Nt:Ljava/lang/String;

    monitor-enter p2

    :try_start_0
    iget p1, p2, Lcom/android/server/am/ivd$sis;->uid:I

    iput p1, p0, Lcom/android/server/am/ivd$sis;->uid:I

    iget-object p1, p2, Lcom/android/server/am/ivd$sis;->pkgName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ivd$sis;->pkgName:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/server/am/ivd$sis;->createTime:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ivd$sis;->createTime:Ljava/lang/String;

    iget-wide v0, p2, Lcom/android/server/am/ivd$sis;->Kt:J

    iput-wide v0, p0, Lcom/android/server/am/ivd$sis;->Kt:J

    iget-wide v0, p2, Lcom/android/server/am/ivd$sis;->Lt:J

    iput-wide v0, p0, Lcom/android/server/am/ivd$sis;->Lt:J

    iget p1, p2, Lcom/android/server/am/ivd$sis;->Mt:I

    iput p1, p0, Lcom/android/server/am/ivd$sis;->Mt:I

    iget-object p1, p2, Lcom/android/server/am/ivd$sis;->Nt:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ivd$sis;->Nt:Ljava/lang/String;

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ivd;Lcom/android/server/am/ivd$sis;Lcom/android/server/am/les;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ivd$sis;-><init>(Lcom/android/server/am/ivd;Lcom/android/server/am/ivd$sis;)V

    return-void
.end method

.method private On()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/ivd$sis;->Mt:I

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/ivd$sis;->Kt:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/ivd$sis;->Lt:J

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ab(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/ivd$sis;->On()V

    iput p1, p0, Lcom/android/server/am/ivd$sis;->Mt:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private sis(Lcom/android/server/am/ivd$sis;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lcom/android/server/am/ivd$sis;->Kt:J

    iget-wide v3, p1, Lcom/android/server/am/ivd$sis;->Kt:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget p0, p0, Lcom/android/server/am/ivd$sis;->uid:I

    iget p1, p1, Lcom/android/server/am/ivd$sis;->uid:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private z(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/ivd$sis;->pkgName:Ljava/lang/String;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$sis;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ivd$sis;->On()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$sis;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/ivd$sis;->ab(I)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$sis;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/ivd$sis;->z(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$sis;Lcom/android/server/am/ivd$sis;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/ivd$sis;->sis(Lcom/android/server/am/ivd$sis;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/am/ivd$sis;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ivd$sis;->you(Lcom/android/server/am/ivd$sis;)I

    move-result p0

    return p0
.end method

.method public you(Lcom/android/server/am/ivd$sis;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/ivd$sis;->Mt:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/ivd$sis;->On()V

    :cond_0
    iget v0, p1, Lcom/android/server/am/ivd$sis;->Mt:I

    if-nez v0, :cond_1

    invoke-direct {p1}, Lcom/android/server/am/ivd$sis;->On()V

    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/ivd$sis;->Lt:J

    iget-wide v2, p1, Lcom/android/server/am/ivd$sis;->Lt:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_2
    iget-wide v0, p0, Lcom/android/server/am/ivd$sis;->Lt:J

    iget-wide v2, p1, Lcom/android/server/am/ivd$sis;->Lt:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    const/4 p1, -0x1

    monitor-exit p0

    return p1

    :cond_3
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
