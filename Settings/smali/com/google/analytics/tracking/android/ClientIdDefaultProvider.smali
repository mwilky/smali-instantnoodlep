.class Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;
.super Ljava/lang/Object;
.source "ClientIdDefaultProvider.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/DefaultProvider;


# static fields
.field private static sInstance:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mClientId:Ljava/lang/String;

.field private mClientIdLoaded:Z

.field private final mClientIdLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLoaded:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;

    const-string v0, "client_id_fetcher"

    invoke-direct {p1, p0, v0}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;-><init>(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLoaded:Z

    return p1
.end method

.method private blockingGetClientId()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLoaded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLoaded:Z

    if-nez v1, :cond_1

    const-string v1, "Waiting for clientId to load"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while waiting for clientId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    :goto_0
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLoaded:Z

    if-eqz v1, :cond_0

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_1
    const-string v0, "Loaded clientId"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method static dropInstance()V
    .locals 2

    sget-object v0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getProvider()Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;
    .locals 2

    sget-object v0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static initializeProvider(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method protected generateClientId()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "Storing clientId."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mContext:Landroid/content/Context;

    const-string v2, "gaClientId"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "Error writing to clientId file."

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p0, "Error creating clientId file."

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_0

    const-string v0, "0"

    :cond_0
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "&cid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->blockingGetClientId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method initializeClientId()Ljava/lang/String;
    .locals 7

    const-string v0, "gaClientId"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    const/16 v3, 0x80

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v6

    if-lez v6, :cond_0

    const-string v3, "clientId file seems corrupted, deleting it."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    if-gtz v3, :cond_1

    const-string v3, "clientId file seems empty, deleting it."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-object v1, v6

    goto :goto_0

    :catch_1
    move-object v1, v6

    :catch_2
    const-string v2, "Error reading clientId file, deleting it."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :catch_3
    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->generateClientId()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method
