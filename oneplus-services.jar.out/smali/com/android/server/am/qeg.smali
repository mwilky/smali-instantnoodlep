.class public final Lcom/android/server/am/qeg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/qeg$zta;,
        Lcom/android/server/am/qeg$you;
    }
.end annotation


# static fields
.field private static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static Ay:[Z = null

.field public static final DBG:Z

.field private static final DEFAULT_NONE:Ljava/lang/String; = ""

.field private static final MSG_GET_ONLINECONFIG:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OnePlusDuallteManager"

.field private static final VERSION:I = 0x78492d21

.field private static final Zu:Ljava/lang/String; = "com.Duallte.action.debug"

.field private static Zx:Lcom/android/server/am/qeg; = null

.field private static _x:Ljava/lang/Object; = null

.field private static final ay:Ljava/lang/String; = "persist.radio.duallte.enable"

.field private static final by:Ljava/lang/String; = "persist.radio.duallte.operated"

.field private static final cy:Ljava/lang/String; = "persist.radio.duallte.control"

.field private static final dy:I = 0x1

.field private static final ey:I = 0x2

.field private static final fy:I = 0x4

.field private static final gy:I = 0x5

.field private static final hy:I = 0x6

.field private static final iy:I = 0x7

.field private static final jy:I = 0x0

.field private static final ky:I = 0x1

.field private static final ly:I = 0x2

.field private static final my:I = 0x7a

.field private static final ny:J = 0x0L

.field private static final oy:J = 0x1L

.field private static final py:J = 0x1L

.field private static final qy:J = 0x4L

.field private static ry:J = 0x0L

.field public static sEnable:Z = false

.field private static final sy:Ljava/lang/String; = "Duallte"

.field private static ty:I

.field private static uy:I

.field private static vy:Z

.field private static wy:Z

.field private static xy:Z

.field private static yy:Z

.field public static zy:Z


# instance fields
.field private Hx:I

.field private Ix:Ljava/lang/String;

.field private Jx:Z

.field private Kx:Landroid/os/Handler;

.field private Lx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Mx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Nx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ox:Lcom/oneplus/config/ConfigObserver;

.field private Px:Ljava/lang/Object;

.field private Qx:Landroid/telephony/TelephonyManager;

.field private Rx:Landroid/net/ConnectivityManager;

.field private Sx:Z

.field private Tx:Z

.field private Ux:Z

.field private Vx:Z

.field private Wx:[Ljava/lang/String;

.field private Xx:[Ljava/lang/String;

.field private Yx:I

.field private mContext:Landroid/content/Context;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private method:Ljava/lang/reflect/Method;

.field private offScreenPkgName:Ljava/lang/String;

.field private screenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/qeg;->Zx:Lcom/android/server/am/qeg;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/qeg;->_x:Ljava/lang/Object;

    const-wide/32 v0, 0xafc8

    sput-wide v0, Lcom/android/server/am/qeg;->ry:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/qeg;->sEnable:Z

    sput v0, Lcom/android/server/am/qeg;->ty:I

    sput v0, Lcom/android/server/am/qeg;->uy:I

    sput-boolean v0, Lcom/android/server/am/qeg;->vy:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/qeg;->wy:Z

    sput-boolean v0, Lcom/android/server/am/qeg;->xy:Z

    sput-boolean v0, Lcom/android/server/am/qeg;->yy:Z

    sput-boolean v1, Lcom/android/server/am/qeg;->zy:Z

    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/qeg;->Ay:[Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/qeg;->Hx:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/am/qeg;->offScreenPkgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/qeg;->Ix:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/am/qeg;->screenOn:Z

    iput-boolean v0, p0, Lcom/android/server/am/qeg;->Jx:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/qeg;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/qeg;->Mx:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/qeg;->Nx:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    iput-object v2, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/am/qeg;->Qx:Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/am/qeg;->Rx:Landroid/net/ConnectivityManager;

    iput-boolean v0, p0, Lcom/android/server/am/qeg;->Sx:Z

    iput-boolean v0, p0, Lcom/android/server/am/qeg;->Tx:Z

    iput-boolean v0, p0, Lcom/android/server/am/qeg;->Ux:Z

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0x109

    aput v4, v3, v0

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/am/qeg;->Vx:Z

    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/qeg;->Wx:[Ljava/lang/String;

    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/qeg;->Xx:[Ljava/lang/String;

    iput v0, p0, Lcom/android/server/am/qeg;->Yx:I

    new-instance v1, Lcom/android/server/am/vdw;

    invoke-direct {v1, p0}, Lcom/android/server/am/vdw;-><init>(Lcom/android/server/am/qeg;)V

    iput-object v1, p0, Lcom/android/server/am/qeg;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1}, Lcom/android/server/am/qeg;->igw(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/qeg;->zy:Z

    sget-boolean v1, Lcom/android/server/am/qeg;->zy:Z

    sput-boolean v1, Lcom/android/server/am/qeg;->sEnable:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnePlusDuallteManager VERSION = v2018061601 |sEnable:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/qeg;->sEnable:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OnePlusDuallteManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/am/qeg;->mContext:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/android/server/am/qeg;->screenOn:Z

    iget-object p1, p0, Lcom/android/server/am/qeg;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/am/qeg;->Qx:Landroid/telephony/TelephonyManager;

    iget-object p1, p0, Lcom/android/server/am/qeg;->Qx:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/android/server/am/qeg;->Ay:[Z

    aget-boolean v0, p1, v0

    if-eqz v0, :cond_0

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_0

    sput-boolean v2, Lcom/android/server/am/qeg;->vy:Z

    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "mOnePlusDuallteManagerThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/am/qeg$you;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/qeg$you;-><init>(Lcom/android/server/am/qeg;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    iget-object p1, p0, Lcom/android/server/am/qeg;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/server/am/qeg;->Rx:Landroid/net/ConnectivityManager;

    iget-object p1, p0, Lcom/android/server/am/qeg;->Rx:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_1

    sput-boolean v2, Lcom/android/server/am/qeg;->wy:Z

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/qeg;->init()V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.Duallte.action.debug"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/qeg;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/qeg;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    sput-object p0, Lcom/android/server/am/qeg;->Zx:Lcom/android/server/am/qeg;

    return-void
.end method

.method private Bb(I)Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/am/qeg;->Qx:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OnePlusDuallteManager"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "slot = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmcc"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mccmnc = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p1, "46000"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46002"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46004"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46007"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46008"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46013"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private Cb(I)Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/am/qeg;->Qx:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    const-string v1, "OnePlusDuallteManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ct"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mccmnc = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "slot = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string p1, "46003"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46005"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46011"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46012"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46059"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private Co()Z
    .locals 9

    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    const/4 v1, -0x1

    const-string v2, "OnePlusDuallteManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/qeg;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_sar_notify_band"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/qeg;->Yx:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "band = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/qeg;->Yx:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/qeg;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "multi_sim_data_call"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    if-ltz v0, :cond_a

    const v4, 0x7fffffff

    if-ge v0, v4, :cond_a

    iget-object v5, p0, Lcom/android/server/am/qeg;->Qx:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v0}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v7

    if-nez v7, :cond_3

    :cond_1
    sget-boolean v5, Lcom/android/server/am/qeg;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "ps regInfo null or cell indentity null"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0, v6, v6}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    sget-boolean v7, Lcom/android/server/am/qeg;->DBG:Z

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "regInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez v0, :cond_5

    return v3

    :cond_5
    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getType()I

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_6

    move v0, v3

    goto :goto_0

    :cond_6
    check-cast v0, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result v0

    :goto_0
    if-ne v0, v4, :cond_8

    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v3

    :cond_8
    :goto_1
    sget-boolean v1, Lcom/android/server/am/qeg;->DBG:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Earfcn = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/16 v1, 0x4b0

    if-lt v0, v1, :cond_a

    const/16 v1, 0x79d

    if-gt v0, v1, :cond_a

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Eo()I

    move-result v0

    if-ltz v0, :cond_a

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Eo()I

    move-result v0

    if-gt v0, v6, :cond_a

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Eo()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/qeg;->Bb(I)Z

    move-result p0

    if-eqz p0, :cond_a

    return v6

    :cond_a
    return v3
.end method

.method private Db(I)Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/am/qeg;->Qx:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OnePlusDuallteManager"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "slot = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cu"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mccmnc = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p1, "46001"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46009"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46006"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private Do()V
    .locals 7

    sget-object v0, Lcom/android/server/am/qeg;->_x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/2addr v1, v2

    const-string v4, "OnePlusDuallteManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # mSpecialGameList # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    const-string p0, "OnePlusDuallteManager"

    const-string v1, "# dump # mSpecialGameList = null, return"

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Eo()I
    .locals 1

    const-string p0, "persist.radio.dds.phone"

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private Fd()V
    .locals 3

    const-string p0, "OnePlusDuallteManager"

    const-string v0, "# dump # VERSION # 2018061601"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sEnable # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/qeg;->sEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # operateDelayTime # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/qeg;->ry:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private Fo()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Eo()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Eo()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/android/server/am/qeg;->Ay:[Z

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Eo()I

    move-result v2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/am/qeg;->Ma(Z)V

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Go()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/qeg;->Ma(Z)V

    :goto_0
    return-void
.end method

.method private Go()V
    .locals 3

    sget-object v0, Lcom/android/server/am/qeg;->Ay:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/qeg;->No()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/qeg;->vy:Z

    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/server/am/qeg;->vy:Z

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/am/qeg;->zta(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

.method private Ho()V
    .locals 4

    sget-object v0, Lcom/android/server/am/qeg;->Ay:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/am/qeg;->Ay:[Z

    aget-boolean v2, v0, v1

    if-nez v2, :cond_2

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/am/qeg;->Na(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/am/qeg;->Na(Z)V

    :goto_0
    return-void
.end method

.method private Io()V
    .locals 3

    sget-object v0, Lcom/android/server/am/qeg;->_x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.cf"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.dwrg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.sgame"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.pubgm"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.pubgmhd"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.speedmobile"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.supercell.clashroyale"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.supercell.clashofclans"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.netease.dwrg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.netease.dwrg.baidu"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.netease.dwrg.aligames"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.netease.dwrg.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.netease.hyxd"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.netease.hyxd.baidu"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.netease.hyxd.aligames"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.netease.hyxd.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.supercell.clashroyale.uc"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.uc"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.supercell.clashroyale.baidu"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.qihoo"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.baidu"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.supercell.clashroyale.kunlun"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.kunlun"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.supercell.clashroyale.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    const-string v1, "com.blizzard.wtcg.hearthstone"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Jo()V
    .locals 8

    const-string v0, "persist.radio.duallte.operated"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist.radio.duallte.enable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSysPropt() lastOperated:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " |curDuallteState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OnePlusDuallteManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/qeg;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v5}, Lcom/android/server/am/qeg;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.radio.duallte.control"

    invoke-direct {p0, v0, v5}, Lcom/android/server/am/qeg;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, v7, v7, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, v7, v7, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, v7, v7, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private Ko()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/qeg;->Qx:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    sget-object v1, Lcom/android/server/am/qeg;->Ay:[Z

    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_2

    move v1, v2

    move v4, v3

    :goto_0
    if-ge v1, v0, :cond_1

    if-eqz v4, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/am/qeg;->Bb(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sim is two CMCC:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method private Lo()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/am/qeg;->vy:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/server/am/qeg;->wy:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Ma(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDDSChangeDone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mCurFrontPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/qeg;->Ix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/qeg;->xy:Z

    if-eq v0, p1, :cond_2

    sput-boolean p1, Lcom/android/server/am/qeg;->xy:Z

    sget-boolean p1, Lcom/android/server/am/qeg;->xy:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/server/am/qeg;->wy:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/qeg;->Ix:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/qeg;->Po()V

    :cond_2
    :goto_0
    return-void
.end method

.method private Mo()Z
    .locals 10

    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusDuallteManager"

    const-string v1, "matchOnlineConfigOperators"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/qeg;->Mx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/qeg;->Nx:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "CT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "CU"

    const-string v9, "CMCC"

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Eo()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/qeg;->Cb(I)Z

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Eo()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/qeg;->Bb(I)Z

    move-result v3

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Eo()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/qeg;->Db(I)Z

    move-result v3

    :cond_4
    :goto_0
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_6

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Eo()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/am/qeg;->Db(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    move v3, v7

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Eo()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/am/qeg;->Cb(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_7
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Eo()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/am/qeg;->Bb(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_8
    :goto_2
    if-eqz v3, :cond_1

    return v7

    :cond_9
    return v2
.end method

.method private Na(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSingleSimChangeDone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mCurFrontPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/qeg;->Ix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/qeg;->yy:Z

    if-eq v0, p1, :cond_2

    sput-boolean p1, Lcom/android/server/am/qeg;->yy:Z

    sget-boolean p1, Lcom/android/server/am/qeg;->yy:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/server/am/qeg;->wy:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/qeg;->Ix:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/qeg;->Oo()V

    :cond_2
    :goto_0
    return-void
.end method

.method private No()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/qeg;->Qx:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_1

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/am/qeg;->Cb(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is CT:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OnePlusDuallteManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/qeg;->Mo()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private Oa(Z)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/qeg;->No()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/android/server/am/qeg;->DBG:Z

    const-string v2, "OnePlusDuallteManager"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDuallte isRecover:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/qeg;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/qeg;->getIExtTelephony()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-boolean v1, p0, Lcom/android/server/am/qeg;->Sx:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "oemDualLteSwitch"

    aput-object v6, v5, v0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    if-eqz p1, :cond_6

    iput-boolean v0, p0, Lcom/android/server/am/qeg;->Jx:Z

    const-string p1, "persist.radio.duallte.operated"

    const-string v0, "0"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/qeg;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v3

    :cond_7
    :goto_0
    :try_start_1
    const-string p1, "setDuallte method or iExtTelephony is null, return"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/qeg;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/qeg;->getIExtTelephony()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private Oo()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private Pa(Z)Z
    .locals 10

    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    const-string v1, "OnePlusDuallteManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLLMState isRecover:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-boolean v2, Lcom/android/server/am/qeg;->yy:Z

    if-nez v2, :cond_1

    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/qeg;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/qeg;->getIExtTelephony()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "downlink"

    const-string v5, "uplink"

    const-wide/16 v6, 0x0

    const-string v8, "rat"

    const-string v9, "priority"

    if-eqz p1, :cond_5

    :try_start_1
    invoke-virtual {v2, v9, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v6, 0x1

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_0
    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v9, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v6, 0x4

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :goto_1
    iget-boolean p1, p0, Lcom/android/server/am/qeg;->Sx:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "setLowLatencyMode"

    aput-object v6, v5, v0

    aput-object v2, v5, v3

    invoke-virtual {p1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return v3

    :cond_7
    :goto_2
    const-string p1, "setLLMState method or iExtTelephony is null, return"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/qeg;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/qeg;->getIExtTelephony()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private Po()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private Qa(Z)Z
    .locals 7

    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    const-string v1, "OnePlusDuallteManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNrSilence isRecover:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Co()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Ko()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/qeg;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/qeg;->getIExtTelephony()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "enable"

    if-nez p1, :cond_5

    move p1, v3

    goto :goto_0

    :cond_5
    move p1, v0

    :goto_0
    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "reason"

    const/4 v4, 0x4

    invoke-virtual {v2, p1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean p1, p0, Lcom/android/server/am/qeg;->Sx:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "setNrSilenceMode"

    aput-object v6, v5, v0

    aput-object v2, v5, v3

    invoke-virtual {p1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return v3

    :cond_7
    :goto_1
    const-string p1, "setNrSilence method or iExtTelephony is null, return"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/am/qeg;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/qeg;->getIExtTelephony()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;

    return v0
.end method

.method private Qb(Ljava/lang/String;)V
    .locals 8

    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePkgChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isStateReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Lo()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",DDSChangeDone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/qeg;->xy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",SingleSIMState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/qeg;->yy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz p1, :cond_7

    iput v3, p0, Lcom/android/server/am/qeg;->Hx:I

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Lo()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const-string p1, "persist.radio.duallte.enable"

    const-string v6, "0"

    invoke-static {p1, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v6, "1"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/am/qeg;->Jx:Z

    const-string p1, "persist.radio.duallte.operated"

    const-string v6, "1"

    invoke-direct {p0, p1, v6}, Lcom/android/server/am/qeg;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "persist.radio.duallte.enable"

    const-string v6, "0"

    invoke-direct {p0, p1, v6}, Lcom/android/server/am/qeg;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "persist.radio.duallte.control"

    const-string v6, "0"

    invoke-direct {p0, p1, v6}, Lcom/android/server/am/qeg;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p1, v4, v5, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    sget-boolean p1, Lcom/android/server/am/qeg;->xy:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/am/qeg;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "in_top_list_game_op_telephony"

    invoke-static {p1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1, v1, v5, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    sget-boolean p1, Lcom/android/server/am/qeg;->yy:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v2, v5, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_7
    iget p1, p0, Lcom/android/server/am/qeg;->Hx:I

    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_9

    if-eq p1, v4, :cond_8

    goto/16 :goto_1

    :cond_8
    iput v5, p0, Lcom/android/server/am/qeg;->Hx:I

    goto/16 :goto_1

    :cond_9
    iput v4, p0, Lcom/android/server/am/qeg;->Hx:I

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Lo()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/android/server/am/qeg;->Jx:Z

    if-eqz p1, :cond_c

    iput-boolean v5, p0, Lcom/android/server/am/qeg;->Jx:Z

    const-string p1, "persist.radio.duallte.enable"

    const-string v6, "0"

    invoke-static {p1, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v6, "0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string p1, "persist.radio.duallte.enable"

    const-string v6, "1"

    invoke-direct {p0, p1, v6}, Lcom/android/server/am/qeg;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "persist.radio.duallte.control"

    const-string v6, "1"

    invoke-direct {p0, p1, v6}, Lcom/android/server/am/qeg;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p1, v4, v5, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    sget-wide v6, Lcom/android/server/am/qeg;->ry:J

    invoke-virtual {v4, p1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_b
    const-string v4, "1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "persist.radio.duallte.operated"

    const-string v4, "0"

    invoke-direct {p0, p1, v4}, Lcom/android/server/am/qeg;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_0
    sget-boolean p1, Lcom/android/server/am/qeg;->xy:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/server/am/qeg;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "in_top_list_game_op_telephony"

    invoke-static {p1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p1, v1, v5, v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    sget-wide v6, Lcom/android/server/am/qeg;->ry:J

    invoke-virtual {v1, p1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_e
    sget-boolean p1, Lcom/android/server/am/qeg;->yy:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_f
    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v2, v5, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    sget-wide v1, Lcom/android/server/am/qeg;->ry:J

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_10
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

.method private Qo()V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recoverOperatedImmediately isOperated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/qeg;->Jx:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/qeg;->Jx:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const-string v0, "1"

    const-string v2, "persist.radio.duallte.enable"

    invoke-direct {p0, v2, v0}, Lcom/android/server/am/qeg;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "persist.radio.duallte.control"

    invoke-direct {p0, v2, v0}, Lcom/android/server/am/qeg;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method private Ro()V
    .locals 9

    sget-boolean p0, Lcom/android/server/am/qeg;->DBG:Z

    const-string v0, "OnePlusDuallteManager"

    if-eqz p0, :cond_0

    const-string p0, "setDuallteTest"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p0, "org.codeaurora.internal.IExtTelephony"

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, ", "

    if-ge v4, v2, :cond_1

    :try_start_1
    aget-object v6, v1, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMethods:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v6, v1, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDeclaredMethods:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "extphone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "org.codeaurora.internal.IExtTelephony$Stub"

    :try_start_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "asInterface"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "generalSetter"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v6, v5

    invoke-virtual {p0, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "oemDualLteSwitch"

    aput-object v4, v2, v3

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDuallteTest() exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method static synthetic access$1400()[Z
    .locals 1

    sget-object v0, Lcom/android/server/am/qeg;->Ay:[Z

    return-object v0
.end method

.method static synthetic bio(Lcom/android/server/am/qeg;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/qeg;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic cno(Lcom/android/server/am/qeg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Go()V

    return-void
.end method

.method static synthetic dma(Lcom/android/server/am/qeg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Fd()V

    return-void
.end method

.method static synthetic gck(Lcom/android/server/am/qeg;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/qeg;->Vx:Z

    return p0
.end method

.method private getIExtTelephony()Ljava/lang/Object;
    .locals 9

    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    const-string v1, "OnePlusDuallteManager"

    if-eqz v0, :cond_0

    const-string v0, "getIExtTelephony()"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "extphone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "org.codeaurora.internal.IExtTelephony$Stub"

    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "asInterface"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v8

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p0, p0, Lcom/android/server/am/qeg;->Px:Ljava/lang/Object;

    return-object p0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIExtTelephony() exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static final getInstance()Lcom/android/server/am/qeg;
    .locals 1

    sget-object v0, Lcom/android/server/am/qeg;->Zx:Lcom/android/server/am/qeg;

    return-object v0
.end method

.method private getMethod()Ljava/lang/reflect/Method;
    .locals 6

    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    const-string v1, "OnePlusDuallteManager"

    if-eqz v0, :cond_0

    const-string v0, "getMethod()"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "org.codeaurora.internal.IExtTelephony"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "generalSetter"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/server/am/qeg;->method:Ljava/lang/reflect/Method;

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMethod() exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private igw(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1110064

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method static synthetic igw(Lcom/android/server/am/qeg;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/qeg;->Tx:Z

    return p0
.end method

.method public static final init(Landroid/content/Context;)Lcom/android/server/am/qeg;
    .locals 1

    sget-object v0, Lcom/android/server/am/qeg;->Zx:Lcom/android/server/am/qeg;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/qeg;

    invoke-direct {v0, p0}, Lcom/android/server/am/qeg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/qeg;->Zx:Lcom/android/server/am/qeg;

    :cond_0
    sget-object p0, Lcom/android/server/am/qeg;->Zx:Lcom/android/server/am/qeg;

    return-object p0
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Io()V

    invoke-virtual {p0}, Lcom/android/server/am/qeg;->initOnlineConfig()V

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Jo()V

    return-void
.end method

.method static synthetic kth(Lcom/android/server/am/qeg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Ho()V

    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 7

    if-nez p1, :cond_0

    const-string p0, "OnePlusDuallteManager"

    const-string p1, "[OnlineConfig] resolveConfigFromJSON jsonArray is null, return"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/qeg;->Nx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/am/qeg;->Mx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/qeg;->sEnable:Z

    goto/16 :goto_4

    :cond_1
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "delaytime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/android/server/am/qeg;->ry:J

    goto/16 :goto_4

    :cond_2
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "nddsoperators"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/qeg;->Nx:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ddsoperators"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/qeg;->Mx:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mSpecialGameList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    move v4, v0

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/qeg;->sEnable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/qeg;->ry:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mDdsOperator:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/qeg;->Mx:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mNoneDdsOperator:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/qeg;->Nx:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    const-string v0, "[OnlineConfig] resolveConfigFromJSON mSpecialGameList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusDuallteManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catchall_1
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/qeg;->sEnable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/qeg;->ry:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mDdsOperator:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/qeg;->Mx:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mNoneDdsOperator:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/qeg;->Nx:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5

    :catch_1
    move-exception p1

    :try_start_4
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] JSONException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/qeg;->sEnable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/qeg;->ry:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mDdsOperator:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/qeg;->Mx:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mNoneDdsOperator:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/qeg;->Nx:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5

    :goto_6
    return-void

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/qeg;->sEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/qeg;->ry:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON mDdsOperator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/qeg;->Mx:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON mNoneDdsOperator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/qeg;->Nx:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON mSpecialGameList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/qeg;->Lx:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p1
.end method

.method static synthetic rtg(Lcom/android/server/am/qeg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Fo()V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/am/qeg;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/qeg;->Qa(Z)Z

    move-result p0

    return p0
.end method

.method private setProptValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p0, ""

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set system property key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |curValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "failed to set system property"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic sis(Lcom/android/server/am/qeg;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/qeg;->Qx:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/am/qeg;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/qeg;->Pa(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic ssp(Lcom/android/server/am/qeg;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/qeg;->Wx:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/am/qeg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/qeg;->Ux:Z

    return p1
.end method

.method static synthetic tsu(Lcom/android/server/am/qeg;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/qeg;->Xx:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic wtn(Lcom/android/server/am/qeg;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/qeg;->Ux:Z

    return p0
.end method

.method static synthetic you(Lcom/android/server/am/qeg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Ro()V

    return-void
.end method

.method private you(Ljava/lang/Boolean;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/qeg;->wy:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/qeg;->wy:Z

    sget-boolean p1, Lcom/android/server/am/qeg;->wy:Z

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/android/server/am/qeg;->vy:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/qeg;->Ix:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/qeg;->Qo()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic you(Lcom/android/server/am/qeg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/qeg;->Tx:Z

    return p1
.end method

.method static synthetic zta(Lcom/android/server/am/qeg;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/qeg;->Qx:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/am/qeg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/qeg;->Do()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/qeg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/qeg;->Qb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/qeg;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/qeg;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private zta(Ljava/lang/Boolean;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDualSimStateReady ready:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " |mCurFrontPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/qeg;->Ix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/qeg;->vy:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/qeg;->vy:Z

    sget-boolean p1, Lcom/android/server/am/qeg;->vy:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/server/am/qeg;->wy:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/qeg;->Ix:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/qeg;->Qo()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/qeg;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/qeg;->Oa(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    sget-boolean p3, Lcom/android/server/am/qeg;->sEnable:Z

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eq p2, p5, :cond_2

    sget-boolean p3, Lcom/android/server/am/qeg;->DBG:Z

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "event frontPackageChanged packageName:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " |uid:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " |luid:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OnePlusDuallteManager"

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/qeg;->s(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public initOnlineConfig()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/qeg;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/qeg$zta;

    invoke-direct {v3, p0}, Lcom/android/server/am/qeg$zta;-><init>(Lcom/android/server/am/qeg;)V

    const-string v4, "Duallte"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/qeg;->Ox:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/am/qeg;->Ox:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public qeg(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEsportModeStatus  | sEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/qeg;->sEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |inEsportMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/qeg;->Sx:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/qeg;->Sx:Z

    if-ne v0, p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/am/qeg;->Sx:Z

    iget-boolean p1, p0, Lcom/android/server/am/qeg;->Sx:Z

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/OnePlusUtil$zta;->T()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/qeg;->s(Ljava/lang/String;)V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public s(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/qeg;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frontPkgChangedEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |mCurFrontPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/qeg;->Ix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/android/server/am/qeg;->Ix:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/server/am/qeg;->screenOn:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/android/server/am/qeg;->offScreenPkgName:Ljava/lang/String;

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/qeg;->Lo()Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/am/qeg;->xy:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/am/qeg;->yy:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/qeg;->Kx:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    return-void
.end method

.method public screenStateChangedEvent(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/qeg;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/qeg;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenStateChangedEvent done:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |offScreenPkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/qeg;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |mCurFrontPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/qeg;->Ix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/am/qeg;->screenOn:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/qeg;->offScreenPkgName:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/am/qeg;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/am/qeg;->s(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/qeg;->offScreenPkgName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/am/qeg;->Ix:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/qeg;->offScreenPkgName:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method
