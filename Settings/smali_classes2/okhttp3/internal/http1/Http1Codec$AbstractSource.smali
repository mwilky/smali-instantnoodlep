.class abstract Lokhttp3/internal/http1/Http1Codec$AbstractSource;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractSource"
.end annotation


# instance fields
.field protected closed:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;

.field protected final timeout:Lokio/ForwardingTimeout;


# direct methods
.method synthetic constructor <init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/internal/http1/Http1Codec$1;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lokio/ForwardingTimeout;

    iget-object p2, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object p2, p2, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p2

    invoke-direct {p1, p2}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lokio/ForwardingTimeout;

    return-void
.end method


# virtual methods
.method protected final endOfInput(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget v1, v0, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lokio/ForwardingTimeout;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http1/Http1Codec;->detachTimeout(Lokio/ForwardingTimeout;)V

    iget-object p0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iput v2, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    if-eqz v0, :cond_1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p0}, Lokhttp3/internal/connection/StreamAllocation;->streamFinished(ZLokhttp3/internal/http/HttpCodec;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "state: "

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget p0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lokio/ForwardingTimeout;

    return-object p0
.end method
