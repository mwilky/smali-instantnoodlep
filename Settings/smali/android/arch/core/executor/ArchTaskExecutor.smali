.class public Landroid/arch/core/executor/ArchTaskExecutor;
.super Landroid/arch/core/executor/TaskExecutor;
.source "ArchTaskExecutor.java"


# static fields
.field private static volatile sInstance:Landroid/arch/core/executor/ArchTaskExecutor;


# instance fields
.field private mDefaultTaskExecutor:Landroid/arch/core/executor/TaskExecutor;

.field private mDelegate:Landroid/arch/core/executor/TaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/arch/core/executor/ArchTaskExecutor$1;

    invoke-direct {v0}, Landroid/arch/core/executor/ArchTaskExecutor$1;-><init>()V

    new-instance v0, Landroid/arch/core/executor/ArchTaskExecutor$2;

    invoke-direct {v0}, Landroid/arch/core/executor/ArchTaskExecutor$2;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/arch/core/executor/TaskExecutor;-><init>()V

    new-instance v0, Landroid/arch/core/executor/DefaultTaskExecutor;

    invoke-direct {v0}, Landroid/arch/core/executor/DefaultTaskExecutor;-><init>()V

    iput-object v0, p0, Landroid/arch/core/executor/ArchTaskExecutor;->mDefaultTaskExecutor:Landroid/arch/core/executor/TaskExecutor;

    iget-object v0, p0, Landroid/arch/core/executor/ArchTaskExecutor;->mDefaultTaskExecutor:Landroid/arch/core/executor/TaskExecutor;

    iput-object v0, p0, Landroid/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    return-void
.end method

.method public static getInstance()Landroid/arch/core/executor/ArchTaskExecutor;
    .locals 2

    sget-object v0, Landroid/arch/core/executor/ArchTaskExecutor;->sInstance:Landroid/arch/core/executor/ArchTaskExecutor;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/arch/core/executor/ArchTaskExecutor;->sInstance:Landroid/arch/core/executor/ArchTaskExecutor;

    return-object v0

    :cond_0
    const-class v0, Landroid/arch/core/executor/ArchTaskExecutor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/arch/core/executor/ArchTaskExecutor;->sInstance:Landroid/arch/core/executor/ArchTaskExecutor;

    if-nez v1, :cond_1

    new-instance v1, Landroid/arch/core/executor/ArchTaskExecutor;

    invoke-direct {v1}, Landroid/arch/core/executor/ArchTaskExecutor;-><init>()V

    sput-object v1, Landroid/arch/core/executor/ArchTaskExecutor;->sInstance:Landroid/arch/core/executor/ArchTaskExecutor;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/arch/core/executor/ArchTaskExecutor;->sInstance:Landroid/arch/core/executor/ArchTaskExecutor;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Landroid/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    invoke-virtual {p0, p1}, Landroid/arch/core/executor/TaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isMainThread()Z
    .locals 0

    iget-object p0, p0, Landroid/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    invoke-virtual {p0}, Landroid/arch/core/executor/TaskExecutor;->isMainThread()Z

    move-result p0

    return p0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Landroid/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    invoke-virtual {p0, p1}, Landroid/arch/core/executor/TaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
