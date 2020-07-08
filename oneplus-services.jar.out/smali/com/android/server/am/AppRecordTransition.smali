.class public Lcom/android/server/am/AppRecordTransition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppRecordTransition$you;,
        Lcom/android/server/am/AppRecordTransition$sis;,
        Lcom/android/server/am/AppRecordTransition$zta;
    }
.end annotation


# static fields
.field public static final APPSTATE_BM:Ljava/lang/String; = "appStateBM"

.field private static final BULETOOTH_PACKAGENAME_LIST_RESET:Ljava/lang/String; = "com.bluetooth.resetAll"

.field private static final INVALID:I = -0x1

.field public static final PROCESSSTATE_BM:Ljava/lang/String; = "processStateBM"

.field public static final PROCESS_REMOVE:Ljava/lang/String; = "processRemove"

.field public static final PROCESS_START:Ljava/lang/String; = "processStart"

.field public static final PSS_UPDATE:Ljava/lang/String; = "pssUpdate"

.field public static final S_BM:Ljava/lang/String; = "bm"

.field public static final S_PID:Ljava/lang/String; = "pid"

.field public static final S_PKG:Ljava/lang/String; = "pkg"

.field public static final S_PSS:Ljava/lang/String; = "pss"

.field public static final S_UID:Ljava/lang/String; = "uid"

.field public static final TAG:Ljava/lang/String; = "LOMM-AppRecordTransition"

.field public static final UPDATE_HIGH_USED:I = 0x1

.field private static sIntance:Lcom/android/server/am/AppRecordTransition;

.field private static sOMMInputStream:Ljava/io/InputStream;

.field private static sOMMOutputStream:Ljava/io/OutputStream;

.field private static sOMMSocket:Landroid/net/LocalSocket;

.field private static sOMMSocketLock:Ljava/lang/Object;


# instance fields
.field private mAMS:Lcom/android/server/am/ActivityManagerService;

.field private mAppStateListener:Lcom/android/server/am/AppRecordTransition$zta;

.field final mBluetoothList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFGActivityListener:Lcom/android/server/am/AppRecordTransition$you;

.field private mHandler:Lcom/android/server/am/AppRecordTransition$sis;

.field private mLastminiprogramPid:I

.field private mLastminiprogramUid:I

.field final mProcList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/AppRecordTransition;->sOMMSocketLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/AppRecordTransition$zta;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppRecordTransition$zta;-><init>(Lcom/android/server/am/AppRecordTransition;Lcom/android/server/am/wtn;)V

    iput-object v0, p0, Lcom/android/server/am/AppRecordTransition;->mAppStateListener:Lcom/android/server/am/AppRecordTransition$zta;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRecordTransition;->mProcList:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRecordTransition;->mBluetoothList:Ljava/util/Set;

    iput-object v1, p0, Lcom/android/server/am/AppRecordTransition;->mThread:Landroid/os/HandlerThread;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/AppRecordTransition;->mAMS:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/am/AppRecordTransition$you;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRecordTransition$you;-><init>(Lcom/android/server/am/AppRecordTransition;)V

    iput-object v0, p0, Lcom/android/server/am/AppRecordTransition;->mFGActivityListener:Lcom/android/server/am/AppRecordTransition$you;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/AppRecordTransition;->mLastminiprogramUid:I

    iput v0, p0, Lcom/android/server/am/AppRecordTransition;->mLastminiprogramPid:I

    sget-boolean v0, Lcom/android/server/am/gck;->Nn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x11d

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppRecordTransition"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/AppRecordTransition;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/am/AppRecordTransition;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/am/AppRecordTransition$sis;

    iget-object v1, p0, Lcom/android/server/am/AppRecordTransition;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppRecordTransition$sis;-><init>(Lcom/android/server/am/AppRecordTransition;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/AppRecordTransition;->mHandler:Lcom/android/server/am/AppRecordTransition$sis;

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->GPS:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/AppRecordTransition;->mAppStateListener:Lcom/android/server/am/AppRecordTransition$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->Rya:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/AppRecordTransition;->mAppStateListener:Lcom/android/server/am/AppRecordTransition$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->Iya:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/AppRecordTransition;->mAppStateListener:Lcom/android/server/am/AppRecordTransition$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->Jya:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/AppRecordTransition;->mAppStateListener:Lcom/android/server/am/AppRecordTransition$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->Kya:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/AppRecordTransition;->mAppStateListener:Lcom/android/server/am/AppRecordTransition$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->Nya:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/AppRecordTransition;->mAppStateListener:Lcom/android/server/am/AppRecordTransition$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->TRAFFIC:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/AppRecordTransition;->mAppStateListener:Lcom/android/server/am/AppRecordTransition$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->Lya:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/AppRecordTransition;->mAppStateListener:Lcom/android/server/am/AppRecordTransition$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->Mya:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/AppRecordTransition;->mAppStateListener:Lcom/android/server/am/AppRecordTransition$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->Oya:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/AppRecordTransition;->mAppStateListener:Lcom/android/server/am/AppRecordTransition$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->Pya:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/AppRecordTransition;->mAppStateListener:Lcom/android/server/am/AppRecordTransition$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->Qya:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition;->mAppStateListener:Lcom/android/server/am/AppRecordTransition$zta;

    invoke-static {v0, p0}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    const-string p0, "LOMM-AppRecordTransition"

    const-string v0, "AppRecordTransition init part1"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$100(I)I
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/AppRecordTransition;->checkIsolatedUid(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/am/AppRecordTransition;)I
    .locals 0

    iget p0, p0, Lcom/android/server/am/AppRecordTransition;->mLastminiprogramUid:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/server/am/AppRecordTransition;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/AppRecordTransition;->mLastminiprogramUid:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/am/AppRecordTransition;)I
    .locals 0

    iget p0, p0, Lcom/android/server/am/AppRecordTransition;->mLastminiprogramPid:I

    return p0
