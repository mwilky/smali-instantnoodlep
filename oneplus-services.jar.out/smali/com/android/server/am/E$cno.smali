.class final Lcom/android/server/am/E$cno;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "cno"
.end annotation


# instance fields
.field private fF:J

.field private gF:J

.field private hF:J

.field private iF:J

.field private jF:J

.field private kF:J

.field private lF:D

.field private mF:D

.field private mPackageName:Ljava/lang/String;

.field private nF:D

.field private oF:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/E$cno;->lF:D

    iput-wide v0, p0, Lcom/android/server/am/E$cno;->mF:D

    iput-wide v0, p0, Lcom/android/server/am/E$cno;->nF:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/E$cno;->oF:Z

    iput-object p1, p0, Lcom/android/server/am/E$cno;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic bio(Lcom/android/server/am/E$cno;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/E$cno;->iF:J

    return-wide v0
.end method

.method static synthetic cno(Lcom/android/server/am/E$cno;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/E$cno;->nF:D

    return-wide v0
.end method

.method static synthetic igw(Lcom/android/server/am/E$cno;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/E$cno;->hF:J

    return-wide v0
.end method

.method static synthetic kth(Lcom/android/server/am/E$cno;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/E$cno;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic rtg(Lcom/android/server/am/E$cno;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/E$cno;->lF:D

    return-wide v0
.end method

.method static synthetic rtg(Lcom/android/server/am/E$cno;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/E$cno;->gF:J

    return-wide p1
.end method

.method static synthetic sis(Lcom/android/server/am/E$cno;D)D
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/E$cno;->nF:D

    return-wide p1
.end method

.method static synthetic sis(Lcom/android/server/am/E$cno;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/E$cno;->fF:J

    return-wide v0
.end method

.method static synthetic sis(Lcom/android/server/am/E$cno;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/E$cno;->fF:J

    return-wide p1
.end method

.method static synthetic ssp(Lcom/android/server/am/E$cno;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/E$cno;->mF:D

    return-wide v0
.end method

.method static synthetic tsu(Lcom/android/server/am/E$cno;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/E$cno;->iF:J

    return-wide p1
.end method

.method static synthetic tsu(Lcom/android/server/am/E$cno;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/E$cno;->oF:Z

    return p0
.end method

.method static synthetic wtn(Lcom/android/server/am/E$cno;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/E$cno;->gF:J

    return-wide v0
.end method

.method static synthetic you(Lcom/android/server/am/E$cno;D)D
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/E$cno;->mF:D

    return-wide p1
.end method

.method static synthetic you(Lcom/android/server/am/E$cno;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/E$cno;->kF:J

    return-wide v0
.end method

.method static synthetic you(Lcom/android/server/am/E$cno;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/E$cno;->kF:J

    return-wide p1
.end method

.method static synthetic zta(Lcom/android/server/am/E$cno;D)D
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/E$cno;->lF:D

    return-wide p1
.end method

.method static synthetic zta(Lcom/android/server/am/E$cno;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/E$cno;->jF:J

    return-wide v0
.end method

.method static synthetic zta(Lcom/android/server/am/E$cno;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/E$cno;->jF:J

    return-wide p1
.end method

.method static synthetic zta(Lcom/android/server/am/E$cno;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/E$cno;->oF:Z

    return p1
.end method


# virtual methods
.method public Tc()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/E$cno;->kF:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/E$cno;->kF:J

    return-void
.end method

.method public Uc()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/E$cno;->kF:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/E$cno;->kF:J

    return-void
.end method

.method public Vc()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/E$cno;->lF:D

    iput-wide v0, p0, Lcom/android/server/am/E$cno;->mF:D

    iput-wide v0, p0, Lcom/android/server/am/E$cno;->nF:D

    return-void
.end method

.method public Wc()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/server/am/E$cno;->fF:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/E$cno;->kF:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/E$cno;->iF:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/E$cno;->jF:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/E$cno;->oF:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/E$cno;->lF:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/E$cno;->mF:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/E$cno;->nF:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bvj(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/E$cno;->hF:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/E$cno;->hF:J

    return-void
.end method

.method public ibl(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/E$cno;->kF:J

    return-void
.end method

.method public qeg(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/E$cno;->oF:Z

    return-void
.end method

.method public you(JLjava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/E$cno;->jF:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/E$cno;->zta(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/am/E;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abnormal duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", launch time : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/server/am/E$cno;->jF:J

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " for "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpRestartProcessManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public zta(JLjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/server/am/E;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "increase duration : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "OpRestartProcessManager"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/E$cno;->hF:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/E$cno;->hF:J

    return-void
.end method
