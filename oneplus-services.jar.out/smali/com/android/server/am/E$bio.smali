.class Lcom/android/server/am/E$bio;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "bio"
.end annotation


# instance fields
.field public AF:D

.field public BF:I

.field private CF:J

.field private DF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/E$cno;",
            ">;"
        }
    .end annotation
.end field

.field private EF:I

.field private GF:J

.field private HF:Z

.field private IF:Z

.field private mPackageName:Ljava/lang/String;

.field private rF:J

.field private sF:J

.field private tF:J

.field public yF:D

.field public zF:D


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/E$bio;->EF:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/E$bio;->HF:Z

    iput-boolean v0, p0, Lcom/android/server/am/E$bio;->IF:Z

    iput-object p1, p0, Lcom/android/server/am/E$bio;->mPackageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/android/server/am/E;->Yc()J

    move-result-wide v4

    rem-long v4, v2, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/E$bio;->CF:J

    if-eqz p2, :cond_0

    :goto_0
    invoke-static {}, Lcom/android/server/am/E;->access$3300()I

    move-result p1

    sub-int/2addr p1, v1

    if-ge v0, p1, :cond_0

    new-instance p1, Lcom/android/server/am/E$cno;

    iget-object p2, p0, Lcom/android/server/am/E$bio;->mPackageName:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/android/server/am/E$cno;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    new-instance p1, Lcom/android/server/am/E$cno;

    iget-object p2, p0, Lcom/android/server/am/E$bio;->mPackageName:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/android/server/am/E$cno;-><init>(Ljava/lang/String;)V

    iget-wide p2, p0, Lcom/android/server/am/E$bio;->CF:J

    invoke-static {p1, p2, p3}, Lcom/android/server/am/E$cno;->sis(Lcom/android/server/am/E$cno;J)J

    iget-object p0, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static synthetic cno(Lcom/android/server/am/E$bio;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    return-object p0
.end method

.method private d(J)I
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iget-wide v0, p0, Lcom/android/server/am/E$bio;->CF:J

    sub-long/2addr p1, v0

    invoke-static {}, Lcom/android/server/am/E;->Yc()J

    move-result-wide v0

    div-long/2addr p1, v0

    iget-object v0, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/android/server/am/E;->access$3500()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    int-to-long v2, v0

    cmp-long v2, v2, p1

    if-gez v2, :cond_2

    new-instance v2, Lcom/android/server/am/E$cno;

    iget-object v3, p0, Lcom/android/server/am/E$bio;->mPackageName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/android/server/am/E$cno;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/am/E$bio;->CF:J

    invoke-static {}, Lcom/android/server/am/E;->Yc()J

    move-result-wide v5

    add-int/lit8 v0, v0, 0x1

    int-to-long v7, v0

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/android/server/am/E$cno;->sis(Lcom/android/server/am/E$cno;J)J

    iget-object v3, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {}, Lcom/android/server/am/E;->access$3500()I

    move-result v4

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/E$cno;

    invoke-static {p1}, Lcom/android/server/am/E$cno;->sis(Lcom/android/server/am/E$cno;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/E$bio;->CF:J

    iget-object p1, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/am/E$bio;->EF:I

    invoke-static {}, Lcom/android/server/am/E;->access$3300()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/am/E;->u(I)I

    :cond_3
    iget p0, p0, Lcom/android/server/am/E$bio;->EF:I

    return p0
.end method

.method static synthetic rtg(Lcom/android/server/am/E$bio;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/E$bio;->rF:J

    return-wide v0
.end method

.method static synthetic sis(Lcom/android/server/am/E$bio;J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/E$bio;->rF:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/E$bio;->rF:J

    return-wide v0
.end method

.method static synthetic sis(Lcom/android/server/am/E$bio;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/E$bio;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ssp(Lcom/android/server/am/E$bio;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/E$bio;->tF:J

    return-wide v0
.end method

.method static synthetic tsu(Lcom/android/server/am/E$bio;J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/E$bio;->tF:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/E$bio;->tF:J

    return-wide v0
.end method

.method static synthetic tsu(Lcom/android/server/am/E$bio;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/E$bio;->HF:Z

    return p0
.end method

.method static synthetic you(Lcom/android/server/am/E$bio;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/E$bio;->sF:J

    return-wide v0
.end method

.method static synthetic you(Lcom/android/server/am/E$bio;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/E$bio;->sF:J

    return-wide p1
.end method

.method static synthetic zta(Lcom/android/server/am/E$bio;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/E$bio;->CF:J

    return-wide p1
.end method

.method static synthetic zta(Lcom/android/server/am/E$bio;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/E$bio;->HF:Z

    return p1
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/am/E$bio;->EF:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/E$cno;

    invoke-virtual {v0}, Lcom/android/server/am/E$cno;->Uc()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/E$bio;->IF:Z

    invoke-static {}, Lcom/android/server/am/E;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Increase Total Launch Time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", times : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/am/E$bio;->EF:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/E$cno;

    invoke-static {p1}, Lcom/android/server/am/E$cno;->you(Lcom/android/server/am/E$cno;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", index : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/E$bio;->EF:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpRestartProcessManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public Vc()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/E$bio;->yF:D

    iput-wide v0, p0, Lcom/android/server/am/E$bio;->zF:D

    iput-wide v0, p0, Lcom/android/server/am/E$bio;->AF:D

    return-void
.end method

.method public Wc()[B
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/E$bio;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/E$cno;

    invoke-virtual {v1}, Lcom/android/server/am/E$cno;->Wc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public Xc()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/E$bio;->tF:J

    iput-wide v0, p0, Lcom/android/server/am/E$bio;->rF:J

    return-void
.end method

.method public dump()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/E$bio;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : X : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/E$bio;->yF:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", Y : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/E$bio;->zF:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", Z : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/E$bio;->AF:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpRestartProcessManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/E$bio;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public gwm(J)V
    .locals 5

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/E;->cgv(Z)Z

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/am/E;->access$302(Z)Z

    invoke-static {p1, p2}, Lcom/android/server/am/E;->obl(J)J

    const-string v2, ""

    invoke-static {v2}, Lcom/android/server/am/E;->B(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/E$bio;->yF:D

    iput-wide v2, p0, Lcom/android/server/am/E$bio;->zF:D

    iput-wide v2, p0, Lcom/android/server/am/E$bio;->AF:D

    invoke-static {}, Lcom/android/server/am/E;->Yc()J

    move-result-wide v2

    rem-long v2, p1, v2

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lcom/android/server/am/E$bio;->CF:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/server/am/E$bio;->tF:J

    iput-wide p1, p0, Lcom/android/server/am/E$bio;->rF:J

    iget-object v2, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Lcom/android/server/am/E$cno;

    iget-object v3, p0, Lcom/android/server/am/E$bio;->mPackageName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/android/server/am/E$cno;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/am/E$bio;->CF:J

    invoke-static {v2, v3, v4}, Lcom/android/server/am/E$cno;->sis(Lcom/android/server/am/E$cno;J)J

    iget-object v3, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v1, p0, Lcom/android/server/am/E$bio;->EF:I

    iput-wide p1, p0, Lcom/android/server/am/E$bio;->sF:J

    iput-wide p1, p0, Lcom/android/server/am/E$bio;->GF:J

    iput-boolean v0, p0, Lcom/android/server/am/E$bio;->HF:Z

    return-void
.end method

.method public ibl(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/E$bio;->tF:J

    return-void
.end method

.method public t(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/E$bio;->BF:I

    return-void
.end method

.method public ugm(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/E$bio;->sF:J

    iput-wide v0, p0, Lcom/android/server/am/E$bio;->GF:J

    iput-wide p1, p0, Lcom/android/server/am/E$bio;->sF:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/E$bio;->vdb(J)Z

    iget-object v0, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/server/am/E$bio;->EF:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/E$cno;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/E$cno;->zta(Lcom/android/server/am/E$cno;J)J

    return-void
.end method

.method public vdb(J)Z
    .locals 11

    iget-wide v0, p0, Lcom/android/server/am/E$bio;->CF:J

    sub-long/2addr p1, v0

    invoke-static {}, Lcom/android/server/am/E;->Yc()J

    move-result-wide v0

    div-long/2addr p1, v0

    iget-object v0, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/android/server/am/E;->access$3500()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    const-string v2, ", max size is "

    const-string v3, "OpRestartProcessManager"

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package record in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/E$bio;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  need to add : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/E;->access$3300()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_1
    int-to-long v4, v0

    cmp-long v4, v4, p1

    if-gez v4, :cond_2

    new-instance v4, Lcom/android/server/am/E$cno;

    iget-object v5, p0, Lcom/android/server/am/E$bio;->mPackageName:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/server/am/E$cno;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/android/server/am/E$bio;->CF:J

    invoke-static {}, Lcom/android/server/am/E;->Yc()J

    move-result-wide v7

    add-int/lit8 v0, v0, 0x1

    int-to-long v9, v0

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    invoke-static {v4, v5, v6}, Lcom/android/server/am/E$cno;->sis(Lcom/android/server/am/E$cno;J)J

    iget-object v5, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {}, Lcom/android/server/am/E;->access$3500()I

    move-result v6

    if-lt v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object v5, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/server/am/E;->access$3300()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p1, p2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package record size is abnormal in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/E$bio;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , size : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/E;->access$3300()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/E;->access$3300()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p1, p2

    move p2, v1

    :goto_2
    if-ge p2, p1, :cond_3

    new-instance v0, Lcom/android/server/am/E$cno;

    iget-object v2, p0, Lcom/android/server/am/E$bio;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/android/server/am/E$cno;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/E$cno;

    invoke-static {p1}, Lcom/android/server/am/E$cno;->sis(Lcom/android/server/am/E$cno;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/E$bio;->CF:J

    iget-object p1, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/am/E$bio;->EF:I

    invoke-static {}, Lcom/android/server/am/E;->access$3300()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    iget-object p1, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/am/E;->u(I)I

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateSelf :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/E$bio;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", size : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public zta(Landroid/content/Context;J)V
    .locals 5

    iget-wide v0, p0, Lcom/android/server/am/E$bio;->sF:J

    sub-long/2addr p2, v0

    invoke-static {}, Lcom/android/server/am/E;->Zc()J

    move-result-wide v0

    cmp-long p1, p2, v0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-gez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duration is too short, ignore : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/E$bio;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpRestartProcessManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide p1, p0, Lcom/android/server/am/E$bio;->GF:J

    iput-wide p1, p0, Lcom/android/server/am/E$bio;->sF:J

    iget-object p3, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/am/E$bio;->EF:I

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/E$cno;

    invoke-static {p3}, Lcom/android/server/am/E$cno;->sis(Lcom/android/server/am/E$cno;)J

    move-result-wide v3

    cmp-long p1, p1, v3

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    iget p2, p0, Lcom/android/server/am/E$bio;->EF:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/E$cno;

    iget-wide p2, p0, Lcom/android/server/am/E$bio;->GF:J

    invoke-static {p1, p2, p3}, Lcom/android/server/am/E$cno;->zta(Lcom/android/server/am/E$cno;J)J

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    iget p2, p0, Lcom/android/server/am/E$bio;->EF:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/E$cno;

    invoke-static {p1, v1, v2}, Lcom/android/server/am/E$cno;->zta(Lcom/android/server/am/E$cno;J)J

    :goto_0
    iget-boolean p1, p0, Lcom/android/server/am/E$bio;->IF:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    iget p2, p0, Lcom/android/server/am/E$bio;->EF:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/E$cno;

    invoke-virtual {p1}, Lcom/android/server/am/E$cno;->Tc()V

    const-string p1, ""

    invoke-static {p1}, Lcom/android/server/am/E;->B(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/am/E$bio;->IF:Z

    return-void

    :cond_2
    iget-wide v3, p0, Lcom/android/server/am/E$bio;->sF:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/am/E$bio;->DF:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/am/E$bio;->EF:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/E$cno;

    iget-object v1, p0, Lcom/android/server/am/E$bio;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v1}, Lcom/android/server/am/E$cno;->you(JLjava/lang/String;)V

    :cond_3
    iput-boolean v0, p0, Lcom/android/server/am/E$bio;->IF:Z

    return-void
.end method
