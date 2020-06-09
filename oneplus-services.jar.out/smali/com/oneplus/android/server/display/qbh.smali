.class public final Lcom/oneplus/android/server/display/qbh;
.super Lcom/android/server/ServiceThread;
.source ""


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/oneplus/android/server/display/qbh;


# instance fields
.field private mCount:I


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "oneplus.colorgamut"

    const/4 v2, -0x3

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput v0, p0, Lcom/oneplus/android/server/display/qbh;->mCount:I

    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 3

    sget-object v0, Lcom/oneplus/android/server/display/qbh;->sInstance:Lcom/oneplus/android/server/display/qbh;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/display/qbh;

    invoke-direct {v0}, Lcom/oneplus/android/server/display/qbh;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/display/qbh;->sInstance:Lcom/oneplus/android/server/display/qbh;

    sget-object v0, Lcom/oneplus/android/server/display/qbh;->sInstance:Lcom/oneplus/android/server/display/qbh;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    sget-object v0, Lcom/oneplus/android/server/display/qbh;->sInstance:Lcom/oneplus/android/server/display/qbh;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/oneplus/android/server/display/qbh;->sInstance:Lcom/oneplus/android/server/display/qbh;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oneplus/android/server/display/qbh;->sHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static get()Lcom/oneplus/android/server/display/qbh;
    .locals 2

    const-class v0, Lcom/oneplus/android/server/display/qbh;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/oneplus/android/server/display/qbh;->ensureThreadLocked()V

    sget-object v1, Lcom/oneplus/android/server/display/qbh;->sInstance:Lcom/oneplus/android/server/display/qbh;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    const-class v0, Lcom/oneplus/android/server/display/qbh;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/oneplus/android/server/display/qbh;->ensureThreadLocked()V

    sget-object v1, Lcom/oneplus/android/server/display/qbh;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
