.class public final Lorg/bouncycastle/crypto/rtg/dma;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/rtg;


# static fields
.field private static final AQa:I = 0x1

.field private static final BLOCK_SIZE:I = 0x10

.field private static final BQa:I = 0x0

.field private static final CQa:I = 0x1

.field private static final DQa:I = 0x1

.field private static final EQa:I = 0x0

.field private static final FQa:I = 0x0

.field private static final GQa:I = 0x0

.field private static final HQa:I = 0x0

.field private static final IQa:I = 0x1

.field private static final JQa:I = 0x1

.field private static final KQa:I = 0x0

.field private static final LQa:I = 0x1

.field private static final MQa:I = 0x169

.field private static final NQa:I = 0xb4

.field private static final OQa:I = 0x5a

.field private static final P:[[B

.field private static final PQa:I = 0x14d

.field private static final QQa:I = 0x10

.field private static final RQa:I = 0x100

.field private static final SQa:I = 0x0

.field private static final TQa:I = 0x4

.field private static final UQa:I = 0x8

.field private static final VQa:I = 0x28

.field private static final WQa:I = 0x2020202

.field private static final XQa:I = 0x1010101

.field private static final YQa:I = 0x9

.field private static final nPa:I = 0x10

.field private static final sQa:I = 0x1

.field private static final tQa:I = 0x0

.field private static final uQa:I = 0x0

.field private static final vQa:I = 0x1

.field private static final wQa:I = 0x1

.field private static final xQa:I = 0x0

.field private static final yQa:I = 0x0

.field private static final zQa:I = 0x1


# instance fields
.field private GPa:[B

.field private jOa:Z

.field private lQa:[I

.field private mQa:[I

.field private nQa:[I

.field private oQa:[I

.field private pQa:[I

.field private qQa:[I

.field private rQa:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x100

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        0x67t
        -0x4dt
        -0x18t
        0x4t
        -0x3t
        -0x5dt
        0x76t
        -0x66t
        -0x6et
        -0x80t
        0x78t
        -0x1ct
        -0x23t
        -0x2ft
        0x38t
        0xdt
        -0x3at
        0x35t
        -0x68t
        0x18t
        -0x9t
        -0x14t
        0x6ct
        0x43t
        0x75t
        0x37t
        0x26t
        -0x6t
        0x13t
        -0x6ct
        0x48t
        -0xet
        -0x30t
        -0x75t
        0x30t
        -0x7ct
        0x54t
        -0x21t
        0x23t
        0x19t
        0x5bt
        0x3dt
        0x59t
        -0xdt
        -0x52t
        -0x5et
        -0x7et
        0x63t
        0x1t
        -0x7dt
        0x2et
        -0x27t
        0x51t
        -0x65t
        0x7ct
        -0x5at
        -0x15t
        -0x5bt
        -0x42t
        0x16t
        0xct
        -0x1dt
        0x61t
        -0x40t
        -0x74t
        0x3at
        -0xbt
        0x73t
        0x2ct
        0x25t
        0xbt
        -0x45t
        0x4et
        -0x77t
        0x6bt
        0x53t
        0x6at
        -0x4ct
        -0xft
        -0x1ft
        -0x1at
        -0x43t
        0x45t
        -0x1et
        -0xct
        -0x4at
        0x66t
        -0x34t
        -0x6bt
        0x3t
        0x56t
        -0x2ct
        0x1ct
        0x1et
        -0x29t
        -0x5t
        -0x3dt
        -0x72t
        -0x4bt
        -0x17t
        -0x31t
        -0x41t
        -0x46t
        -0x16t
        0x77t
        0x39t
        -0x51t
        0x33t
        -0x37t
        0x62t
        0x71t
        -0x7ft
        0x79t
        0x9t
        -0x53t
        0x24t
        -0x33t
        -0x7t
        -0x28t
        -0x1bt
        -0x3bt
        -0x47t
        0x4dt
        0x44t
        0x8t
        -0x7at
        -0x19t
        -0x5ft
        0x1dt
        -0x56t
        -0x13t
        0x6t
        0x70t
        -0x4et
        -0x2et
        0x41t
        0x7bt
        -0x60t
        0x11t
        0x31t
        -0x3et
        0x27t
        -0x70t
        0x20t
        -0xat
        0x60t
        -0x1t
        -0x6at
        0x5ct
        -0x4ft
        -0x55t
        -0x62t
        -0x64t
        0x52t
        0x1bt
        0x5ft
        -0x6dt
        0xat
        -0x11t
        -0x6ft
        -0x7bt
        0x49t
        -0x12t
        0x2dt
        0x4ft
        -0x71t
        0x3bt
        0x47t
        -0x79t
        0x6dt
        0x46t
        -0x2at
        0x3et
        0x69t
        0x64t
        0x2at
        -0x32t
        -0x35t
        0x2ft
        -0x4t
        -0x69t
        0x5t
        0x7at
        -0x54t
        0x7ft
        -0x2bt
        0x1at
        0x4bt
        0xet
        -0x59t
        0x5at
        0x28t
        0x14t
        0x3ft
        0x29t
        -0x78t
        0x3ct
        0x4ct
        0x2t
        -0x48t
        -0x26t
        -0x50t
        0x17t
        0x55t
        0x1ft
        -0x76t
        0x7dt
        0x57t
        -0x39t
        -0x73t
        0x74t
        -0x49t
        -0x3ct
        -0x61t
        0x72t
        0x7et
        0x15t
        0x22t
        0x12t
        0x58t
        0x7t
        -0x67t
        0x34t
        0x6et
        0x50t
        -0x22t
        0x68t
        0x65t
        -0x44t
        -0x25t
        -0x8t
        -0x38t
        -0x58t
        0x2bt
        0x40t
        -0x24t
        -0x2t
        0x32t
        -0x5ct
        -0x36t
        0x10t
        0x21t
        -0x10t
        -0x2dt
        0x5dt
        0xft
        0x0t
        0x6ft
        -0x63t
        0x36t
        0x42t
        0x4at
        0x5et
        -0x3ft
        -0x20t
    .end array-data

    :array_1
    .array-data 1
        0x75t
        -0xdt
        -0x3at
        -0xct
        -0x25t
        0x7bt
        -0x5t
        -0x38t
        0x4at
        -0x2dt
        -0x1at
        0x6bt
        0x45t
        0x7dt
        -0x18t
        0x4bt
        -0x2at
        0x32t
        -0x28t
        -0x3t
        0x37t
        0x71t
        -0xft
        -0x1ft
        0x30t
        0xft
        -0x8t
        0x1bt
        -0x79t
        -0x6t
        0x6t
        0x3ft
        0x5et
        -0x46t
        -0x52t
        0x5bt
        -0x76t
        0x0t
        -0x44t
        -0x63t
        0x6dt
        -0x3ft
        -0x4ft
        0xet
        -0x80t
        0x5dt
        -0x2et
        -0x2bt
        -0x60t
        -0x7ct
        0x7t
        0x14t
        -0x4bt
        -0x70t
        0x2ct
        -0x5dt
        -0x4et
        0x73t
        0x4ct
        0x54t
        -0x6et
        0x74t
        0x36t
        0x51t
        0x38t
        -0x50t
        -0x43t
        0x5at
        -0x4t
        0x60t
        0x62t
        -0x6at
        0x6ct
        0x42t
        -0x9t
        0x10t
        0x7ct
        0x28t
        0x27t
        -0x74t
        0x13t
        -0x6bt
        -0x64t
        -0x39t
        0x24t
        0x46t
        0x3bt
        0x70t
        -0x36t
        -0x1dt
        -0x7bt
        -0x35t
        0x11t
        -0x30t
        -0x6dt
        -0x48t
        -0x5at
        -0x7dt
        0x20t
        -0x1t
        -0x61t
        0x77t
        -0x3dt
        -0x34t
        0x3t
        0x6ft
        0x8t
        -0x41t
        0x40t
        -0x19t
        0x2bt
        -0x1et
        0x79t
        0xct
        -0x56t
        -0x7et
        0x41t
        0x3at
        -0x16t
        -0x47t
        -0x1ct
        -0x66t
        -0x5ct
        -0x69t
        0x7et
        -0x26t
        0x7at
        0x17t
        0x66t
        -0x6ct
        -0x5ft
        0x1dt
        0x3dt
        -0x10t
        -0x22t
        -0x4dt
        0xbt
        0x72t
        -0x59t
        0x1ct
        -0x11t
        -0x2ft
        0x53t
        0x3et
        -0x71t
        0x33t
        0x26t
        0x5ft
        -0x14t
        0x76t
        0x2at
        0x49t
        -0x7ft
        -0x78t
        -0x12t
        0x21t
        -0x3ct
        0x1at
        -0x15t
        -0x27t
        -0x3bt
        0x39t
        -0x67t
        -0x33t
        -0x53t
        0x31t
        -0x75t
        0x1t
        0x18t
        0x23t
        -0x23t
        0x1ft
        0x4et
        0x2dt
        -0x7t
        0x48t
        0x4ft
        -0xet
        0x65t
        -0x72t
        0x78t
        0x5ct
        0x58t
        0x19t
        -0x73t
        -0x1bt
        -0x68t
        0x57t
        0x67t
        0x7ft
        0x5t
        0x64t
        -0x51t
        0x63t
        -0x4at
        -0x2t
        -0xbt
        -0x49t
        0x3ct
        -0x5bt
        -0x32t
        -0x17t
        0x68t
        0x44t
        -0x20t
        0x4dt
        0x43t
        0x69t
        0x29t
        0x2et
        -0x54t
        0x15t
        0x59t
        -0x58t
        0xat
        -0x62t
        0x6et
        0x47t
        -0x21t
        0x34t
        0x35t
        0x6at
        -0x31t
        -0x24t
        0x22t
        -0x37t
        -0x40t
        -0x65t
        -0x77t
        -0x2ct
        -0x13t
        -0x55t
        0x12t
        -0x5et
        0xdt
        0x52t
        -0x45t
        0x2t
        0x2ft
        -0x57t
        -0x29t
        0x61t
        0x1et
        -0x4ct
        0x50t
        0x4t
        -0xat
        -0x3et
        0x16t
        0x25t
        -0x7at
        0x56t
        0x55t
        0x9t
        -0x42t
        -0x6ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/rtg/dma;->jOa:Z

    const/16 v1, 0x100

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/rtg/dma;->lQa:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/rtg/dma;->mQa:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/rtg/dma;->nQa:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/rtg/dma;->oQa:[I

    iput v0, p0, Lorg/bouncycastle/crypto/rtg/dma;->rQa:I

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/rtg/dma;->GPa:[B

    const/4 v2, 0x2

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v2, v2, [I

    move v5, v0

    :goto_0
    if-ge v5, v1, :cond_0

    sget-object v6, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v6, v6, v0

    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v0

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/rtg/dma;->pd(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v4, v0

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/rtg/dma;->qd(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v2, v0

    sget-object v6, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/rtg/dma;->pd(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v4, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/rtg/dma;->qd(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v2, v7

    iget-object v6, p0, Lorg/bouncycastle/crypto/rtg/dma;->lQa:[I

    aget v8, v3, v7

    aget v9, v4, v7

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    aget v9, v2, v7

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget v9, v2, v7

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    aput v8, v6, v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/rtg/dma;->mQa:[I

    aget v8, v2, v0

    aget v9, v2, v0

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    aget v9, v4, v0

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget v9, v3, v0

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    aput v8, v6, v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/rtg/dma;->nQa:[I

    aget v8, v4, v7

    aget v9, v2, v7

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    aget v9, v3, v7

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget v7, v2, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v7, v8

    aput v7, v6, v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/rtg/dma;->oQa:[I

    aget v7, v4, v0

    aget v8, v3, v0

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    aget v8, v2, v0

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    aget v8, v4, v0

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private d(II)I
    .locals 3

    const/4 v0, 0x0

    move v1, p2

    move p2, v0

    :goto_0
    const/4 v2, 0x4

    if-ge p2, v2, :cond_0

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/rtg/dma;->rd(I)I

    move-result v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    xor-int/2addr p1, v1

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/rtg/dma;->rd(I)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return p1
.end method

.method private irq([B)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v5, v2, [I

    const/16 v6, 0x28

    new-array v6, v6, [I

    iput-object v6, v0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    iget v6, v0, Lorg/bouncycastle/crypto/rtg/dma;->rQa:I

    const/4 v7, 0x1

    if-lt v6, v7, :cond_8

    if-gt v6, v2, :cond_7

    const/4 v6, 0x0

    move v8, v6

    :goto_0
    iget v9, v0, Lorg/bouncycastle/crypto/rtg/dma;->rQa:I

    if-ge v8, v9, :cond_0

    mul-int/lit8 v9, v8, 0x8

    invoke-direct {v0, v1, v9}, Lorg/bouncycastle/crypto/rtg/dma;->zgw([BI)I

    move-result v10

    aput v10, v3, v8

    add-int/2addr v9, v2

    invoke-direct {v0, v1, v9}, Lorg/bouncycastle/crypto/rtg/dma;->zgw([BI)I

    move-result v9

    aput v9, v4, v8

    iget v9, v0, Lorg/bouncycastle/crypto/rtg/dma;->rQa:I

    sub-int/2addr v9, v7

    sub-int/2addr v9, v8

    aget v10, v3, v8

    aget v11, v4, v8

    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/crypto/rtg/dma;->d(II)I

    move-result v10

    aput v10, v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_1
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    const v2, 0x2020202

    mul-int/2addr v2, v1

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/crypto/rtg/dma;->oif(I[I)I

    move-result v8

    const v9, 0x1010101

    add-int/2addr v2, v9

    invoke-direct {v0, v2, v4}, Lorg/bouncycastle/crypto/rtg/dma;->oif(I[I)I

    move-result v2

    shl-int/lit8 v9, v2, 0x8

    ushr-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v9

    add-int/2addr v8, v2

    iget-object v9, v0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    mul-int/lit8 v10, v1, 0x2

    aput v8, v9, v10

    add-int/2addr v8, v2

    add-int/2addr v10, v7

    shl-int/lit8 v2, v8, 0x9

    ushr-int/lit8 v8, v8, 0x17

    or-int/2addr v2, v8

    aput v2, v9, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    aget v1, v5, v6

    aget v2, v5, v7

    const/4 v3, 0x2

    aget v4, v5, v3

    const/4 v8, 0x3

    aget v5, v5, v8

    const/16 v9, 0x400

    new-array v9, v9, [I

    iput-object v9, v0, Lorg/bouncycastle/crypto/rtg/dma;->qQa:[I

    move v9, v6

    :goto_2
    const/16 v10, 0x100

    if-ge v9, v10, :cond_6

    iget v10, v0, Lorg/bouncycastle/crypto/rtg/dma;->rQa:I

    and-int/2addr v10, v8

    if-eqz v10, :cond_5

    if-eq v10, v7, :cond_4

    if-eq v10, v3, :cond_3

    if-eq v10, v8, :cond_2

    goto/16 :goto_5

    :cond_2
    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    goto/16 :goto_3

    :cond_3
    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    goto/16 :goto_4

    :cond_4
    iget-object v10, v0, Lorg/bouncycastle/crypto/rtg/dma;->qQa:[I

    mul-int/lit8 v11, v9, 0x2

    iget-object v12, v0, Lorg/bouncycastle/crypto/rtg/dma;->lQa:[I

    sget-object v13, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v13, v13, v6

    aget-byte v13, v13, v9

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/rtg/dma;->sd(I)I

    move-result v14

    xor-int/2addr v13, v14

    aget v12, v12, v13

    aput v12, v10, v11

    iget-object v10, v0, Lorg/bouncycastle/crypto/rtg/dma;->qQa:[I

    add-int/lit8 v12, v11, 0x1

    iget-object v13, v0, Lorg/bouncycastle/crypto/rtg/dma;->mQa:[I

    sget-object v14, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v14, v14, v6

    aget-byte v14, v14, v9

    and-int/lit16 v14, v14, 0xff

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/rtg/dma;->td(I)I

    move-result v15

    xor-int/2addr v14, v15

    aget v13, v13, v14

    aput v13, v10, v12

    iget-object v10, v0, Lorg/bouncycastle/crypto/rtg/dma;->qQa:[I

    add-int/lit16 v12, v11, 0x200

    iget-object v13, v0, Lorg/bouncycastle/crypto/rtg/dma;->nQa:[I

    sget-object v14, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v14, v14, v7

    aget-byte v14, v14, v9

    and-int/lit16 v14, v14, 0xff

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/rtg/dma;->ud(I)I

    move-result v15

    xor-int/2addr v14, v15

    aget v13, v13, v14

    aput v13, v10, v12

    iget-object v10, v0, Lorg/bouncycastle/crypto/rtg/dma;->qQa:[I

    add-int/lit16 v11, v11, 0x201

    iget-object v12, v0, Lorg/bouncycastle/crypto/rtg/dma;->oQa:[I

    sget-object v13, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v13, v13, v7

    aget-byte v13, v13, v9

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/rtg/dma;->vd(I)I

    move-result v14

    xor-int/2addr v13, v14

    aget v12, v12, v13

    aput v12, v10, v11

    goto/16 :goto_5

    :cond_5
    sget-object v10, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v10, v10, v7

    aget-byte v10, v10, v9

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/rtg/dma;->sd(I)I

    move-result v11

    xor-int/2addr v10, v11

    sget-object v11, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v11, v11, v6

    aget-byte v11, v11, v9

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/rtg/dma;->td(I)I

    move-result v12

    xor-int/2addr v11, v12

    sget-object v12, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v12, v12, v6

    aget-byte v12, v12, v9

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/rtg/dma;->ud(I)I

    move-result v13

    xor-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v13, v13, v7

    aget-byte v13, v13, v9

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/rtg/dma;->vd(I)I

    move-result v14

    xor-int/2addr v13, v14

    :goto_3
    sget-object v14, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v14, v14, v7

    aget-byte v10, v14, v10

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/rtg/dma;->sd(I)I

    move-result v14

    xor-int/2addr v10, v14

    sget-object v14, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v14, v14, v7

    aget-byte v11, v14, v11

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/rtg/dma;->td(I)I

    move-result v14

    xor-int/2addr v11, v14

    sget-object v14, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v14, v14, v6

    aget-byte v12, v14, v12

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/rtg/dma;->ud(I)I

    move-result v14

    xor-int/2addr v12, v14

    sget-object v14, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v14, v14, v6

    aget-byte v13, v14, v13

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/rtg/dma;->vd(I)I

    move-result v14

    xor-int/2addr v13, v14

    :goto_4
    iget-object v14, v0, Lorg/bouncycastle/crypto/rtg/dma;->qQa:[I

    mul-int/lit8 v15, v9, 0x2

    iget-object v3, v0, Lorg/bouncycastle/crypto/rtg/dma;->lQa:[I

    sget-object v16, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v17, v16, v6

    aget-object v16, v16, v6

    aget-byte v10, v16, v10

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/rtg/dma;->sd(I)I

    move-result v16

    xor-int v10, v10, v16

    aget-byte v10, v17, v10

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/rtg/dma;->sd(I)I

    move-result v16

    xor-int v10, v10, v16

    aget v3, v3, v10

    aput v3, v14, v15

    iget-object v3, v0, Lorg/bouncycastle/crypto/rtg/dma;->qQa:[I

    add-int/lit8 v10, v15, 0x1

    iget-object v14, v0, Lorg/bouncycastle/crypto/rtg/dma;->mQa:[I

    sget-object v16, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v17, v16, v6

    aget-object v16, v16, v7

    aget-byte v11, v16, v11

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/rtg/dma;->td(I)I

    move-result v16

    xor-int v11, v11, v16

    aget-byte v11, v17, v11

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/rtg/dma;->td(I)I

    move-result v16

    xor-int v11, v11, v16

    aget v11, v14, v11

    aput v11, v3, v10

    iget-object v3, v0, Lorg/bouncycastle/crypto/rtg/dma;->qQa:[I

    add-int/lit16 v10, v15, 0x200

    iget-object v11, v0, Lorg/bouncycastle/crypto/rtg/dma;->nQa:[I

    sget-object v14, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v16, v14, v7

    aget-object v14, v14, v6

    aget-byte v12, v14, v12

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/rtg/dma;->ud(I)I

    move-result v14

    xor-int/2addr v12, v14

    aget-byte v12, v16, v12

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/rtg/dma;->ud(I)I

    move-result v14

    xor-int/2addr v12, v14

    aget v11, v11, v12

    aput v11, v3, v10

    iget-object v3, v0, Lorg/bouncycastle/crypto/rtg/dma;->qQa:[I

    add-int/lit16 v15, v15, 0x201

    iget-object v10, v0, Lorg/bouncycastle/crypto/rtg/dma;->oQa:[I

    sget-object v11, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v12, v11, v7

    aget-object v11, v11, v7

    aget-byte v11, v11, v13

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/rtg/dma;->vd(I)I

    move-result v13

    xor-int/2addr v11, v13

    aget-byte v11, v12, v11

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/rtg/dma;->vd(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    aput v10, v3, v15

    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key size larger than 256 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key size less than 64 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ld(I)I
    .locals 2

    iget-object p0, p0, Lorg/bouncycastle/crypto/rtg/dma;->qQa:[I

    and-int/lit16 v0, p1, 0xff

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x0

    aget v0, p0, v0

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v1, p0, v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit16 v1, v1, 0x200

    aget v1, p0, v1

    xor-int/2addr v0, v1

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0x201

    aget p0, p0, p1

    xor-int/2addr p0, v0

    return p0
.end method

.method private md(I)I
    .locals 2

    iget-object p0, p0, Lorg/bouncycastle/crypto/rtg/dma;->qQa:[I

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x0

    aget v0, p0, v0

    and-int/lit16 v1, p1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v1, p0, v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit16 v1, v1, 0x200

    aget v1, p0, v1

    xor-int/2addr v0, v1

    ushr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0x201

    aget p0, p0, p1

    xor-int/2addr p0, v0

    return p0
.end method

.method private nd(I)I
    .locals 0

    shr-int/lit8 p0, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/16 p1, 0xb4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p0, p1

    return p0
.end method

.method private od(I)I
    .locals 2

    shr-int/lit8 p0, p1, 0x2

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0xb4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    xor-int/2addr p0, v0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    const/16 v1, 0x5a

    :cond_1
    xor-int/2addr p0, v1

    return p0
.end method

.method private oif(I[I)I
    .locals 11

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/rtg/dma;->sd(I)I

    move-result v0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/rtg/dma;->td(I)I

    move-result v1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/rtg/dma;->ud(I)I

    move-result v2

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/rtg/dma;->vd(I)I

    move-result p1

    const/4 v3, 0x0

    aget v4, p2, v3

    const/4 v5, 0x1

    aget v6, p2, v5

    const/4 v7, 0x2

    aget v8, p2, v7

    const/4 v9, 0x3

    aget p2, p2, v9

    iget v10, p0, Lorg/bouncycastle/crypto/rtg/dma;->rQa:I

    and-int/2addr v10, v9

    if-eqz v10, :cond_1

    if-eq v10, v5, :cond_0

    if-eq v10, v7, :cond_3

    if-eq v10, v9, :cond_2

    goto/16 :goto_1

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/crypto/rtg/dma;->lQa:[I

    sget-object v6, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v6, v6, v3

    aget-byte v0, v6, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/rtg/dma;->sd(I)I

    move-result v6

    xor-int/2addr v0, v6

    aget p2, p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/dma;->mQa:[I

    sget-object v6, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v3, v6, v3

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/rtg/dma;->td(I)I

    move-result v3

    xor-int/2addr v1, v3

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/dma;->nQa:[I

    sget-object v1, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v1, v1, v5

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/rtg/dma;->ud(I)I

    move-result v2

    xor-int/2addr v1, v2

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/dma;->oQa:[I

    sget-object v1, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v1, v1, v5

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/rtg/dma;->vd(I)I

    move-result p0

    xor-int/2addr p0, p1

    aget p0, v0, p0

    goto/16 :goto_0

    :cond_1
    sget-object v7, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v7, v7, v5

    aget-byte v0, v7, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/rtg/dma;->sd(I)I

    move-result v7

    xor-int/2addr v0, v7

    sget-object v7, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v7, v7, v3

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/rtg/dma;->td(I)I

    move-result v7

    xor-int/2addr v1, v7

    sget-object v7, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v7, v7, v3

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/rtg/dma;->ud(I)I

    move-result v7

    xor-int/2addr v2, v7

    sget-object v7, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v7, v7, v5

    aget-byte p1, v7, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/rtg/dma;->vd(I)I

    move-result p2

    xor-int/2addr p1, p2

    :cond_2
    sget-object p2, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object p2, p2, v5

    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/rtg/dma;->sd(I)I

    move-result v0

    xor-int/2addr v0, p2

    sget-object p2, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object p2, p2, v5

    aget-byte p2, p2, v1

    and-int/lit16 p2, p2, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/rtg/dma;->td(I)I

    move-result v1

    xor-int/2addr v1, p2

    sget-object p2, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object p2, p2, v3

    aget-byte p2, p2, v2

    and-int/lit16 p2, p2, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/rtg/dma;->ud(I)I

    move-result v2

    xor-int/2addr v2, p2

    sget-object p2, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object p2, p2, v3

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/rtg/dma;->vd(I)I

    move-result p2

    xor-int/2addr p1, p2

    :cond_3
    iget-object p2, p0, Lorg/bouncycastle/crypto/rtg/dma;->lQa:[I

    sget-object v7, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v8, v7, v3

    aget-object v7, v7, v3

    aget-byte v0, v7, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/rtg/dma;->sd(I)I

    move-result v7

    xor-int/2addr v0, v7

    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/rtg/dma;->sd(I)I

    move-result v7

    xor-int/2addr v0, v7

    aget p2, p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/dma;->mQa:[I

    sget-object v7, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v8, v7, v3

    aget-object v7, v7, v5

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/rtg/dma;->td(I)I

    move-result v7

    xor-int/2addr v1, v7

    aget-byte v1, v8, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/rtg/dma;->td(I)I

    move-result v7

    xor-int/2addr v1, v7

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/dma;->nQa:[I

    sget-object v1, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v7, v1, v5

    aget-object v1, v1, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/rtg/dma;->ud(I)I

    move-result v2

    xor-int/2addr v1, v2

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/rtg/dma;->ud(I)I

    move-result v2

    xor-int/2addr v1, v2

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/dma;->oQa:[I

    sget-object v1, Lorg/bouncycastle/crypto/rtg/dma;->P:[[B

    aget-object v2, v1, v5

    aget-object v1, v1, v5

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/rtg/dma;->vd(I)I

    move-result v1

    xor-int/2addr p1, v1

    aget-byte p1, v2, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/rtg/dma;->vd(I)I

    move-result p0

    xor-int/2addr p0, p1

    aget p0, v0, p0

    :goto_0
    xor-int v3, p2, p0

    :goto_1
    return v3
.end method

.method private pd(I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/rtg/dma;->od(I)I

    move-result p0

    xor-int/2addr p0, p1

    return p0
.end method

.method private qd(I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/rtg/dma;->nd(I)I

    move-result v0

    xor-int/2addr v0, p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/rtg/dma;->od(I)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private rd(I)I
    .locals 4

    ushr-int/lit8 p0, p1, 0x18

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 v0, p0, 0x1

    and-int/lit16 v1, p0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x14d

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, p0, 0x1

    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_1

    const/16 v2, 0xa6

    :cond_1
    xor-int/2addr v1, v2

    xor-int/2addr v1, v0

    shl-int/lit8 p1, p1, 0x8

    shl-int/lit8 v2, v1, 0x18

    xor-int/2addr p1, v2

    shl-int/lit8 v0, v0, 0x10

    xor-int/2addr p1, v0

    shl-int/lit8 v0, v1, 0x8

    xor-int/2addr p1, v0

    xor-int/2addr p0, p1

    return p0
.end method

.method private rtg(I[BI)V
    .locals 1

    int-to-byte p0, p1

    aput-byte p0, p2, p3

    add-int/lit8 p0, p3, 0x1

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p0

    add-int/lit8 p0, p3, 0x2

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    aput-byte v0, p2, p0

    add-int/lit8 p3, p3, 0x3

    shr-int/lit8 p0, p1, 0x18

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    return-void
.end method

.method private sd(I)I
    .locals 0

    and-int/lit16 p0, p1, 0xff

    return p0
.end method

.method private sis([BI[BI)V
    .locals 11

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/rtg/dma;->zgw([BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/rtg/dma;->zgw([BI)I

    move-result v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    xor-int/2addr v1, v3

    add-int/lit8 v3, p2, 0x8

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/rtg/dma;->zgw([BI)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    xor-int/2addr v3, v4

    add-int/lit8 p2, p2, 0xc

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/rtg/dma;->zgw([BI)I

    move-result p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    const/4 v4, 0x3

    aget p2, p2, v4

    xor-int/2addr p1, p2

    const/16 p2, 0x8

    :goto_0
    const/16 v4, 0x10

    if-ge v2, v4, :cond_0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/rtg/dma;->ld(I)I

    move-result v4

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/rtg/dma;->md(I)I

    move-result v6

    add-int v7, v4, v6

    iget-object v8, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    add-int/lit8 v9, p2, 0x1

    aget p2, v8, p2

    add-int/2addr v7, p2

    xor-int p2, v3, v7

    ushr-int/lit8 v3, p2, 0x1

    shl-int/lit8 p2, p2, 0x1f

    or-int/2addr v3, p2

    shl-int/lit8 p2, p1, 0x1

    ushr-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, p2

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    add-int/lit8 p2, v9, 0x1

    aget v6, v8, v9

    add-int/2addr v4, v6

    xor-int/2addr p1, v4

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/rtg/dma;->ld(I)I

    move-result v4

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/rtg/dma;->md(I)I

    move-result v6

    add-int v7, v4, v6

    iget-object v8, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    add-int/lit8 v9, p2, 0x1

    aget p2, v8, p2

    add-int/2addr v7, p2

    xor-int p2, v0, v7

    ushr-int/lit8 v0, p2, 0x1

    shl-int/lit8 p2, p2, 0x1f

    or-int/2addr v0, p2

    shl-int/lit8 p2, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr p2, v1

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    add-int/lit8 v1, v9, 0x1

    aget v6, v8, v9

    add-int/2addr v4, v6

    xor-int/2addr p2, v4

    add-int/lit8 v2, v2, 0x2

    move v10, v1

    move v1, p2

    move p2, v10

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    const/4 v2, 0x4

    aget p2, p2, v2

    xor-int/2addr p2, v3

    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/rtg/dma;->rtg(I[BI)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    const/4 v2, 0x5

    aget p2, p2, v2

    xor-int/2addr p1, p2

    add-int/lit8 p2, p4, 0x4

    invoke-direct {p0, p1, p3, p2}, Lorg/bouncycastle/crypto/rtg/dma;->rtg(I[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    const/4 p2, 0x6

    aget p1, p1, p2

    xor-int/2addr p1, v0

    add-int/lit8 p2, p4, 0x8

    invoke-direct {p0, p1, p3, p2}, Lorg/bouncycastle/crypto/rtg/dma;->rtg(I[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    const/4 p2, 0x7

    aget p1, p1, p2

    xor-int/2addr p1, v1

    add-int/lit8 p4, p4, 0xc

    invoke-direct {p0, p1, p3, p4}, Lorg/bouncycastle/crypto/rtg/dma;->rtg(I[BI)V

    return-void
.end method

.method private td(I)I
    .locals 0

    ushr-int/lit8 p0, p1, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private ud(I)I
    .locals 0

    ushr-int/lit8 p0, p1, 0x10

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private vd(I)I
    .locals 0

    ushr-int/lit8 p0, p1, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private you([BI[BI)V
    .locals 10

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/rtg/dma;->zgw([BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/rtg/dma;->zgw([BI)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    xor-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/rtg/dma;->zgw([BI)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    xor-int/2addr v2, v3

    add-int/lit8 p2, p2, 0xc

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/rtg/dma;->zgw([BI)I

    move-result p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    const/4 v3, 0x7

    aget p2, p2, v3

    xor-int/2addr p1, p2

    const/4 p2, 0x0

    const/16 v3, 0x27

    move v4, v3

    move v3, v1

    move v1, v0

    move v0, p1

    move p1, p2

    :goto_0
    const/16 v5, 0x10

    if-ge p1, v5, :cond_0

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/rtg/dma;->ld(I)I

    move-result v5

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/rtg/dma;->md(I)I

    move-result v6

    mul-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v5

    iget-object v8, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    add-int/lit8 v9, v4, -0x1

    aget v4, v8, v4

    add-int/2addr v7, v4

    xor-int/2addr v0, v7

    shl-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1f

    or-int/2addr v2, v4

    add-int/2addr v5, v6

    add-int/lit8 v4, v9, -0x1

    aget v6, v8, v9

    add-int/2addr v5, v6

    xor-int/2addr v2, v5

    ushr-int/lit8 v5, v0, 0x1

    shl-int/lit8 v0, v0, 0x1f

    or-int/2addr v0, v5

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/rtg/dma;->ld(I)I

    move-result v5

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/rtg/dma;->md(I)I

    move-result v6

    mul-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v5

    iget-object v8, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    add-int/lit8 v9, v4, -0x1

    aget v4, v8, v4

    add-int/2addr v7, v4

    xor-int/2addr v3, v7

    shl-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v1, v4

    add-int/2addr v5, v6

    add-int/lit8 v4, v9, -0x1

    aget v6, v8, v9

    add-int/2addr v5, v6

    xor-int/2addr v1, v5

    ushr-int/lit8 v5, v3, 0x1

    shl-int/lit8 v3, v3, 0x1f

    or-int/2addr v3, v5

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    aget p1, p1, p2

    xor-int/2addr p1, v2

    invoke-direct {p0, p1, p3, p4}, Lorg/bouncycastle/crypto/rtg/dma;->rtg(I[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    xor-int/2addr p1, v0

    add-int/lit8 p2, p4, 0x4

    invoke-direct {p0, p1, p3, p2}, Lorg/bouncycastle/crypto/rtg/dma;->rtg(I[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    const/4 p2, 0x2

    aget p1, p1, p2

    xor-int/2addr p1, v1

    add-int/lit8 p2, p4, 0x8

    invoke-direct {p0, p1, p3, p2}, Lorg/bouncycastle/crypto/rtg/dma;->rtg(I[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/rtg/dma;->pQa:[I

    const/4 p2, 0x3

    aget p1, p1, p2

    xor-int/2addr p1, v3

    add-int/lit8 p4, p4, 0xc

    invoke-direct {p0, p1, p3, p4}, Lorg/bouncycastle/crypto/rtg/dma;->rtg(I[BI)V

    return-void
.end method

.method private zgw([BI)I
    .locals 1

    aget-byte p0, p1, p2

    and-int/lit16 p0, p0, 0xff

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public getBlockSize()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public irq()Ljava/lang/String;
    .locals 0

    const-string p0, "Twofish"

    return-object p0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/dma;->GPa:[B

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/rtg/dma;->irq([B)V

    :cond_0
    return-void
.end method

.method public zta([BI[BI)I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/dma;->GPa:[B

    if-eqz v0, :cond_3

    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/rtg/dma;->jOa:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/rtg/dma;->sis([BI[BI)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/rtg/dma;->you([BI[BI)V

    :goto_0
    const/16 p0, 0x10

    return p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Twofish not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 1

    instance-of v0, p2, Lorg/bouncycastle/crypto/wtn/cjf;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/rtg/dma;->jOa:Z

    check-cast p2, Lorg/bouncycastle/crypto/wtn/cjf;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/cjf;->getKey()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/rtg/dma;->GPa:[B

    iget-object p1, p0, Lorg/bouncycastle/crypto/rtg/dma;->GPa:[B

    array-length p2, p1

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/crypto/rtg/dma;->rQa:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/rtg/dma;->irq([B)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid parameter passed to Twofish init - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