.end method

.method static synthetic access$1102(Lcom/android/server/am/AppRecordTransition;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/AppRecordTransition;->mLastminiprogramPid:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/am/AppRecordTransition;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppRecordTransition;->isDataNeedFilter(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/am/AppRecordTransition;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppRecordTransition;->createPorcessStateBM(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/AppRecordTransition;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordTransition;->isDataNeedFilter(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/am/AppRecordTransition;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordTransition;->createAppStateBM(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/AppRecordTransition;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordTransition;->isDataNeedFilter(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/am/AppRecordTransition;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordTransition;->createAppStateBM(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/AppRecordTransition;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppRecordTransition;->createAppStateBM(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/AppRecordTransition;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/AppRecordTransition;->updateHighUsedApp()V

    return-void
.end method

.method private static checkIsolatedUid(I)I
    .locals 2

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getOwnerUid(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static createAppStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "pkg"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "uid"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "pid"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "bm"

    invoke-virtual {v0, p0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "appStateBM"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "LOMM-AppRecordTransition"

    const-string p2, "createAppStateBM Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    return-object v1
.end method

.method private createAppStateBM(I)V
    .locals 6

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getPackagesFromUid(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {p1, v2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/tsu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/tsu;->getFlag()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, p1, v3, v4, v5}, Lcom/android/server/am/AppRecordTransition;->createAppStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/am/AppRecordTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createAppStateBM(IILjava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->getFlag()I

    move-result p0

    int-to-long v0, p0

    invoke-static {p3, p1, p2, v0, v1}, Lcom/android/server/am/AppRecordTransition;->createAppStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_0
    return-void
.end method

.method static createAppStateBM(ILjava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/android/server/am/AppRecordTransition;->checkIsolatedUid(I)I

    move-result v0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordManager;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->getFlag()I

    move-result p0

    int-to-long v1, p0

    const/4 p0, -0x1

    invoke-static {p1, v0, p0, v1, v2}, Lcom/android/server/am/AppRecordTransition;->createAppStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_0
    return-void
.end method

.method private createAppStateBM(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->getUidFromPackageName(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/AppRecordTransition;->checkIsolatedUid(I)I

    move-result p0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordManager;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/tsu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/tsu;->getFlag()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, -0x1

    invoke-static {p1, p0, v2, v0, v1}, Lcom/android/server/am/AppRecordTransition;->createAppStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_0
    return-void
.end method

.method private createPorcessStateBM(II)V
    .locals 7

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/D;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getPackageName(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/D;->getFlag()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    int-to-long v5, v0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppRecordTransition;->createProcessStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private createPorcessStateBM(IILjava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/tsu;->getFlag()I

    move-result v0

    int-to-long v5, v0

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppRecordTransition;->createProcessStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/AppRecordTransition;
    .locals 1

    sget-object v0, Lcom/android/server/am/AppRecordTransition;->sIntance:Lcom/android/server/am/AppRecordTransition;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/AppRecordTransition;

    invoke-direct {v0}, Lcom/android/server/am/AppRecordTransition;-><init>()V

    sput-object v0, Lcom/android/server/am/AppRecordTransition;->sIntance:Lcom/android/server/am/AppRecordTransition;

    :cond_0
    sget-object v0, Lcom/android/server/am/AppRecordTransition;->sIntance:Lcom/android/server/am/AppRecordTransition;

    return-object v0
.end method

.method private isDataNeedFilter(I)Z
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SCREEN OFF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isDataNeedFilter(II)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getPackageName(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SCREEN OFF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isDataNeedFilter(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "SCREEN OFF"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static openOMMSocketLS()Z
    .locals 4

    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v0, Lcom/android/server/am/AppRecordTransition;->sOMMSocket:Landroid/net/LocalSocket;

    sget-object v0, Lcom/android/server/am/AppRecordTransition;->sOMMSocket:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "ommsocket"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    sget-object v0, Lcom/android/server/am/AppRecordTransition;->sOMMSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppRecordTransition;->sOMMOutputStream:Ljava/io/OutputStream;

    sget-object v0, Lcom/android/server/am/AppRecordTransition;->sOMMSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppRecordTransition;->sOMMInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v0, "LOMM-AppRecordTransition"

    const-string v1, "ommsocket open failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/AppRecordTransition;->sOMMSocket:Landroid/net/LocalSocket;

    const/4 v0, 0x0

    return v0
.end method

.method static readOMMReplyLS(Ljava/nio/ByteBuffer;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/am/AppRecordTransition;->sOMMInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    array-length p0, p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "LOMM-AppRecordTransition"

    const-string v1, "Error reading from omm socket"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p0, Lcom/android/server/am/AppRecordTransition;->sOMMSocket:Landroid/net/LocalSocket;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/server/am/AppRecordTransition;->sOMMSocket:Landroid/net/LocalSocket;

    return v0
.end method

.method private sendUpdateHighUsedMsg()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition;->mHandler:Lcom/android/server/am/AppRecordTransition$sis;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateHighUsedApp()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/am/AppRecordTransition;->sendUpdateHighUsedMsg()V

    iget-object v0, p0, Lcom/android/server/am/AppRecordTransition;->mHandler:Lcom/android/server/am/AppRecordTransition$sis;

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition;->mRunnable:Ljava/lang/Runnable;

    const-wide/32 v1, 0x5265c00

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static writeOMM([BLjava/nio/ByteBuffer;)Z
    .locals 7

    sget-object v0, Lcom/android/server/am/AppRecordTransition;->sOMMSocketLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    :try_start_0
    sget-object v3, Lcom/android/server/am/AppRecordTransition;->sOMMSocket:Landroid/net/LocalSocket;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/server/am/AppRecordTransition;->openOMMSocketLS()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0xa

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "LOMM-AppRecordTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeOMM InterruptedException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/AppRecordTransition;->writeOMMCommandLS([B)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/server/am/AppRecordTransition;->readOMMReplyLS(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    if-ne v2, v3, :cond_4

    const-string p0, "LOMM-AppRecordTransition"

    const-string p1, "openOMMSocketLS times out"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static writeOMMCommandLS([B)Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/android/server/am/AppRecordTransition;->sOMMOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "LOMM-AppRecordTransition"

    const-string v0, "Error writing to omm socket"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/am/AppRecordTransition;->sOMMSocket:Landroid/net/LocalSocket;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/server/am/AppRecordTransition;->sOMMSocket:Landroid/net/LocalSocket;

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createProcessRemove(Ljava/lang/String;II)Lorg/json/JSONObject;
    .locals 2

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pkg"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pid"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "processRemove"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "LOMM-AppRecordTransition"

    const-string p2, "createProcessRemove Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public createProcessStart(Ljava/lang/String;III)Lorg/json/JSONObject;
    .locals 2

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pkg"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pid"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "bm"

    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "processStart"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "LOMM-AppRecordTransition"

    const-string p2, "createProcessStart Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public createProcessStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;
    .locals 2

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pkg"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pid"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "bm"

    invoke-virtual {p0, p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "processStateBM"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "LOMM-AppRecordTransition"

    const-string p2, "createProcessStateBM Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public createPssUpdate(Ljava/lang/String;IIJ)Lorg/json/JSONObject;
    .locals 2

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pkg"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pid"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pss"

    invoke-virtual {p0, p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "pssUpdate"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "LOMM-AppRecordTransition"

    const-string p2, "createPssUpdate Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method initOMMAppRecord(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/gck;->Nn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x11d

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/server/am/AppRecordTransition;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/AppRecordTransition;->mFGActivityListener:Lcom/android/server/am/AppRecordTransition$you;

    invoke-virtual {p1, v0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$zta;)V

    invoke-direct {p0}, Lcom/android/server/am/AppRecordTransition;->sendUpdateHighUsedMsg()V

    new-instance p1, Lcom/android/server/am/wtn;

    invoke-direct {p1, p0}, Lcom/android/server/am/wtn;-><init>(Lcom/android/server/am/AppRecordTransition;)V

    iput-object p1, p0, Lcom/android/server/am/AppRecordTransition;->mRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/android/server/am/AppRecordTransition;->mHandler:Lcom/android/server/am/AppRecordTransition$sis;

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition;->mRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0x5265c00

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "LOMM-AppRecordTransition"

    const-string p1, "AppRecordTransition init part2"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method isPersistProcess(II)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/D;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/am/D;->DG:Z

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method isPersistProcessFromAMS(Ljava/lang/String;I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition;->mAMS:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method removeProc(II)V
    .locals 2

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/D;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/AppRecordTransition;->mProcList:Ljava/util/Set;

    monitor-enter p2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppRecordTransition;->mProcList:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/am/D;->AG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition;->mProcList:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/server/am/D;->AG:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
