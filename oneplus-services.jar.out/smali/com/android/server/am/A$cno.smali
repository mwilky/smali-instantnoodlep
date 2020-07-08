.class final Lcom/android/server/am/A$cno;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "cno"
.end annotation


# instance fields
.field private YE:J

.field private ZE:J

.field private _E:J

.field private aF:J

.field private bF:J

.field private cF:J

.field private dF:D

.field private eF:D

.field private fF:D

.field private gF:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/A$cno;->dF:D

    iput-wide v0, p0, Lcom/android/server/am/A$cno;->eF:D

    iput-wide v0, p0, Lcom/android/server/am/A$cno;->fF:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/A$cno;->gF:Z

    iput-object p1, p0, Lcom/android/server/am/A$cno;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic bio(Lcom/android/server/am/A$cno;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/A$cno;->aF:J

    return-wide v0
.end method

.method static synthetic cno(Lcom/android/server/am/A$cno;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/A$cno;->fF:D

    return-wide v0
.end method

.method static synthetic igw(Lcom/android/server/am/A$cno;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/A$cno;->_E:J

    return-wide v0
.end method

.method static synthetic kth(Lcom/android/server/am/A$cno;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/A$cno;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic rtg(Lcom/android/server/am/A$cno;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/A$cno;->dF:D

    return-wide v0
.end method

.method static synthetic rtg(Lcom/android/server/am/A$cno;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/A$cno;->ZE:J

    return-wide p1
.end method

.method static synthetic sis(Lcom/android/server/am/A$cno;D)D
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/A$cno;->fF:D

    return-wide p1
.end method

.method static synthetic sis(Lcom/android/server/am/A$cno;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/A$cno;->YE:J

    return-wide v0
.end method

.method static synthetic sis(Lcom/android/server/am/A$cno;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/A$cno;->YE:J

    return-wide p1
.end method

.method static synthetic ssp(Lcom/android/server/am/A$cno;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/A$cno;->eF:D

    return-wide v0
.end method

.method static synthetic tsu(Lcom/android/server/am/A$cno;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/A$cno;->aF:J

    return-wide p1
.end method

.method static synthetic tsu(Lcom/android/server/am/A$cno;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/A$cno;->gF:Z

    return p0
.end method

.method static synthetic wtn(Lcom/android/server/am/A$cno;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/A$cno;->ZE:J

    return-wide v0
.end method

.method static synthetic you(Lcom/android/server/am/A$cno;D)D
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/A$cno;->eF:D

    return-wide p1
.end method

.method static synthetic you(Lcom/android/server/am/A$cno;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/A$cno;->cF:J

    return-wide v0
.end method

.method static synthetic you(Lcom/android/server/am/A$cno;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/A$cno;->cF:J

    return-wide p1
.end method

.method static synthetic zta(Lcom/android/server/am/A$cno;D)D
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/A$cno;->dF:D

    return-wide p1
.end method

.method static synthetic zta(Lcom/android/server/am/A$cno;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/A$cno;->bF:J

    return-wide v0
.end method

.method static synthetic zta(Lcom/android/server/am/A$cno;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/A$cno;->bF:J

    return-wide p1
.end method

.method static synthetic zta(Lcom/android/server/am/A$cno;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/A$cno;->gF:Z

    return p1
.end method


# virtual methods
.method public Uc()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/A$cno;->cF:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/A$cno;->cF:J

    return-void
.end method

.method public Vc()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/A$cno;->cF:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/A$cno;->cF:J

    return-void
.end method

.method public Wc()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/A$cno;->dF:D

    iput-wide v0, p0, Lcom/android/server/am/A$cno;->eF:D

    iput-wide v0, p0, Lcom/android/server/am/A$cno;->fF:D

    return-void
.end method

.method public Xc()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/server/am/A$cno;->YE:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/A$cno;->cF:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/A$cno;->aF:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/A$cno;->bF:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/A$cno;->gF:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/A$cno;->dF:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/A$cno;->eF:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/A$cno;->fF:D

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

    iget-wide v0, p0, Lcom/android/server/am/A$cno;->_E:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/A$cno;->_E:J

    return-void
.end method

.method public ibl(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/A$cno;->cF:J

    return-void
.end method

.method public ivd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/A$cno;->gF:Z

    return-void
.end method

.method public you(JLjava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/A$cno;->bF:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/A$cno;->zta(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/am/A;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abnormal duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", launch time : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/server/am/A$cno;->bF:J

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

    invoke-static {}, Lcom/android/server/am/A;->access$1000()Z

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
    iget-wide v0, p0, Lcom/android/server/am/A$cno;->_E:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/A$cno;->_E:J

    return-void
.end method
