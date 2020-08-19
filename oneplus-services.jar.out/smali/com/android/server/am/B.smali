.class public Lcom/android/server/am/B;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/B$sis;,
        Lcom/android/server/am/B$zta;,
        Lcom/android/server/am/B$tsu;,
        Lcom/android/server/am/B$you;
    }
.end annotation


# static fields
.field private static final Bq:Ljava/lang/String; = ""

.field private static Bw:Z = false

.field private static final CONFIG_NAME:Ljava/lang/String; = "OpJobController"

.field private static final DEFAULT:I = -0x1

.field private static final DETAIL:I = 0x3

.field private static final ENABLE:Ljava/lang/String; = "persist.sys.opjc.enable"

.field private static final Gv:Ljava/lang/String; = "com.OPJC.action.debug"

.field private static final ONEPLUS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OPJC"

.field private static final VERSION:I = 0x123c5c1

.field private static Zv:Z = false

.field private static final _v:I = 0x1

.field private static cF:J = 0x493e0L

.field private static dF:J = 0xa4cb800L

.field private static eF:J = 0xea60L

.field private static fF:I = 0x0

.field private static fw:J = 0xafc8L

.field private static final gF:I = 0x2

.field private static final hF:I = 0x64

.field private static final ix:I = 0x1

.field private static jw:Z = false

.field private static kw:Z = false

.field private static mw:Z = false

.field private static sEnable:Z = false

.field private static sInstance:Lcom/android/server/am/B; = null

.field private static sLogLevel:I = 0x0

.field private static final xv:Ljava/lang/String; = "persist.sys.opjc.debug_detail"

.field private static xw:Landroid/os/Handler; = null

.field private static final yv:Ljava/lang/String; = "persist.sys.opjc.debug_loglevel"

.field private static yw:Landroid/os/HandlerThread;


# instance fields
.field private UE:I

.field private VE:Lcom/oneplus/config/ConfigObserver;

.field private WE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private XE:Ljava/lang/Object;

.field private YE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/JobServiceContext;",
            ">;"
        }
    .end annotation
.end field

.field private ZE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aF:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/B$tsu;",
            ">;"
        }
    .end annotation
.end field

.field private bF:Lcom/android/server/am/B$you;

.field private final mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mContext:Landroid/content/Context;

.field private mUidObserver:Landroid/app/IUidObserver;

