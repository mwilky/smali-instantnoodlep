.class public final Lokhttp3/internal/http2/Http2Codec;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Lokhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;
    }
.end annotation


# static fields
.field private static final CONNECTION:Lokio/ByteString;

.field private static final ENCODING:Lokio/ByteString;

.field private static final HOST:Lokio/ByteString;

.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:Lokio/ByteString;

.field private static final PROXY_CONNECTION:Lokio/ByteString;

.field private static final TE:Lokio/ByteString;

.field private static final TRANSFER_ENCODING:Lokio/ByteString;

.field private static final UPGRADE:Lokio/ByteString;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private final connection:Lokhttp3/internal/http2/Http2Connection;

.field private stream:Lokhttp3/internal/http2/Http2Stream;

.field final streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->CONNECTION:Lokio/ByteString;

    const-string v0, "host"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->HOST:Lokio/ByteString;

    const-string v0, "keep-alive"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lokio/ByteString;

    const-string v0, "proxy-connection"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lokio/ByteString;

    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lokio/ByteString;

    const-string v0, "te"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->TE:Lokio/ByteString;

    const-string v0, "encoding"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->ENCODING:Lokio/ByteString;

    const-string v0, "upgrade"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->UPGRADE:Lokio/ByteString;

    const/16 v0, 0xc

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->CONNECTION:Lokio/ByteString;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->HOST:Lokio/ByteString;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lokio/ByteString;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lokio/ByteString;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->TE:Lokio/ByteString;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lokio/ByteString;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->ENCODING:Lokio/ByteString;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->UPGRADE:Lokio/ByteString;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    sget-object v1, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sget-object v1, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    sget-object v1, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lokio/ByteString;

    const/16 v11, 0xa

    aput-object v1, v0, v11

    sget-object v1, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    const/16 v11, 0xb

    aput-object v1, v0, v11

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    new-array v0, v10, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->HOST:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->TE:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lokio/ByteString;

    aput-object v1, v0, v7

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->ENCODING:Lokio/ByteString;

    aput-object v1, v0, v8

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->UPGRADE:Lokio/ByteString;

    aput-object v1, v0, v9

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http2/Http2Connection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Codec;->client:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    iput-object p3, p0, Lokhttp3/internal/http2/Http2Codec;->connection:Lokhttp3/internal/http2/Http2Connection;

    return-void
.end method


# virtual methods
.method public createRequestBody(Lokhttp3/Request;J)Lokio/Sink;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->getSink()Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public finishRequest()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->getSink()Lokio/Sink;

    move-result-object p0

    invoke-interface {p0}, Lokio/Sink;->close()V

    return-void
.end method

.method public flushRequest()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Codec;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Writer;->flush()V

    return-void
.end method

.method public openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream;->getSource()Lokio/Source;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;-><init>(Lokhttp3/internal/http2/Http2Codec;Lokio/Source;)V

    new-instance p0, Lokhttp3/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    return-object p0
.end method

.method public readResponseHeaders(Z)Lokhttp3/Response$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->takeResponseHeaders()Ljava/util/List;

    move-result-object p0

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    move-object v0, v3

    :goto_0
    const/16 v5, 0x64

    if-ge v2, v1, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/internal/http2/Header;

    if-nez v6, :cond_0

    if-eqz v0, :cond_2

    iget v6, v0, Lokhttp3/internal/http/StatusLine;->code:I

    if-ne v6, v5, :cond_2

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    move-object v4, v0

    move-object v0, v3

    goto :goto_1

    :cond_0
    iget-object v5, v6, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    iget-object v6, v6, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-virtual {v6}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    invoke-virtual {v5, v7}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP/1.1 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v7, Lokhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v5}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5, v6}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    new-instance p0, Lokhttp3/Response$Builder;

    invoke-direct {p0}, Lokhttp3/Response$Builder;-><init>()V

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    invoke-virtual {p0, v1}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    iget v1, v0, Lokhttp3/internal/http/StatusLine;->code:I

    invoke-virtual {p0, v1}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    iget-object v0, v0, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    if-eqz p1, :cond_4

    sget-object p1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {p1, p0}, Lokhttp3/internal/Internal;->code(Lokhttp3/Response$Builder;)I

    move-result p1

    if-ne p1, v5, :cond_4

    return-object v3

    :cond_4
    return-object p0

    :cond_5
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeRequestHeaders(Lokhttp3/Request;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Lokhttp3/internal/http2/Header;

    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lokhttp3/internal/http2/Header;

    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/internal/http/RequestLine;->requestPath(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "Host"

    invoke-virtual {p1, v4}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v5, Lokhttp3/internal/http2/Header;

    sget-object v6, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    invoke-direct {v5, v6, v4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v4, Lokhttp3/internal/http2/Header;

    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lokio/ByteString;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_4

    invoke-virtual {v2, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    sget-object v5, Lokhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Lokhttp3/internal/http2/Header;

    invoke-virtual {v2, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Codec;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1, v3, v0}, Lokhttp3/internal/http2/Http2Connection;->newStream(Ljava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    iget-object p1, p1, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Codec;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    iget-object p1, p1, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Codec;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result p0

    int-to-long v0, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    return-void
.end method
