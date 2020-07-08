.class public Lcom/oneplus/android/server/vdb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/IOpMotorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/vdb$tsu;,
        Lcom/oneplus/android/server/vdb$zta;,
        Lcom/oneplus/android/server/vdb$you;,
        Lcom/oneplus/android/server/vdb$sis;
    }
.end annotation


# static fields
.field private static Aka:I = 0x0

.field private static Bka:I = 0x0

.field private static Cka:I = 0x0

.field private static final DATA_SIZE:I = 0x10

.field private static Dka:I = 0x0

.field private static Eea:Z = true

.field private static Eka:I = 0x0

.field private static Fka:I = 0x0

.field private static Gka:J = 0x0L

.field private static Hka:J = 0x0L

.field private static Ika:J = 0x0L

.field private static Jka:J = 0x0L

.field private static Kka:J = 0x0L

.field private static Lka:J = 0x0L

.field private static Mka:Z = false

.field private static Nka:Z = false

.field private static Oka:Z = false

.field private static Pka:Z = false

.field private static Qka:Z = false

.field private static Rja:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static Rka:Z = false

.field private static final Sja:Ljava/lang/String; = "com.oneplus.action.CAMERA"

.field private static Ska:Z = false

.field private static final TAG:Ljava/lang/String; = "OpMotorManagerService"

.field private static final THREAD_NAME:Ljava/lang/String; = "OpMotorManager"

.field private static final Tja:Ljava/lang/String; = "oneplus.intent.action.INCALLUI_ANSWER"

.field private static Tka:Z = false

.field private static final Uja:Ljava/lang/String; = "isVideo"

.field private static Uka:Z = false

.field private static final Vja:Ljava/lang/String; = "oneplus.permission.ONEPLUS_COMPONENT_SAFE"

.field private static Vka:Z = false

.field private static final Wja:Ljava/lang/String; = "android.policy:POWER"

.field private static Wka:Z = false

.field private static final Xja:Ljava/lang/String; = "android.policy:DOUBLE_TAP"

.field private static Xka:Z = false

.field private static final Yja:Ljava/lang/String; = "systemui_faceunlock"

.field private static Yka:Z = false

.field private static final Zja:Ljava/lang/String; = "screenoff"

.field private static final _ja:Ljava/lang/String; = "persist.sys.motor.calibtime"

.field private static final aka:Ljava/lang/String; = "org.codeaurora.ims"

.field private static bka:Ljava/lang/String; = null

.field private static cI:Z = false

.field private static cka:Ljava/lang/String; = null

.field private static dka:Ljava/lang/String; = null

.field private static final eka:I = 0xb7

.field private static final fka:I = 0xb8

.field private static final gka:I = 0xb9

.field private static final hka:I = 0xba

.field private static final ika:I = 0xbb

.field private static final jka:I = 0xbc

.field private static final kka:I = 0xbd

.field private static final lka:I = 0xbe

.field private static final mka:I = 0x1388

.field private static final nka:I = 0x800

.field private static final oka:I = 0x0

.field private static final pka:I = 0x1

.field private static final qka:I = 0x1

.field private static final rka:I = 0x2bc

.field private static sInstance:Lcom/oneplus/android/server/vdb; = null

.field private static final ska:I = 0x2bf

.field private static final tka:I = 0x1fa2658

.field private static final uka:I = 0x32

.field private static vka:I

.field private static wka:I

.field private static xka:I

.field private static yka:I

.field private static zka:I


# instance fields
.field private Aja:I

.field private Bja:I

.field private Cja:Z

.field private Dja:Z

.field private Eja:Z

.field private Fja:Z

.field private Gja:Z

.field private Hja:Z

.field private Ija:Z

.field private Jja:Z

.field private Kja:Z

.field private Lja:Z

.field private Mja:Z

.field private Nja:Z

.field private final Oja:Landroid/hardware/SensorEventListener;

.field private Pja:Landroid/media/AudioManager$AudioRecordingCallback;

.field private final Qja:Landroid/content/BroadcastReceiver;

.field private bv:Landroid/app/IProcessObserver;

.field private cC:Z

.field private ija:Landroid/hardware/SensorManager;

.field private jja:Landroid/hardware/Sensor;

.field private kja:Landroid/app/IActivityTaskManager;

.field private lja:Lcom/oneplus/android/server/scene/GameModeObserver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/oneplus/android/server/vdb$you;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private final mLock:Ljava/lang/Object;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProximity:Landroid/hardware/Sensor;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mja:Lcom/oneplus/android/server/vdb$zta;

.field private nja:Lsis/you/you/you/zta/zta;

.field private final oja:Lcom/oneplus/android/server/vdb$sis;

.field private pja:Landroid/app/AlertDialog;

.field private qja:Lcom/oneplus/android/server/vdb$tsu;

.field private final rja:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/oneplus/android/server/vdb$zta;",
            ">;"
        }
    .end annotation
.end field

