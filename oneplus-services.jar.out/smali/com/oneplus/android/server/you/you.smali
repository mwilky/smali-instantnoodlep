.class public Lcom/oneplus/android/server/you/you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/you/you$zta;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OpAudioScreenoffMonitorManager"


# instance fields
.field private final dna:Ljava/lang/Object;

.field private ena:Lcom/oneplus/android/server/you/you$zta;

.field private fna:Landroid/os/PowerManager$WakeLock;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioService:Lcom/android/server/audio/AudioService;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/you/you;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/you/you;->dna:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oneplus/android/server/you/you;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/android/server/you/you;->mAudioService:Lcom/android/server/audio/AudioService;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/oneplus/android/server/you/you;->mAudioManager:Landroid/media/AudioManager;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/16 p2, 0x20

    const-string v0, "OpAudioScreenoffMonitorManager-ScreenoffWake-prox"

    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/you/you;->fna:Landroid/os/PowerManager$WakeLock;

    new-instance p1, Lcom/oneplus/android/server/you/you$zta;

    invoke-direct {p1, p0}, Lcom/oneplus/android/server/you/you$zta;-><init>(Lcom/oneplus/android/server/you/you;)V

    iput-object p1, p0, Lcom/oneplus/android/server/you/you;->ena:Lcom/oneplus/android/server/you/you$zta;

    const-string p0, "OpAudioScreenoffMonitorManager"

    const-string p1, "OpAudioScreenoffMonitorManager new success"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/you/you;)Lcom/oneplus/android/server/you/you$zta;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/you/you;->ena:Lcom/oneplus/android/server/you/you$zta;

    return-object p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/you/you;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/you/you;->fna:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/you/you;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/you/you;->dna:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public onAcquireScreenoffWakeLock()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/you/you;->dna:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/android/server/you/you;->fna:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/android/server/you/you;->ena:Lcom/oneplus/android/server/you/you$zta;

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    iget-object p0, p0, Lcom/oneplus/android/server/you/you;->fna:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string p0, "OpAudioScreenoffMonitorManager"

    const-string v1, "acquire PROXIMITY_SCREEN_OFF_WAKE_LOCK to system active on off screen"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method public onReleaseScreenoffWakeLock()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/you/you;->dna:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/android/server/you/you;->fna:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/android/server/you/you;->ena:Lcom/oneplus/android/server/you/you$zta;

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusUtil$zta;->you(Lcom/android/server/OnePlusUtil$zta$you;)V

    iget-object p0, p0, Lcom/oneplus/android/server/you/you;->fna:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string p0, "OpAudioScreenoffMonitorManager"

    const-string v1, "release PROXIMITY_SCREEN_OFF_WAKE_LOCK to system active on off screen"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
