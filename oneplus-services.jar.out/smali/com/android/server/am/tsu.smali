.class Lcom/android/server/am/tsu;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "AppRecord"

.field private static final Ym:I = -0x270f


# instance fields
.field private final Rm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Sm:I

.field private Tm:I

.field private Um:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Vm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Wm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/B;",
            ">;"
        }
    .end annotation
.end field

.field private Xm:Z

.field final mIsSystem:Z

.field private final mIsolatedUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageName:Ljava/lang/String;

.field private mProcState:I

.field private mProcStateSeq:J

.field private mShowing:I

.field private mState:I

.field final mUid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/tsu;-><init>(ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/tsu;->mProcState:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/tsu;->Rm:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/tsu;->Sm:I

    iput v0, p0, Lcom/android/server/am/tsu;->mState:I

    iput v0, p0, Lcom/android/server/am/tsu;->Tm:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/tsu;->Um:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/tsu;->Vm:Ljava/util/ArrayList;

    iput v0, p0, Lcom/android/server/am/tsu;->mShowing:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/tsu;->mIsolatedUids:Ljava/util/HashSet;

    iput-boolean v0, p0, Lcom/android/server/am/tsu;->Xm:Z

    iput p1, p0, Lcom/android/server/am/tsu;->mUid:I

    iput-object p2, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/am/tsu;->mIsSystem:Z

    return-void
.end method

.method private gn()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerFirstRegisterPSensorLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->oxb(I)V

    invoke-direct {p0, v1}, Lcom/android/server/am/tsu;->sa(Z)V

    return-void
.end method

.method private hn()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerFirstRegisterSensorLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/tsu;->oxb(I)V

    iget v0, p0, Lcom/android/server/am/tsu;->mState:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/am/tsu;->ta(Z)V

    :cond_0
    return-void
.end method

.method private in()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerNotInterestedInAnySensorLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/tsu;->fto(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/tsu;->ta(Z)V

    return-void
.end method

.method private jn()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerNotInterestedPSensorLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->fto(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/tsu;->sa(Z)V

    return-void
.end method

.method private static myLog(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    return-void
.end method

.method private resetAll()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/am/tsu;->Tm:I

    iput v0, p0, Lcom/android/server/am/tsu;->Sm:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/tsu;->mProcState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/tsu;->mProcStateSeq:J

    iget-object v0, p0, Lcom/android/server/am/tsu;->Rm:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/am/tsu;->mIsolatedUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/server/am/tsu;->Vm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/tsu;->Um:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sa(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRegPSensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->sya:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget p0, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;IZ)V

    return-void
.end method

.method private sis(IIZ)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/tsu;->Rm:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/tsu;->hn()V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/server/am/tsu;->Rm:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/tsu;->in()V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppRecordManagerService;->getSensorHandle(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sensorListenerChangedLocked: sensor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", times="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", register="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", activeSensor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/tsu;->Rm:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pSensorHandle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    if-eqz p3, :cond_2

    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/tsu;->gn()V

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    if-ne p1, v1, :cond_3

    if-nez p2, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/tsu;->jn()V

    :cond_3
    :goto_1
    return-void
.end method

.method private ta(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyUsingSensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->SENSOR:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget p0, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;IZ)V

    return-void
.end method


# virtual methods
.method public Pa()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/B;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final Qa()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/tsu;->mProcState:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final Ra()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/tsu;->mState:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Sa()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/tsu;->mIsSystem:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Ta()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/B;

    invoke-virtual {v2}, Lcom/android/server/am/B;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public Ua()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteFlashlightOff: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/16 v0, 0x10

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->fto(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->FLASHLIGHT:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget p0, p0, Lcom/android/server/am/tsu;->mUid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;IZ)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public Va()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteFlashlightOn: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/16 v0, 0x10

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->oxb(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->FLASHLIGHT:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget p0, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v2, p0, v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;IZ)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public Wa()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteStartAudio: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->oxb(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->AUDIO:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget p0, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v2, p0, v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;IZ)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public Xa()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteStartCamera: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->oxb(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->CAMERA:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget p0, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v2, p0, v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;IZ)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public Ya()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteStartTraffic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->oxb(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->TRAFFIC:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget v2, p0, Lcom/android/server/am/tsu;->mUid:I

    iget-object p0, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;ILjava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public Za()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteStartTrafficHigh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/high16 v0, 0x40000

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->oxb(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->rya:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget v2, p0, Lcom/android/server/am/tsu;->mUid:I

    iget-object p0, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;ILjava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public _a()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteStartVideo: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->oxb(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->VIDEO:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget p0, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v2, p0, v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;IZ)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public ab()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteStopAudio: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->fto(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->AUDIO:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget p0, p0, Lcom/android/server/am/tsu;->mUid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;IZ)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addIsolatedUid(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/tsu;->mIsolatedUids:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/tsu;->mIsolatedUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bb()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteStopCamera: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->fto(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->CAMERA:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget p0, p0, Lcom/android/server/am/tsu;->mUid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;IZ)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cjf(I)Lcom/android/server/am/B;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/B;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public db()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteStopTraffic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->fto(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->TRAFFIC:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget v2, p0, Lcom/android/server/am/tsu;->mUid:I

    iget-object p0, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;ILjava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dma(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteVibratorOn: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/16 p1, 0x20

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/tsu;->oxb(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object p1

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->VIBRATOR:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget p0, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {p1, v0, p0, p2}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;IZ)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public ear(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteStartSensor: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->getSensorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/tsu;->Rm:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/tsu;->Rm:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/tsu;->Rm:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/tsu;->sis(IIZ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public eb()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteStopTrafficHigh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/high16 v0, 0x40000

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->fto(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->rya:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget v2, p0, Lcom/android/server/am/tsu;->mUid:I

    iget-object p0, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;ILjava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public fb()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteStartVideo: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->fto(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->VIDEO:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget p0, p0, Lcom/android/server/am/tsu;->mUid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;IZ)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method fto(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/tsu;->Tm:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/am/tsu;->Tm:I

    return-void
.end method

.method public gb()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteVibratorOff: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/16 v0, 0x20

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->fto(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->VIBRATOR:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget p0, p0, Lcom/android/server/am/tsu;->mUid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;IZ)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getFlag()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/tsu;->Tm:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public hb()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/android/server/am/tsu;->mState:I

    iget v1, p0, Lcom/android/server/am/tsu;->Tm:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/am/tsu;->ta(Z)V

    :cond_0
    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    iget v2, p0, Lcom/android/server/am/tsu;->mState:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ssp;->rtg(II)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hmo(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error when processDie  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/tsu;->mUid:I

    iget-object v6, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ssp;->noteProcessStateChanged(IILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/tsu;->mUid:I

    iget-object v3, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/B;

    iget-object v4, v3, Lcom/android/server/am/B;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/B;

    iget-object v5, v3, Lcom/android/server/am/B;->eG:Ljava/lang/String;

    const/4 v6, 0x0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ssp;->noteProcessStateChanged(IILjava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v1, Lcom/android/server/am/AppRecordManagerService;->OP_FEATURE_OMM:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/am/AppRecordTransition;->getInstance()Lcom/android/server/am/AppRecordTransition;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/AppRecordTransition;->removeProc(II)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/B;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/B;->cd()V

    iget-object v1, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppRecordManagerService;->removePosted(I)V

    iget-boolean p1, p0, Lcom/android/server/am/tsu;->Xm:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/tsu;->Xm:Z

    iget-object p1, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/android/server/am/tsu;->resetAll()V

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public ib()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/am/tsu;->mState:I

    invoke-direct {p0}, Lcom/android/server/am/tsu;->resetAll()V

    invoke-static {}, Lcom/android/server/lqr;->getInstance()Lcom/android/server/lqr;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/lqr;->wtn(I)V

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    iget v2, p0, Lcom/android/server/am/tsu;->mState:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ssp;->rtg(II)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ire(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteStopSensor: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->getSensorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/tsu;->Rm:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteStopSensor ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->getSensorName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " which not exist in ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/tsu;->Rm:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/tsu;->Rm:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "AppRecord"

    const-string v2, "unregisterSensorListener error..."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/am/tsu;->sis(IIZ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ivd(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/tsu;->Sm:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/tsu;->Sm:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteStopGps: uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " providerName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " num="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/am/tsu;->Sm:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    iget p1, p0, Lcom/android/server/am/tsu;->Sm:I

    if-lez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/tsu;->Sm:I

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->fto(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->GPS:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget v2, p0, Lcom/android/server/am/tsu;->mUid:I

    iget-object p0, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;ILjava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public jb()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/android/server/am/tsu;->mState:I

    iget v0, p0, Lcom/android/server/am/tsu;->Tm:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/tsu;->ta(Z)V

    :cond_0
    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    iget v2, p0, Lcom/android/server/am/tsu;->mState:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ssp;->rtg(II)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteBluetoothConnectedChanged(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteBluetoothConnected: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " using= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/high16 v0, 0x20000

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->oxb(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->fto(I)V

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ssp;->noteBluetoothConnectedChanged(Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method noteFloatWindowChange(Ljava/lang/String;IIZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/B;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/B;->Zc()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/B;->_c()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/B;->ad()V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/am/B;->_c()I

    move-result v1

    const/16 v2, 0x2000

    if-lez v1, :cond_3

    invoke-virtual {v0, v2}, Lcom/android/server/am/B;->oxb(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/server/am/B;->fto(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/tsu;->Ta()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/server/am/tsu;->oxb(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/server/am/tsu;->fto(I)V

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->Ta()Z

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/am/ssp;->zta(Ljava/lang/String;IIZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteShowStateChanged: packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uid = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "pid = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", hasFloatwin: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mShowing = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->Ta()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteFreezeStateChange(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteFreezeStateChange: uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFreeze: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/16 v0, 0x400

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->oxb(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->fto(I)V

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ssp;->noteFreezeStateChange(IZ)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method noteNotificationChanged(Ljava/lang/String;IIZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    monitor-enter v0

    const/16 v1, -0x270f

    const/4 v2, 0x1

    const/16 v3, 0x2000

    if-ne p3, v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/am/tsu;->oxb(I)V

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/am/ssp;->zta(Ljava/lang/String;IIZ)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteShowStateChanged: packageName = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uid = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "pid = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isNoClear: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/B;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/B;->Zc()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/am/B;->_c()I

    move-result v4

    if-lt v4, v2, :cond_3

    invoke-virtual {v1}, Lcom/android/server/am/B;->ad()V

    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/am/B;->_c()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1, v3}, Lcom/android/server/am/B;->oxb(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v3}, Lcom/android/server/am/B;->fto(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/tsu;->Ta()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/server/am/tsu;->oxb(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/server/am/tsu;->fto(I)V

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->Ta()Z

    move-result p0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/server/am/ssp;->zta(Ljava/lang/String;IIZ)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "noteShowStateChanged: packageName = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uid = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "pid = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isNoClear: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public notePSSChanged(II)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notePSSChanged: uid = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pid = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ssp;->notePSSChanged(II)V

    return-void
.end method

.method public notePredctionAppChanged(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notePredctionAppChanged: uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPredctionApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/16 v0, 0x100

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->oxb(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->fto(I)V

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ssp;->notePredctionAppChanged(Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteProcessStateChanged(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteProcessStateChanged: uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "packageName "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", isProcessStart: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ssp;->noteProcessStateChanged(IILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public noteResetAudio()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteResetAudio: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    return-void
.end method

.method public noteResetCamera()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteResetCamera: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    return-void
.end method

.method public noteResetFlashlight()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteResetFlashlight: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    return-void
.end method

.method public noteResetVideo()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteResetVideo: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    return-void
.end method

.method public noteStartAudio(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/tsu;->Vm:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/B;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/server/am/B;->oxb(I)V

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v1

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->pya:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget v4, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v1, v3, v4, p1, v2}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;IIZ)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/tsu;->Vm:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteStartVideo: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pkg="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " num="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/tsu;->Vm:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public noteStartVideo(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/tsu;->Um:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/B;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/server/am/B;->oxb(I)V

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v1

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->qya:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget v4, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v1, v3, v4, p1, v2}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;IIZ)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/tsu;->Um:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "noteStartVideo: uid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pkg="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " num="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/tsu;->Um:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public noteStopAudio(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/tsu;->Vm:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/B;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/B;->fto(I)V

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->pya:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget v3, p0, Lcom/android/server/am/tsu;->mUid:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;IIZ)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/tsu;->Vm:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteStopAudio: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pkg="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " num="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/tsu;->Vm:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public noteStopVideo(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/tsu;->Um:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/B;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/am/B;->fto(I)V

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->qya:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget v3, p0, Lcom/android/server/am/tsu;->mUid:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;IIZ)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/tsu;->Um:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteStopVideo: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->Um:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public noteUserLockAppChanged(Ljava/lang/String;IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteUserLockAppChanged: packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isUserLock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/16 v0, 0x1000

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->oxb(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->fto(I)V

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ssp;->noteUserLockAppChanged(Ljava/lang/String;IZ)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method oxb(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/tsu;->Tm:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/am/tsu;->Tm:I

    return-void
.end method

.method public removeIsolatedUid(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/tsu;->mIsolatedUids:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/tsu;->mIsolatedUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Uid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "| pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "| isSystem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/tsu;->mIsSystem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    monitor-enter p0

    :try_start_0
    const-string v1, " | procState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | mProcStateSeq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/tsu;->mProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n\t| state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mState:I

    invoke-static {v1}, Lcom/android/server/am/AppRecordManager;->veq(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "| USING:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->Tm:I

    invoke-static {v1}, Lcom/android/server/am/AppRecordManager;->bud(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mIsolatedUids:Ljava/util/HashSet;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v2, "\nIsolatedUids:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/tsu;->mIsolatedUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v2, "\nmProcRecordList:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/B;

    invoke-virtual {v3}, Lcom/android/server/am/B;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/am/tsu;->Rm:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/tsu;->Rm:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\t| sensor size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/tsu;->Rm:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->Rm:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "\n\tsensor "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/am/AppRecordManager;->getSensorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/tsu;->Rm:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string p0, "\n================================"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    :try_start_5
    const-string v1, "\n================================"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0
.end method

.method public you(Ljava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/tsu;->Sm:I

    if-gtz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notePauseGps: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " providerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pause="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " num="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/am/tsu;->Sm:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    const/16 p1, 0x40

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/am/tsu;->fto(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/tsu;->oxb(I)V

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object p1

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->GPS:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget v2, p0, Lcom/android/server/am/tsu;->mUid:I

    iget-object p0, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    xor-int/2addr p2, v0

    invoke-virtual {p1, v1, v2, p0, p2}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;ILjava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public zta(IJ)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/am/tsu;->mProcState:I

    iput-wide p2, p0, Lcom/android/server/am/tsu;->mProcStateSeq:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object p2

    iget p0, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/ssp;->ssp(II)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public zta(ILjava/lang/String;ZILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p5, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error when processStart  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordTransition;->getInstance()Lcom/android/server/am/AppRecordTransition;

    move-result-object v1

    invoke-virtual {v1, p2, p4}, Lcom/android/server/am/AppRecordTransition;->isPersistProcessFromAMS(Ljava/lang/String;I)Z

    move-result v1

    if-eqz p3, :cond_1

    new-instance p3, Lcom/android/server/am/B;

    move-object v2, p3

    move v3, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p5

    move v7, v1

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/B;-><init>(IILjava/lang/String;Ljava/lang/String;ZLcom/android/server/am/tsu;)V

    const/high16 p4, 0x40000000    # 2.0f

    invoke-virtual {p3, p4}, Lcom/android/server/am/B;->oxb(I)V

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/android/server/am/B;

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p5

    move v6, v1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/B;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcom/android/server/am/tsu;)V

    :goto_0
    iget-object p4, p0, Lcom/android/server/am/tsu;->Wm:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/tsu;->mUid:I

    const/4 v8, 0x1

    move v5, p1

    move-object v6, p5

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ssp;->noteProcessStateChanged(IILjava/lang/String;Ljava/lang/String;Z)V

    iget-boolean p1, p0, Lcom/android/server/am/tsu;->Xm:Z

    if-nez p1, :cond_3

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/android/server/am/AppRecordManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x4000

    invoke-virtual {p0, p1}, Lcom/android/server/am/tsu;->oxb(I)V

    sget-boolean p1, Lcom/android/server/am/AppRecordManagerService;->OP_FEATURE_OMM:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-static {p1, p5}, Lcom/android/server/am/AppRecordTransition;->createAppStateBM(ILjava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/tsu;->Xm:Z

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public zta(Ljava/lang/String;IILjava/lang/String;IIZ)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteFrontPackageChanged  packageName  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFrontApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/16 v0, 0x800

    if-eqz p7, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->oxb(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->fto(I)V

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p7, :cond_1

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ssp;->noteFrontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public zta(Ljava/lang/String;J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget p2, p0, Lcom/android/server/am/tsu;->Sm:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p0, Lcom/android/server/am/tsu;->Sm:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "noteStartGps: uid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pkg="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " providerName="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " num="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/am/tsu;->Sm:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    iget p1, p0, Lcom/android/server/am/tsu;->Sm:I

    if-le p1, p3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lcom/android/server/am/tsu;->oxb(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object p1

    sget-object p2, Lcom/android/server/am/AppRecordManager$ListenerType;->GPS:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget v0, p0, Lcom/android/server/am/tsu;->mUid:I

    iget-object p0, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, p0, p3}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;ILjava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public zta(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteHighUsedAppChanged: uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isHighUsedApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", packagename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/tsu;->myLog(ILjava/lang/String;)V

    monitor-enter p0

    const/16 v0, 0x200

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->oxb(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/tsu;->fto(I)V

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ssp;->zta(Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