.field private final sja:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/android/os/IOpMotorStateChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private tja:[J

.field private uja:Ljava/lang/String;

.field private vja:Ljava/lang/String;

.field private wja:Ljava/lang/String;

.field private xja:Ljava/lang/String;

.field private yja:Ljava/lang/String;

.field private zja:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/vdb;->Rja:Ljava/util/List;

    const-string v0, ""

    sput-object v0, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/android/server/vdb;->cka:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/android/server/vdb;->dka:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/oneplus/android/server/vdb;->vka:I

    sput v0, Lcom/oneplus/android/server/vdb;->wka:I

    const/4 v1, 0x1

    sput v1, Lcom/oneplus/android/server/vdb;->xka:I

    sput v1, Lcom/oneplus/android/server/vdb;->yka:I

    const/4 v2, 0x4

    sput v2, Lcom/oneplus/android/server/vdb;->zka:I

    const/16 v2, 0x64

    sput v2, Lcom/oneplus/android/server/vdb;->Aka:I

    sput v2, Lcom/oneplus/android/server/vdb;->Bka:I

    const/16 v2, 0x1f4

    sput v2, Lcom/oneplus/android/server/vdb;->Cka:I

    const/16 v2, 0x7d0

    sput v2, Lcom/oneplus/android/server/vdb;->Dka:I

    const/16 v2, 0x3e8

    sput v2, Lcom/oneplus/android/server/vdb;->Eka:I

    const/16 v2, 0x5dc

    sput v2, Lcom/oneplus/android/server/vdb;->Fka:I

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/oneplus/android/server/vdb;->Gka:J

    sput-wide v2, Lcom/oneplus/android/server/vdb;->Hka:J

    sput-wide v2, Lcom/oneplus/android/server/vdb;->Ika:J

    sput-wide v2, Lcom/oneplus/android/server/vdb;->Jka:J

    sput-wide v2, Lcom/oneplus/android/server/vdb;->Kka:J

    sput-wide v2, Lcom/oneplus/android/server/vdb;->Lka:J

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->Mka:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Nka:Z

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->Oka:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Pka:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Qka:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Rka:Z

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->Ska:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Tka:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Uka:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Vka:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Wka:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Xka:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Yka:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mja:Lcom/oneplus/android/server/vdb$zta;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->rja:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->sja:Ljava/util/List;

    const/4 v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->tja:[J

    const-string v0, "temp"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->uja:Ljava/lang/String;

    const-string v0, "focus"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->vja:Ljava/lang/String;

    const-string v0, "backgroud"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->wja:Ljava/lang/String;

    const-string v0, "backActivity"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->xja:Ljava/lang/String;

    const-string v0, "focusActivity"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->yja:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/android/server/vdb;->zja:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    iput v0, p0, Lcom/oneplus/android/server/vdb;->Bja:I

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Cja:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Dja:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Eja:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Fja:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Gja:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->cC:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Hja:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Ija:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Jja:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Kja:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Lja:Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->Mja:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Nja:Z

    new-instance v0, Lcom/oneplus/android/server/gck;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/gck;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->Oja:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/oneplus/android/server/dma;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/dma;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->Pja:Landroid/media/AudioManager$AudioRecordingCallback;

    new-instance v0, Lcom/oneplus/android/server/ywr;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/ywr;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->Qja:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oneplus/android/server/qbh;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/qbh;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/oneplus/android/server/OpMotorManagerService$16;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/OpMotorManagerService$16;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->bv:Landroid/app/IProcessObserver;

    new-instance v0, Lcom/oneplus/android/server/OpMotorManagerService$17;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/OpMotorManagerService$17;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mBinder:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/ServiceThread;

    const-string v0, "OpMotorManager"

    const/16 v2, 0xa

    invoke-direct {p1, v0, v2, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    new-instance p1, Lcom/oneplus/android/server/vdb$you;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/android/server/vdb$you;-><init>(Lcom/oneplus/android/server/vdb;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    new-instance p1, Lcom/oneplus/android/server/vdb$sis;

    const-string v0, "OpMotorManagerSocket"

    invoke-direct {p1, p0, p0, v0}, Lcom/oneplus/android/server/vdb$sis;-><init>(Lcom/oneplus/android/server/vdb;Lcom/oneplus/android/server/vdb;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->oja:Lcom/oneplus/android/server/vdb$sis;

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->oja:Lcom/oneplus/android/server/vdb$sis;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic A(Z)Z
    .locals 0

    sput-boolean p0, Lcom/oneplus/android/server/vdb;->cI:Z

    return p0
.end method

.method private Au()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Fja:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/oneplus/android/server/vdb;->vka:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "OpMotorManagerService"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/server/vdb;->sis(Ljava/lang/String;Landroid/os/IBinder;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->vb(Z)V

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Mja:Z

    :cond_0
    return-void
.end method

.method private Dt()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    const-string v1, "backgroundSpecialControl:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->Oka:Z

    if-eqz v1, :cond_0

    const-string v1, "backgroundSpecialControl true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Xt()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->eu()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->Hja:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_0
    return-void
.end method

.method private Et()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    sget v2, Lcom/oneplus/android/server/vdb;->Bka:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Ht()V

    return-void
.end method

.method private Ft()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    sget v2, Lcom/oneplus/android/server/vdb;->Bka:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Gt()V

    return-void
.end method

.method static synthetic G(I)I
    .locals 0

    sput p0, Lcom/oneplus/android/server/vdb;->Aka:I

    return p0
.end method

.method private Gt()V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/oneplus/android/server/vdb;->yka:I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method static synthetic H(I)I
    .locals 0

    sput p0, Lcom/oneplus/android/server/vdb;->zka:I

    return p0
.end method

.method private Ht()V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/oneplus/android/server/vdb;->xka:I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private It()V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Fja:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->nu()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    return-void

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x510000b

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "Motor Error"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method

.method private Jc(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getSysAlertWindowUids()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private Jt()V
    .locals 6

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "delayDownMotorByCamera"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/oneplus/android/server/vdb;->Aka:I

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->yja:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v2, 0x50

    invoke-static {v2, v1}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v0, Lcom/oneplus/android/server/vdb;->Cka:I

    :cond_1
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    int-to-long v4, v0

    invoke-virtual {p0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Kc(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg from socket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/Message;->what:I

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private Kt()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->ija:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->Oja:Landroid/hardware/SensorEventListener;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method private Lc(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has not removed, exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oneplus/android/server/vdb;->Rja:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    iget v0, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_0
    return-void
.end method

.method private Lt()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Kja:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->Jja:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/android/server/rtg;->Ve()V

    const-string p0, "OpMotorManagerService"

    const-string v0, "downArrivedCalib successed"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private Mt()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/oneplus/android/server/rtg;->x(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/oneplus/android/server/rtg;->aja:I

    add-int/2addr v1, v0

    sput v1, Lcom/oneplus/android/server/rtg;->aja:I

    :cond_0
    sget v1, Lcom/oneplus/android/server/rtg;->aja:I

    sget v2, Lcom/oneplus/android/server/vdb;->zka:I

    if-le v1, v2, :cond_1

    const-string v1, "OpMotorManagerService"

    const-string v2, "downArrivedCalibDetect successed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Jja:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Jja:Z

    :cond_1
    return-void
.end method

.method private Nt()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Uka:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Mka:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/oneplus/android/server/vdb;->yka:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/oneplus/android/server/vdb;->yka:I

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loopDetect sDownLoopDetectCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/android/server/vdb;->yka:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/oneplus/android/server/vdb;->yka:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    sget v2, Lcom/oneplus/android/server/vdb;->Eka:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->_t()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const/4 v0, -0x5

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->vc(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private Ot()I
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    const-string v0, "downMotor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v2}, Lcom/oneplus/android/server/vdb;->bio(III)I

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downMotor res: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private Pt()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Rka:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/oneplus/android/server/vdb;->vka:I

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    const-string v0, "downMotorByAudio"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Xt()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "downMotorByAudio isDownOrNot true"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->eu()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Hja:Z

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_1
    return-void
.end method

.method private Qt()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "poweroff down motor at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Xka:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Ot()I

    return-void
.end method

.method private Rt()V
    .locals 2

    const/16 v0, -0xa

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->vc(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Wka:Z

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->Pka:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Ija:Z

    :cond_0
    return-void
.end method

.method private St()V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Ut()Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/android/server/vdb;->Lja:Z

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/android/server/vdb;->Lja:Z

    :goto_1
    iget-boolean v4, p0, Lcom/oneplus/android/server/vdb;->Lja:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    iget-object v0, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->kja:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, v3}, Landroid/app/IActivityTaskManager;->dismissSplitScreenMode(Z)V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    iget-object v1, v1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->kja:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, v2}, Landroid/app/IActivityTaskManager;->dismissSplitScreenMode(Z)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Wt()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "OpMotorManagerService"

    const-string v2, "startHomeIntent"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method private Tt()Lsis/you/you/you/zta/zta;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->nja:Lsis/you/you/you/zta/zta;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lsis/you/you/you/zta/zta;->getService()Lsis/you/you/you/zta/zta;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->nja:Lsis/you/you/you/zta/zta;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception getting MotorControl hw service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->nja:Lsis/you/you/you/zta/zta;

    return-object p0
.end method

.method private Ut()Landroid/app/ActivityManager$StackInfo;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->kja:Landroid/app/IActivityTaskManager;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private Vt()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    :try_start_0
    sget-boolean v1, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v1, :cond_0

    const-string v1, "start motor service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "motor"

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mBinder:Landroid/os/IBinder;

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v1, :cond_1

    const-string v1, "Start motor service failed"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private Wt()Z
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->vka:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->vja:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Xt()Z
    .locals 2

    sget-object v0, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->Jc(Ljava/lang/String;)Z

    move-result v0

    sget v1, Lcom/oneplus/android/server/vdb;->vka:I

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/vdb;->uc(I)Z

    move-result p0

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Yt()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    const-string v0, "isUpMotorOrNot"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/oneplus/android/server/vdb;->vka:I

    if-eqz v0, :cond_4

    sget-object v0, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->vja:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    const-string v2, "org.codeaurora.ims"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/oneplus/android/server/vdb;->vka:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->uc(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUpMotorOrNot upMotor, mUpMotorViewShowing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/vdb;->Nja:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->ou()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Nja:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->vb(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/server/vdb;->sis(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private Zm()V
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "initSensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->ija:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->ija:Landroid/hardware/SensorManager;

    const v1, 0x1fa2658

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/oneplus/android/server/vdb;->jja:Landroid/hardware/Sensor;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->Oja:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->jja:Landroid/hardware/Sensor;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->ija:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    return-void
.end method

.method private Zt()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private _t()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Ska:Z

    const-string v1, "OpMotorManagerService"

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oneplus/android/server/vdb;->zja:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loopDetectMotor sMotorDownLocked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/android/server/vdb;->Uka:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Ot()I

    :cond_1
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Vka:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Wka:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Rka:Z

    if-nez v0, :cond_5

    sget v0, Lcom/oneplus/android/server/vdb;->vka:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oneplus/android/server/vdb;->zja:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    :cond_2
    iget v0, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    if-eqz v0, :cond_5

    :cond_3
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loopDetectMotor sMotorUpLocked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/android/server/vdb;->Tka:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAppMotorCommand: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->yu()I

    :cond_5
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Vka:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Wka:Z

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Ot()I

    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/oneplus/android/server/vdb;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->sja:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->Aka:I

    return v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Nka:Z

    return v0
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->vka:I

    return v0
.end method

.method static synthetic access$2302(I)I
    .locals 0

    sput p0, Lcom/oneplus/android/server/vdb;->vka:I

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/oneplus/android/server/vdb;->Oka:Z

    return p0
.end method

.method static synthetic access$3500()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->Cka:I

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Ska:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Qka:Z

    return v0
.end method

.method static synthetic access$6100()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/vdb;->Rja:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Rka:Z

    return v0
.end method

.method private au()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->vja:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->wja:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Wt()Z

    move-result v0

    const/4 v1, 0x6

    const-string v2, "OpMotorManagerService"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "camera app focus from back in 600ms, remove downMessage"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Dja:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Eja:Z

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->uja:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->vja:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v0, :cond_3

    const-string v0, "camera app focus from backgroud and should upmotor"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->ou()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Nja:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->vb(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/oneplus/android/server/vdb;->sis(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_5
    :goto_0
    const-string v0, "temp"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->uja:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Dja:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Eja:Z

    :cond_6
    sget v0, Lcom/oneplus/android/server/vdb;->vka:I

    if-eqz v0, :cond_a

    sget-object v0, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->wja:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Lja:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->vja:Ljava/lang/String;

    const-string v3, "net.oneplus.launcher"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget v0, p0, Lcom/oneplus/android/server/vdb;->Bja:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->tc(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    const-string v0, "non-standard camera app, maybe not release when backgroud"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    sget v2, Lcom/oneplus/android/server/vdb;->Aka:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    sget v0, Lcom/oneplus/android/server/vdb;->vka:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->uc(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v0, 0x14

    sget v1, Lcom/oneplus/android/server/vdb;->Dka:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    return-void
.end method

.method static synthetic b(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Au()V

    return-void
.end method

.method static synthetic bf()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->Fka:I

    return v0
.end method

.method private bio(III)I
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "writeMotorControlData"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Tt()Lsis/you/you/you/zta/zta;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->nja:Lsis/you/you/you/zta/zta;

    invoke-interface {p0, p1, p2, p3}, Lsis/you/you/you/zta/zta;->sis(III)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeMotorControlData throws exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static synthetic bio(Lcom/oneplus/android/server/vdb;)Landroid/app/ActivityManager$StackInfo;
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Ut()Landroid/app/ActivityManager$StackInfo;

    move-result-object p0

    return-object p0
.end method

.method private bu()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    const-string v0, "openCamera"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v2, 0x1000000a

    const-string v3, "pullMotorWake"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.action.CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic bud(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->cu()V

    return-void
.end method

.method static synthetic bvj(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->wja:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/scene/GameModeObserver;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->lja:Lcom/oneplus/android/server/scene/GameModeObserver;

    return-object p0
.end method

.method static synthetic cf()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Vka:Z

    return v0
.end method

.method static synthetic cgv(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->tu()V

    return-void
.end method

.method static synthetic cjf(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->bu()V

    return-void
.end method

.method static synthetic cno(Lcom/oneplus/android/server/vdb;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/vdb;->Bja:I

    return p0
.end method

.method private cu()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "show phoneFallDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->It()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50f012e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50f00c2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/igw;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/igw;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50f001d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/wtn;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/wtn;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic df()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->zka:I

    return v0
.end method

.method static synthetic dma(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$tsu;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->qja:Lcom/oneplus/android/server/vdb$tsu;

    return-object p0
.end method

.method private du()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Eja:Z

    sget-object v0, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->uja:Ljava/lang/String;

    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "Motor Manager State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mFocusPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->vja:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sCameraUserPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastCameraUserPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/vdb;->cka:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLatestMotorCommand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/vdb;->zja:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAppMotorCommand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/oneplus/android/server/vdb;->vka:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isRecording = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/android/server/vdb;->vka:I

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/vdb;->uc(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sRequestMotorTagSize = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/oneplus/android/server/vdb;->Rja:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sIntervalTime = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/oneplus/android/server/vdb;->Aka:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorUping = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Pka:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorDowning = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Qka:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorUped = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Rka:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorDowned = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Ska:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorUpLocked = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Tka:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorDownLocked = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Uka:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sAudioCameraUserExit = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Oka:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ear(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Pt()V

    return-void
.end method

.method private eu()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Dja:Z

    sget-object v0, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->uja:Ljava/lang/String;

    return-void
.end method

.method static synthetic fto(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->su()V

    return-void
.end method

.method private fu()V
    .locals 5

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorDownArrived"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Lt()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/oneplus/android/server/vdb;->Jka:J

    sget-wide v1, Lcom/oneplus/android/server/vdb;->Jka:J

    sget-wide v3, Lcom/oneplus/android/server/vdb;->Ika:J

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/oneplus/android/server/vdb;->Lka:J

    const/4 v1, 0x1

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->Ska:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->Qka:Z

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->Gja:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/oneplus/android/server/vdb;->zja:I

    if-eq v3, v1, :cond_0

    iget v3, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    if-eqz v3, :cond_2

    :cond_0
    sget-boolean v3, Lcom/oneplus/android/server/vdb;->Wka:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/oneplus/android/server/vdb;->Vka:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/oneplus/android/server/vdb;->Xka:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->Cja:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->cC:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMotorDownArrived sMotorDownPress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/oneplus/android/server/vdb;->Vka:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mAppMotorCommand = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mLatestMotorCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/android/server/vdb;->zja:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->yu()I

    :cond_2
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Vka:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Wka:Z

    if-eqz v0, :cond_7

    :cond_3
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Vka:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v1, 0x12

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_4
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Wka:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/oneplus/android/server/vdb;->zja:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v1, 0x16

    goto :goto_0

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->du()V

    :cond_7
    sput-boolean v2, Lcom/oneplus/android/server/vdb;->Yka:Z

    iput-boolean v2, p0, Lcom/oneplus/android/server/vdb;->Cja:Z

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->Vka:Z

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->Wka:Z

    iput-boolean v2, p0, Lcom/oneplus/android/server/vdb;->Ija:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Kt()V

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Nka:Z

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->Nka:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Gt()V

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Kja:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Mt()V

    :cond_8
    return-void
.end method

.method static synthetic gck(Lcom/oneplus/android/server/vdb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->Nja:Z

    return p0
.end method

.method public static getInstance()Lcom/oneplus/android/server/vdb;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/vdb;->sInstance:Lcom/oneplus/android/server/vdb;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/vdb;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/vdb;->sInstance:Lcom/oneplus/android/server/vdb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/vdb;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/vdb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/vdb;->sInstance:Lcom/oneplus/android/server/vdb;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/vdb;->sInstance:Lcom/oneplus/android/server/vdb;

    return-object p0
.end method

.method private getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->kja:Landroid/app/IActivityTaskManager;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private gu()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorDownLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Qka:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Uka:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Nka:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Et()V

    return-void
.end method

.method static synthetic gwm(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->yja:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hmo(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->uu()V

    return-void
.end method

.method private hu()V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/android/server/vdb;->Ika:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Qka:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Rka:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Tka:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMotorDowning mFocusPkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->vja:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sCameraUserPkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpMotorManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->Uka:Z

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/vdb;->vc(I)V

    :cond_0
    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Uka:Z

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Vka:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->St()V

    :cond_1
    return-void
.end method

.method static synthetic ibl(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->xja:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic igw(Lcom/oneplus/android/server/vdb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->Lja:Z

    return p0
.end method

.method static synthetic ire(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->zu()V

    return-void
.end method

.method static synthetic irq(Lcom/oneplus/android/server/vdb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->Hja:Z

    return p0
.end method

.method private iu()V
    .locals 0

    return-void
.end method

.method static synthetic ivd(Lcom/oneplus/android/server/vdb;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    return v0
.end method

.method private j(J)V
    .locals 6

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update motor up time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->tja:[J

    add-int/lit8 v3, v1, 0x1

    aget-wide v4, v2, v3

    aput-wide v4, v2, v1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->tja:[J

    aput-wide p1, v1, v2

    aget-wide p1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-lez p1, :cond_2

    aget-wide p1, v1, v2

    aget-wide v1, v1, v0

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x4650

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    const/4 p1, 0x6

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->tja:[J

    aput-wide v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private ju()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorPush"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Vka:Z

    const/16 v0, -0xa

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->vc(I)V

    return-void
.end method

.method static synthetic kth(Lcom/oneplus/android/server/vdb;)Landroid/app/ActivityManager$StackInfo;
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object p0

    return-object p0
.end method

.method private ku()V
    .locals 8

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorUpArrived"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->vu()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/oneplus/android/server/vdb;->Hka:J

    sget-wide v1, Lcom/oneplus/android/server/vdb;->Hka:J

    sget-wide v3, Lcom/oneplus/android/server/vdb;->Gka:J

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/oneplus/android/server/vdb;->Kka:J

    const/4 v1, 0x1

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->Rka:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->Pka:Z

    sget v3, Lcom/oneplus/android/server/vdb;->wka:I

    add-int/2addr v3, v1

    sput v3, Lcom/oneplus/android/server/vdb;->wka:I

    sget v3, Lcom/oneplus/android/server/vdb;->wka:I

    const/16 v4, 0x3c

    if-le v3, v4, :cond_0

    sput v2, Lcom/oneplus/android/server/vdb;->wka:I

    :cond_0
    sget-boolean v3, Lcom/oneplus/android/server/vdb;->Nka:Z

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->Nka:Z

    sget-boolean v3, Lcom/oneplus/android/server/vdb;->Yka:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->Ija:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->Gja:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/oneplus/android/server/vdb;->zja:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    if-eqz v3, :cond_1

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Ot()I

    :cond_2
    iput-boolean v2, p0, Lcom/oneplus/android/server/vdb;->Ija:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Ht()V

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->Jja:Z

    if-eqz v3, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, "persist.sys.motor.calibtime"

    invoke-static {v7, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-boolean v5, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sinceLastCalibTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide v5, 0x9a7ec800L

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    iput-boolean v2, p0, Lcom/oneplus/android/server/vdb;->Jja:Z

    return-void

    :cond_4
    invoke-static {}, Lcom/oneplus/android/server/rtg;->Ze()Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->Kja:Z

    :cond_5
    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Kja:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->wu()V

    :cond_6
    return-void
.end method

.method private les(II)I
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "writeFlashControlData"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Tt()Lsis/you/you/you/zta/zta;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->nja:Lsis/you/you/you/zta/zta;

    invoke-interface {p0, p1, p2}, Lsis/you/you/you/zta/zta;->cno(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeFlashControlData throws exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static synthetic les(Lcom/oneplus/android/server/vdb;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic lqr(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->qu()V

    return-void
.end method

.method private lu()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorUpLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Pka:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Tka:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Nka:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Ft()V

    return-void
.end method

.method private mu()V
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorUping"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/android/server/vdb;->Gka:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->Pka:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->Ska:Z

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->Uka:Z

    sget-boolean v2, Lcom/oneplus/android/server/vdb;->Tka:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->vc(I)V

    :cond_0
    sput-boolean v1, Lcom/oneplus/android/server/vdb;->Tka:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Zm()V

    return-void
.end method

.method static synthetic na(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/oneplus/android/server/vdb;->dka:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic nc()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->cI:Z

    return v0
.end method

.method private nu()Z
    .locals 0

    invoke-static {}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->isInSpecialTesting()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic obl(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Dt()V

    return-void
.end method

.method static synthetic oc()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/vdb;->cka:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic oif(Lcom/oneplus/android/server/vdb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->Gja:Z

    return p0
.end method

.method private ou()Z
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKeyguardAppear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/vdb;->Fja:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFaceRecog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/vdb;->Gja:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sCameraUserPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/android/server/vdb;->vka:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraUserPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mShowUpMotorView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/vdb;->Mja:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Fja:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Gja:Z

    if-nez v0, :cond_1

    sget v0, Lcom/oneplus/android/server/vdb;->vka:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    const-string v1, "com.oneplus.camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    const-string v1, "com.oneplus.faceunlock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x166

    sget-object v1, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->Mja:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic oxb(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Rt()V

    return-void
.end method

.method private pu()V
    .locals 6

    const-string v0, "OpMotorManagerService"

    const-string v1, "showBackgroundUseMotorDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->It()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    :goto_0
    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/oneplus/android/server/vdb;->Bja:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v4, 0x50f007f

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v5, 0x50f000e

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50f0084

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/kth;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/kth;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50f003e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/bio;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/bio;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic qbh(Lcom/oneplus/android/server/vdb;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->ou()Z

    move-result p0

    return p0
.end method

.method static synthetic qeg(Lcom/oneplus/android/server/vdb;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    return p0
.end method

.method private qu()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "showMotorCannotUpDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->It()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50f004f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50f0142

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/ugm;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/ugm;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/vdb;)I
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->yu()I

    move-result p0

    return p0
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->xja:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/vdb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/vdb;->Cja:Z

    return p1
.end method

.method private ru()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "showMotorDownLockedDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->It()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50f0012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50f0142

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/ssp;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/ssp;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/vdb;)I
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Ot()I

    move-result p0

    return p0
.end method

.method private sis(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upMotorByAllScene :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAppMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLatestMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/vdb;->zja:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "OpMotorManagerService"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "systemui_faceunlock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/vdb;->Rja:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/vdb;->Rja:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oneplus/android/server/vdb;->Aja:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    :try_start_1
    new-instance v1, Lcom/oneplus/android/server/vdb$zta;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/oneplus/android/server/vdb$zta;-><init>(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;Lcom/oneplus/android/server/gck;)V

    iput-object v1, p0, Lcom/oneplus/android/server/vdb;->mja:Lcom/oneplus/android/server/vdb$zta;

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mja:Lcom/oneplus/android/server/vdb$zta;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    const-string p2, "OpMotorManagerService"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput v2, p0, Lcom/oneplus/android/server/vdb;->zja:I

    :catch_0
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "OpMotorManagerService"

    const-string v1, "removeMessages MSG_MOTOR_DELAY_DOWN_SYSTEMAPP"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-boolean p1, p0, Lcom/oneplus/android/server/vdb;->Gja:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/oneplus/android/server/vdb;->cC:Z

    if-eqz p1, :cond_7

    :cond_6
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->Ska:Z

    if-nez p1, :cond_8

    sget-boolean p1, Lcom/oneplus/android/server/vdb;->Tka:Z

    if-nez p1, :cond_8

    sget-boolean p1, Lcom/oneplus/android/server/vdb;->Uka:Z

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    iget p0, p0, Lcom/oneplus/android/server/vdb;->zja:I

    monitor-exit v0

    return p0

    :cond_8
    :goto_1
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz p1, :cond_9

    const-string p1, "OpMotorManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upMotorByAllScene upMotor sMotorDowned: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->Ska:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->yu()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/vdb;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb;->uc(I)Z

    move-result p0

    return p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb;->Jc(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/vdb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/vdb;->Gja:Z

    return p1
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->yja:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->St()V

    return-void
.end method

.method private su()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "showMotorUpLockedDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->It()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50f0013

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50f00c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/ibl;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/ibl;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50f001d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/gwm;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/gwm;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private tc(I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getVisibleWindowUids()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/vdb;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->wja:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/vdb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/vdb;->Hja:Z

    return p1
.end method

.method private tu()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "showMotorDownLockedDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->It()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50f000c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50f0142

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/cno;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/cno;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private uc(I)Z
    .locals 5

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "get_pid"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastPidArray.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpMotorManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRecording: camaraUserPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " broadcastPid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecording: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    sget-object p1, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static synthetic ugm(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->au()V

    return-void
.end method

.method private uu()V
    .locals 12

    const-string v0, "OpMotorManagerService"

    const-string v1, "showUpMotorWarning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->It()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50f012c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50f0142

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oneplus/android/server/oif;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/oif;-><init>(Lcom/oneplus/android/server/vdb;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->pja:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v11

    const v0, -0x777778

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setClickable(Z)V

    new-instance v0, Lcom/oneplus/android/server/bvj;

    const-wide/16 v6, 0x1388

    const-wide/16 v8, 0x3e8

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/oneplus/android/server/bvj;-><init>(Lcom/oneplus/android/server/vdb;JJLandroid/widget/Button;I)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private vb(Z)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " showUpMotorView show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private vc(I)V
    .locals 5

    const-string v0, "OpMotorManagerService"

    const-string v1, "notifyMotorStateChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->sja:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->sja:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/android/os/IOpMotorStateChangedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, p1}, Lcom/oneplus/android/os/IOpMotorStateChangedCallback;->onMotorStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "OpMotorManagerService"

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->sja:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic vdb(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->xu()V

    return-void
.end method

.method static synthetic vdw(Lcom/oneplus/android/server/vdb;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->rja:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic veq(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->ru()V

    return-void
.end method

.method static synthetic vju(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->pu()V

    return-void
.end method

.method private vu()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Kja:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Jja:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/android/server/rtg;->af()V

    invoke-static {}, Lcom/oneplus/android/server/rtg;->_e()Z

    const-string v0, "OpMotorManagerService"

    const-string v1, "upArrivedCalib successed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Jja:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Kja:Z

    sput v0, Lcom/oneplus/android/server/rtg;->aja:I

    sput v0, Lcom/oneplus/android/server/rtg;->bja:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "persist.sys.motor.calibtime"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private wc(I)I
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/oneplus/android/server/vdb;->you(II)I

    move-result p0

    return p0
.end method

.method static synthetic wtn(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->vja:Ljava/lang/String;

    return-object p0
.end method

.method private wu()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneplus/android/server/rtg;->x(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Lcom/oneplus/android/server/rtg;->bja:I

    add-int/2addr v0, v1

    sput v0, Lcom/oneplus/android/server/rtg;->bja:I

    :cond_0
    sget v0, Lcom/oneplus/android/server/rtg;->bja:I

    sget v2, Lcom/oneplus/android/server/vdb;->zka:I

    if-le v0, v2, :cond_1

    const-string v0, "OpMotorManagerService"

    const-string v2, "upArrivedCalibDetect successed"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->Jja:Z

    :cond_1
    return-void
.end method

.method private xu()V
    .locals 6

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Tka:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Mka:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/oneplus/android/server/vdb;->xka:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/oneplus/android/server/vdb;->xka:I

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loopDetect sUpLoopDetectCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oneplus/android/server/vdb;->xka:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/oneplus/android/server/vdb;->xka:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ge v0, v2, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    sget v1, Lcom/oneplus/android/server/vdb;->Eka:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->_t()V

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x5

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v5}, Lcom/oneplus/android/server/vdb;->vc(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-direct {p0, v1, v4}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v0, 0xf

    goto :goto_1

    :cond_3
    if-le v0, v2, :cond_4

    const/4 v2, 0x7

    if-ge v0, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, v5}, Lcom/oneplus/android/server/vdb;->vc(I)V

    invoke-direct {p0, v1, v4}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v0, 0x10

    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_2
    return-void
.end method

.method private you(II)I
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "readMotorControlData "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Tt()Lsis/you/you/you/zta/zta;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->nja:Lsis/you/you/you/zta/zta;

    invoke-interface {p0, p1, p2}, Lsis/you/you/you/zta/zta;->you(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "readMotorData throws exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static synthetic you(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method private you(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 3

    sget-object v0, Lcom/oneplus/android/server/vdb;->Rja:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/oneplus/android/server/vdb;->Rja:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "OpMotorManagerService"

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/vdb;->you(Landroid/os/IBinder;)Lcom/oneplus/android/server/vdb$zta;

    iget-object p2, p0, Lcom/oneplus/android/server/vdb;->rja:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mja:Lcom/oneplus/android/server/vdb$zta;

    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const-string p2, "after unlinkToDeath"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p2, Lcom/oneplus/android/server/vdb;->Rja:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget p2, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    const/4 v1, 0x1

    if-lez p2, :cond_1

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    :cond_1
    sget-boolean p2, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "going to delaydown Motor by "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean p1, p0, Lcom/oneplus/android/server/vdb;->Gja:Z

    if-nez p1, :cond_3

    iget p1, p0, Lcom/oneplus/android/server/vdb;->zja:I

    if-eq p1, v1, :cond_4

    :cond_3
    iget p1, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    if-eqz p1, :cond_6

    :cond_4
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "other2 is using motor, mIsFaceRecog: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->Gja:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lcom/oneplus/android/server/vdb;->zja:I

    return p0
.end method

.method private you(Landroid/os/IBinder;)Lcom/oneplus/android/server/vdb$zta;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->rja:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/vdb$zta;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb$zta;->zta(Lcom/oneplus/android/server/vdb$zta;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/vdb;->you(Lcom/oneplus/android/server/vdb$zta;)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->vja:Ljava/lang/String;

    return-object p1
.end method

.method private you(Lcom/oneplus/android/server/vdb$zta;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/oneplus/android/server/vdb$zta;->zta(Lcom/oneplus/android/server/vdb$zta;)Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->eu()V

    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/vdb;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb;->tc(I)Z

    move-result p0

    return p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/vdb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/vdb;->Nja:Z

    return p1
.end method

.method private yu()I
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "upMotor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->Hja:Z

    iget-boolean v2, p0, Lcom/oneplus/android/server/vdb;->Gja:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/oneplus/android/server/vdb;->Tka:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/oneplus/android/server/vdb;->Uka:Z

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/oneplus/android/server/vdb;->j(J)V

    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2, v2, v2}, Lcom/oneplus/android/server/vdb;->bio(III)I

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    sget-boolean v1, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upMotor res: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method

.method static synthetic ywr(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Jt()V

    return-void
.end method

.method static synthetic z(Z)Z
    .locals 0

    sput-boolean p0, Lcom/oneplus/android/server/vdb;->Mka:Z

    return p0
.end method

.method static synthetic zgw(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Nt()V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/vdb;->Bja:I

    return p1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Ljava/lang/String;ILandroid/os/IBinder;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;ILandroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/vdb;->sis(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method private zta(Ljava/lang/String;ILandroid/os/IBinder;)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayDownMotorBySystemApp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/oneplus/android/server/vdb;->you(Ljava/lang/String;Landroid/os/IBinder;)I

    iget-object p3, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    const/16 v1, 0xb

    iput v1, p3, Landroid/os/Message;->what:I

    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    int-to-long p1, p2

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private zta(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downMotorByAllScene :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAppMotorCommand: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mLatestMotorCommand: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/android/server/vdb;->zja:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OpMotorManagerService"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/oneplus/android/server/vdb;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    const-string v0, "OpMotorManagerService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/oneplus/android/server/vdb;->zja:I

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "screenoff"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->Yka:Z

    :cond_1
    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->Gja:Z

    if-nez v3, :cond_9

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "systemui_faceunlock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget p1, Lcom/oneplus/android/server/vdb;->vka:I

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/oneplus/android/server/vdb;->zja:I

    if-eq p1, v1, :cond_3

    iget p1, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    if-eqz p1, :cond_5

    :cond_3
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz p1, :cond_4

    const-string p1, "OpMotorManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "other2 is using motor, mAppMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLatestMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/android/server/vdb;->zja:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit p2

    return v2

    :cond_5
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->Rka:Z

    if-nez p1, :cond_7

    sget-boolean p1, Lcom/oneplus/android/server/vdb;->Tka:Z

    if-nez p1, :cond_7

    sget-boolean p1, Lcom/oneplus/android/server/vdb;->Uka:Z

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    iget p0, p0, Lcom/oneplus/android/server/vdb;->zja:I

    monitor-exit p2

    return p0

    :cond_7
    :goto_1
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz p1, :cond_8

    const-string p1, "OpMotorManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downMotorByAllScene sMotorUped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->Rka:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Ot()I

    move-result p0

    monitor-exit p2

    return p0

    :cond_9
    :goto_2
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz p1, :cond_a

    const-string p1, "OpMotorManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "other1 is using motor, mAppMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/android/server/vdb;->Aja:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    monitor-exit p2

    return v2

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Lcom/oneplus/android/server/vdb$tsu;)Lcom/oneplus/android/server/vdb$tsu;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->qja:Lcom/oneplus/android/server/vdb$tsu;

    return-object p1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$you;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb;->Kc(Ljava/lang/String;)V

    return-void
.end method

.method private zta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "no"

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/oneplus/android/server/vdb;->vja:Ljava/lang/String;

    iget-object p3, p0, Lcom/oneplus/android/server/vdb;->yja:Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/vdb;->Lja:Z

    return p1
.end method

.method private zu()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Ska:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Dja:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/oneplus/android/server/vdb;->vka:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->vja:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OpMotorManagerService"

    const-string v1, "upMotorByCallEnd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Xt()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v1, :cond_0

    const-string v1, "upMotorByCallEnd isDownOrNot false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->yu()I

    :cond_1
    return-void
.end method


# virtual methods
.method public bio(ILjava/lang/String;)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeMotorCalibData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Tt()Lsis/you/you/you/zta/zta;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->nja:Lsis/you/you/you/zta/zta;

    invoke-interface {p0, p1, p2}, Lsis/you/you/you/zta/zta;->zta(ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeMotorCalibData throws exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public ef()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Fja:Z

    sget-boolean p0, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz p0, :cond_0

    const-string p0, "OpMotorManagerService"

    const-string v0, "notifyKeyguardAppear"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public ff()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "notifyKeyguardDisappear"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Fja:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Mja:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Yt()V

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->vb(Z)V

    return-void
.end method

.method public getMotorState()I
    .locals 0

    sget-boolean p0, Lcom/oneplus/android/server/vdb;->Pka:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-boolean p0, Lcom/oneplus/android/server/vdb;->Qka:Z

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    sget-boolean p0, Lcom/oneplus/android/server/vdb;->Tka:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    sget-boolean p0, Lcom/oneplus/android/server/vdb;->Uka:Z

    if-eqz p0, :cond_3

    const/4 p0, -0x5

    return p0

    :cond_3
    sget-boolean p0, Lcom/oneplus/android/server/vdb;->Rka:Z

    if-eqz p0, :cond_4

    const/16 p0, 0xa

    return p0

    :cond_4
    sget-boolean p0, Lcom/oneplus/android/server/vdb;->Ska:Z

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/16 p0, -0xa

    return p0
.end method

.method public gf()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "notifyScreenOff"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->cC:Z

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Fja:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/vdb;->bka:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/android/server/vdb;->cka:Ljava/lang/String;

    :cond_1
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Ska:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "screenoff"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->Mja:Z

    return-void
.end method

.method public hf()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->Eea:Z

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "notifyScreenOn ScreenOn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->cC:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Yt()V

    return-void
.end method

.method public notifyActivityChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisibleLw(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while checking window status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public notifyKeyguardState(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/vdb;->ff()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/android/server/vdb;->ef()V

    :goto_0
    return-void
.end method

.method public notifyMotorState(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v3, "motor"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->gu()V

    :cond_2
    :pswitch_1
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->fu()V

    goto :goto_3

    :pswitch_2
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->hu()V

    goto :goto_3

    :pswitch_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->ku()V

    goto :goto_3

    :pswitch_4
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->lu()V

    goto :goto_3

    :pswitch_5
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->mu()V

    goto :goto_3

    :pswitch_6
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->ju()V

    goto :goto_3

    :pswitch_7
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->iu()V

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v1

    :cond_4
    :goto_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xb7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyPowerOff()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Qt()V

    return-void
.end method

.method public notifyScreenState(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/vdb;->gf()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/android/server/vdb;->hf()V

    :cond_1
    :goto_0
    return-void
.end method

.method public systemReady()V
    .locals 5

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->kja:Landroid/app/IActivityTaskManager;

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Tt()Lsis/you/you/you/zta/zta;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->nja:Lsis/you/you/you/zta/zta;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Lcom/oneplus/android/server/scene/GameModeObserver;->getInstance()Lcom/oneplus/android/server/scene/GameModeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->lja:Lcom/oneplus/android/server/scene/GameModeObserver;

    invoke-static {}, Lcom/oneplus/android/server/rtg;->Ye()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->wc(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Ot()I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mIActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->bv:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OpMotorManagerService"

    const-string v2, "cannot register activity monitoring"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->Pja:Landroid/media/AudioManager$AudioRecordingCallback;

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oneplus.intent.action.INCALLUI_ANSWER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->Qja:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const-string v4, "oneplus.permission.ONEPLUS_COMPONENT_SAFE"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Vt()V

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Zt()V

    return-void
.end method
