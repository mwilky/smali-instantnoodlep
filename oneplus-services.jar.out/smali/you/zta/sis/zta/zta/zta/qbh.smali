.class public Lyou/zta/sis/zta/zta/zta/qbh;
.super Lyou/zta/sis/zta/wtn$you;
.source ""


# direct methods
.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lyou/zta/sis/zta/zta/zta/qbh;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    return-void
.end method

.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lyou/zta/sis/zta/wtn$you;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-ne p2, p1, :cond_2

    iput-boolean p4, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Exactly one of the field elements is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lyou/zta/sis/zta/wtn$you;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;)V

    iput-boolean p5, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    return-void
.end method


# virtual methods
.method protected detach()Lyou/zta/sis/zta/wtn;
    .locals 3

    new-instance v0, Lyou/zta/sis/zta/zta/zta/qbh;

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->hl()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->il()Lyou/zta/sis/zta/cno;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lyou/zta/sis/zta/zta/zta/qbh;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)V

    return-object v0
.end method

.method public kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 14

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->tl()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->tl()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    if-ne p0, p1, :cond_2

    invoke-virtual {p0}, Lyou/zta/sis/zta/zta/zta/qbh;->zl()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    check-cast v0, Lyou/zta/sis/zta/zta/zta/ywr;

    iget-object v2, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    check-cast v2, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->pl()Lyou/zta/sis/zta/cno;

    move-result-object v3

    check-cast v3, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->ql()Lyou/zta/sis/zta/cno;

    move-result-object v4

    check-cast v4, Lyou/zta/sis/zta/zta/zta/ywr;

    iget-object v5, p0, Lyou/zta/sis/zta/wtn;->rVa:[Lyou/zta/sis/zta/cno;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-virtual {p1, v6}, Lyou/zta/sis/zta/wtn;->ya(I)Lyou/zta/sis/zta/cno;

    move-result-object p1

    check-cast p1, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-static {}, Lyou/zta/sis/sis/tsu;->bm()[I

    move-result-object v7

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v8

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v9

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v10

    invoke-virtual {v5}, Lyou/zta/sis/zta/zta/zta/ywr;->al()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v3, v3, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    iget-object v4, v4, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    goto :goto_0

    :cond_3
    iget-object v12, v5, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v12, v9}, Lyou/zta/sis/zta/zta/zta/dma;->igw([I[I)V

    iget-object v3, v3, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v9, v3, v8}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    iget-object v3, v5, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v9, v3, v9}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    iget-object v3, v4, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v9, v3, v9}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    move-object v3, v8

    move-object v4, v9

    :goto_0
    invoke-virtual {p1}, Lyou/zta/sis/zta/zta/zta/ywr;->al()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v0, v0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    iget-object v2, v2, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    goto :goto_1

    :cond_4
    iget-object v13, p1, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v13, v10}, Lyou/zta/sis/zta/zta/zta/dma;->igw([I[I)V

    iget-object v0, v0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v10, v0, v7}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    iget-object v0, p1, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v10, v0, v10}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    iget-object v0, v2, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v10, v0, v10}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    move-object v0, v7

    move-object v2, v10

    :goto_1
    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v13

    invoke-static {v0, v3, v13}, Lyou/zta/sis/zta/zta/zta/dma;->ssp([I[I[I)V

    invoke-static {v2, v4, v8}, Lyou/zta/sis/zta/zta/zta/dma;->ssp([I[I[I)V

    invoke-static {v13}, Lyou/zta/sis/sis/tsu;->dma([I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v8}, Lyou/zta/sis/sis/tsu;->dma([I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lyou/zta/sis/zta/zta/zta/qbh;->zl()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v1}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {v13, v9}, Lyou/zta/sis/zta/zta/zta/dma;->igw([I[I)V

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v3

    invoke-static {v9, v13, v3}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    invoke-static {v9, v0, v9}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    invoke-static {v3, v3}, Lyou/zta/sis/zta/zta/zta/dma;->kth([I[I)V

    invoke-static {v2, v3, v7}, Lyou/zta/sis/sis/tsu;->wtn([I[I[I)V

    invoke-static {v9, v9, v3}, Lyou/zta/sis/sis/tsu;->igw([I[I[I)I

    move-result v0

    invoke-static {v0, v3}, Lyou/zta/sis/zta/zta/zta/dma;->cno(I[I)V

    new-instance v2, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-direct {v2, v10}, Lyou/zta/sis/zta/zta/zta/ywr;-><init>([I)V

    iget-object v0, v2, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v8, v0}, Lyou/zta/sis/zta/zta/zta/dma;->igw([I[I)V

    iget-object v0, v2, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v0, v3, v0}, Lyou/zta/sis/zta/zta/zta/dma;->ssp([I[I[I)V

    new-instance v4, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-direct {v4, v3}, Lyou/zta/sis/zta/zta/zta/ywr;-><init>([I)V

    iget-object v0, v2, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    iget-object v3, v4, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v9, v0, v3}, Lyou/zta/sis/zta/zta/zta/dma;->ssp([I[I[I)V

    iget-object v0, v4, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v0, v8, v7}, Lyou/zta/sis/zta/zta/zta/dma;->rtg([I[I[I)V

    iget-object v0, v4, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v7, v0}, Lyou/zta/sis/zta/zta/zta/dma;->bio([I[I)V

    new-instance v0, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-direct {v0, v13}, Lyou/zta/sis/zta/zta/zta/ywr;-><init>([I)V

    if-nez v11, :cond_7

    iget-object v3, v0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    iget-object v5, v5, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v3, v5, v3}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    :cond_7
    if-nez v12, :cond_8

    iget-object v3, v0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v3, p1, v3}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    :cond_8
    const/4 p1, 0x1

    new-array p1, p1, [Lyou/zta/sis/zta/cno;

    aput-object v0, p1, v6

    new-instance v6, Lyou/zta/sis/zta/zta/zta/qbh;

    iget-boolean v5, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object v0, v6

    move-object v3, v4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lyou/zta/sis/zta/zta/zta/qbh;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v6
.end method

.method public negate()Lyou/zta/sis/zta/wtn;
    .locals 7

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->tl()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lyou/zta/sis/zta/zta/zta/qbh;

    iget-object v2, p0, Lyou/zta/sis/zta/wtn;->curve:Lyou/zta/sis/zta/rtg;

    iget-object v3, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    iget-object v1, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->negate()Lyou/zta/sis/zta/cno;

    move-result-object v4

    iget-object v5, p0, Lyou/zta/sis/zta/wtn;->rVa:[Lyou/zta/sis/zta/cno;

    iget-boolean v6, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lyou/zta/sis/zta/zta/zta/qbh;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v0
.end method

.method public wtn(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lyou/zta/sis/zta/zta/zta/qbh;->yl()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->tl()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->tl()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lyou/zta/sis/zta/zta/zta/qbh;->zl()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lyou/zta/sis/zta/zta/zta/qbh;->zl()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method public yl()Lyou/zta/sis/zta/wtn;
    .locals 1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->tl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/zta/zta/qbh;->zl()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public zl()Lyou/zta/sis/zta/wtn;
    .locals 11

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->tl()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v2

    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    check-cast v0, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-virtual {v0}, Lyou/zta/sis/zta/zta/zta/ywr;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    check-cast v1, Lyou/zta/sis/zta/zta/zta/ywr;

    iget-object v3, p0, Lyou/zta/sis/zta/wtn;->rVa:[Lyou/zta/sis/zta/cno;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v5

    iget-object v6, v0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v6, v5}, Lyou/zta/sis/zta/zta/zta/dma;->igw([I[I)V

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v6

    invoke-static {v5, v6}, Lyou/zta/sis/zta/zta/zta/dma;->igw([I[I)V

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v7

    iget-object v8, v1, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v8, v7}, Lyou/zta/sis/zta/zta/zta/dma;->igw([I[I)V

    invoke-static {v7, v7, v7}, Lyou/zta/sis/sis/tsu;->igw([I[I[I)I

    move-result v8

    invoke-static {v8, v7}, Lyou/zta/sis/zta/zta/zta/dma;->cno(I[I)V

    iget-object v1, v1, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v5, v1, v5}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    const/4 v1, 0x2

    const/4 v8, 0x7

    invoke-static {v8, v5, v1, v4}, Lyou/zta/sis/sis/kth;->ssp(I[III)I

    move-result v1

    invoke-static {v1, v5}, Lyou/zta/sis/zta/zta/zta/dma;->cno(I[I)V

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v1

    const/4 v9, 0x3

    invoke-static {v8, v6, v9, v4, v1}, Lyou/zta/sis/sis/kth;->you(I[III[I)I

    move-result v8

    invoke-static {v8, v1}, Lyou/zta/sis/zta/zta/zta/dma;->cno(I[I)V

    new-instance v8, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-direct {v8, v6}, Lyou/zta/sis/zta/zta/zta/ywr;-><init>([I)V

    iget-object v6, v8, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v7, v6}, Lyou/zta/sis/zta/zta/zta/dma;->igw([I[I)V

    iget-object v6, v8, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v6, v5, v6}, Lyou/zta/sis/zta/zta/zta/dma;->ssp([I[I[I)V

    iget-object v6, v8, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v6, v5, v6}, Lyou/zta/sis/zta/zta/zta/dma;->ssp([I[I[I)V

    new-instance v6, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-direct {v6, v5}, Lyou/zta/sis/zta/zta/zta/ywr;-><init>([I)V

    iget-object v9, v8, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    iget-object v10, v6, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v5, v9, v10}, Lyou/zta/sis/zta/zta/zta/dma;->ssp([I[I[I)V

    iget-object v5, v6, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v5, v7, v5}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    iget-object v5, v6, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v5, v1, v5}, Lyou/zta/sis/zta/zta/zta/dma;->ssp([I[I[I)V

    new-instance v1, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-direct {v1, v7}, Lyou/zta/sis/zta/zta/zta/ywr;-><init>([I)V

    iget-object v0, v0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    iget-object v5, v1, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v0, v5}, Lyou/zta/sis/zta/zta/zta/dma;->wtn([I[I)V

    invoke-virtual {v3}, Lyou/zta/sis/zta/zta/zta/ywr;->al()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    iget-object v3, v3, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v0, v3, v0}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    :cond_2
    new-instance v0, Lyou/zta/sis/zta/zta/zta/qbh;

    const/4 v3, 0x1

    new-array v5, v3, [Lyou/zta/sis/zta/cno;

    aput-object v1, v5, v4

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object v1, v0

    move-object v3, v8

    move-object v4, v6

    move v6, p0

    invoke-direct/range {v1 .. v6}, Lyou/zta/sis/zta/zta/zta/qbh;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v0
.end method
