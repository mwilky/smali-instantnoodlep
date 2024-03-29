.class Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;
.super Ljava/lang/Object;
.source "SimpleNetworkDispatcher.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/Dispatcher;


# instance fields
.field private final ctx:Landroid/content/Context;

.field private gaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private mOverrideHostUrl:Ljava/net/URL;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/google/analytics/tracking/android/GoogleAnalytics;Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->ctx:Landroid/content/Context;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-static {p3}, Lcom/google/analytics/tracking/android/Utils;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "GoogleAnalytics"

    const-string v2, "3.0"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->createUserAgentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->userAgent:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->httpClient:Lorg/apache/http/client/HttpClient;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->gaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    return-void
.end method

.method private buildRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Empty hit, discarding."

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "?"

    invoke-static {p2, v0, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline18(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7f4

    if-ge v2, v3, :cond_1

    new-instance p1, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string p2, "GET"

    invoke-direct {p1, p2, v0}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v2, "POST"

    invoke-direct {v0, v2, p2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {p2, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    iget-object p0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->userAgent:Ljava/lang/String;

    const-string p2, "User-Agent"

    invoke-interface {p1, p2, p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catch_0
    const-string p0, "Encoding error, discarding hit"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    return-object v1
.end method

.method private logDebugInformation(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 5

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "\n"

    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    const-string p1, "POST:\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Error Writing hit to log..."

    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method createUserAgentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x6

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    aput-object p2, p0, p1

    const/4 p1, 0x2

    aput-object p3, p0, p1

    const/4 p1, 0x3

    aput-object p4, p0, p1

    const/4 p1, 0x4

    aput-object p5, p0, p1

    const/4 p1, 0x5

    aput-object p6, p0, p1

    const-string p1, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dispatchHits(Ljava/util/List;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_b

    move-object/from16 v6, p1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/analytics/tracking/android/Hit;

    invoke-virtual {v0, v7}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->getUrl(Lcom/google/analytics/tracking/android/Hit;)Ljava/net/URL;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->isVerbose()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "No destination: discarding hit: "

    invoke-static {v8}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const-string v7, "No destination: discarding hit."

    invoke-static {v7}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    new-instance v9, Lorg/apache/http/HttpHost;

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Ljava/net/URL;->getPort()I

    move-result v11

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v7, ""

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/Hit;->getHitTime()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    const-string v14, "="

    if-lez v13, :cond_3

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/Hit;->getHitTime()J

    move-result-wide v17

    sub-long v10, v10, v17

    cmp-long v13, v10, v15

    if-ltz v13, :cond_3

    const-string v13, "&qt"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    const-string v10, "&z"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/Hit;->getHitId()J

    move-result-wide v10

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-direct {v0, v7, v8}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->buildRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;

    move-result-object v8

    if-nez v8, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v9}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Host"

    invoke-interface {v8, v11, v10}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->isVerbose()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-direct {v0, v8}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->logDebugInformation(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v10, 0x2000

    if-le v7, v10, :cond_6

    const-string v7, "Hit too long (> 8192 bytes)--not sent"

    invoke-static {v7}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    iget-object v7, v0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->gaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->isDryRunEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "Dry run enabled. Hit not actually sent."

    invoke-static {v7}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    if-eqz v5, :cond_8

    :try_start_0
    iget-object v7, v0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->ctx:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/analytics/tracking/android/GANetworkReceiver;->sendRadioPoweredBroadcast(Landroid/content/Context;)V

    move v5, v2

    :cond_8
    iget-object v7, v0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v7, v9, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_9
    const/16 v9, 0xc8

    if-eq v8, v9, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Exception sending hit: "

    invoke-static {v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    return v4

    :catch_1
    const-string v7, "ClientProtocolException sending hit; discarding hit..."

    invoke-static {v7}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    :cond_a
    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    return v4
.end method

.method getUrl(Lcom/google/analytics/tracking/android/Hit;)Ljava/net/URL;
    .locals 1

    iget-object p0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->mOverrideHostUrl:Ljava/net/URL;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Hit;->getHitUrlScheme()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/net/URL;

    const-string v0, "http:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "http://www.google-analytics.com/collect"

    goto :goto_0

    :cond_1
    const-string p0, "https://ssl.google-analytics.com/collect"

    :goto_0
    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p0, "Error trying to parse the hardcoded host url. This really shouldn\'t happen."

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public okToDispatch()Z
    .locals 1

    iget-object p0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->ctx:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "...no network connectivity"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public overrideHostUrl(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->mOverrideHostUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->mOverrideHostUrl:Ljava/net/URL;

    :goto_0
    return-void
.end method
