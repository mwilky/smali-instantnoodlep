.class public Lyou/zta/sis/zta/zta/zta/hmo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field static final cVa:[I

.field private static final jVa:I = -0x1

.field private static final lVa:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lyou/zta/sis/zta/zta/zta/hmo;->P:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lyou/zta/sis/zta/zta/zta/hmo;->cVa:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        0x0
        0x0
        0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        -0x2
        0x1
        -0x2
        0x1
        -0x2
        0x1
        0x1
        -0x2
        0x2
        -0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bio([I[I)V
    .locals 34

    move-object/from16 v0, p1

    const/16 v1, 0x8

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v5, 0x9

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0xa

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/16 v9, 0xb

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/16 v11, 0xc

    aget v11, p0, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/16 v13, 0xd

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/16 v15, 0xe

    aget v15, p0, v15

    move-wide/from16 v16, v13

    int-to-long v13, v15

    and-long/2addr v13, v3

    const/16 v15, 0xf

    aget v15, p0, v15

    move-wide/from16 v18, v13

    int-to-long v13, v15

    and-long/2addr v13, v3

    const-wide/16 v20, 0x6

    sub-long v1, v1, v20

    add-long v22, v1, v5

    add-long/2addr v5, v7

    add-long/2addr v7, v9

    sub-long/2addr v7, v13

    add-long/2addr v9, v11

    add-long v11, v11, v16

    add-long v15, v16, v18

    add-long v24, v18, v13

    sub-long v22, v15, v22

    const/16 v17, 0x0

    move-wide/from16 v26, v1

    aget v1, p0, v17

    int-to-long v1, v1

    and-long/2addr v1, v3

    sub-long/2addr v1, v9

    sub-long v1, v1, v22

    const-wide/16 v28, 0x0

    add-long v1, v1, v28

    long-to-int v3, v1

    aput v3, v0, v17

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    const/4 v4, 0x1

    aget v3, p0, v4

    move-wide/from16 v30, v13

    int-to-long v13, v3

    const-wide v28, 0xffffffffL

    and-long v13, v13, v28

    add-long/2addr v13, v5

    sub-long/2addr v13, v11

    sub-long v13, v13, v24

    add-long/2addr v1, v13

    long-to-int v3, v1

    aput v3, v0, v4

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    const/4 v13, 0x2

    aget v14, p0, v13

    move-wide/from16 v32, v5

    int-to-long v4, v14

    and-long v4, v4, v28

    add-long/2addr v4, v7

    sub-long/2addr v4, v15

    add-long/2addr v1, v4

    long-to-int v4, v1

    aput v4, v0, v13

    shr-long/2addr v1, v3

    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v4, v4

    and-long v4, v4, v28

    const/4 v6, 0x1

    shl-long/2addr v9, v6

    add-long/2addr v4, v9

    add-long v4, v4, v22

    sub-long v4, v4, v24

    add-long/2addr v1, v4

    long-to-int v4, v1

    aput v4, v0, v3

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v4, v4

    const-wide v9, 0xffffffffL

    and-long/2addr v4, v9

    const/4 v6, 0x1

    shl-long v9, v11, v6

    add-long/2addr v4, v9

    add-long v4, v4, v18

    sub-long v4, v4, v32

    add-long/2addr v1, v4

    long-to-int v4, v1

    aput v4, v0, v3

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    const/4 v4, 0x5

    aget v5, p0, v4

    int-to-long v9, v5

    const-wide v13, 0xffffffffL

    and-long/2addr v9, v13

    const/4 v5, 0x1

    shl-long/2addr v15, v5

    add-long/2addr v9, v15

    sub-long/2addr v9, v7

    add-long/2addr v1, v9

    long-to-int v6, v1

    aput v6, v0, v4

    shr-long/2addr v1, v3

    const/4 v4, 0x6

    aget v6, p0, v4

    int-to-long v9, v6

    and-long/2addr v9, v13

    shl-long v15, v24, v5

    add-long/2addr v9, v15

    add-long v9, v9, v22

    add-long/2addr v1, v9

    long-to-int v6, v1

    aput v6, v0, v4

    shr-long/2addr v1, v3

    const/4 v3, 0x7

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v13

    shl-long v4, v30, v5

    add-long/2addr v9, v4

    add-long v9, v9, v26

    sub-long/2addr v9, v7

    sub-long/2addr v9, v11

    add-long/2addr v1, v9

    long-to-int v4, v1

    aput v4, v0, v3

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    add-long v1, v1, v20

    long-to-int v1, v1

    invoke-static {v1, v0}, Lyou/zta/sis/zta/zta/zta/hmo;->cno(I[I)V

    return-void
.end method

.method public static cno(I[I)V
    .locals 12

    const/4 v0, 0x7

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_2

    int-to-long v3, p0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/4 p0, 0x0

    aget v7, p1, p0

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v7, v3

    add-long/2addr v7, v1

    long-to-int v9, v7

    aput v9, p1, p0

    const/16 p0, 0x20

    shr-long/2addr v7, p0

    cmp-long v9, v7, v1

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v7, v10

    long-to-int v10, v7

    aput v10, p1, v9

    shr-long/2addr v7, p0

    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v7, v10

    long-to-int v10, v7

    aput v10, p1, v9

    shr-long/2addr v7, p0

    :cond_0
    const/4 v9, 0x3

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    sub-long/2addr v10, v3

    add-long/2addr v7, v10

    long-to-int v10, v7

    aput v10, p1, v9

    shr-long/2addr v7, p0

    cmp-long v9, v7, v1

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v7, v10

    long-to-int v10, v7

    aput v10, p1, v9

    shr-long/2addr v7, p0

    const/4 v9, 0x5

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v7, v10

    long-to-int v10, v7

    aput v10, p1, v9

    shr-long/2addr v7, p0

    :cond_1
    const/4 v9, 0x6

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    sub-long/2addr v10, v3

    add-long/2addr v7, v10

    long-to-int v10, v7

    aput v10, p1, v9

    shr-long/2addr v7, p0

    aget v9, p1, v0

    int-to-long v9, v9

    and-long/2addr v5, v9

    add-long/2addr v5, v3

    add-long/2addr v7, v5

    long-to-int v3, v7

    aput v3, p1, v0

    shr-long v3, v7, p0

    goto :goto_0

    :cond_2
    move-wide v3, v1

    :goto_0
    cmp-long p0, v3, v1

    if-nez p0, :cond_3

    aget p0, p1, v0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    sget-object p0, Lyou/zta/sis/zta/zta/zta/hmo;->P:[I

    invoke-static {p1, p0}, Lyou/zta/sis/sis/rtg;->qbh([I[I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    invoke-static {p1}, Lyou/zta/sis/zta/zta/zta/hmo;->zgw([I)V

    :cond_4
    return-void
.end method

.method public static cno([I[I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    if-nez v1, :cond_0

    invoke-static {v2, p0, v0, p1}, Lyou/zta/sis/sis/kth;->zta(I[II[I)I

    goto :goto_0

    :cond_0
    sget-object v0, Lyou/zta/sis/zta/zta/zta/hmo;->P:[I

    invoke-static {p0, v0, p1}, Lyou/zta/sis/sis/rtg;->you([I[I[I)I

    move-result p0

    invoke-static {v2, p1, p0}, Lyou/zta/sis/sis/kth;->sis(I[II)I

    :goto_0
    return-void
.end method

.method public static cno([I[I[I)V
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lyou/zta/sis/sis/kth;->rtg(I[I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lyou/zta/sis/zta/zta/zta/hmo;->cVa:[I

    invoke-static {v0, p0, p2}, Lyou/zta/sis/sis/kth;->you(I[I[I)I

    :cond_0
    return-void
.end method

.method public static dma(Ljava/math/BigInteger;)[I
    .locals 2

    invoke-static {p0}, Lyou/zta/sis/sis/rtg;->dma(Ljava/math/BigInteger;)[I

    move-result-object p0

    const/4 v0, 0x7

    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lyou/zta/sis/zta/zta/zta/hmo;->P:[I

    invoke-static {p0, v0}, Lyou/zta/sis/sis/rtg;->qbh([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lyou/zta/sis/zta/zta/zta/hmo;->P:[I

    invoke-static {v0, p0}, Lyou/zta/sis/sis/rtg;->oif([I[I)I

    :cond_0
    return-object p0
.end method

.method public static igw([I[I)V
    .locals 1

    invoke-static {}, Lyou/zta/sis/sis/rtg;->Yl()[I

    move-result-object v0

    invoke-static {p0, v0}, Lyou/zta/sis/sis/rtg;->igw([I[I)V

    invoke-static {v0, p1}, Lyou/zta/sis/zta/zta/zta/hmo;->bio([I[I)V

    return-void
.end method

.method public static kth([I[I)V
    .locals 1

    invoke-static {p0}, Lyou/zta/sis/sis/rtg;->dma([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lyou/zta/sis/sis/rtg;->qbh([I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lyou/zta/sis/zta/zta/zta/hmo;->P:[I

    invoke-static {v0, p0, p1}, Lyou/zta/sis/sis/rtg;->dma([I[I[I)I

    :goto_0
    return-void
.end method

.method private static obl([I)V
    .locals 12

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    long-to-int v7, v1

    aput v7, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    :cond_0
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v10, v5

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    long-to-int v8, v1

    aput v8, p0, v7

    shr-long/2addr v1, v0

    const/4 v7, 0x5

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    long-to-int v8, v1

    aput v8, p0, v7

    shr-long/2addr v1, v0

    :cond_1
    const/4 v7, 0x6

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v8, v5

    add-long/2addr v1, v8

    long-to-int v8, v1

    aput v8, p0, v7

    shr-long v0, v1, v0

    const/4 v2, 0x7

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v3, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v0, v0

    aput v0, p0, v2

    return-void
.end method

.method public static rtg([I[I[I)V
    .locals 1

    invoke-static {p0, p1, p2}, Lyou/zta/sis/sis/rtg;->gck([I[I[I)I

    move-result p0

    const/16 p1, 0x10

    if-nez p0, :cond_0

    const/16 p0, 0xf

    aget p0, p2, p0

    ushr-int/lit8 p0, p0, 0x1

    const v0, 0x7fffffff

    if-lt p0, v0, :cond_1

    sget-object p0, Lyou/zta/sis/zta/zta/zta/hmo;->cVa:[I

    invoke-static {p1, p2, p0}, Lyou/zta/sis/sis/kth;->ssp(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Lyou/zta/sis/zta/zta/zta/hmo;->cVa:[I

    invoke-static {p1, p0, p2}, Lyou/zta/sis/sis/kth;->bio(I[I[I)I

    :cond_1
    return-void
.end method

.method public static sis([I[I[I)V
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lyou/zta/sis/sis/kth;->zta(I[I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0xf

    aget p0, p2, p0

    ushr-int/lit8 p0, p0, 0x1

    const p1, 0x7fffffff

    if-lt p0, p1, :cond_1

    sget-object p0, Lyou/zta/sis/zta/zta/zta/hmo;->cVa:[I

    invoke-static {v0, p2, p0}, Lyou/zta/sis/sis/kth;->ssp(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Lyou/zta/sis/zta/zta/zta/hmo;->cVa:[I

    invoke-static {v0, p0, p2}, Lyou/zta/sis/sis/kth;->bio(I[I[I)I

    :cond_1
    return-void
.end method

.method public static ssp([I[I)V
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lyou/zta/sis/sis/kth;->cno(I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x7

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lyou/zta/sis/zta/zta/zta/hmo;->P:[I

    invoke-static {p1, p0}, Lyou/zta/sis/sis/rtg;->qbh([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {p1}, Lyou/zta/sis/zta/zta/zta/hmo;->zgw([I)V

    :cond_1
    return-void
.end method

.method public static ssp([I[I[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lyou/zta/sis/sis/rtg;->dma([I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Lyou/zta/sis/zta/zta/zta/hmo;->obl([I)V

    :cond_0
    return-void
.end method

.method public static tsu([I[I[I)V
    .locals 1

    invoke-static {}, Lyou/zta/sis/sis/rtg;->Yl()[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Lyou/zta/sis/sis/rtg;->wtn([I[I[I)V

    invoke-static {v0, p2}, Lyou/zta/sis/zta/zta/zta/hmo;->bio([I[I)V

    return-void
.end method

.method public static wtn([I[I)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lyou/zta/sis/sis/kth;->you(I[II[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x7

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lyou/zta/sis/zta/zta/zta/hmo;->P:[I

    invoke-static {p1, p0}, Lyou/zta/sis/sis/rtg;->qbh([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {p1}, Lyou/zta/sis/zta/zta/zta/hmo;->zgw([I)V

    :cond_1
    return-void
.end method

.method public static you([I[I[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lyou/zta/sis/sis/rtg;->you([I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x7

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    sget-object p0, Lyou/zta/sis/zta/zta/zta/hmo;->P:[I

    invoke-static {p2, p0}, Lyou/zta/sis/sis/rtg;->qbh([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {p2}, Lyou/zta/sis/zta/zta/zta/hmo;->zgw([I)V

    :cond_1
    return-void
.end method

.method private static zgw([I)V
    .locals 12

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    long-to-int v7, v1

    aput v7, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    :cond_0
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    sub-long/2addr v10, v5

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    long-to-int v8, v1

    aput v8, p0, v7

    shr-long/2addr v1, v0

    const/4 v7, 0x5

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    long-to-int v8, v1

    aput v8, p0, v7

    shr-long/2addr v1, v0

    :cond_1
    const/4 v7, 0x6

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v8, v5

    add-long/2addr v1, v8

    long-to-int v8, v1

    aput v8, p0, v7

    shr-long v0, v1, v0

    const/4 v2, 0x7

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v3, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v0, v0

    aput v0, p0, v2

    return-void
.end method

.method public static zta([II[I)V
    .locals 1

    invoke-static {}, Lyou/zta/sis/sis/rtg;->Yl()[I

    move-result-object v0

    invoke-static {p0, v0}, Lyou/zta/sis/sis/rtg;->igw([I[I)V

    :goto_0
    invoke-static {v0, p2}, Lyou/zta/sis/zta/zta/zta/hmo;->bio([I[I)V

    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lyou/zta/sis/sis/rtg;->igw([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method