.field private tv:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "persist.sys.opjc.debug_loglevel"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/B;->sLogLevel:I

    const/4 v1, 0x2

    sput v1, Lcom/android/server/am/B;->fF:I

    sput-boolean v0, Lcom/android/server/am/B;->jw:Z

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/am/B;->kw:Z

    const/4 v1, 0x0

    const-string v2, "persist.sys.opjc.debug_detail"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/B;->mw:Z

    new-array v2, v0, [I

    aput v0, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/am/B;->Zv:Z

    sget-boolean v0, Lcom/android/server/am/B;->Zv:Z

    sput-boolean v0, Lcom/android/server/am/B;->Bw:Z

    sget-boolean v0, Lcom/android/server/am/B;->Bw:Z

    const-string v1, "persist.sys.opjc.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/B;->sEnable:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/B;->sInstance:Lcom/android/server/am/B;

    sput-object v0, Lcom/android/server/am/B;->yw:Landroid/os/HandlerThread;

    sput-object v0, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/server/am/B;->UE:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/B;->VE:Lcom/oneplus/config/ConfigObserver;

    iput-object v0, p0, Lcom/android/server/am/B;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/B;->WE:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/B;->XE:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/B;->YE:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/B;->ZE:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/B;->_E:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/B;->aF:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/am/B$you;

    invoke-direct {v1, p0}, Lcom/android/server/am/B$you;-><init>(Lcom/android/server/am/B;)V

    iput-object v1, p0, Lcom/android/server/am/B;->bF:Lcom/android/server/am/B$you;

    iput-object v0, p0, Lcom/android/server/am/B;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/am/B;->mAms:Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Lcom/android/server/am/OpJobController$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/OpJobController$1;-><init>(Lcom/android/server/am/B;)V

    iput-object v1, p0, Lcom/android/server/am/B;->mUidObserver:Landroid/app/IUidObserver;

    new-instance v1, Lcom/android/server/am/z;

    invoke-direct {v1, p0}, Lcom/android/server/am/z;-><init>(Lcom/android/server/am/B;)V

    iput-object v1, p0, Lcom/android/server/am/B;->tv:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/am/A;

    invoke-direct {v1, p0}, Lcom/android/server/am/A;-><init>(Lcom/android/server/am/B;)V

    iput-object v1, p0, Lcom/android/server/am/B;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v1, 0x1

    const-string v2, "OpJobController--constructor:19121601"

    invoke-static {v1, v2}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/B;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/B;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/server/am/B;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/am/B;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p1, p0, Lcom/android/server/am/B;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/B;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "OPJC_GeneralThread"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p1, Lcom/android/server/am/B;->yw:Landroid/os/HandlerThread;

    sget-object p1, Lcom/android/server/am/B;->yw:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/android/server/am/B$zta;

    sget-object v1, Lcom/android/server/am/B;->yw:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/android/server/am/B$zta;-><init>(Lcom/android/server/am/B;Landroid/os/Looper;)V

    sput-object p1, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.OPJC.action.debug"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/B;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/B;->tv:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/am/B;->init()V

    return-void
.end method

.method private Gd()V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dump # ENABLE # "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/B;->sEnable:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    const-string p0, "# dump # VERSION # 19121601"

    invoke-static {v0, p0}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sIsHydrogenVersion # "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/B;->Zv:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sLogLevel # "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/B;->sLogLevel:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sBootDelayTime # "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/B;->fw:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sJobTimeOut # "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/B;->cF:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sJobUnResDelayTime # "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/B;->dF:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sJobBgTimeout # "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/B;->eF:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sProcStateCutLevel # "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/B;->fF:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/am/B;
    .locals 1

    sget-object v0, Lcom/android/server/am/B;->sInstance:Lcom/android/server/am/B;

    return-object v0
.end method

.method static synthetic access$100(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/B;->rb(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/B;->dF:J

    return-wide v0
.end method

.method static synthetic bio(Lcom/android/server/am/B;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/B;->wp()V

    return-void
.end method

.method static synthetic cno(Lcom/android/server/am/B;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/B;->WE:Ljava/util/HashSet;

    return-object p0
.end method

.method private fto(II)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/am/B;->nb(I)Lcom/android/server/am/B$tsu;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/am/B;->XE:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/B;->ZE:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/B;->ZE:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v2, p0, Lcom/android/server/am/B;->_E:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0}, Lcom/android/server/am/B$tsu;->tsu(Lcom/android/server/am/B$tsu;)I

    move-result v3

    iget-object p0, p0, Lcom/android/server/am/B;->YE:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/JobServiceContext;

    sget p1, Lcom/android/server/am/B;->fF:I

    if-le v3, p1, :cond_0

    sget p1, Lcom/android/server/am/B;->fF:I

    if-gt p2, p1, :cond_0

    sget-object p0, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/server/am/B;->fF:I

    if-gt v3, p1, :cond_1

    sget p1, Lcom/android/server/am/B;->fF:I

    if-le p2, p1, :cond_1

    sget-object p1, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-object p1, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    sget-wide v2, Lcom/android/server/am/B;->eF:J

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, p2}, Lcom/android/server/am/B$tsu;->zta(Lcom/android/server/am/B$tsu;I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/B;
    .locals 1

    sget-object v0, Lcom/android/server/am/B;->sInstance:Lcom/android/server/am/B;

    return-object v0
.end method

.method private static getLogLevel()I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/B;->mw:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    sput v0, Lcom/android/server/am/B;->sLogLevel:I

    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/B;->kw:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/am/B;->jw:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget v0, Lcom/android/server/am/B;->sLogLevel:I

    return v0
.end method

.method private handleUidGone(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/B;->XE:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/B;->ZE:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/B;->ZE:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/B;->_E:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/am/B;->YE:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/B;->ZE:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/B;->_E:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

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

.method static synthetic ic()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/B;->getLogLevel()I

    invoke-direct {p0}, Lcom/android/server/am/B;->vp()V

    invoke-direct {p0}, Lcom/android/server/am/B;->initOnlineConfig()V

    return-void
.end method

.method private initOnlineConfig()V
    .locals 5

    const/4 v0, 0x2

    const-string v1, "initOnlineConfig"

    invoke-static {v0, v1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/B;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/B$sis;

    invoke-direct {v3, p0}, Lcom/android/server/am/B$sis;-><init>(Lcom/android/server/am/B;)V

    const-string v4, "OpJobController"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/B;->VE:Lcom/oneplus/config/ConfigObserver;

    sget-object p0, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    sget-wide v0, Lcom/android/server/am/B;->fw:J

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static isJobRestrict(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/B;->sInstance:Lcom/android/server/am/B;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/B;->sEnable:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-nez p0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/B;->rb(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/am/B;->sInstance:Lcom/android/server/am/B;

    invoke-direct {v0, p0}, Lcom/android/server/am/B;->ssp(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method static synthetic kth(Lcom/android/server/am/B;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/B;->Gd()V

    return-void
.end method

.method private static myLog(ILjava/lang/String;)V
    .locals 1

    sget v0, Lcom/android/server/am/B;->sLogLevel:I

    if-gt p0, v0, :cond_0

    const-string p0, "OPJC"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private nb(I)Lcom/android/server/am/B$tsu;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/B;->aF:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/B;->aF:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/B$tsu;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpecificUidCache ret is null, uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static rb(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/AppRecordManager;->cgv(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static reportRestrictJob(Lcom/android/server/job/controllers/JobStatus;J)V
    .locals 3

    sget-object v0, Lcom/android/server/am/B;->sInstance:Lcom/android/server/am/B;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/B;->rb(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportRestrictJob uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    sget-object p1, Lcom/android/server/am/B;->sInstance:Lcom/android/server/am/B;

    invoke-direct {p1, p0}, Lcom/android/server/am/B;->rtg(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_1
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 8

    if-nez p1, :cond_0

    const-string p0, "OPJC"

    const-string p1, "resolveConfigFromJSON jsonArray is null, return"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_9

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "enable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    sget-boolean v5, Lcom/android/server/am/B;->sEnable:Z

    if-eq v4, v5, :cond_2

    sput-boolean v4, Lcom/android/server/am/B;->sEnable:Z

    const-string v4, "persist.sys.opjc.enable"

    sget-boolean v5, Lcom/android/server/am/B;->sEnable:Z

    if-eqz v5, :cond_1

    const-string v5, "true"

    goto :goto_1

    :cond_1
    const-string v5, "false"

    :goto_1
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jobBgTimeout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/B;->eF:J

    :cond_3
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jobTimeOut"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/B;->cF:J

    :cond_4
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jobUnResDelayTime"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/B;->dF:J

    :cond_5
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "procStateCutLevel"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    sput v4, Lcom/android/server/am/B;->fF:I

    :cond_6
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/B;->WE:Ljava/util/HashSet;

    monitor-enter v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/B;->WE:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    move v5, v0

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7

    iget-object v6, p0, Lcom/android/server/am/B;->WE:Ljava/util/HashSet;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON enable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/B;->sEnable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobBgTimeout:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/B;->eF:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobTimeOut:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/B;->cF:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobUnResDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/B;->dF:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON procStateCutLevel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/B;->fF:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobControlWhiteList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/B;->WE:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    goto/16 :goto_5

    :catchall_1
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "OPJC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON enable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/B;->sEnable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobBgTimeout:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/B;->eF:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobTimeOut:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/B;->cF:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobUnResDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/B;->dF:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON procStateCutLevel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/B;->fF:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4

    :catch_1
    move-exception p1

    :try_start_4
    const-string v0, "OPJC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON enable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/B;->sEnable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobBgTimeout:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/B;->eF:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobTimeOut:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/B;->cF:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobUnResDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/B;->dF:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON procStateCutLevel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/B;->fF:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4

    :goto_5
    return-void

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/B;->sEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON jobBgTimeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/am/B;->eF:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON jobTimeOut:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/am/B;->cF:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON jobUnResDelayTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/am/B;->dF:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON procStateCutLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/B;->fF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON jobControlWhiteList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/B;->WE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    throw p1
.end method

.method static synthetic rtg(Lcom/android/server/am/B;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/B;->_E:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic rtg(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    return-void
.end method

.method private rtg(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/am/B;->sis(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/am/B$tsu;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private sis(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/am/B$tsu;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    const-string p1, "createOrGetSpecificUidCache return, becasuse job is null"

    invoke-static {p0, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/B;->aF:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/B;->aF:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/B$tsu;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/android/server/am/B;->rb(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/android/server/am/B$tsu;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/server/am/B$tsu;-><init>(Lcom/android/server/am/B;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/am/OpJobController$1;)V

    iget-object v0, p0, Lcom/android/server/am/B;->aF:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/B;->aF:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createOrGetSpecificUidCache new uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v3

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method static synthetic sis(Lcom/android/server/am/B;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/B;->XE:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic ssp(Lcom/android/server/am/B;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/B;->ZE:Ljava/util/ArrayList;

    return-object p0
.end method

.method private ssp(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/B;->tsu(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/am/B$tsu;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/android/server/am/B$tsu;->you(Lcom/android/server/am/B$tsu;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static startMonitoring(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    sget-object v0, Lcom/android/server/am/B;->sInstance:Lcom/android/server/am/B;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/B;->sEnable:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/B;->rb(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMonitoring uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/B;->sInstance:Lcom/android/server/am/B;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/B;->zta(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V

    :cond_2
    return-void
.end method

.method public static stopMonitoring(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    sget-object v0, Lcom/android/server/am/B;->sInstance:Lcom/android/server/am/B;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/B;->rb(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMonitoring uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    :cond_1
    sget-object p1, Lcom/android/server/am/B;->sInstance:Lcom/android/server/am/B;

    invoke-direct {p1, p0}, Lcom/android/server/am/B;->zta(Lcom/android/server/job/JobServiceContext;)V

    return-void
.end method

.method private tsu(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/am/B$tsu;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/am/B;->aF:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/B;->aF:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/B$tsu;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpecificUidCache ret is null, uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic tsu(Lcom/android/server/am/B;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/B;->YE:Ljava/util/ArrayList;

    return-object p0
.end method

.method private tsu(Lcom/android/server/am/B$you;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAlarm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/B$you;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cur:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/android/server/am/B;->myLog(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/B;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/am/B;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-object v2, p0, Lcom/android/server/am/B;->mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v4, p1, Lcom/android/server/am/B$you;->QE:J

    iget-object v7, p0, Lcom/android/server/am/B;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    sget-object v8, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    const/4 v3, 0x3

    const-string v6, "OPJC_Alarm"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method private vp()V
    .locals 0

    return-void
.end method

.method private wp()V
    .locals 8

    new-instance v0, Lcom/android/server/am/B$you;

    invoke-direct {v0, p0}, Lcom/android/server/am/B$you;-><init>(Lcom/android/server/am/B;)V

    iget-object v1, p0, Lcom/android/server/am/B;->aF:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/B;->aF:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/B;->aF:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/B$tsu;

    invoke-static {v3}, Lcom/android/server/am/B$tsu;->zta(Lcom/android/server/am/B$tsu;)V

    iget-wide v4, v0, Lcom/android/server/am/B$you;->QE:J

    invoke-static {v3}, Lcom/android/server/am/B$tsu;->you(Lcom/android/server/am/B$tsu;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget v4, v3, Lcom/android/server/am/B$tsu;->uid:I

    invoke-static {v3}, Lcom/android/server/am/B$tsu;->sis(Lcom/android/server/am/B$tsu;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/android/server/am/B$tsu;->you(Lcom/android/server/am/B$tsu;)J

    move-result-wide v6

    invoke-static {v0, v4, v5, v6, v7}, Lcom/android/server/am/B$you;->zta(Lcom/android/server/am/B$you;ILjava/lang/String;J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/am/B;->bF:Lcom/android/server/am/B$you;

    invoke-static {v1}, Lcom/android/server/am/B$you;->zta(Lcom/android/server/am/B$you;)V

    invoke-static {v0}, Lcom/android/server/am/B$you;->you(Lcom/android/server/am/B$you;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/android/server/am/B$you;->QE:J

    iget-object v3, p0, Lcom/android/server/am/B;->bF:Lcom/android/server/am/B$you;

    iget-wide v3, v3, Lcom/android/server/am/B$you;->QE:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/am/B;->tsu(Lcom/android/server/am/B$you;)V

    iget-object p0, p0, Lcom/android/server/am/B;->bF:Lcom/android/server/am/B$you;

    invoke-static {p0, v0}, Lcom/android/server/am/B$you;->zta(Lcom/android/server/am/B$you;Lcom/android/server/am/B$you;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/B;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/am/B;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static you(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/B;
    .locals 1

    sget-object v0, Lcom/android/server/am/B;->sInstance:Lcom/android/server/am/B;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/B;

    invoke-direct {v0, p0}, Lcom/android/server/am/B;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/B;->sInstance:Lcom/android/server/am/B;

    :cond_0
    sget-object p0, Lcom/android/server/am/B;->sInstance:Lcom/android/server/am/B;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/am/B;)Lcom/oneplus/config/ConfigObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/B;->VE:Lcom/oneplus/config/ConfigObserver;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/am/B;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/B;->handleUidGone(I)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/B;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/B;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/am/B;I)Lcom/android/server/am/B$tsu;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/B;->nb(I)Lcom/android/server/am/B$tsu;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/am/B;Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/am/B$tsu;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/B;->tsu(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/am/B$tsu;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/am/B;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/B;->fto(II)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/B;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/B;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private zta(Lcom/android/server/job/JobServiceContext;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/B;->XE:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/B;->YE:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/B;->YE:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/B;->_E:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/am/B;->YE:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/B;->ZE:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/B;->_E:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

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

.method private zta(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/server/am/B;->nb(I)Lcom/android/server/am/B$tsu;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/android/server/am/B$tsu;->tsu(Lcom/android/server/am/B$tsu;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/B;->XE:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/B;->YE:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/B;->YE:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/am/B;->ZE:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/am/B;->ZE:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/am/B;->_E:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p2, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    invoke-virtual {p2, p0}, Landroid/os/Handler;->removeMessages(I)V

    sget p2, Lcom/android/server/am/B;->fF:I

    if-le v0, p2, :cond_3

    sget-object p2, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    invoke-virtual {p2, p0, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    sget-wide v2, Lcom/android/server/am/B;->eF:J

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/B;->YE:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/am/B;->ZE:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/server/am/B;->_E:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/am/B;->UE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lcom/android/server/am/B;->fF:I

    if-le v0, p2, :cond_2

    sget-object p2, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    iget v0, p0, Lcom/android/server/am/B;->UE:I

    invoke-virtual {p2, v0, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    sget-object p2, Lcom/android/server/am/B;->xw:Landroid/os/Handler;

    sget-wide v2, Lcom/android/server/am/B;->eF:J

    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    iget p1, p0, Lcom/android/server/am/B;->UE:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/B;->UE:I

    iget p1, p0, Lcom/android/server/am/B;->UE:I

    const p2, 0xf423f

    if-le p1, p2, :cond_3

    const/16 p1, 0x65

    iput p1, p0, Lcom/android/server/am/B;->UE:I

    :cond_3
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getJobTimeout()J
    .locals 2

    sget-object p0, Lcom/android/server/am/B;->sInstance:Lcom/android/server/am/B;

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    sget-boolean p0, Lcom/android/server/am/B;->sEnable:Z

    if-nez p0, :cond_1

    return-wide v0

    :cond_1
    sget-wide v0, Lcom/android/server/am/B;->cF:J

    return-wide v0
.end method
