.class final Lokhttp3/internal/http2/Http2Reader;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Reader$Handler;,
        Lokhttp3/internal/http2/Http2Reader$ContinuationSource;
    }
.end annotation


# static fields
.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final client:Z

.field private final continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

.field final hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lokhttp3/internal/http2/Http2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lokio/BufferedSource;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Reader;->client:Z

    new-instance p1, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    iget-object p2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-direct {p1, p2}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    new-instance p1, Lokhttp3/internal/http2/Hpack$Reader;

    iget-object p2, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    const/16 v0, 0x1000

    invoke-direct {p1, v0, p2}, Lokhttp3/internal/http2/Hpack$Reader;-><init>(ILokio/Source;)V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    return-void
.end method

.method static lengthWithoutPadding(IBS)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-gt p2, p0, :cond_1

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p0, p1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p0, 0x0

    throw p0
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    iput p1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    iput p1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->length:I

    iput-short p2, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S

    iput-byte p3, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    iput p4, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Hpack$Reader;->readHeaders()V

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static readMedium(Lokio/BufferedSource;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p0, v2

    check-cast p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-virtual {p1, p2, v0, p0, v1}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->priority(IIIZ)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/Source;->close()V

    return-void
.end method

.method public nextFrame(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-static {v1}, Lokhttp3/internal/http2/Http2Reader;->readMedium(Lokio/BufferedSource;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_2b

    const/16 v4, 0x4000

    if-gt v1, v4, :cond_2b

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x4

    if-eqz p1, :cond_1

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "Expected a SETTINGS frame but was %s"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :cond_1
    :goto_0
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->readByte()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    iget-object v7, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->readInt()I

    move-result v7

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    sget-object v9, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    invoke-static {v2, v7, v1, v5, p1}, Lokhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    const/16 v9, 0x8

    packed-switch v5, :pswitch_data_0

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    int-to-long p1, v1

    invoke-interface {p0, p1, p2}, Lokio/BufferedSource;->skip(J)V

    goto/16 :goto_7

    :pswitch_0
    if-ne v1, v6, :cond_4

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    int-to-long p0, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr p0, v4

    const-wide/16 v4, 0x0

    cmp-long v1, p0, v4

    if-eqz v1, :cond_3

    check-cast p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-virtual {p2, v7, p0, p1}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->windowUpdate(IJ)V

    goto/16 :goto_7

    :cond_3
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, v0

    const-string p0, "windowSizeIncrement was 0"

    invoke-static {p0, p2}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :cond_4
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :pswitch_1
    if-lt v1, v9, :cond_8

    if-nez v7, :cond_7

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->readInt()I

    move-result p1

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    sub-int/2addr v1, v9

    invoke-static {v4}, Lokhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object v5

    if-eqz v5, :cond_6

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-lez v1, :cond_5

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    int-to-long v0, v1

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    :cond_5
    check-cast p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-virtual {p2, p1, v5, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->goAway(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V

    goto/16 :goto_7

    :cond_6
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :cond_7
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "TYPE_GOAWAY streamId != 0"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :cond_8
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "TYPE_GOAWAY length < 8: %s"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :pswitch_2
    if-ne v1, v9, :cond_c

    if-nez v7, :cond_b

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    and-int/2addr p1, v2

    if-eqz p1, :cond_9

    move v0, v2

    :cond_9
    check-cast p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    if-eqz v0, :cond_a

    iget-object p0, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p0, v1}, Lokhttp3/internal/http2/Http2Connection;->removePing(I)Lokhttp3/internal/http2/Ping;

    move-result-object p0

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Lokhttp3/internal/http2/Ping;->receive()V

    goto/16 :goto_7

    :cond_a
    iget-object p1, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1, v2, v1, p0, v3}, Lokhttp3/internal/http2/Http2Connection;->writePingLater(ZIILokhttp3/internal/http2/Ping;)V

    goto/16 :goto_7

    :cond_b
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "TYPE_PING streamId != 0"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :cond_c
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "TYPE_PING length != 8: %s"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :pswitch_3
    if-eqz v7, :cond_e

    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_d

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_d
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    and-int/2addr v3, v8

    add-int/lit8 v1, v1, -0x4

    invoke-static {v1, p1, v0}, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v7}, Lokhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object p0

    check-cast p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object p1, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1, v3, p0}, Lokhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V

    goto/16 :goto_7

    :cond_e
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :pswitch_4
    if-nez v7, :cond_17

    and-int/2addr p1, v2

    if-eqz p1, :cond_10

    if-nez v1, :cond_f

    check-cast p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-virtual {p2}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->ackSettings()V

    goto/16 :goto_7

    :cond_f
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :cond_10
    rem-int/lit8 p1, v1, 0x6

    if-nez p1, :cond_16

    new-instance p1, Lokhttp3/internal/http2/Settings;

    invoke-direct {p1}, Lokhttp3/internal/http2/Settings;-><init>()V

    move v5, v0

    :goto_1
    if-ge v5, v1, :cond_15

    iget-object v7, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->readShort()S

    move-result v7

    iget-object v8, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readInt()I

    move-result v8

    packed-switch v7, :pswitch_data_1

    goto :goto_2

    :pswitch_5
    if-lt v8, v4, :cond_11

    const v9, 0xffffff

    if-gt v8, v9, :cond_11

    goto :goto_2

    :cond_11
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :pswitch_6
    const/4 v7, 0x7

    if-ltz v8, :cond_12

    goto :goto_2

    :cond_12
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :pswitch_7
    move v7, v6

    goto :goto_2

    :pswitch_8
    if-eqz v8, :cond_14

    if-ne v8, v2, :cond_13

    goto :goto_2

    :cond_13
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :cond_14
    :goto_2
    :pswitch_9
    invoke-virtual {p1, v7, v8}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    add-int/lit8 v5, v5, 0x6

    goto :goto_1

    :cond_15
    check-cast p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-virtual {p2, v0, p1}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->settings(ZLokhttp3/internal/http2/Settings;)V

    goto/16 :goto_7

    :cond_16
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :cond_17
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "TYPE_SETTINGS streamId != 0"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :pswitch_a
    if-ne v1, v6, :cond_1b

    if-eqz v7, :cond_1a

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    invoke-static {p0}, Lokhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object p1

    if-eqz p1, :cond_19

    check-cast p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object p0, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p0, v7}, Lokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result p0

    if-eqz p0, :cond_18

    iget-object p0, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p0, v7, p1}, Lokhttp3/internal/http2/Http2Connection;->pushResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    goto/16 :goto_7

    :cond_18
    iget-object p0, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p0, v7}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object p0

    if-eqz p0, :cond_2a

    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V

    goto/16 :goto_7

    :cond_19
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p0, p1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :cond_1a
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "TYPE_RST_STREAM streamId == 0"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :cond_1b
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :pswitch_b
    const/4 p1, 0x5

    if-ne v1, p1, :cond_1d

    if-eqz v7, :cond_1c

    invoke-direct {p0, p2, v7}, Lokhttp3/internal/http2/Http2Reader;->readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V

    goto/16 :goto_7

    :cond_1c
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "TYPE_PRIORITY streamId == 0"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :cond_1d
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :pswitch_c
    if-eqz v7, :cond_21

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1e

    move v3, v2

    goto :goto_3

    :cond_1e
    move v3, v0

    :goto_3
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_1f

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1f
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_20

    invoke-direct {p0, p2, v7}, Lokhttp3/internal/http2/Http2Reader;->readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V

    add-int/lit8 v1, v1, -0x5

    :cond_20
    invoke-static {v1, p1, v0}, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v7}, Lokhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object p0

    const/4 p1, -0x1

    check-cast p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-virtual {p2, v3, v7, p1, p0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->headers(ZIILjava/util/List;)V

    goto/16 :goto_7

    :cond_21
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :pswitch_d
    if-eqz v7, :cond_29

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_22

    move v4, v2

    goto :goto_4

    :cond_22
    move v4, v0

    :goto_4
    and-int/lit8 v5, p1, 0x20

    if-eqz v5, :cond_23

    move v5, v2

    goto :goto_5

    :cond_23
    move v5, v0

    :goto_5
    if-nez v5, :cond_28

    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_24

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_24
    invoke-static {v1, p1, v0}, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result p1

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    check-cast p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v3, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3, v7}, Lokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object p2, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p2, v7, v1, p1, v4}, Lokhttp3/internal/http2/Http2Connection;->pushDataLater(ILokio/BufferedSource;IZ)V

    goto :goto_6

    :cond_25
    iget-object v3, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3, v7}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v3

    if-nez v3, :cond_26

    iget-object p2, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p2, v7, v3}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    int-to-long p1, p1

    invoke-interface {v1, p1, p2}, Lokio/BufferedSource;->skip(J)V

    goto :goto_6

    :cond_26
    invoke-virtual {v3, v1, p1}, Lokhttp3/internal/http2/Http2Stream;->receiveData(Lokio/BufferedSource;I)V

    if-eqz v4, :cond_27

    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Stream;->receiveFin()V

    :cond_27
    :goto_6
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    int-to-long p1, v0

    invoke-interface {p0, p1, p2}, Lokio/BufferedSource;->skip(J)V

    goto :goto_7

    :cond_28
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :cond_29
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :cond_2a
    :goto_7
    return v2

    :cond_2b
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "FRAME_SIZE_ERROR: %s"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v3

    :catch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method public readConnectionPreface(Lokhttp3/internal/http2/Http2Reader$Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Reader;->client:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3, p1}, Lokhttp3/internal/http2/Http2Reader;->nextFrame(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "Required SETTINGS preface not received"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    sget-object p1, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    int-to-long v4, p1

    invoke-interface {p0, v4, v5}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object p0

    sget-object p1, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const-string v4, "<< CONNECTION %s"

    invoke-static {v4, v0}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    sget-object p1, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {p1, p0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    return-void

    :cond_3
    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "Expected a connection header but was %s"

    invoke-static {p0, p1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1
.end method
