.class public Lorg/bouncycastle/crypto/you/dma;
.super Lorg/bouncycastle/crypto/you/ssp;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/you/rtg;


# static fields
.field static final K:[I

.field private static final wOa:I = 0x1c


# instance fields
.field private H2:I

.field private H3:I

.field private NOa:I

.field private SOa:I

.field private TOa:I

.field private UOa:I

.field private X:[I

.field private tOa:I

.field private uOa:I

.field private vOa:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/you/dma;->K:[I

    return-void

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.80805568E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.81751936E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/you/ssp;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/dma;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/you/dma;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/you/ssp;-><init>(Lorg/bouncycastle/crypto/you/ssp;)V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/you/dma;->zta(Lorg/bouncycastle/crypto/you/dma;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/you/ssp;-><init>([B)V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->tOa:I

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->H2:I

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->H3:I

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->uOa:I

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->NOa:I

    const/16 v0, 0x24

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->SOa:I

    const/16 v0, 0x28

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->TOa:I

    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->UOa:I

    const/16 v0, 0x30

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->vOa:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->vOa:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x34

    invoke-static {p1, v2}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cd(I)I
    .locals 2

    ushr-int/lit8 p0, p1, 0x2

    shl-int/lit8 v0, p1, 0x1e

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p1, 0xd

    shl-int/lit8 v1, p1, 0x13

    or-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p1, 0x16

    shl-int/lit8 p1, p1, 0xa

    or-int/2addr p1, v0

    xor-int/2addr p0, p1

    return p0
.end method

.method private dd(I)I
    .locals 2

    ushr-int/lit8 p0, p1, 0x6

    shl-int/lit8 v0, p1, 0x1a

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p1, 0xb

    shl-int/lit8 v1, p1, 0x15

    or-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p1, 0x19

    shl-int/lit8 p1, p1, 0x7

    or-int/2addr p1, v0

    xor-int/2addr p0, p1

    return p0
.end method

.method private ed(I)I
    .locals 2

    ushr-int/lit8 p0, p1, 0x7

    shl-int/lit8 v0, p1, 0x19

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p1, 0x12

    shl-int/lit8 v1, p1, 0xe

    or-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 p1, p1, 0x3

    xor-int/2addr p0, p1

    return p0
.end method

.method private fd(I)I
    .locals 2

    ushr-int/lit8 p0, p1, 0x11

    shl-int/lit8 v0, p1, 0xf

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p1, 0x13

    shl-int/lit8 v1, p1, 0xd

    or-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 p1, p1, 0xa

    xor-int/2addr p0, p1

    return p0
.end method

.method private gwm(III)I
    .locals 0

    and-int p0, p1, p2

    not-int p1, p1

    and-int/2addr p1, p3

    xor-int/2addr p0, p1

    return p0
.end method

.method private ugm(III)I
    .locals 0

    and-int p0, p1, p2

    and-int/2addr p1, p3

    xor-int/2addr p0, p1

    and-int p1, p2, p3

    xor-int/2addr p0, p1

    return p0
.end method

.method private zta(Lorg/bouncycastle/crypto/you/dma;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/you/ssp;->zta(Lorg/bouncycastle/crypto/you/ssp;)V

    iget v0, p1, Lorg/bouncycastle/crypto/you/dma;->tOa:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->tOa:I

    iget v0, p1, Lorg/bouncycastle/crypto/you/dma;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->H2:I

    iget v0, p1, Lorg/bouncycastle/crypto/you/dma;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->H3:I

    iget v0, p1, Lorg/bouncycastle/crypto/you/dma;->uOa:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->uOa:I

    iget v0, p1, Lorg/bouncycastle/crypto/you/dma;->NOa:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->NOa:I

    iget v0, p1, Lorg/bouncycastle/crypto/you/dma;->SOa:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->SOa:I

    iget v0, p1, Lorg/bouncycastle/crypto/you/dma;->TOa:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->TOa:I

    iget v0, p1, Lorg/bouncycastle/crypto/you/dma;->UOa:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->UOa:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/you/dma;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lorg/bouncycastle/crypto/you/dma;->vOa:I

    iput p1, p0, Lorg/bouncycastle/crypto/you/dma;->vOa:I

    return-void
.end method


# virtual methods
.method protected bk()V
    .locals 14

    const/16 v0, 0x10

    move v1, v0

    :goto_0
    const/16 v2, 0x3f

    if-gt v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    add-int/lit8 v3, v1, -0x2

    aget v3, v2, v3

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/you/dma;->fd(I)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    add-int/lit8 v5, v1, -0x7

    aget v5, v4, v5

    add-int/2addr v3, v5

    add-int/lit8 v5, v1, -0xf

    aget v4, v4, v5

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/you/dma;->ed(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    add-int/lit8 v5, v1, -0x10

    aget v4, v4, v5

    add-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->tOa:I

    iget v2, p0, Lorg/bouncycastle/crypto/you/dma;->H2:I

    iget v3, p0, Lorg/bouncycastle/crypto/you/dma;->H3:I

    iget v4, p0, Lorg/bouncycastle/crypto/you/dma;->uOa:I

    iget v5, p0, Lorg/bouncycastle/crypto/you/dma;->NOa:I

    iget v6, p0, Lorg/bouncycastle/crypto/you/dma;->SOa:I

    iget v7, p0, Lorg/bouncycastle/crypto/you/dma;->TOa:I

    iget v8, p0, Lorg/bouncycastle/crypto/you/dma;->UOa:I

    const/4 v9, 0x0

    move v10, v8

    move v11, v9

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v11

    :goto_1
    const/16 v12, 0x8

    if-ge v1, v12, :cond_1

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/you/dma;->dd(I)I

    move-result v12

    invoke-direct {p0, v6, v7, v8}, Lorg/bouncycastle/crypto/you/dma;->gwm(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/you/dma;->K:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    add-int/2addr v5, v10

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/you/dma;->cd(I)I

    move-result v12

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/dma;->ugm(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    add-int/lit8 v11, v11, 0x1

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/you/dma;->dd(I)I

    move-result v12

    invoke-direct {p0, v5, v6, v7}, Lorg/bouncycastle/crypto/you/dma;->gwm(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/you/dma;->K:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    add-int/2addr v4, v8

    invoke-direct {p0, v10}, Lorg/bouncycastle/crypto/you/dma;->cd(I)I

    move-result v12

    invoke-direct {p0, v10, v2, v3}, Lorg/bouncycastle/crypto/you/dma;->ugm(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    add-int/lit8 v11, v11, 0x1

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/you/dma;->dd(I)I

    move-result v12

    invoke-direct {p0, v4, v5, v6}, Lorg/bouncycastle/crypto/you/dma;->gwm(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/you/dma;->K:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    add-int/2addr v3, v7

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/you/dma;->cd(I)I

    move-result v12

    invoke-direct {p0, v8, v10, v2}, Lorg/bouncycastle/crypto/you/dma;->ugm(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    add-int/lit8 v11, v11, 0x1

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/you/dma;->dd(I)I

    move-result v12

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/crypto/you/dma;->gwm(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/you/dma;->K:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    add-int/2addr v6, v12

    add-int/2addr v2, v6

    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/you/dma;->cd(I)I

    move-result v12

    invoke-direct {p0, v7, v8, v10}, Lorg/bouncycastle/crypto/you/dma;->ugm(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v6, v12

    add-int/lit8 v11, v11, 0x1

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/you/dma;->dd(I)I

    move-result v12

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/dma;->gwm(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/you/dma;->K:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    add-int/2addr v5, v12

    add-int/2addr v10, v5

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/you/dma;->cd(I)I

    move-result v12

    invoke-direct {p0, v6, v7, v8}, Lorg/bouncycastle/crypto/you/dma;->ugm(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v5, v12

    add-int/lit8 v11, v11, 0x1

    invoke-direct {p0, v10}, Lorg/bouncycastle/crypto/you/dma;->dd(I)I

    move-result v12

    invoke-direct {p0, v10, v2, v3}, Lorg/bouncycastle/crypto/you/dma;->gwm(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/you/dma;->K:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    add-int/2addr v8, v4

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/you/dma;->cd(I)I

    move-result v12

    invoke-direct {p0, v5, v6, v7}, Lorg/bouncycastle/crypto/you/dma;->ugm(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    add-int/lit8 v11, v11, 0x1

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/you/dma;->dd(I)I

    move-result v12

    invoke-direct {p0, v8, v10, v2}, Lorg/bouncycastle/crypto/you/dma;->gwm(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/you/dma;->K:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    add-int/2addr v3, v12

    add-int/2addr v7, v3

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/you/dma;->cd(I)I

    move-result v12

    invoke-direct {p0, v4, v5, v6}, Lorg/bouncycastle/crypto/you/dma;->ugm(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v3, v12

    add-int/lit8 v11, v11, 0x1

    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/you/dma;->dd(I)I

    move-result v12

    invoke-direct {p0, v7, v8, v10}, Lorg/bouncycastle/crypto/you/dma;->gwm(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/you/dma;->K:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    add-int/2addr v2, v12

    add-int/2addr v6, v2

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/you/dma;->cd(I)I

    move-result v12

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/crypto/you/dma;->ugm(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v2, v12

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_1
    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->tOa:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/you/dma;->tOa:I

    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->H2:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/crypto/you/dma;->H2:I

    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->H3:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/bouncycastle/crypto/you/dma;->H3:I

    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->uOa:I

    add-int/2addr v1, v5

    iput v1, p0, Lorg/bouncycastle/crypto/you/dma;->uOa:I

    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->NOa:I

    add-int/2addr v1, v6

    iput v1, p0, Lorg/bouncycastle/crypto/you/dma;->NOa:I

    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->SOa:I

    add-int/2addr v1, v7

    iput v1, p0, Lorg/bouncycastle/crypto/you/dma;->SOa:I

    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->TOa:I

    add-int/2addr v1, v8

    iput v1, p0, Lorg/bouncycastle/crypto/you/dma;->TOa:I

    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->UOa:I

    add-int/2addr v1, v10

    iput v1, p0, Lorg/bouncycastle/crypto/you/dma;->UOa:I

    iput v9, p0, Lorg/bouncycastle/crypto/you/dma;->vOa:I

    move v1, v9

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    aput v9, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public copy()Lorg/bouncycastle/util/bio;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/you/dma;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/you/dma;-><init>(Lorg/bouncycastle/crypto/you/dma;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/ssp;->finish()V

    iget v0, p0, Lorg/bouncycastle/crypto/you/dma;->tOa:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/you/dma;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/you/dma;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/you/dma;->uOa:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/you/dma;->NOa:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/you/dma;->SOa:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/you/dma;->TOa:I

    add-int/lit8 p2, p2, 0x18

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/dma;->reset()V

    const/16 p0, 0x1c

    return p0
.end method

.method public fto()[B
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/you/dma;->vOa:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x34

    new-array v0, v0, [B

    invoke-super {p0, v0}, Lorg/bouncycastle/crypto/you/ssp;->dma([B)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->tOa:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->H2:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->H3:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->uOa:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->NOa:I

    const/16 v2, 0x20

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->SOa:I

    const/16 v2, 0x24

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->TOa:I

    const/16 v2, 0x28

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->UOa:I

    const/16 v2, 0x2c

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/dma;->vOa:I

    const/16 v2, 0x30

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/you/dma;->vOa:I

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x34

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public irq()Ljava/lang/String;
    .locals 0

    const-string p0, "SHA-224"

    return-object p0
.end method

.method public qeg()I
    .locals 0

    const/16 p0, 0x1c

    return p0
.end method

.method public reset()V
    .locals 4

    invoke-super {p0}, Lorg/bouncycastle/crypto/you/ssp;->reset()V

    const v0, -0x3efa6128

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->tOa:I

    const v0, 0x367cd507

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->H2:I

    const v0, 0x3070dd17

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->H3:I

    const v0, -0x8f1a6c7

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->uOa:I

    const v0, -0x3ff4cf

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->NOa:I

    const v0, 0x68581511

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->SOa:I

    const v0, 0x64f98fa7

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->TOa:I

    const v0, -0x4105b05c

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->UOa:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->vOa:I

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected rtg([BI)V
    .locals 3

    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    iget-object p2, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    iget v0, p0, Lorg/bouncycastle/crypto/you/dma;->vOa:I

    aput p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/you/dma;->vOa:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/dma;->bk()V

    :cond_0
    return-void
.end method

.method protected veq(J)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/you/dma;->vOa:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/dma;->bk()V

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/crypto/you/dma;->X:[I

    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    aput v0, p0, v1

    const/16 v0, 0xf

    const-wide/16 v1, -0x1

    and-long/2addr p1, v1

    long-to-int p1, p1

    aput p1, p0, v0

    return-void
.end method

.method public zta(Lorg/bouncycastle/util/bio;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/you/dma;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/you/dma;->zta(Lorg/bouncycastle/crypto/you/dma;)V

    return-void
.end method
