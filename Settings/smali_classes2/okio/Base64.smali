.class final Lokio/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final MAP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lokio/Base64;->MAP:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 10

    sget-object v0, Lokio/Base64;->MAP:[B

    array-length v1, p0

    const/4 v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    array-length v3, p0

    array-length v4, p0

    rem-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_0

    add-int/lit8 v6, v5, 0x1

    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v7, v2

    aget-byte v7, v0, v7

    aput-byte v7, v1, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v7, p0, v4

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v4, 0x1

    aget-byte v9, p0, v8

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v7, v9

    aget-byte v7, v0, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v5, 0x1

    aget-byte v7, p0, v8

    and-int/lit8 v7, v7, 0xf

    shl-int/2addr v7, v2

    add-int/lit8 v8, v4, 0x2

    aget-byte v9, p0, v8

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x6

    or-int/2addr v7, v9

    aget-byte v7, v0, v7

    aput-byte v7, v1, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v7, p0, v8

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v0, v7

    aput-byte v7, v1, v6

    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    :cond_0
    array-length v4, p0

    rem-int/lit8 v4, v4, 0x3

    const/16 v6, 0x3d

    const/4 v7, 0x1

    if-eq v4, v7, :cond_2

    if-eq v4, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v5, 0x1

    aget-byte v8, p0, v3

    and-int/lit16 v8, v8, 0xff

    shr-int/2addr v8, v2

    aget-byte v8, v0, v8

    aput-byte v8, v1, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v8, p0, v3

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v3, v7

    aget-byte v7, p0, v3

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v7, v8

    aget-byte v7, v0, v7

    aput-byte v7, v1, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte p0, p0, v3

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v2

    aget-byte p0, v0, p0

    aput-byte p0, v1, v5

    aput-byte v6, v1, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v5, 0x1

    aget-byte v7, p0, v3

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v2, v7, 0x2

    aget-byte v2, v0, v2

    aput-byte v2, v1, v5

    add-int/lit8 v2, v4, 0x1

    aget-byte p0, p0, v3

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    aget-byte p0, v0, p0

    aput-byte p0, v1, v4

    add-int/lit8 p0, v2, 0x1

    aput-byte v6, v1, v2

    aput-byte v6, v1, p0

    :goto_1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string v0, "US-ASCII"

    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
