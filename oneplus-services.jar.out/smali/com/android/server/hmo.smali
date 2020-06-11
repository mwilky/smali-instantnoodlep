.class public Lcom/android/server/hmo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hmo$zta;,
        Lcom/android/server/hmo$you;
    }
.end annotation


# static fields
.field static final ONLINECONFIG_PROJECT_NAME:Ljava/lang/String; = "OnePlusSensorManager"

.field static final TAG:Ljava/lang/String; = "OnePlusSensorManager"

.field public static debug:Z = false

.field private static final pf:J = 0x2bf20L


# instance fields
.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mContext:Landroid/content/Context;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Lcom/android/server/hmo$you;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private of:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/hmo;->debug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/SensorManager;Landroid/os/PowerManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/ire;

    invoke-direct {v0, p0}, Lcom/android/server/ire;-><init>(Lcom/android/server/hmo;)V

    iput-object v0, p0, Lcom/android/server/hmo;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/hmo;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/hmo$you;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/hmo$you;-><init>(Lcom/android/server/hmo;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/hmo;->mHandler:Lcom/android/server/hmo$you;

    iput-object p2, p0, Lcom/android/server/hmo;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object p3, p0, Lcom/android/server/hmo;->mPowerManager:Landroid/os/PowerManager;

    iget-object p1, p0, Lcom/android/server/hmo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hmo;->of:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/android/server/hmo;->init()V

    return-void
.end method

.method private Na(I)I
    .locals 0

    div-int/lit8 p1, p1, 0x64

    return p1
.end method

.method private Oa(I)I
    .locals 0

    rem-int/lit8 p1, p1, 0x64

    return p1
.end method

.method static synthetic bio(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/hmo;->cjf(II)I

    move-result p0

    return p0
.end method

.method private static cjf(II)I
    .locals 0

    mul-int/lit8 p0, p0, 0x64

    add-int/2addr p0, p1

    return p0
.end method

.method private init()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hmo;->mf:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hmo;->nf:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/hmo;->mHandler:Lcom/android/server/hmo$you;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/android/server/hmo;->cjf(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hmo;->mHandler:Lcom/android/server/hmo$you;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/android/server/hmo;->rm()V

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 5

    const-string v0, "OnePlusSensorManager"

    if-nez p1, :cond_0

    const-string p0, "[OnlineConfig] configList == null"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "disable_sensor_after_light_idle"

    iget-object v4, p0, Lcom/android/server/hmo;->mf:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/hmo;->zta(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "disable_sensor_background"

    iget-object v4, p0, Lcom/android/server/hmo;->nf:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/hmo;->zta(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolve config from JSON, error message: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private rm()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/hmo;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/hmo;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/hmo;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/hmo;->mf:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/hmo;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/hmo;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic ssp(Lcom/android/server/hmo;)Landroid/hardware/SensorManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/hmo;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/hmo;)Lcom/android/server/hmo$you;
    .locals 0

    iget-object p0, p0, Lcom/android/server/hmo;->mHandler:Lcom/android/server/hmo$you;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/hmo;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hmo;->Na(I)I

    move-result p0

    return p0
.end method

.method static synthetic you(Lcom/android/server/hmo;)Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/hmo;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/hmo;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hmo;->Oa(I)I

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/hmo;)Lcom/oneplus/config/ConfigObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/hmo;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/hmo;Lcom/oneplus/config/ConfigObserver;)Lcom/oneplus/config/ConfigObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/hmo;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/hmo;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hmo;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private zta(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string p0, "name"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "value"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    monitor-enter p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "OnePlusSensorManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p3

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[OnlineConfig] resolve config from JSON, error message: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusSensorManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "**** OnePlusSensorManager ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lightIdleList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hmo;->mf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backgroundList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/hmo;->nf:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 3

    sget-boolean p3, Lcom/android/server/hmo;->debug:Z

    const-string p6, "OnePlusSensorManager"

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "change "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from TOP"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p6, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eq p2, p5, :cond_2

    iget-object p3, p0, Lcom/android/server/hmo;->nf:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    invoke-static {p2}, Lcom/android/server/am/AppRecordManager;->getUidState(I)I

    move-result p3

    if-ne p3, v1, :cond_1

    iget-object p3, p0, Lcom/android/server/hmo;->mHandler:Lcom/android/server/hmo$you;

    invoke-static {p2, v0}, Lcom/android/server/hmo;->cjf(II)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p3, p0, Lcom/android/server/hmo;->mHandler:Lcom/android/server/hmo$you;

    const/4 v2, 0x5

    invoke-static {p2, v2}, Lcom/android/server/hmo;->cjf(II)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/hmo;->mHandler:Lcom/android/server/hmo$you;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-boolean p2, Lcom/android/server/hmo;->debug:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " set sensor access allow"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/server/hmo;->nf:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p5}, Lcom/android/server/am/AppRecordManager;->getUidState(I)I

    move-result p1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/server/hmo;->mHandler:Lcom/android/server/hmo$you;

    invoke-static {p5, v0}, Lcom/android/server/hmo;->cjf(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/hmo;->mHandler:Lcom/android/server/hmo$you;

    const-wide/32 p2, 0x2bf20

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean p0, Lcom/android/server/hmo;->debug:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " set sensor access deny"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
