.class public abstract Lyou/zta/sis/zta/rtg$zta;
.super Lyou/zta/sis/zta/rtg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/sis/zta/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zta"
.end annotation


# instance fields
.field private si:[Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lyou/zta/sis/zta/rtg$zta;->ssp(IIII)Lyou/zta/sis/you/you;

    move-result-object p1

    invoke-direct {p0, p1}, Lyou/zta/sis/zta/rtg;-><init>(Lyou/zta/sis/you/you;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lyou/zta/sis/zta/rtg$zta;->si:[Ljava/math/BigInteger;

    return-void
.end method

.method private static ssp(IIII)Lyou/zta/sis/you/you;
    .locals 5

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    new-array p2, v2, [I

    aput v3, p2, v3

    aput p1, p2, v1

    aput p0, p2, v0

    invoke-static {p2}, Lyou/zta/sis/you/sis;->igw([I)Lyou/zta/sis/you/cno;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k3 must be 0 if k2 == 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-le p2, p1, :cond_3

    if-le p3, p2, :cond_2

    const/4 v4, 0x5

    new-array v4, v4, [I

    aput v3, v4, v3

    aput p1, v4, v1

    aput p2, v4, v0

    aput p3, v4, v2

    const/4 p1, 0x4

    aput p0, v4, p1

    invoke-static {v4}, Lyou/zta/sis/you/sis;->igw([I)Lyou/zta/sis/you/cno;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k3 must be > k2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k2 must be > k1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k1 must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zta(I[ILjava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    new-instance v0, Lyou/zta/sis/zta/ibl;

    invoke-direct {v0, p2}, Lyou/zta/sis/zta/ibl;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, p0, p1}, Lyou/zta/sis/zta/ibl;->zta(I[I)Lyou/zta/sis/zta/ibl;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/ibl;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method declared-synchronized Pk()[Ljava/math/BigInteger;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lyou/zta/sis/zta/rtg$zta;->si:[Ljava/math/BigInteger;

    if-nez v0, :cond_0

    invoke-static {p0}, Lyou/zta/sis/zta/obl;->you(Lyou/zta/sis/zta/rtg$zta;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lyou/zta/sis/zta/rtg$zta;->si:[Ljava/math/BigInteger;

    :cond_0
    iget-object v0, p0, Lyou/zta/sis/zta/rtg$zta;->si:[Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Qk()Z
    .locals 1

    iget-object v0, p0, Lyou/zta/sis/zta/rtg;->order:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyou/zta/sis/zta/rtg;->RTa:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyou/zta/sis/zta/rtg;->b:Lyou/zta/sis/zta/cno;

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->Xk()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyou/zta/sis/zta/rtg;->a:Lyou/zta/sis/zta/cno;

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lyou/zta/sis/zta/rtg;->a:Lyou/zta/sis/zta/cno;

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->Xk()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected you(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 8

    invoke-virtual {p1}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lyou/zta/sis/zta/sis;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lyou/zta/sis/zta/rtg;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getFieldSize()I

    move-result v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {p0, v3}, Lyou/zta/sis/zta/rtg;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    const/4 v4, 0x1

    move-object v5, p1

    move-object v6, v0

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {v5}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v6}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v6

    invoke-virtual {v5, v3}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v7

    invoke-virtual {v6, v7}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v6

    invoke-virtual {v5, p1}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-virtual {v6}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v3, v6}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v3}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v6
.end method

.method public ywr(Ljava/math/BigInteger;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getFieldSize()I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected zta(ILjava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 3

    invoke-virtual {p0, p2}, Lyou/zta/sis/zta/rtg;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object p2

    invoke-virtual {p2}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getB()Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p1}, Lyou/zta/sis/zta/cno;->Yk()Lyou/zta/sis/zta/cno;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->invert()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getB()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v0, v2}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v0, v2}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0, p2}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyou/zta/sis/zta/rtg$zta;->you(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->Zk()Z

    move-result v2

    if-ne p1, v1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eq v2, p1, :cond_2

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->Vk()Lyou/zta/sis/zta/cno;

    move-result-object v0

    :cond_2
    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->Nk()I

    move-result p1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_3

    const/4 v2, 0x6

    if-eq p1, v2, :cond_3

    invoke-virtual {v0, p2}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p2}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p0, p2, p1, v1}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point compression"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lyou/zta/sis/zta/wtn;
    .locals 2

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/rtg;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p0, p2}, Lyou/zta/sis/zta/rtg;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object p2

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->Nk()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getB()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p2, p1}, Lyou/zta/sis/zta/cno;->tsu(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p2

    invoke-virtual {p2, p1}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method
