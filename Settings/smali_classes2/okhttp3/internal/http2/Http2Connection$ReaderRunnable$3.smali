.class Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;
.super Lokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# instance fields
.field final synthetic this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field final synthetic val$peerSettings:Lokhttp3/internal/http2/Settings;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/http2/Settings;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iput-object p4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->val$peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->val$peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
