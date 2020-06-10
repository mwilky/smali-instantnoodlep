.class public final Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;
.super Landroid/support/v4/media/MediaPlayer2$DrmInfo;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrmInfoImpl"
.end annotation


# instance fields
.field private mMapPssh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation
.end field

.field private mSupportedSchemes:[Ljava/util/UUID;


# direct methods
.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    invoke-direct {p0}, Landroid/support/v4/media/MediaPlayer2$DrmInfo;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrmInfoImpl("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer2Impl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v2, v0, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrmInfoImpl() PSSH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->arrToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->parsePSSH([BI)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mMapPssh:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mMapPssh:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v4, v3, [Ljava/util/UUID;

    iput-object v4, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mSupportedSchemes:[Ljava/util/UUID;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    const/16 v5, 0x10

    new-array v5, v5, [B

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    iget-object v6, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mSupportedSchemes:[Ljava/util/UUID;

    invoke-direct {p0, v5}, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v7

    aput-object v7, v6, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DrmInfoImpl() supportedScheme["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mSupportedSchemes:[Ljava/util/UUID;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DrmInfoImpl() Parcel psshsize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " supportedDRMsCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;[Ljava/util/UUID;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;[",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/media/MediaPlayer2$DrmInfo;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mMapPssh:Ljava/util/Map;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mSupportedSchemes:[Ljava/util/UUID;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;[Ljava/util/UUID;Landroid/support/v4/media/MediaPlayer2Impl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;-><init>(Ljava/util/Map;[Ljava/util/UUID;)V

    return-void
.end method

.method private arrToHex([B)Ljava/lang/String;
    .locals 6

    const-string v0, "0x"

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private bytesToUUID([B)Ljava/util/UUID;
    .locals 11

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    aget-byte v6, p1, v4

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    rsub-int/lit8 v10, v4, 0x7

    mul-int/2addr v10, v5

    shl-long/2addr v6, v10

    or-long/2addr v0, v6

    add-int/lit8 v6, v4, 0x8

    aget-byte v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    rsub-int/lit8 v8, v4, 0x7

    mul-int/2addr v8, v5

    shl-long v5, v6, v8

    or-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object v4
.end method

.method private makeCopy()Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;
    .locals 3

    new-instance v0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;

    iget-object v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mMapPssh:Ljava/util/Map;

    iget-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mSupportedSchemes:[Ljava/util/UUID;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;-><init>(Ljava/util/Map;[Ljava/util/UUID;)V

    return-object v0
.end method

.method private parsePSSH([BI)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/16 v3, 0x10

    const/4 v4, 0x4

    move/from16 v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-lez v5, :cond_4

    const/4 v8, 0x0

    const-string v9, "MediaPlayer2Impl"

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v5, v10, :cond_0

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    const-string v11, "parsePSSH: len is too short to parse UUID: (%d < 16) pssh: %d"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_0
    add-int/lit8 v14, v7, 0x10

    invoke-static {v1, v7, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    invoke-direct {v0, v14}, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v15

    add-int/lit8 v7, v7, 0x10

    add-int/lit8 v5, v5, -0x10

    const/4 v10, 0x4

    if-ge v5, v10, :cond_1

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    const-string v11, "parsePSSH: len is too short to parse datalen: (%d < 4) pssh: %d"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_1
    add-int/lit8 v10, v7, 0x4

    invoke-static {v1, v7, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v11, 0x3

    if-ne v14, v8, :cond_2

    aget-byte v8, v10, v11

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    aget-byte v14, v10, v12

    and-int/lit16 v14, v14, 0xff

    const/16 v16, 0x10

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v8, v14

    aget-byte v14, v10, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v8, v14

    const/4 v14, 0x0

    aget-byte v11, v10, v14

    and-int/lit16 v11, v11, 0xff

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    aget-byte v8, v10, v14

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    aget-byte v11, v10, v13

    and-int/lit16 v11, v11, 0xff

    const/16 v14, 0x10

    shl-int/2addr v11, v14

    or-int/2addr v8, v11

    aget-byte v11, v10, v12

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v8, v11

    const/4 v11, 0x3

    aget-byte v14, v10, v11

    and-int/lit16 v11, v14, 0xff

    :goto_1
    or-int/2addr v8, v11

    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v5, v5, -0x4

    if-ge v5, v8, :cond_3

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v11, v16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const-string v12, "parsePSSH: len is too short to parse data: (%d < %d) pssh: %d"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return-object v9

    :cond_3
    add-int v11, v7, v8

    invoke-static {v1, v7, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    add-int/2addr v7, v8

    sub-int/2addr v5, v8

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v14, v17

    aput-object v15, v14, v13

    invoke-direct {v0, v11}, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->arrToHex([B)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v14, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v14, v13

    const-string v12, "parsePSSH[%d]: <%s, %s> pssh: %d"

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v2, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    return-object v2
.end method


# virtual methods
.method public getPssh()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mMapPssh:Ljava/util/Map;

    return-object v0
.end method

.method public getSupportedSchemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mSupportedSchemes:[Ljava/util/UUID;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
