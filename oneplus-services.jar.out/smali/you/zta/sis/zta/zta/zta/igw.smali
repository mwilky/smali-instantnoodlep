.class public Lyou/zta/sis/zta/zta/zta/igw;
.super Lyou/zta/sis/zta/wtn$you;
.source ""


# direct methods
.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lyou/zta/sis/zta/zta/zta/igw;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

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

    new-instance v0, Lyou/zta/sis/zta/zta/zta/igw;

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->dl()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->el()Lyou/zta/sis/zta/cno;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lyou/zta/sis/zta/zta/zta/igw;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)V

    return-object v0
.end method

.method public kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 14

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->pl()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->pl()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    if-ne p0, p1, :cond_2

    invoke-virtual {p0}, Lyou/zta/sis/zta/zta/zta/igw;->vl()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    check-cast v0, Lyou/zta/sis/zta/zta/zta/bio;

    iget-object v2, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    check-cast v2, Lyou/zta/sis/zta/zta/zta/bio;

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->ll()Lyou/zta/sis/zta/cno;

    move-result-object v3

    check-cast v3, Lyou/zta/sis/zta/zta/zta/bio;

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->ml()Lyou/zta/sis/zta/cno;

    move-result-object v4

    check-cast v4, Lyou/zta/sis/zta/zta/zta/bio;

    iget-object v5, p0, Lyou/zta/sis/zta/wtn;->vUa:[Lyou/zta/sis/zta/cno;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lyou/zta/sis/zta/zta/zta/bio;

    invoke-virtual {p1, v6}, Lyou/zta/sis/zta/wtn;->xa(I)Lyou/zta/sis/zta/cno;

    move-result-object p1

    check-cast p1, Lyou/zta/sis/zta/zta/zta/bio;

    invoke-static {}, Lyou/zta/sis/sis/sis;->Yl()[I

    move-result-object v7

    invoke-static {}, Lyou/zta/sis/sis/sis;->create()[I

    move-result-object v8

    invoke-static {}, Lyou/zta/sis/sis/sis;->create()[I

    move-result-object v9

    invoke-static {}, Lyou/zta/sis/sis/sis;->create()[I

    move-result-object v10

    invoke-virtual {v5}, Lyou/zta/sis/zta/zta/zta/bio;->Xk()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v3, v3, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    iget-object v4, v4, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    goto :goto_0

    :cond_3
    iget-object v12, v5, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v12, v9}, Lyou/zta/sis/zta/zta/zta/kth;->igw([I[I)V

    iget-object v3, v3, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v9, v3, v8}, Lyou/zta/sis/zta/zta/zta/kth;->tsu([I[I[I)V

    iget-object v3, v5, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v9, v3, v9}, Lyou/zta/sis/zta/zta/zta/kth;->tsu([I[I[I)V

    iget-object v3, v4, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v9, v3, v9}, Lyou/zta/sis/zta/zta/zta/kth;->tsu([I[I[I)V

    move-object v3, v8

    move-object v4, v9

    :goto_0
    invoke-virtual {p1}, Lyou/zta/sis/zta/zta/zta/bio;->Xk()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v0, v0, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    iget-object v2, v2, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    goto :goto_1

    :cond_4
    iget-object v13, p1, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v13, v10}, Lyou/zta/sis/zta/zta/zta/kth;->igw([I[I)V

    iget-object v0, v0, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v10, v0, v7}, Lyou/zta/sis/zta/zta/zta/kth;->tsu([I[I[I)V

    iget-object v0, p1, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v10, v0, v10}, Lyou/zta/sis/zta/zta/zta/kth;->tsu([I[I[I)V

    iget-object v0, v2, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v10, v0, v10}, Lyou/zta/sis/zta/zta/zta/kth;->tsu([I[I[I)V

    move-object v0, v7

    move-object v2, v10

    :goto_1
    invoke-static {}, Lyou/zta/sis/sis/sis;->create()[I

    move-result-object v13

    invoke-static {v0, v3, v13}, Lyou/zta/sis/zta/zta/zta/kth;->ssp([I[I[I)V

    invoke-static {v2, v4, v8}, Lyou/zta/sis/zta/zta/zta/kth;->ssp([I[I[I)V

    invoke-static {v13}, Lyou/zta/sis/sis/sis;->dma([I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v8}, Lyou/zta/sis/sis/sis;->dma([I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lyou/zta/sis/zta/zta/zta/igw;->vl()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v1}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {v13, v9}, Lyou/zta/sis/zta/zta/zta/kth;->igw([I[I)V

    invoke-static {}, Lyou/zta/sis/sis/sis;->create()[I

    move-result-object v3

    invoke-static {v9, v13, v3}, Lyou/zta/sis/zta/zta/zta/kth;->tsu([I[I[I)V

    invoke-static {v9, v0, v9}, Lyou/zta/sis/zta/zta/zta/kth;->tsu([I[I[I)V

    invoke-static {v3, v3}, Lyou/zta/sis/zta/zta/zta/kth;->kth([I[I)V

    invoke-static {v2, v3, v7}, Lyou/zta/sis/sis/sis;->wtn([I[I[I)V

    invoke-static {v9, v9, v3}, Lyou/zta/sis/sis/sis;->igw([I[I[I)I

    move-result v0

    invoke-static {v0, v3}, Lyou/zta/sis/zta/zta/zta/kth;->cno(I[I)V

    new-instance v2, Lyou/zta/sis/zta/zta/zta/bio;

    invoke-direct {v2, v10}, Lyou/zta/sis/zta/zta/zta/bio;-><init>([I)V

    iget-object v0, v2, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v8, v0}, Lyou/zta/sis/zta/zta/zta/kth;->igw([I[I)V

    iget-object v0, v2, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v0, v3, v0}, Lyou/zta/sis/zta/zta/zta/kth;->ssp([I[I[I)V

    new-instance v4, Lyou/zta/sis/zta/zta/zta/bio;

    invoke-direct {v4, v3}, Lyou/zta/sis/zta/zta/zta/bio;-><init>([I)V

    iget-object v0, v2, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    iget-object v3, v4, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v9, v0, v3}, Lyou/zta/sis/zta/zta/zta/kth;->ssp([I[I[I)V

    iget-object v0, v4, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v0, v8, v7}, Lyou/zta/sis/zta/zta/zta/kth;->rtg([I[I[I)V

    iget-object v0, v4, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v7, v0}, Lyou/zta/sis/zta/zta/zta/kth;->bio([I[I)V

    new-instance v0, Lyou/zta/sis/zta/zta/zta/bio;

    invoke-direct {v0, v13}, Lyou/zta/sis/zta/zta/zta/bio;-><init>([I)V

    if-nez v11, :cond_7

    iget-object v3, v0, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    iget-object v5, v5, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v3, v5, v3}, Lyou/zta/sis/zta/zta/zta/kth;->tsu([I[I[I)V

    :cond_7
    if-nez v12, :cond_8

    iget-object v3, v0, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v3, p1, v3}, Lyou/zta/sis/zta/zta/zta/kth;->tsu([I[I[I)V

    :cond_8
    const/4 p1, 0x1

    new-array p1, p1, [Lyou/zta/sis/zta/cno;

    aput-object v0, p1, v6

    new-instance v6, Lyou/zta/sis/zta/zta/zta/igw;

    iget-boolean v5, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object v0, v6

    move-object v3, v4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lyou/zta/sis/zta/zta/zta/igw;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v6
.end method

.method public negate()Lyou/zta/sis/zta/wtn;
    .locals 7

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->pl()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lyou/zta/sis/zta/zta/zta/igw;

    iget-object v2, p0, Lyou/zta/sis/zta/wtn;->curve:Lyou/zta/sis/zta/rtg;

    iget-object v3, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    iget-object v1, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->negate()Lyou/zta/sis/zta/cno;

    move-result-object v4

    iget-object v5, p0, Lyou/zta/sis/zta/wtn;->vUa:[Lyou/zta/sis/zta/cno;

    iget-boolean v6, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lyou/zta/sis/zta/zta/zta/igw;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v0
.end method

.method public ul()Lyou/zta/sis/zta/wtn;
    .locals 1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->pl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/zta/zta/igw;->vl()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public vl()Lyou/zta/sis/zta/wtn;
    .locals 12

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->pl()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v2

    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    check-cast v0, Lyou/zta/sis/zta/zta/zta/bio;

    invoke-virtual {v0}, Lyou/zta/sis/zta/zta/zta/bio;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    check-cast v1, Lyou/zta/sis/zta/zta/zta/bio;

    iget-object v3, p0, Lyou/zta/sis/zta/wtn;->vUa:[Lyou/zta/sis/zta/cno;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Lyou/zta/sis/zta/zta/zta/bio;

    invoke-static {}, Lyou/zta/sis/sis/sis;->create()[I

    move-result-object v5

    invoke-static {}, Lyou/zta/sis/sis/sis;->create()[I

    move-result-object v6

    invoke-static {}, Lyou/zta/sis/sis/sis;->create()[I

    move-result-object v7

    iget-object v8, v0, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v8, v7}, Lyou/zta/sis/zta/zta/zta/kth;->igw([I[I)V

    invoke-static {}, Lyou/zta/sis/sis/sis;->create()[I

    move-result-object v8

    invoke-static {v7, v8}, Lyou/zta/sis/zta/zta/zta/kth;->igw([I[I)V

    invoke-virtual {v3}, Lyou/zta/sis/zta/zta/zta/bio;->Xk()Z

    move-result v9

    iget-object v10, v3, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    if-nez v9, :cond_2

    invoke-static {v10, v6}, Lyou/zta/sis/zta/zta/zta/kth;->igw([I[I)V

    move-object v10, v6

    :cond_2
    iget-object v11, v1, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v11, v10, v5}, Lyou/zta/sis/zta/zta/zta/kth;->ssp([I[I[I)V

    iget-object v11, v1, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v11, v10, v6}, Lyou/zta/sis/zta/zta/zta/kth;->you([I[I[I)V

    invoke-static {v6, v5, v6}, Lyou/zta/sis/zta/zta/zta/kth;->tsu([I[I[I)V

    invoke-static {v6, v6, v6}, Lyou/zta/sis/sis/sis;->igw([I[I[I)I

    move-result v10

    invoke-static {v10, v6}, Lyou/zta/sis/zta/zta/zta/kth;->cno(I[I)V

    iget-object v1, v1, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v7, v1, v7}, Lyou/zta/sis/zta/zta/zta/kth;->tsu([I[I[I)V

    const/4 v1, 0x2

    const/4 v10, 0x6

    invoke-static {v10, v7, v1, v4}, Lyou/zta/sis/sis/kth;->ssp(I[III)I

    move-result v1

    invoke-static {v1, v7}, Lyou/zta/sis/zta/zta/zta/kth;->cno(I[I)V

    const/4 v1, 0x3

    invoke-static {v10, v8, v1, v4, v5}, Lyou/zta/sis/sis/kth;->you(I[III[I)I

    move-result v1

    invoke-static {v1, v5}, Lyou/zta/sis/zta/zta/zta/kth;->cno(I[I)V

    new-instance v10, Lyou/zta/sis/zta/zta/zta/bio;

    invoke-direct {v10, v8}, Lyou/zta/sis/zta/zta/zta/bio;-><init>([I)V

    iget-object v1, v10, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v6, v1}, Lyou/zta/sis/zta/zta/zta/kth;->igw([I[I)V

    iget-object v1, v10, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v1, v7, v1}, Lyou/zta/sis/zta/zta/zta/kth;->ssp([I[I[I)V

    iget-object v1, v10, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v1, v7, v1}, Lyou/zta/sis/zta/zta/zta/kth;->ssp([I[I[I)V

    new-instance v8, Lyou/zta/sis/zta/zta/zta/bio;

    invoke-direct {v8, v7}, Lyou/zta/sis/zta/zta/zta/bio;-><init>([I)V

    iget-object v1, v10, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    iget-object v11, v8, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v7, v1, v11}, Lyou/zta/sis/zta/zta/zta/kth;->ssp([I[I[I)V

    iget-object v1, v8, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v1, v6, v1}, Lyou/zta/sis/zta/zta/zta/kth;->tsu([I[I[I)V

    iget-object v1, v8, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v1, v5, v1}, Lyou/zta/sis/zta/zta/zta/kth;->ssp([I[I[I)V

    new-instance v1, Lyou/zta/sis/zta/zta/zta/bio;

    invoke-direct {v1, v6}, Lyou/zta/sis/zta/zta/zta/bio;-><init>([I)V

    iget-object v0, v0, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    iget-object v5, v1, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v0, v5}, Lyou/zta/sis/zta/zta/zta/kth;->wtn([I[I)V

    if-nez v9, :cond_3

    iget-object v0, v1, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    iget-object v3, v3, Lyou/zta/sis/zta/zta/zta/bio;->x:[I

    invoke-static {v0, v3, v0}, Lyou/zta/sis/zta/zta/zta/kth;->tsu([I[I[I)V

    :cond_3
    new-instance v0, Lyou/zta/sis/zta/zta/zta/igw;

    const/4 v3, 0x1

    new-array v5, v3, [Lyou/zta/sis/zta/cno;

    aput-object v1, v5, v4

    iget-boolean v6, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object v1, v0

    move-object v3, v10

    move-object v4, v8

    invoke-direct/range {v1 .. v6}, Lyou/zta/sis/zta/zta/zta/igw;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v0
.end method

.method public wtn(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lyou/zta/sis/zta/zta/zta/igw;->ul()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->pl()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->pl()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lyou/zta/sis/zta/zta/zta/igw;->vl()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lyou/zta/sis/zta/zta/zta/igw;->vl()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method
