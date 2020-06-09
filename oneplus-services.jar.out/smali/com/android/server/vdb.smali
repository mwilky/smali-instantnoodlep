.class public Lcom/android/server/vdb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vdb$zta;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final IN_USING:Z = true

.field private static Re:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final Se:I = 0x1

.field public static final TAG:Ljava/lang/String; = "OPGPS"

.field private static final Te:I = 0x2

.field private static final Ue:I = 0x2710

.field private static final Ve:I = 0x7d0

.field private static We:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final Xe:I = 0x0

.field private static final Ye:I = 0x55d4a80

.field private static final Ze:I = 0x5f5e100

.field private static mAms:Lcom/android/server/am/ActivityManagerService;

.field private static mInstance:Lcom/android/server/vdb;

.field private static mPms:Landroid/content/pm/IPackageManager;


# instance fields
.field private Le:Landroid/os/Handler;

.field private Me:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Ne:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Oe:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Pe:Lcom/android/server/LocationManagerService$LocationManagerServiceInner;

.field private Qe:Ljava/lang/Object;

.field private mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerService$LocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private mUidObserver:Landroid/app/IUidObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/vdb;->DEBUG:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/vdb;->Re:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/vdb;->We:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/vdb;->mInstance:Lcom/android/server/vdb;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vdb;->Le:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vdb;->Me:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vdb;->Ne:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vdb;->Oe:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/OnePlusGPSFreezer$1;

    invoke-direct {v0, p0}, Lcom/android/server/OnePlusGPSFreezer$1;-><init>(Lcom/android/server/vdb;)V

    iput-object v0, p0, Lcom/android/server/vdb;->mUidObserver:Landroid/app/IUidObserver;

    new-instance v0, Lcom/android/server/vdb$zta;

    invoke-static {}, Lcom/android/server/am/irq;->getInstance()Lcom/android/server/am/irq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/irq;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/vdb$zta;-><init>(Lcom/android/server/vdb;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/vdb;->Le:Landroid/os/Handler;

    return-void
.end method

.method private Ma(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/vdb;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blockGps uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPGPS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    const-string v2, "GPSFreeze"

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/am/AppRecordManagerService;->notePauseGps(ILjava/lang/String;Z)V

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/android/server/vdb;->zgw(IZ)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/vdb;->vdb(IZ)V

    return-void
.end method

.method private Na(I)I
    .locals 0

    const p0, 0x55d4a80

    if-le p1, p0, :cond_0

    const p0, 0x5f5e100

    if-ge p1, p0, :cond_0

    const p0, 0x186a0

    rem-int/2addr p1, p0

    const p0, 0x5f45a60

    add-int/2addr p1, p0

    return p1

    :cond_0
    div-int/lit8 p1, p1, 0x64

    return p1
.end method

.method private Oa(I)I
    .locals 0

    const p0, 0x55d4a80

    if-le p1, p0, :cond_0

    const p0, 0x5f5e100

    if-ge p1, p0, :cond_0

    const p0, 0x186a0

    div-int/2addr p1, p0

    rsub-int p0, p1, 0x3e7

    return p0

    :cond_0
    rem-int/lit8 p1, p1, 0x64

    return p1
.end method

.method private Pa(I)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->cgv(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/vdb;->Ne:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/vdb;->Me:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/vdb;->Oe:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->getProcState(I)I

    move-result p0

    const/4 v0, 0x5

    if-lt p0, v0, :cond_2

    sget-object p0, Lcom/android/server/vdb;->mPms:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/server/vdb;->Re:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/android/server/vdb;->Re:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Falied to get getNameForUid "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPGPS"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private Qa(I)V
    .locals 2

    sget-boolean v0, Lcom/android/server/vdb;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unblockGps uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPGPS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vdb;->zgw(IZ)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/vdb;->vdb(IZ)V

    sget-boolean p0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object p0

    const-string v1, "GPSFreeze"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/am/AppRecordManagerService;->notePauseGps(ILjava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method static synthetic access$400()Landroid/content/pm/IPackageManager;
    .locals 1

    sget-object v0, Lcom/android/server/vdb;->mPms:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/server/vdb;->Re:Ljava/util/List;

    return-object v0
.end method

.method private static cjf(II)I
    .locals 1

    const v0, 0x55d4a80

    if-le p0, v0, :cond_0

    const v0, 0x186a0

    mul-int/2addr p1, v0

    sub-int/2addr p0, p1

    return p0

    :cond_0
    mul-int/lit8 p0, p0, 0x64

    add-int/2addr p0, p1

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/vdb;
    .locals 2

    const-class v0, Lcom/android/server/vdb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/vdb;->mInstance:Lcom/android/server/vdb;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/vdb;

    invoke-direct {v1}, Lcom/android/server/vdb;-><init>()V

    sput-object v1, Lcom/android/server/vdb;->mInstance:Lcom/android/server/vdb;

    :cond_0
    sget-object v1, Lcom/android/server/vdb;->mInstance:Lcom/android/server/vdb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isBlockedGpsUid(I)Z
    .locals 1

    sget-object v0, Lcom/android/server/vdb;->We:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic rtg(Lcom/android/server/vdb;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vdb;->Ma(I)V

    return-void
.end method

.method private rtg(ZI)V
    .locals 4

    sget-boolean v0, Lcom/android/server/vdb;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleChangeForGpsProcess uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |freeze:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPGPS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/vdb;->Le:Landroid/os/Handler;

    invoke-static {p2, v1}, Lcom/android/server/vdb;->cjf(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p2}, Lcom/android/server/vdb;->isBlockedGpsUid(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/vdb;->Le:Landroid/os/Handler;

    invoke-static {p2, v2}, Lcom/android/server/vdb;->cjf(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/vdb;->Le:Landroid/os/Handler;

    invoke-static {p2, v2}, Lcom/android/server/vdb;->cjf(II)I

    move-result p2

    invoke-static {p1, p2, v3, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/vdb;->Le:Landroid/os/Handler;

    const-wide/16 v0, 0x2710

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/vdb;->Le:Landroid/os/Handler;

    invoke-static {p2, v2}, Lcom/android/server/vdb;->cjf(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p2}, Lcom/android/server/vdb;->isBlockedGpsUid(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/vdb;->Le:Landroid/os/Handler;

    invoke-static {p2, v1}, Lcom/android/server/vdb;->cjf(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/vdb;->Le:Landroid/os/Handler;

    invoke-static {p2, v1}, Lcom/android/server/vdb;->cjf(II)I

    move-result p2

    invoke-static {p1, p2, v3, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/vdb;->Le:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method static synthetic sis(Lcom/android/server/vdb;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vdb;->Oa(I)I

    move-result p0

    return p0
.end method

.method static synthetic sis(Lcom/android/server/vdb;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vdb;->Oe:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/vdb;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vdb;->Pa(I)Z

    move-result p0

    return p0
.end method

.method private ugm(IZ)V
    .locals 2

    sget-boolean v0, Lcom/android/server/vdb;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleLocationReceiverUidsChangeForGpsProcess uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isAdd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPGPS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/vdb;->Pa(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/android/server/vdb;->rtg(ZI)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/server/vdb;->Ne:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/server/vdb;->Me:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/server/vdb;->Oe:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/server/vdb;->Le:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/android/server/vdb;->cjf(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p1}, Lcom/android/server/vdb;->isBlockedGpsUid(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/vdb;->Le:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/server/vdb;->cjf(II)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/android/server/vdb;->Le:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/android/server/vdb;->cjf(II)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/vdb;->Le:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static updateLocationReceiverUidsChange(IZZZ)V
    .locals 2

    sget-boolean v0, Lcom/android/server/vdb;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLocationReceiverUidsChange uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isAdd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isReceiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isGps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPGPS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/vdb;->mInstance:Lcom/android/server/vdb;

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/android/server/am/AppRecordManager;->cgv(I)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_4

    sget-object p2, Lcom/android/server/vdb;->mInstance:Lcom/android/server/vdb;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    iget-object p2, p2, Lcom/android/server/vdb;->Ne:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/android/server/vdb;->Me:Ljava/util/ArrayList;

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    iget-object p2, p2, Lcom/android/server/vdb;->Ne:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/android/server/vdb;->mInstance:Lcom/android/server/vdb;

    iget-object p2, p2, Lcom/android/server/vdb;->Ne:Ljava/util/ArrayList;

    goto :goto_2

    :cond_3
    iget-object p2, p2, Lcom/android/server/vdb;->Me:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/android/server/vdb;->mInstance:Lcom/android/server/vdb;

    iget-object p2, p2, Lcom/android/server/vdb;->Me:Ljava/util/ArrayList;

    goto :goto_2

    :cond_4
    sget-object p2, Lcom/android/server/vdb;->mInstance:Lcom/android/server/vdb;

    iget-object p2, p2, Lcom/android/server/vdb;->Oe:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p1, :cond_5

    :goto_1
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/android/server/vdb;->mInstance:Lcom/android/server/vdb;

    iget-object p2, p2, Lcom/android/server/vdb;->Oe:Ljava/util/ArrayList;

    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    sget-object p2, Lcom/android/server/vdb;->mInstance:Lcom/android/server/vdb;

    invoke-direct {p2, p0, p1}, Lcom/android/server/vdb;->ugm(IZ)V

    :cond_7
    return-void
.end method

.method private vdb(IZ)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/vdb;->zgw(IZ)V

    iget-object p2, p0, Lcom/android/server/vdb;->Qe:Ljava/lang/Object;

    if-nez p2, :cond_0

    return-void

    :cond_0
    monitor-enter p2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vdb;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v3, v3, Lcom/android/server/location/CallerIdentity;->mUid:I

    if-ne v3, p1, :cond_1

    sget-object v0, Lcom/android/server/vdb;->We:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/server/vdb;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$LocationProvider;

    iget-object v1, p0, Lcom/android/server/vdb;->Pe:Lcom/android/server/LocationManagerService$LocationManagerServiceInner;

    invoke-virtual {v1, v0}, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->applyRequirementsInnerLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    goto :goto_1

    :cond_4
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic you(Lcom/android/server/vdb;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vdb;->Na(I)I

    move-result p0

    return p0
.end method

.method static synthetic you(Lcom/android/server/vdb;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vdb;->Me:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static you(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/vdb;->Re:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/vdb;->Re:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/android/server/vdb;->Re:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-boolean p0, Lcom/android/server/vdb;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OPGPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadConfigFiles: mBlackGpsList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/vdb;->Re:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method private zgw(IZ)V
    .locals 0

    sget-object p0, Lcom/android/server/vdb;->We:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/server/vdb;->We:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method static synthetic zta(Lcom/android/server/vdb;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vdb;->Ne:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static zta(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/vdb;->updateLocationReceiverUidsChange(IZZZ)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/vdb;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vdb;->Qa(I)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/vdb;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/vdb;->rtg(ZI)V

    return-void
.end method


# virtual methods
.method public initFromLMS(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/vdb;->Pe:Lcom/android/server/LocationManagerService$LocationManagerServiceInner;

    invoke-virtual {p2}, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->getLock()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vdb;->Qe:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->getReceivers()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vdb;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->getProviders()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vdb;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->getBlockedUids()Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lcom/android/server/vdb;->We:Ljava/util/ArrayList;

    return-void
.end method

.method public zta(Landroid/content/pm/IPackageManager;)V
    .locals 0

    sget-object p0, Lcom/android/server/vdb;->mPms:Landroid/content/pm/IPackageManager;

    if-nez p0, :cond_0

    sput-object p1, Lcom/android/server/vdb;->mPms:Landroid/content/pm/IPackageManager;

    goto :goto_0

    :cond_0
    const-string p0, "OPGPS"

    const-string p1, "repeat init pms"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public zta(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    sget-object v0, Lcom/android/server/vdb;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_0

    sput-object p1, Lcom/android/server/vdb;->mAms:Lcom/android/server/am/ActivityManagerService;

    sget-object p1, Lcom/android/server/vdb;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/vdb;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "OPGPS"

    const-string p1, "repeat init ams"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
