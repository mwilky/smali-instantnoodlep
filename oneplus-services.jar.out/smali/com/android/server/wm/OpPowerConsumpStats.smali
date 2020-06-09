.class public Lcom/android/server/wm/OpPowerConsumpStats;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpPowerConsumpStats;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/OpPowerConsumpStats$SettleType;,
        Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;,
        Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;,
        Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;,
        Lcom/android/server/wm/OpPowerConsumpStats$gck;,
        Lcom/android/server/wm/OpPowerConsumpStats$StatusType;,
        Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;,
        Lcom/android/server/wm/OpPowerConsumpStats$tsu;,
        Lcom/android/server/wm/OpPowerConsumpStats$rtg;,
        Lcom/android/server/wm/OpPowerConsumpStats$wtn;,
        Lcom/android/server/wm/OpPowerConsumpStats$you;,
        Lcom/android/server/wm/OpPowerConsumpStats$bvj;,
        Lcom/android/server/wm/OpPowerConsumpStats$cno;,
        Lcom/android/server/wm/OpPowerConsumpStats$igw;,
        Lcom/android/server/wm/OpPowerConsumpStats$ywr;,
        Lcom/android/server/wm/OpPowerConsumpStats$zta;,
        Lcom/android/server/wm/OpPowerConsumpStats$sis;,
        Lcom/android/server/wm/OpPowerConsumpStats$oif;,
        Lcom/android/server/wm/OpPowerConsumpStats$ibl;,
        Lcom/android/server/wm/OpPowerConsumpStats$dma;,
        Lcom/android/server/wm/OpPowerConsumpStats$kth;,
        Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;,
        Lcom/android/server/wm/OpPowerConsumpStats$ssp;,
        Lcom/android/server/wm/OpPowerConsumpStats$bio;,
        Lcom/android/server/wm/OpPowerConsumpStats$qbh;
    }
.end annotation


# static fields
.field private static final ACTION_REPORT:Ljava/lang/String; = "com.OPCS.action.report"

.field private static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field private static final APP_ID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final Aea:I = 0xe

.field public static final Afa:I = -0x5e

.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final Bea:I = 0xf

.field public static final Bfa:I = -0x5d

.field private static final Cea:I = 0x10

.field public static final Cfa:I = -0x5c

.field private static final Dea:I = 0x11

.field public static final Dfa:I = -0x5b

.field private static final EVENT_ACTIVE:I = 0x0

.field private static final EVENT_SCREEN_OFF:I = 0x0

.field private static final EVENT_SCREEN_ON:I = 0x1

.field private static final Eea:I = 0x13

.field public static final Efa:I = -0x5a

.field private static final Fea:I = 0x0

.field public static final Ffa:I = -0x59

.field private static final Gea:I = 0x1

.field public static final Gfa:I = -0x58

.field private static final Hea:I = 0x1

.field public static final Hfa:I = -0x57

.field private static final Iea:Ljava/lang/String; = "OPCS_SPECIFIC"

.field public static final Ifa:I = -0x56

.field private static final Jea:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field public static final Jfa:I = -0x55

.field private static final Kea:Ljava/lang/String; = "persist.sys.opcs.debug_specific"

.field public static final Kfa:I = -0x54

.field private static final Lea:Ljava/lang/String; = "persist.sys.opcs.debug_verify"

.field private static final Lfa:Ljava/lang/String; = "7554P2RV0X"

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final MSG_PERSIST:I = 0x7

.field private static final Mea:Ljava/lang/String; = "AC"

.field private static Mfa:Z = false

.field static final NJ:Ljava/lang/String; = "/sys/class/power_supply/bms/remaining_capacity"

.field private static final Nea:Ljava/lang/String; = "USB"

.field private static final Nfa:I = 0x0

.field private static final Oea:Ljava/lang/String; = "WIRELESS"

.field private static final Ofa:I = 0x1

.field private static final Pea:Ljava/lang/String; = "NONE"

.field private static final Pfa:I = 0x0

.field private static final Pu:Ljava/lang/String; = "persist.sys.opcs.debug_log"

.field private static final Qea:Ljava/lang/String; = "FASTCHARGE"

.field private static final Qfa:I = 0x1

.field private static final Rea:Ljava/lang/String; = "unknow"

.field private static final Sea:Ljava/lang/String; = "none"

.field private static final TAG:Ljava/lang/String; = "OPCS"

.field private static final Tea:Ljava/lang/String; = ""

.field private static final Uea:Ljava/lang/String; = "handle_plug_event"

.field private static final VERSION:I = 0x122b9c9

.field private static final Vea:Ljava/lang/String; = "cmd_calculatePower"

.field private static final Wea:Ljava/lang/String; = "generatePowerConsumptionData"

.field private static final Xea:J = 0x5265c00L

.field private static Yea:Z = false

.field private static Zea:Z = false

.field private static final Zu:Ljava/lang/String; = "com.OPCS.action.debug"

.field private static _ea:I = 0x0

.field private static afa:J = 0x0L

.field private static bfa:J = 0x0L

.field private static cfa:J = 0x0L

.field private static dfa:I = 0x0

.field private static final dq:Ljava/lang/String; = "null"

.field private static efa:I = 0x0

.field private static final et:I = -0x1

.field private static ffa:I = 0x0

.field private static final gfa:Ljava/lang/String; = "powerLevel"

.field private static final hfa:Ljava/lang/String; = "screen"

.field private static iea:Lcom/android/server/wm/OpPowerConsumpStats; = null

.field private static final ifa:Ljava/lang/String; = "plug"

.field private static jea:Z = false

.field private static final jfa:Ljava/lang/String; = "doze"

.field private static kea:Z = false

.field private static final kfa:Ljava/lang/String; = "frontPkg"

.field private static lea:Z = false

.field private static final lfa:Ljava/lang/String; = "/mnt/vendor/persist/engineermode/screenontimebyhours"

.field private static mea:Z = false

.field private static final mfa:Ljava/lang/String; = "ScreenON"

.field private static nea:Z = false

.field private static final nfa:I

.field private static final oea:I = 0x64

.field private static final ofa:I = 0x3516c4c

.field private static final pea:I = 0x2

.field private static final pfa:I = 0x2

.field private static final qea:I = 0x3

.field private static final qfa:I = 0x10

.field private static final rea:I = 0x4

.field private static final rfa:Ljava/lang/String; = "LockScreen"

.field private static final rv:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/wm/OpPowerConsumpStats; = null

.field private static final sea:I = 0x5

.field static sfa:D = 0.0

.field private static final tea:I = 0x6

.field static final tfa:Ljava/lang/String; = "/sys/class/power_supply/bms/charge_full"

.field private static final uea:I = 0x8

.field public static final ufa:I = -0x64

.field private static final vea:I = 0x9

.field public static final vfa:I = -0x63

.field private static final wea:I = 0xa

.field public static final wfa:I = -0x62

.field private static final xa:I = 0x12

.field private static final xea:I = 0xb

.field public static final xfa:I = -0x61

.field private static final yea:I = 0xc

.field public static final yfa:I = -0x60

.field private static final zea:I = 0xd

.field public static final zfa:I = -0x5f


# instance fields
.field private Ada:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$bvj;",
            ">;"
        }
    .end annotation
.end field

.field private Bda:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$bvj;",
            ">;"
        }
    .end annotation
.end field

.field private Cda:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$bvj;",
            ">;"
        }
    .end annotation
.end field

.field private Dda:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$bvj;",
            ">;"
        }
    .end annotation
.end field

.field private Eda:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$bvj;",
            ">;"
        }
    .end annotation
.end field

.field private Fda:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$bvj;",
            ">;"
        }
    .end annotation
.end field

.field private Gda:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$bvj;",
            ">;"
        }
    .end annotation
.end field

.field private Hda:Ljava/text/DecimalFormat;

.field private Ida:I

.field private Jda:I

.field private Kda:I

.field private Lda:I

.field private Mda:I

.field private Mu:Landroid/content/BroadcastReceiver;

.field private Nda:I

.field private Oca:Lcom/oneplus/config/ConfigObserver;

.field private Oda:Z

.field private Pca:Landroid/util/AtomicFile;

.field private Pda:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/OpPowerConsumpStats$you;",
            ">;"
        }
    .end annotation
.end field

.field private Qca:Lcom/android/server/wm/OpPowerConsumpStats$sis;

.field private Qda:Ljava/lang/Object;

.field private Rca:Lcom/android/internal/os/BatteryStatsImpl;

.field private Rda:Lcom/android/server/wm/OpPowerConsumpStats$ibl;

.field private Sca:Landroid/os/Handler;

.field private Sda:Z

.field private Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

.field private Tda:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

.field private Uca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

.field private final Uda:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$gck;",
            ">;"
        }
    .end annotation
.end field

.field private Vca:Ljava/lang/StringBuilder;

.field private Vda:Ljava/lang/String;

.field private Wca:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

.field private Wda:Z

.field private Xca:Ljava/lang/Object;

.field private Xda:Lcom/android/server/wm/OpPowerConsumpStats$gck;

.field private Yca:J

.field private Yda:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

.field private Zca:J

.field private Zda:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

.field private _F:Ljava/lang/String;

.field private _ca:Z

.field private _da:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$tsu;",
            ">;"
        }
    .end annotation
.end field

.field private ada:Z

.field private aea:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$tsu;",
            ">;"
        }
    .end annotation
.end field

.field private bda:Z

.field private bea:Landroid/content/BroadcastReceiver;

.field private cda:I

.field private final cea:Landroid/app/AlarmManager$OnAlarmListener;

.field private dda:Z

.field private final dea:Landroid/app/AlarmManager$OnAlarmListener;

.field private eda:D

.field final eea:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/OpPowerConsumpStats$bvj;",
            ">;"
        }
    .end annotation
.end field

.field private fda:I

.field fea:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/OpPowerConsumpStats$tsu;",
            ">;"
        }
    .end annotation
.end field

.field gda:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/OpPowerConsumpStats$bio;",
            ">;"
        }
    .end annotation
.end field

.field gea:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/OpPowerConsumpStats$tsu;",
            ">;"
        }
    .end annotation
.end field

.field hda:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/OpPowerConsumpStats$ssp;",
            ">;"
        }
    .end annotation
.end field

.field hea:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/OpPowerConsumpStats$tsu;",
            ">;"
        }
    .end annotation
.end field

.field ida:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private jda:Lcom/android/server/wm/OpPowerConsumpStats$dma;

.field private kda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

.field private lda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mFormat:Ljava/text/SimpleDateFormat;

.field private mFrontPackageListener:Lcom/android/server/OnePlusUtil$zta$you;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNetworkType:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

.field private mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenState:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

.field private mda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

.field private nda:Lcom/android/server/wm/OpPowerConsumpStats$dma;

.field private oda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

.field private pda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

.field private pi:Landroid/app/PendingIntent;

.field private qda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

.field private rda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

.field private ru:Landroid/util/AtomicFile;

.field private sda:Lcom/android/server/wm/OpPowerConsumpStats$dma;

.field private tda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

.field private uda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

.field private us:Z

.field private vda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

.field private wda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

.field private xda:Lcom/android/server/wm/OpPowerConsumpStats$igw;

.field private yda:Lcom/android/server/wm/OpPowerConsumpStats$cno;

.field private yk:I

.field private zda:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$bvj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->jea:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->kea:Z

    sput-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->lea:Z

    sput-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->mea:Z

    sput-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->nea:Z

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->Yea:Z

    const-string v2, "persist.sys.opcs.errdebug"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->Zea:Z

    const/16 v1, 0x168

    sput v1, Lcom/android/server/wm/OpPowerConsumpStats;->_ea:I

    const-wide/32 v1, 0xa4cb80

    sput-wide v1, Lcom/android/server/wm/OpPowerConsumpStats;->afa:J

    const-wide/32 v1, 0x6ddd00

    sput-wide v1, Lcom/android/server/wm/OpPowerConsumpStats;->bfa:J

    const-wide/32 v1, 0xea60

    sput-wide v1, Lcom/android/server/wm/OpPowerConsumpStats;->cfa:J

    const/16 v1, 0xa

    sput v1, Lcom/android/server/wm/OpPowerConsumpStats;->dfa:I

    const/16 v1, 0x8

    sput v1, Lcom/android/server/wm/OpPowerConsumpStats;->efa:I

    sput v1, Lcom/android/server/wm/OpPowerConsumpStats;->ffa:I

    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->LBa:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x5

    sput v1, Lcom/android/server/wm/OpPowerConsumpStats;->nfa:I

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    sput-wide v1, Lcom/android/server/wm/OpPowerConsumpStats;->sfa:D

    sput-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->Mfa:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Oca:Lcom/oneplus/config/ConfigObserver;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ru:Landroid/util/AtomicFile;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pca:Landroid/util/AtomicFile;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Qca:Lcom/android/server/wm/OpPowerConsumpStats$sis;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryManager:Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rca:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPowerManager:Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vca:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Wca:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Xca:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yca:J

    iput-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zca:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ada:Z

    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bda:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cda:I

    const-string v4, "none"

    iput-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_F:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pi:Landroid/app/PendingIntent;

    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dda:Z

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eda:D

    iput v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fda:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gda:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hda:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ida:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$dma;

    const-string v3, "TotalDischarge"

    invoke-direct {v0, p0, v3}, Lcom/android/server/wm/OpPowerConsumpStats$dma;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->jda:Lcom/android/server/wm/OpPowerConsumpStats$dma;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-direct {v0, p0, v3}, Lcom/android/server/wm/OpPowerConsumpStats$zta;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    const-string v3, "TotalDischargeDuration"

    invoke-direct {v0, p0, v3}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->lda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    const-string v3, "TotalChargeDuration"

    invoke-direct {v0, p0, v3}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$dma;

    const-string v3, "ScreenOnDischarge"

    invoke-direct {v0, p0, v3}, Lcom/android/server/wm/OpPowerConsumpStats$dma;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->nda:Lcom/android/server/wm/OpPowerConsumpStats$dma;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-direct {v0, p0, v3}, Lcom/android/server/wm/OpPowerConsumpStats$zta;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    const-string v3, "TotalScreenOnDuration"

    invoke-direct {v0, p0, v3}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    const-string v3, "ScreenOnDischargeDuration"

    invoke-direct {v0, p0, v3}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    const-string v3, "ScreenOnChargeDuration"

    invoke-direct {v0, p0, v3}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$dma;

    const-string v3, "ScreenOffDischarge"

    invoke-direct {v0, p0, v3}, Lcom/android/server/wm/OpPowerConsumpStats$dma;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sda:Lcom/android/server/wm/OpPowerConsumpStats$dma;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-direct {v0, p0, v3}, Lcom/android/server/wm/OpPowerConsumpStats$zta;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    const-string v3, "TotalScreenOffDuration"

    invoke-direct {v0, p0, v3}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->uda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    const-string v3, "ScreenOffDischargeDuration"

    invoke-direct {v0, p0, v3}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    const-string v3, "ScreenOffChargeDuration"

    invoke-direct {v0, p0, v3}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$igw;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$igw;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->xda:Lcom/android/server/wm/OpPowerConsumpStats$igw;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$cno;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$cno;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->yda:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zda:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Ada:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Bda:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Cda:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Dda:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Eda:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Fda:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Gda:Ljava/util/HashMap;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Hda:Ljava/text/DecimalFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "dd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mFormat:Ljava/text/SimpleDateFormat;

    iput v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Ida:I

    iput v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Jda:I

    iput v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Kda:I

    iput v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Lda:I

    iput v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Mda:I

    iput v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Nda:I

    iput v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->yk:I

    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Oda:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pda:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Qda:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sda:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uda:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->LBa:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mNetworkType:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Wda:Z

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->UNLOCKED:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yda:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;->Pfa:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zda:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_da:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aea:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->us:Z

    new-instance v0, Lcom/android/server/wm/veq;

    invoke-direct {v0, p0}, Lcom/android/server/wm/veq;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bea:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/wm/cgv;

    invoke-direct {v0, p0}, Lcom/android/server/wm/cgv;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/wm/vju;

    invoke-direct {v0, p0}, Lcom/android/server/wm/vju;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Mu:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/wm/bud;

    invoke-direct {v0, p0}, Lcom/android/server/wm/bud;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cea:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/server/wm/les;

    invoke-direct {v0, p0}, Lcom/android/server/wm/les;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dea:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/server/wm/irq;

    invoke-direct {v0, p0}, Lcom/android/server/wm/irq;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eea:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/wm/vdw;

    invoke-direct {v0, p0}, Lcom/android/server/wm/vdw;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fea:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/wm/qeg;

    invoke-direct {v0, p0}, Lcom/android/server/wm/qeg;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gea:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/wm/ivd;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ivd;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hea:Ljava/util/Comparator;

    const-string p0, "OpPowerConsumpStats()--constructor:19053001"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method private Ac(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] ===dumpPkgStatInfo=== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] mCurrentTopPkgName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uda:Ljava/util/HashMap;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uda:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;

    invoke-virtual {p1}, Lcom/android/server/wm/OpPowerConsumpStats$gck;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uda:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;

    if-eqz p0, :cond_1

    const-string p1, "OPCS"

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$gck;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private As()V
    .locals 1

    const-string v0, "clearCapConsumption"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->xs()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_da:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aea:Ljava/util/HashMap;

    return-void
.end method

.method private Bc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "plug"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    :goto_0
    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    :goto_1
    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    goto :goto_2

    :cond_1
    const-string v0, "screen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    goto :goto_1

    :cond_3
    const-string p0, "powerLevel"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const-string p0, "doze"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    const-string p0, "frontPkg"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method private Bs()V
    .locals 1

    const-string v0, "clearFragment"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gda:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hda:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ida:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->xda:Lcom/android/server/wm/OpPowerConsumpStats$igw;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$igw;->you(Lcom/android/server/wm/OpPowerConsumpStats$igw;)V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->yda:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$cno;->ssp(Lcom/android/server/wm/OpPowerConsumpStats$cno;)V

    return-void
.end method

.method private Cc(Ljava/lang/String;)D
    .locals 14

    const/4 v0, -0x1

    const-string v1, "/sys/class/power_supply/bms/charge_full"

    invoke-static {v1, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->tsu(Ljava/lang/String;I)I

    move-result v1

    int-to-double v1, v1

    sput-wide v1, Lcom/android/server/wm/OpPowerConsumpStats;->sfa:D

    const-string v1, "/sys/class/power_supply/bms/remaining_capacity"

    invoke-static {v1, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->tsu(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->jea:Z

    const-string v3, " TAG:"

    const-string v4, " curPower:"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccurateCounter getCurAccurateLevel sFullCharge:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/wm/OpPowerConsumpStats;->sfa:D

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " PowerLevel:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cda:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->Hc(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v5, 0x0

    cmpl-double v2, v0, v5

    if-lez v2, :cond_1

    double-to-int v2, v0

    iput v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fda:I

    :cond_1
    cmpg-double v2, v0, v5

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-string v9, "OPCS"

    if-lez v2, :cond_5

    sget-wide v10, Lcom/android/server/wm/OpPowerConsumpStats;->sfa:D

    cmpg-double v2, v10, v5

    if-lez v2, :cond_5

    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->Zea:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v0

    div-double/2addr v5, v10

    iget v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cda:I

    int-to-double v10, v2

    sub-double v10, v5, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v10, v12

    if-gtz v2, :cond_3

    cmpg-double v2, v10, v7

    if-gez v2, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccurateCounter getCurAccurateLevel not match the actual value, mPowerLevel:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cda:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " accuratelevel:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " sFullCharge:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/wm/OpPowerConsumpStats;->sfa:D

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-wide v5

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " fullCharge:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/wm/OpPowerConsumpStats;->sfa:D

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " powerLevel:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cda:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ida:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AccurateCounter getCurAccurateLevel error, err:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v7
.end method

.method private Cs()V
    .locals 1

    const-string v0, "clearLocalData"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ru:Landroid/util/AtomicFile;

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Landroid/util/AtomicFile;)V

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->nea:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pca:Landroid/util/AtomicFile;

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Landroid/util/AtomicFile;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ps()V

    :cond_0
    return-void
.end method

.method private Dc(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBatteryStatsRelated from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rca:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rca:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rca:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "handle_plug_event"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Cda:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Cda:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zda:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Gda:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Gda:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Dda:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Cda:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Cda:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->yc(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Gda:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Gda:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->zc(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bda:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bda:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBatteryStatsRelated Exception e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ks()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private Ds()V
    .locals 1

    const-string v0, "clearPowerConsumption"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_da:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aea:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zda:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Ada:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Bda:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Cda:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Dda:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Eda:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Fda:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Gda:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bda:Z

    return-void
.end method

.method private Ec(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;
    .locals 8

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->cs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zca:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCalculate begin, calculateTime_Begin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yca:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |calculateTime_End:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zca:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Vs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "handleCalculate mBaseTimer is null, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$qbh;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->nca:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->oca:J

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->oca:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->pca:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->duration:J

    iget-wide v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zca:J

    iget-wide v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yca:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->duration:J

    iget-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dda:Z

    iput-boolean v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->qca:Z

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->rca:I

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->jda:Lcom/android/server/wm/OpPowerConsumpStats$dma;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$dma;->sis(Lcom/android/server/wm/OpPowerConsumpStats$dma;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->rca:I

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->sca:D

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$zta;)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->sca:D

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->tca:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->lda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zca:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->tca:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->uca:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zca:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->uca:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->vca:I

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->nda:Lcom/android/server/wm/OpPowerConsumpStats$dma;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$dma;->sis(Lcom/android/server/wm/OpPowerConsumpStats$dma;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->vca:I

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->wca:D

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$zta;)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->wca:D

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->xca:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zca:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->xca:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->yca:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zca:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->yca:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->zca:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zca:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->zca:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Aca:I

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sda:Lcom/android/server/wm/OpPowerConsumpStats$dma;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$dma;->sis(Lcom/android/server/wm/OpPowerConsumpStats$dma;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Aca:I

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Bca:D

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$zta;)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Bca:D

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Cca:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->uda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zca:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Cca:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Dca:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zca:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Dca:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Eca:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zca:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Eca:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-object v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Fca:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Fca:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Fca:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gda:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->xda:Lcom/android/server/wm/OpPowerConsumpStats$igw;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats$igw;->sis(Lcom/android/server/wm/OpPowerConsumpStats$igw;)Lcom/android/server/wm/OpPowerConsumpStats$bio;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Fca:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-object v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Gca:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Gca:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Gca:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hda:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->yda:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats$cno;->cno(Lcom/android/server/wm/OpPowerConsumpStats$cno;)Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Gca:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-object v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Hca:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Hca:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Hca:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ida:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Js()V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Cda:Ljava/util/HashMap;

    iput-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Ica:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Gda:Ljava/util/HashMap;

    iput-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Jca:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Is()V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aea:Ljava/util/HashMap;

    iput-object p0, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Mca:Ljava/util/HashMap;

    const-string p0, "handleCalculate end"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/wm/OpPowerConsumpStats;->kea:Z

    if-eqz p0, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->dump(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleCalculate Exception e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPCS"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private Es()V
    .locals 1

    const-string v0, "clearSpecificCounter"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->jda:Lcom/android/server/wm/OpPowerConsumpStats$dma;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$dma;->you(Lcom/android/server/wm/OpPowerConsumpStats$dma;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->nda:Lcom/android/server/wm/OpPowerConsumpStats$dma;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$dma;->you(Lcom/android/server/wm/OpPowerConsumpStats$dma;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sda:Lcom/android/server/wm/OpPowerConsumpStats$dma;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$dma;->you(Lcom/android/server/wm/OpPowerConsumpStats$dma;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->sis(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->sis(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->sis(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V

    return-void
.end method

.method private Fc(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ada:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->xda:Lcom/android/server/wm/OpPowerConsumpStats$igw;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$igw;->zta(Lcom/android/server/wm/OpPowerConsumpStats$igw;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->xda:Lcom/android/server/wm/OpPowerConsumpStats$igw;

    invoke-static {v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$igw;->zta(Lcom/android/server/wm/OpPowerConsumpStats$igw;Ljava/lang/String;)Z

    :goto_0
    const-string p1, "doze"

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Bc(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Gc(Ljava/lang/String;)V

    return-void
.end method

.method private Fd()V
    .locals 1

    const-string p0, "OPCS"

    const-string v0, "# dump # VERSION # 19053001"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private Fs()V
    .locals 1

    const-string v0, "clearSpecificTimer"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->lda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->uda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)V

    return-void
.end method

.method private Gc(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private Gs()V
    .locals 5

    const-string v0, "OPCS"

    const-string v1, "# dump # dumpBaseEventList # begin #"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pda:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pda:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OpPowerConsumpStats$you;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mBaseEventList # i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |b:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "# dump # dumpBaseEventList # end #"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static Hc(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->mea:Z

    if-eqz v0, :cond_0

    const-string v0, "OPCS_SPECIFIC"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private Hs()V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x66

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rda:Lcom/android/server/wm/OpPowerConsumpStats$ibl;

    invoke-virtual {v1}, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->Fd()V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# dump # mScreenState # "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OPCS"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mPlugState # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mIdleState # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ada:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mPowerLevel # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cda:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # sENABLE # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/wm/OpPowerConsumpStats;->Yea:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # randomInterval # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/wm/OpPowerConsumpStats;->_ea:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # reportInstalledApp # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/wm/OpPowerConsumpStats;->Mfa:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # reportTimePoint # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/OpPowerConsumpStats;->afa:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # calculateIntervalThreshold # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/OpPowerConsumpStats;->bfa:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # bootDelayTime # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/OpPowerConsumpStats;->cfa:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    if-eqz v1, :cond_1

    iget-wide v4, v1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->oca:J

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->i(J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # timeLeft # "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " |format-minute:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    const-string v4, "dumpState()"

    invoke-virtual {v1, v4}, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->dump(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mDozeFragment # size:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gda:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gda:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, " # "

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# dump # mDozeFragment # i:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mChargeFragment # size:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hda:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hda:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# dump # mChargeFragment # i:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v4, v0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mErrList # size:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ida:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ida:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# dump # mErrList # i:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v2, v0

    goto :goto_2

    :cond_4
    return-void
.end method

.method private Is()V
    .locals 6

    const-string v0, "generateCapacityData"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_da:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uda:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget v5, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->mVersionCode:I

    invoke-direct {v4, p0, v3, v5}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;I)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v4}, Lcom/android/server/wm/OpPowerConsumpStats$gck;->zta(Lcom/android/server/wm/OpPowerConsumpStats$tsu;)V

    iget-boolean v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->mca:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->Fya:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats$gck;->zta(Lcom/android/server/wm/OpPowerConsumpStats$SettleType;)Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Cap] [CALCULATE] add this cache CapSummary: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->zta(Lcom/android/server/wm/OpPowerConsumpStats$tsu;Lcom/android/server/wm/OpPowerConsumpStats$rtg;)V

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aea:Ljava/util/HashMap;

    return-void
.end method

.method private Js()V
    .locals 1

    const-string v0, "generatePowerConsumptionData"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->Dc(Ljava/lang/String;)V

    return-void
.end method

.method private Ks()V
    .locals 1

    const-string v0, "handleException"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->vs()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ys()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Zs()V

    return-void
.end method

.method private Ls()V
    .locals 3

    const-string v0, "handlePastBatteryStatsRelated"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rca:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rca:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bda:Z

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->qs()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->rs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePastBatteryStatsRelated Exception e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ks()V

    :goto_0
    return-void
.end method

.method private Ms()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uda:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;

    const-string v1, " "

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->Nr:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->lca:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/OpPowerConsumpStats$gck;->Oe()V

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Cap][Start] oops, why topPkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->Nr:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->lca:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cap][Start] oops, why can\'t locate current topPkg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uda:Ljava/util/HashMap;

    const-string v0, "LockScreen"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->Nr:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->lca:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$gck;->Oe()V

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cap][Start] oops, why dummy Pkg: LockScreen "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->Nr:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->lca:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    const-string p0, "[Cap] oops, why can\'t locate dummy topPkg: LockScreen"

    :goto_2
    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private Ns()V
    .locals 1

    const-string v0, "frontPkg"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->Bc(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->Gc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Od()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->nea:Z

    return v0
.end method

.method private Os()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->yda:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$cno;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$cno;)Z

    const-string v0, "plug"

    const-string v1, "FASTCHARGE"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->cgv(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Pe()I
    .locals 1

    sget v0, Lcom/android/server/wm/OpPowerConsumpStats;->nfa:I

    return v0
.end method

.method private Ps()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Vs()Z

    move-result v0

    const-string v1, "[Cap] it\'s time to maunually trigger current top pkg: "

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yda:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->LOCKED:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zda:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;->Qfa:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Topping when ScreenON (before ready)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->NORMAL:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Ljava/lang/String;Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;)V

    goto :goto_1

    :cond_0
    const-string v0, "[Cap] Manually simulate Dummy Lock Screen Topping when screenON (before ready)"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->TOP:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ct()V

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->BG:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->sis(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->uda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->yda:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$cno;->you(Lcom/android/server/wm/OpPowerConsumpStats$cno;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yda:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->LOCKED:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    const-string v3, " Topping when ScreenON"

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zda:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;->Qfa:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    if-ne v0, v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_4
    const-string v0, "[Cap] Manually simulate Dummy Lock Screen Topping when screenON"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->TOP:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->NORMAL:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Ljava/lang/String;Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->uda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->yda:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$cno;->sis(Lcom/android/server/wm/OpPowerConsumpStats$cno;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ct()V

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->BG:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->sis(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V

    :goto_4
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->you(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->zta(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V

    goto :goto_5

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->zta(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->you(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V

    :cond_8
    :goto_5
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    goto :goto_6

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    :cond_a
    :goto_6
    const-string v0, "screen"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->Bc(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->Gc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Qe()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->jea:Z

    return v0
.end method

.method private Qs()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uda:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;

    const/4 v1, 0x1

    const-string v2, " "

    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->Nr:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->mca:Z

    if-eqz v3, :cond_0

    iput-boolean v1, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->lca:Z

    sget-object v3, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->UPDATE:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/OpPowerConsumpStats$gck;->zta(Lcom/android/server/wm/OpPowerConsumpStats$SettleType;)Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Cap][Stop] oops, why topPkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->Nr:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->mca:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Cap][Stop] oops, why can\'t locate current topPkg: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uda:Ljava/util/HashMap;

    const-string v0, "LockScreen"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->Nr:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->mca:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->lca:Z

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->UPDATE:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats$gck;->zta(Lcom/android/server/wm/OpPowerConsumpStats$SettleType;)Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap][Start] oops, why dummy Pkg: LockScreen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->Nr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->lca:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    const-string p0, "[Cap] oops, why can\'t locate dummy topPkg: LockScreen"

    :goto_2
    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private Rs()V
    .locals 3

    const-string v0, "initCapConsumption"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-object v0, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Mca:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_da:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCapConsumption, mCapConsumptionList\'size= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_da:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_da:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCapConsumption "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private Ss()V
    .locals 2

    const-string v0, "initConsumption"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zda:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-object v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Ica:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Dda:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Jca:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private Ts()V
    .locals 7

    const-string v0, "initScreenOnTimer io close exception :"

    const-string v1, "OPCS"

    const-string v2, "initScreenOnTimer"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/vendor/persist/engineermode/screenontimebyhours"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v0, "file not exists : /mnt/vendor/persist/engineermode/screenontimebyhours"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v3, v5

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v3, v5

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v3, v5

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception v2

    :goto_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initScreenOnTimer NumberFormatException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_5
    move-exception v2

    :goto_2
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initScreenOnTimer io exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_3

    :catch_6
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    :goto_3
    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$ibl;

    const-string v1, "ScreenON"

    invoke-direct {v0, p0, v1, v4}, Lcom/android/server/wm/OpPowerConsumpStats$ibl;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rda:Lcom/android/server/wm/OpPowerConsumpStats$ibl;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rda:Lcom/android/server/wm/OpPowerConsumpStats$ibl;

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->start()V

    return-void

    :goto_4
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_5

    :catch_7
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    throw p0
.end method

.method private Us()V
    .locals 8

    const-string v0, "initStatistics"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Xs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "initStatistics Not load correctly"

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Cs()V

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    :cond_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->oca:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats;->i(J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-object v4, v4, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->nca:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "initStatistics version change"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Cs()V

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dda:Z

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const-wide/32 v4, 0x5265c00

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v2, v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_3

    const-string v0, "initStatistics load correctly, continue to statistic"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-boolean v0, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->qca:Z

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dda:Z

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ss()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Rs()V

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->nea:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ws()V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-gez v0, :cond_4

    const-string v0, "initStatistics load correctly, report and start new statistics"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-boolean v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->qca:Z

    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dda:Z

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->sis(Lcom/android/server/wm/OpPowerConsumpStats$qbh;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->bt()V

    goto :goto_0

    :cond_4
    const-string v0, "initStatistics clear data and start new statistics"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Cs()V

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Zs()V

    return-void
.end method

.method private Vs()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Xca:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Qca:Lcom/android/server/wm/OpPowerConsumpStats$sis;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Ws()V
    .locals 10

    const-string v0, "loadBaseEventFromDisk"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pca:Landroid/util/AtomicFile;

    const-string v1, "OPCS"

    if-nez v0, :cond_0

    const-string p0, "loadBaseEventFromDisk mBaseData is null, return"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pca:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    if-eqz v5, :cond_7

    const/4 v7, 0x2

    if-eq v5, v7, :cond_1

    const/4 v6, 0x3

    goto/16 :goto_2

    :cond_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "BaseEvent"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Lcom/android/server/wm/OpPowerConsumpStats$you;

    invoke-direct {v5, p0}, Lcom/android/server/wm/OpPowerConsumpStats$you;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    const-string v7, "totalSeq"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->Hba:I

    iget v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->Hba:I

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Ida:I

    iget v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Ida:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Ida:I

    const-string v7, "eventType"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->eventType:Ljava/lang/String;

    const-string v7, "typeSeq"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->Iba:I

    const-string v7, "powerLevel"

    iget-object v8, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->eventType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "frontPkg"

    if-eqz v7, :cond_2

    :try_start_2
    iget v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->Iba:I

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Jda:I

    iget v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Jda:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Jda:I

    goto :goto_1

    :cond_2
    const-string v7, "screen"

    iget-object v9, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->eventType:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->Iba:I

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Kda:I

    iget v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Kda:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Kda:I

    goto :goto_1

    :cond_3
    const-string v7, "plug"

    iget-object v9, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->eventType:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->Iba:I

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Lda:I

    iget v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Lda:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Lda:I

    goto :goto_1

    :cond_4
    const-string v7, "doze"

    iget-object v9, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->eventType:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->Iba:I

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Mda:I

    iget v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Mda:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Mda:I

    goto :goto_1

    :cond_5
    iget-object v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->eventType:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->Iba:I

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Nda:I

    iget v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Nda:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Nda:I

    :cond_6
    :goto_1
    const-string v6, "relativeTime"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->Jba:J

    const-string v6, "realTime"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->Kba:J

    const-string v6, "screenState"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->screenState:Z

    const-string v6, "plugState"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->Lba:Z

    const-string v6, "idleState"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->Mba:Z

    const-string v6, "powerlevelState"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->Nba:I

    invoke-interface {v2, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->Oba:Ljava/lang/String;

    const-string v6, "description"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->description:Ljava/lang/String;

    iget v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->Hba:I

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto/16 :goto_0

    :cond_8
    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pda:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Gs()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v3, v4

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v4, v3

    goto :goto_4

    :catch_1
    move-exception p0

    :goto_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBaseEventFromDisk Exception e:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_4
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method private Xs()Z
    .locals 26

    move-object/from16 v1, p0

    const-string v2, "pkgName"

    const-string v3, "loadFromDisk"

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats;->ru:Landroid/util/AtomicFile;

    const-string v4, "OPCS"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const-string v1, "loadFromDisk mStatisticalData is null, return"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    new-instance v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    invoke-direct {v3, v1}, Lcom/android/server/wm/OpPowerConsumpStats$qbh;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    const/4 v7, 0x0

    :try_start_0
    iget-object v8, v1, Lcom/android/server/wm/OpPowerConsumpStats;->ru:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    move v10, v5

    :goto_0
    const/4 v11, 0x1

    if-eq v9, v11, :cond_20

    if-eqz v9, :cond_1

    const/4 v11, 0x2

    if-eq v9, v11, :cond_2

    const/4 v11, 0x3

    :cond_1
    move-object v5, v6

    move-object/from16 v16, v8

    goto/16 :goto_b

    :cond_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v13, "duration"

    if-eqz v12, :cond_3

    :try_start_2
    const-string v12, "os_version"

    invoke-interface {v6, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->nca:Ljava/lang/String;

    const-string v12, "realStartTime"

    invoke-interface {v6, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->oca:J

    const-string v12, "realEndTime"

    invoke-interface {v6, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->pca:J

    invoke-interface {v6, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->duration:J

    const-string v12, "firstReport"

    invoke-interface {v6, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->qca:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v8

    goto/16 :goto_11

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v7, v8

    goto/16 :goto_10

    :cond_3
    :goto_1
    :try_start_3
    const-string v12, "oldTotalDischarge"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v14, "count"

    if-eqz v12, :cond_4

    :try_start_4
    invoke-interface {v6, v7, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->rca:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v10, v10, 0x1

    :cond_4
    :try_start_5
    const-string v12, "totalDischarge"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v12, :cond_5

    :try_start_6
    invoke-interface {v6, v7, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v6

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->sca:D
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v16, v6

    :goto_2
    :try_start_7
    const-string v5, "totalDischargeDuration"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v5, v16

    invoke-interface {v5, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v16, v8

    :try_start_8
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->tca:J

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v5, v16

    move-object/from16 v16, v8

    :goto_3
    const-string v6, "totalChargeDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->uca:J

    add-int/lit8 v10, v10, 0x1

    :cond_7
    const-string v6, "oldScreenOnDischarge"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    invoke-interface {v5, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->vca:I

    add-int/lit8 v10, v10, 0x1

    :cond_8
    const-string v6, "screenOnDischarge"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    invoke-interface {v5, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->wca:D

    add-int/lit8 v10, v10, 0x1

    :cond_9
    const-string v6, "totalScreenOnDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->xca:J

    add-int/lit8 v10, v10, 0x1

    :cond_a
    const-string v6, "screenOnDischargeDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->yca:J

    add-int/lit8 v10, v10, 0x1

    :cond_b
    const-string v6, "screenOnChargeDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->zca:J

    add-int/lit8 v10, v10, 0x1

    :cond_c
    const-string v6, "oldScreenOffDischarge"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    invoke-interface {v5, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Aca:I

    add-int/lit8 v10, v10, 0x1

    :cond_d
    const-string v6, "screenOffDischarge"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    invoke-interface {v5, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Bca:D

    add-int/lit8 v10, v10, 0x1

    :cond_e
    const-string v6, "totalScreenOffDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Cca:J

    add-int/lit8 v10, v10, 0x1

    :cond_f
    const-string v6, "screenOffDischargeDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Dca:J

    add-int/lit8 v10, v10, 0x1

    :cond_10
    const-string v6, "screenOffChargeDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Eca:J

    add-int/lit8 v10, v10, 0x1

    :cond_11
    const-string v6, "capacity"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "charge_full"

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Cap] [capacity] charge_full: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    :cond_12
    const-string v6, "dozeFragment"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const-string v7, "endPowerLevel"

    const-string v8, "beginPowerLevel"

    const-string v12, "realBeginTime"

    const-string v15, "relativeEndTime"

    move/from16 v18, v9

    const-string v9, "relativeBeginTime"

    if-eqz v6, :cond_13

    :try_start_9
    new-instance v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    invoke-direct {v6, v1}, Lcom/android/server/wm/OpPowerConsumpStats$bio;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    move/from16 v19, v10

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v20, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->Xba:J

    const/4 v10, 0x0

    invoke-interface {v5, v10, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->Yba:J

    const/4 v10, 0x0

    invoke-interface {v5, v10, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->duration:J

    const/4 v10, 0x0

    invoke-interface {v5, v10, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->Zba:J

    const/4 v10, 0x0

    invoke-interface {v5, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->_ba:I

    invoke-interface {v5, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->aca:I

    const-string v11, "exitReason"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->gca:Ljava/lang/String;

    iget-object v11, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Fca:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_13
    move/from16 v19, v10

    move-object/from16 v20, v11

    :goto_4
    const-string v6, "chargeFragment"

    move-object/from16 v11, v20

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    new-instance v6, Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    invoke-direct {v6, v1}, Lcom/android/server/wm/OpPowerConsumpStats$ssp;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v20, v11

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Xba:J

    const/4 v9, 0x0

    invoke-interface {v5, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Yba:J

    invoke-interface {v5, v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->duration:J

    invoke-interface {v5, v9, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Zba:J

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->_ba:I

    invoke-interface {v5, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->aca:I

    const-string v7, "screenOnDuration"

    invoke-interface {v5, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->bca:J

    const-string v7, "firstFullTimeToRelativeBeginTime"

    invoke-interface {v5, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->cca:J

    const-string v7, "plugType"

    invoke-interface {v5, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->dca:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Gca:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_14
    move-object/from16 v20, v11

    :goto_5
    const-string v6, "errlist"

    move-object/from16 v7, v20

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const-string v6, "des"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Hca:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    const-string v6, "kernelWakeLocks"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const-string v8, "name"

    const-wide/16 v9, 0x0

    const-string v11, "time"

    if-eqz v6, :cond_17

    :try_start_a
    new-instance v6, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-direct {v6}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;-><init>()V

    const/4 v12, 0x0

    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    cmp-long v13, v20, v9

    if-nez v13, :cond_16

    move-object v6, v12

    goto :goto_6

    :cond_16
    invoke-interface {v5, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mName:Ljava/lang/String;

    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mTime:J

    invoke-interface {v5, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mCount:I

    iget-object v9, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Ica:Ljava/util/HashMap;

    iget-object v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const-string v6, "kernelWakeupReasons"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    new-instance v6, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-direct {v6}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;-><init>()V

    const/4 v9, 0x0

    invoke-interface {v5, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v20, 0x0

    cmp-long v10, v12, v20

    if-nez v10, :cond_18

    move-object v6, v9

    goto :goto_6

    :cond_18
    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mName:Ljava/lang/String;

    invoke-interface {v5, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mTime:J

    invoke-interface {v5, v9, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mCount:I

    iget-object v8, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Jca:Ljava/util/HashMap;

    iget-object v9, v6, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const-string v6, "capConsumption"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    const/4 v6, 0x0

    invoke-interface {v5, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1a

    :goto_6
    move-object v7, v6

    move-object/from16 v8, v16

    move/from16 v9, v18

    move/from16 v10, v19

    move-object v6, v5

    goto/16 :goto_c

    :cond_1a
    invoke-interface {v5, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "versionCode"

    invoke-interface {v5, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    new-instance v9, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    invoke-direct {v9, v1, v8, v6}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;I)V

    const/4 v6, 0x0

    :goto_7
    sget-object v10, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->LBa:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-gt v6, v10, :cond_1e

    const/4 v10, 0x0

    :goto_8
    const/4 v11, 0x5

    if-ge v10, v11, :cond_1d

    sget-object v11, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->WIFI:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-ne v6, v11, :cond_1b

    const-string v11, "W_"

    goto :goto_9

    :cond_1b
    sget-object v11, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->CELLULAR:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-ne v6, v11, :cond_1c

    const-string v11, "M_"

    goto :goto_9

    :cond_1c
    const-string v11, "N_"

    :goto_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "R"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v12, 0x0

    invoke-interface {v5, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "C"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    invoke-static {v6}, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->fromValue(I)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    move-result-object v22

    move-object/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual/range {v20 .. v25}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->zta(ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;JI)V

    iget-object v11, v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Mca:Ljava/util/HashMap;

    invoke-virtual {v11, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_1d
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_1e
    const-string v6, "capStatistics"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const-string v6, "drop"

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v8, "run"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Cap] [capStatistics]: ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v8, v9}, Lcom/android/server/wm/OpPowerConsumpStats;->ywr(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")]"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    goto :goto_a

    :cond_1f
    const/4 v7, 0x0

    :goto_a
    move/from16 v10, v19

    :goto_b
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move-object v6, v5

    move-object/from16 v8, v16

    :goto_c
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_20
    move-object/from16 v16, v8

    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->lea:Z

    if-nez v2, :cond_21

    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->kea:Z

    if-eqz v2, :cond_22

    :cond_21
    const-string v2, "loadFromDisk()"

    invoke-virtual {v3, v2}, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->dump(Ljava/lang/String;)V

    :cond_22
    iput-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/16 v1, 0xf

    if-ne v10, v1, :cond_23

    return v11

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromDisk incomplete data, return false count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    const/4 v1, 0x0

    return v1

    :catchall_1
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_f

    :catchall_2
    move-exception v0

    move-object/from16 v16, v8

    :goto_e
    move-object v1, v0

    goto :goto_11

    :catch_2
    move-exception v0

    move-object/from16 v16, v8

    :goto_f
    move-object v1, v0

    move-object/from16 v7, v16

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v7

    goto :goto_11

    :catch_3
    move-exception v0

    move-object v1, v0

    :goto_10
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromDisk Exception e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_d

    :goto_11
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private Ys()V
    .locals 10

    const-string v0, "BaseEvent"

    const-string v1, "persistBaseDataToDisk"

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pca:Landroid/util/AtomicFile;

    const-string v2, "OPCS"

    if-nez v1, :cond_0

    const-string p0, "persistBaseDataToDisk mBaseData is null, return"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pca:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v5, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pda:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pda:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/OpPowerConsumpStats$you;

    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "totalSeq"

    iget v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->Hba:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "typeSeq"

    iget v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->Iba:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "eventType"

    iget-object v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->eventType:Ljava/lang/String;

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "relativeTime"

    iget-wide v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->Jba:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "realTime"

    iget-wide v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->Kba:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "screenState"

    iget-boolean v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->screenState:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "plugState"

    iget-boolean v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->Lba:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "idleState"

    iget-boolean v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->Mba:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "powerlevelState"

    iget v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->Nba:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "frontPkg"

    iget-object v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->Oba:Ljava/lang/String;

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "description"

    iget-object v6, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->description:Ljava/lang/String;

    invoke-interface {v1, v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pca:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v3

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persistBaseDataToDisk Exception e:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v4, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pca:Landroid/util/AtomicFile;

    invoke-virtual {p0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private Zs()V
    .locals 4

    const-string v0, "resetListener"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->sInstance:Lcom/android/server/wm/OpPowerConsumpStats;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Wca:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;->resetParamForOPCS()Z

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method private _s()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const v1, 0x20402000

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageManagerService;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->Yea:Z

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    const-string v0, "acquireWakeLock"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPowerManager:Landroid/os/PowerManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const-string v2, "OPCS"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_2
    return-void
.end method

.method private at()V
    .locals 1

    const-string v0, "toTrackImmediately"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->sis(Lcom/android/server/wm/OpPowerConsumpStats$qbh;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->bt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dda:Z

    return-void
.end method

.method static synthetic b(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->us:Z

    return p0
.end method

.method static synthetic bio(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Gs()V

    return-void
.end method

.method private bt()V
    .locals 8

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->Mfa:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "trackInstalledAppData"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->_s()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackInstalledAppData Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "appid"

    const-string v4, "7554P2RV0X"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    :try_start_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "packageName"

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "app_list"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v3, v2, v1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_4
    :goto_3
    return-void
.end method

.method static synthetic bud(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    return-object p0
.end method

.method static synthetic bvj(Lcom/android/server/wm/OpPowerConsumpStats;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->cs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Wda:Z

    return p0
.end method

.method private declared-synchronized cgv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeBaseRecordPoint eventType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->nea:Z

    if-nez v1, :cond_0

    const-string v0, "makeBaseRecordPoint sDEBUGVERIFY is false, return"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/OpPowerConsumpStats;->cs()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget v3, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Ida:I

    const/4 v1, 0x0

    const-string v2, "powerLevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Jda:I

    iget v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Jda:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Jda:I

    :cond_1
    :goto_0
    move v4, v1

    goto :goto_1

    :cond_2
    const-string v2, "screen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Kda:I

    iget v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Kda:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Kda:I

    goto :goto_0

    :cond_3
    const-string v2, "plug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Lda:I

    iget v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Lda:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Lda:I

    goto :goto_0

    :cond_4
    const-string v2, "doze"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Mda:I

    iget v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Mda:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Mda:I

    goto :goto_0

    :cond_5
    const-string v2, "frontPkg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Nda:I

    iget v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Nda:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Nda:I

    goto :goto_0

    :goto_1
    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Ida:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->Ida:I

    new-instance v14, Lcom/android/server/wm/OpPowerConsumpStats$you;

    iget-boolean v10, v15, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    iget-boolean v11, v15, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    iget-boolean v12, v15, Lcom/android/server/wm/OpPowerConsumpStats;->ada:Z

    iget v13, v15, Lcom/android/server/wm/OpPowerConsumpStats;->cda:I

    iget-object v5, v15, Lcom/android/server/wm/OpPowerConsumpStats;->_F:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v16, v5

    move-object/from16 v5, p1

    move-object v0, v14

    move-object/from16 v14, v16

    move-object/from16 v15, p2

    :try_start_2
    invoke-direct/range {v1 .. v15}, Lcom/android/server/wm/OpPowerConsumpStats$you;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;IILjava/lang/String;JJZZZILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    :try_start_3
    invoke-direct {v1, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats$you;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v15

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method static synthetic cgv(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ada:Z

    return p0
.end method

.method static synthetic cjf(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic cno(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Hs()V

    return-void
.end method

.method static synthetic cno(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Fc(Ljava/lang/String;)V

    return-void
.end method

.method private cs()J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Vs()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Qca:Lcom/android/server/wm/OpPowerConsumpStats$sis;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$sis;->zta(Lcom/android/server/wm/OpPowerConsumpStats$sis;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private ct()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Wda:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] LockScreenDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Wda:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " UserId "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yda:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    return-object p0
.end method

.method static synthetic dma(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Us()V

    return-void
.end method

.method static synthetic e(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Xca:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic ear(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_F:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic fto(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ps()V

    return-void
.end method

.method static synthetic gck(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_0

    const-string v0, "OPCS"

    const-string v1, "BatteryManagerInternal not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object p0
.end method

.method public static getInstance()Lcom/android/server/wm/OpPowerConsumpStats;
    .locals 1

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->sInstance:Lcom/android/server/wm/OpPowerConsumpStats;

    return-object v0
.end method

.method private getOsVersion()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.build.version.ota"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "Hydrogen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Hydrogen "

    goto :goto_0

    :cond_0
    const-string v0, "Oxygen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Oxygen "

    goto :goto_0

    :cond_1
    const-string p0, ""

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPlugType()I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getVersionCode(Ljava/lang/String;)I
    .locals 3

    const-string v0, "OPCS"

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    move v1, p0

    goto :goto_0

    :cond_0
    const-string p0, "oops, pkgInfo is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get NameNotFoundException error:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic gwm(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    return p0
.end method

.method static synthetic hmo(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Os()V

    return-void
.end method

.method private i(J)J
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculateReportTime tRealStartTime:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    sget-wide v0, Lcom/android/server/wm/OpPowerConsumpStats;->afa:J

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v2, v0

    add-long/2addr p1, v2

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-wide v0, Lcom/android/server/wm/OpPowerConsumpStats;->afa:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr p0, v0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "calculateReportTime Exception e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPCS"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method static synthetic ibl(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    return p0
.end method

.method static synthetic igw(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Is()V

    return-void
.end method

.method private initOnlineConfig()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/OpPowerConsumpStats$kth;

    invoke-direct {v3, p0}, Lcom/android/server/wm/OpPowerConsumpStats$kth;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    const-string v4, "OPCS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Oca:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Oca:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-wide v1, Lcom/android/server/wm/OpPowerConsumpStats;->cfa:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic ire(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ns()V

    return-void
.end method

.method static synthetic irq(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Zs()V

    return-void
.end method

.method static synthetic ivd(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uda:Ljava/util/HashMap;

    return-object p0
.end method

.method private jc(I)Lcom/android/server/wm/OpPowerConsumpStats$you;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Qda:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pda:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$you;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private kc(I)Ljava/lang/String;
    .locals 1

    const-string p0, "NONE"

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "WIRELESS"

    goto :goto_0

    :cond_1
    const-string p0, "USB"

    goto :goto_0

    :cond_2
    const-string p0, "AC"

    :cond_3
    :goto_0
    return-object p0
.end method

.method static synthetic kth(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->getVersionCode(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic kth(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Js()V

    return-void
.end method

.method private lc(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, "unknown"

    goto :goto_0

    :pswitch_0
    const-string p0, "default"

    goto :goto_0

    :pswitch_1
    const-string p0, "wifi"

    goto :goto_0

    :pswitch_2
    const-string p0, "user"

    goto :goto_0

    :pswitch_3
    const-string p0, "unaccounted"

    goto :goto_0

    :pswitch_4
    const-string p0, "screen"

    goto :goto_0

    :pswitch_5
    const-string p0, "phone"

    goto :goto_0

    :pswitch_6
    const-string p0, "overcounted"

    goto :goto_0

    :pswitch_7
    const-string p0, "memory"

    goto :goto_0

    :pswitch_8
    const-string p0, "idle"

    goto :goto_0

    :pswitch_9
    const-string p0, "flashlight"

    goto :goto_0

    :pswitch_a
    const-string p0, "cell"

    goto :goto_0

    :pswitch_b
    const-string p0, "camera"

    goto :goto_0

    :pswitch_c
    const-string p0, "bluetooth"

    goto :goto_0

    :pswitch_d
    const-string p0, "app"

    goto :goto_0

    :pswitch_e
    const-string p0, "ambient_display"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x63
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic les(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->at()V

    return-void
.end method

.method static synthetic lqr(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ss()V

    return-void
.end method

.method private lr()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/fto;

    invoke-direct {v0, p0}, Lcom/android/server/wm/fto;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mFrontPackageListener:Lcom/android/server/OnePlusUtil$zta$you;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mFrontPackageListener:Lcom/android/server/OnePlusUtil$zta$you;

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    return-void
.end method

.method static synthetic ma(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Hc(Ljava/lang/String;)V

    return-void
.end method

.method private mc(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->lda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->zta(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->yda:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$cno;->zta(Lcom/android/server/wm/OpPowerConsumpStats$cno;)Z

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ms()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->lda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->you(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->yda:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    invoke-static {v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$cno;->zta(Lcom/android/server/wm/OpPowerConsumpStats$cno;I)Z

    const-string v0, "handle_plug_event"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->Dc(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Qs()V

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->zta(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->you(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->zta(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->you(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V

    :cond_4
    :goto_2
    const-string v0, "plug"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->Bc(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->kc(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->cgv(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static myLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->kea:Z

    if-eqz v0, :cond_0

    const-string v0, "OPCS"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private nc(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yca:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->yda:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    invoke-static {v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$cno;->zta(Lcom/android/server/wm/OpPowerConsumpStats$cno;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->lda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yca:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->zta(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ls()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ms()V

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->uda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    :goto_1
    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yca:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)Z

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yca:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->zta(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yca:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)Z

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yca:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->zta(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wda:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yca:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)Z

    :cond_5
    const-string v0, "plug"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->Bc(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->kc(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->cgv(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic obl(Lcom/android/server/wm/OpPowerConsumpStats;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eda:D

    return-wide v0
.end method

.method static synthetic oif(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic oxb(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Vs()Z

    move-result p0

    return p0
.end method

.method private ps()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Qda:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pda:Landroid/util/SparseArray;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic qbh(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->getOsVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic qeg(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    return-object p0
.end method

.method private qs()V
    .locals 10

    const-string v0, "calculatePastKernelWakeLocks"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rca:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v5, 0x2

    invoke-static {v4, v1, v2, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v8, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    invoke-direct {v8, v3, v6, v7, v4}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;-><init>(Ljava/lang/String;JI)V

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Bda:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculatePastKernelWakeLocks # wakeLock_new = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    const-string v0, "releaseWakeLock"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reportInstalledApp"

    const-string v3, "enable"

    const-string v4, "[OnlineConfig] resolveConfigFromJSON topKernelWakeupReasons:"

    const-string v5, "[OnlineConfig] resolveConfigFromJSON topKernelWakeLocks:"

    const-string v6, "[OnlineConfig] resolveConfigFromJSON topSize:"

    const-string v7, "[OnlineConfig] resolveConfigFromJSON randomInterval:"

    const-string v8, "[OnlineConfig] resolveConfigFromJSON bootDelayTime:"

    const-string v9, "[OnlineConfig] resolveConfigFromJSON calculateIntervalThreshold:"

    const-string v10, "[OnlineConfig] resolveConfigFromJSON reportTimePoint:"

    const-string v11, "[OnlineConfig] resolveConfigFromJSON reportInstalledApp:"

    const-string v12, "[OnlineConfig] resolveConfigFromJSON sENABLE:"

    const-string v13, "OPCS"

    if-nez v1, :cond_0

    const-string v0, "resolveConfigFromJSON jsonArray is null, return"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v15, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v15, v14, :cond_e

    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v1, "value"

    move-object/from16 v17, v4

    const-string v4, "name"

    if-eqz v16, :cond_3

    move-object/from16 v16, v5

    :try_start_1
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move-object/from16 v18, v3

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v5

    sget-boolean v3, Lcom/android/server/wm/OpPowerConsumpStats;->Yea:Z

    if-eq v5, v3, :cond_4

    sput-boolean v5, Lcom/android/server/wm/OpPowerConsumpStats;->Yea:Z

    sget-boolean v3, Lcom/android/server/wm/OpPowerConsumpStats;->Yea:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/wm/OpPowerConsumpStats;->iea:Lcom/android/server/wm/OpPowerConsumpStats;

    sput-object v3, Lcom/android/server/wm/OpPowerConsumpStats;->sInstance:Lcom/android/server/wm/OpPowerConsumpStats;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/wm/OpPowerConsumpStats;->sInstance:Lcom/android/server/wm/OpPowerConsumpStats;

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ks()V

    goto :goto_2

    :cond_2
    move-object/from16 v18, v3

    goto :goto_2

    :cond_3
    move-object/from16 v18, v3

    move-object/from16 v16, v5

    :cond_4
    :goto_2
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/wm/OpPowerConsumpStats;->Mfa:Z

    :cond_5
    const-string v3, "reportIntervalThreshold"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "reportIntervalThreshold"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v19

    sput-wide v19, Lcom/android/server/wm/OpPowerConsumpStats;->afa:J

    sget-boolean v3, Lcom/android/server/wm/OpPowerConsumpStats;->Yea:Z

    if-eqz v3, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ts()V

    :cond_6
    const-string v3, "calculateIntervalThreshold"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "calculateIntervalThreshold"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v19

    sput-wide v19, Lcom/android/server/wm/OpPowerConsumpStats;->bfa:J

    iget-object v3, v0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, v0, Lcom/android/server/wm/OpPowerConsumpStats;->cea:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v3, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    sget-boolean v3, Lcom/android/server/wm/OpPowerConsumpStats;->Yea:Z

    if-eqz v3, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ss()V

    :cond_7
    const-string v3, "bootDelayTime"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "bootDelayTime"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v19

    sput-wide v19, Lcom/android/server/wm/OpPowerConsumpStats;->cfa:J

    :cond_8
    const-string v3, "randomInterval"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "randomInterval"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    sput v3, Lcom/android/server/wm/OpPowerConsumpStats;->_ea:I

    :cond_9
    const-string v3, "topSize"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "topSize"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    sput v3, Lcom/android/server/wm/OpPowerConsumpStats;->dfa:I

    :cond_a
    const-string v3, "topKernelWakeLocks"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "topKernelWakeLocks"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    sput v3, Lcom/android/server/wm/OpPowerConsumpStats;->efa:I

    :cond_b
    const-string v3, "topKernelWakeupReasons"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "topKernelWakeupReasons"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    sput v1, Lcom/android/server/wm/OpPowerConsumpStats;->ffa:I

    goto :goto_3

    :cond_c
    const/4 v3, 0x0

    :goto_3
    const-string v1, "Capacity_Report"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "Capacity_Report"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/OpPowerConsumpStats;->Sda:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] Capacity_Report: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/wm/OpPowerConsumpStats;->Sda:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto/16 :goto_6

    :cond_e
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->Yea:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->Mfa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/OpPowerConsumpStats;->afa:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/OpPowerConsumpStats;->bfa:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/OpPowerConsumpStats;->cfa:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->_ea:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->dfa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->efa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v17

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->ffa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v4

    move-object v1, v5

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object v2, v4

    move-object v1, v5

    :goto_5
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/wm/OpPowerConsumpStats;->Yea:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/wm/OpPowerConsumpStats;->Mfa:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/wm/OpPowerConsumpStats;->afa:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/wm/OpPowerConsumpStats;->bfa:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/wm/OpPowerConsumpStats;->cfa:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/wm/OpPowerConsumpStats;->_ea:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/wm/OpPowerConsumpStats;->dfa:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->efa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object v2, v4

    move-object v1, v5

    :goto_6
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] JSONException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/wm/OpPowerConsumpStats;->Yea:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/wm/OpPowerConsumpStats;->Mfa:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/wm/OpPowerConsumpStats;->afa:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/wm/OpPowerConsumpStats;->bfa:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/wm/OpPowerConsumpStats;->cfa:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/wm/OpPowerConsumpStats;->_ea:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/wm/OpPowerConsumpStats;->dfa:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->efa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4

    :goto_7
    return-void

    :catchall_2
    move-exception v0

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/wm/OpPowerConsumpStats;->Yea:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/wm/OpPowerConsumpStats;->Mfa:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/OpPowerConsumpStats;->afa:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/OpPowerConsumpStats;->bfa:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/OpPowerConsumpStats;->cfa:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/wm/OpPowerConsumpStats;->_ea:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/wm/OpPowerConsumpStats;->dfa:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->efa:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/wm/OpPowerConsumpStats;->ffa:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private rs()V
    .locals 10

    const-string v0, "calculatePastKernelWakeupReasons"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rca:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v5, 0x2

    invoke-static {v4, v1, v2, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v8, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    invoke-direct {v8, v3, v6, v7, v4}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;-><init>(Ljava/lang/String;JI)V

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Fda:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculatePastKernelWakeupReasons # reason_new = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic rtg(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)D
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Cc(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic rtg(Lcom/android/server/wm/OpPowerConsumpStats;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->tb(Z)V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sda:Z

    return p0
.end method

.method private sb(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->jda:Lcom/android/server/wm/OpPowerConsumpStats$dma;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$dma;->zta(Lcom/android/server/wm/OpPowerConsumpStats$dma;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->nda:Lcom/android/server/wm/OpPowerConsumpStats$dma;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$dma;->zta(Lcom/android/server/wm/OpPowerConsumpStats$dma;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sda:Lcom/android/server/wm/OpPowerConsumpStats$dma;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$dma;->zta(Lcom/android/server/wm/OpPowerConsumpStats$dma;)V

    :cond_2
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cda:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->yda:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$cno;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$cno;)Z

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePowerLevelEvent isDown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Cc(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_4

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eda:D

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eda:D

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->zta(Lcom/android/server/wm/OpPowerConsumpStats$zta;D)V

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eda:D

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->zta(Lcom/android/server/wm/OpPowerConsumpStats$zta;D)V

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kda:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eda:D

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->zta(Lcom/android/server/wm/OpPowerConsumpStats$zta;D)V

    :cond_4
    const-string p1, "powerLevel"

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Bc(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Gc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private sis(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] updateDummyLockScreenState to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->TOP:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    const-string v1, "LockScreen"

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Wda:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->OBa:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->PBa:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Ljava/lang/String;Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;)V

    :cond_1
    return-void
.end method

.method private sis(Lcom/android/server/wm/OpPowerConsumpStats$qbh;)V
    .locals 3

    const-string v0, "trackPowerData"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->us:Z

    if-eqz v0, :cond_0

    const-string p0, "Under testing procedure mode, skip any MDM data reporting."

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "trackPowerData data is null, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    const-string v2, "NYNCG4I0TI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats$qbh;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "OPCS"

    invoke-virtual {v1, v2, p1, p0, v0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->mc(I)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Dc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ada:Z

    return p1
.end method

.method private ss()V
    .locals 11

    const-string v0, "calibrateCalculateAlarm"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cea:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    sget-wide v0, Lcom/android/server/wm/OpPowerConsumpStats;->bfa:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/wm/OpPowerConsumpStats;->bfa:J

    add-long v6, v0, v2

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x3

    iget-object v9, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cea:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    const-string v8, "OPCS_CalculateAlarm"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method static synthetic ssp(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_F:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic ssp(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Fd()V

    return-void
.end method

.method private tb(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleReport immediately:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->vs()V

    const-string v0, "handleReport"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ec(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    if-nez v0, :cond_0

    const-string p0, "handleReport mReportData is null, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats$qbh;)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->at()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->us()V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ys()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Zs()V

    return-void
.end method

.method private ts()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->oca:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->i(J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calibrateReportAlarm timeLeft:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " |nextReportAlarmTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ks()V

    :goto_0
    return-void
.end method

.method static synthetic tsu(Lcom/android/server/wm/OpPowerConsumpStats;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fda:I

    return p0
.end method

.method static tsu(Ljava/lang/String;I)I
    .locals 5

    const-string v0, "OPCS"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v3, v2

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v1, p1

    :goto_2
    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->jea:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccurateCounter readIntFromFile path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", result:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", defaultValue:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :catchall_1
    move-exception p0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    throw p0
.end method

.method static synthetic tsu(Lcom/android/server/wm/OpPowerConsumpStats;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->kc(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->yc(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/wm/OpPowerConsumpStats;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->sb(Z)V

    return-void
.end method

.method static synthetic ugm(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method private us()V
    .locals 12

    const-string v0, "calibrateTrackAlarm"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget v3, Lcom/android/server/wm/OpPowerConsumpStats;->_ea:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v3, v0

    add-long v7, v1, v3

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v10, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dea:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v11, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    const/4 v6, 0x2

    const-string v9, "OPCS_TrackAlarm"

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic vdb(Lcom/android/server/wm/OpPowerConsumpStats;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cda:I

    return p0
.end method

.method private vdb(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic vdw(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mNetworkType:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    return-object p0
.end method

.method static synthetic veq(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ts()V

    return-void
.end method

.method static synthetic vju(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$ibl;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rda:Lcom/android/server/wm/OpPowerConsumpStats$ibl;

    return-object p0
.end method

.method private vs()V
    .locals 2

    const-string v0, "cancelAlarm"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cea:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private ws()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Wca:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    const-string v1, "OPCS"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;->getPlugState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    if-eq v3, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkState mPlugState is error, correct to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " |plugType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->mc(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eq v2, v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkState mScreenState is error, correct to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ps()V

    :cond_2
    return-void
.end method

.method static synthetic wtn(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->acquireWakeLock()V

    return-void
.end method

.method private xs()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uda:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->MBa:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Ljava/lang/String;Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;)V

    return-void
.end method

.method private yc(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$bvj;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateKernelWakeLocks from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zda:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rca:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    const/4 v6, 0x2

    invoke-static {v5, v2, v3, v6}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Ada:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    new-instance v12, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v13

    invoke-direct {v12, v4, v7, v8, v13}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;-><init>(Ljava/lang/String;JI)V

    if-eqz v11, :cond_1

    invoke-static {v11, v12}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you(Lcom/android/server/wm/OpPowerConsumpStats$bvj;Lcom/android/server/wm/OpPowerConsumpStats$bvj;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateKernelWakeLocks # continue key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " |totalTimeMillis:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v11, "handle_plug_event"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Ada:Ljava/util/HashMap;

    invoke-virtual {v13, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    if-nez v12, :cond_3

    new-instance v12, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-direct {v12, v4, v7, v8, v5}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;-><init>(Ljava/lang/String;JI)V

    goto :goto_2

    :cond_3
    new-instance v13, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-direct {v13, v12}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;-><init>(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-static {v13, v7, v8, v5}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bvj;JI)V

    move-object v12, v13

    :goto_2
    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bda:Z

    if-eqz v6, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Bda:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v12, v5}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->sis(Lcom/android/server/wm/OpPowerConsumpStats$bvj;Lcom/android/server/wm/OpPowerConsumpStats$bvj;)Z

    move-result v5

    :cond_4
    if-eqz v5, :cond_6

    iget-wide v5, v12, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mTime:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_6

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zda:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateKernelWakeLocks # wakeLock_new = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yca:J

    return-wide p1
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zda:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$qbh;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    return-object p1
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Ec(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    move-result-object p0

    return-object p0
.end method

.method private static you(D)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const-string v0, "%.6f"

    goto :goto_0

    :cond_1
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    const-string v0, "%.5f"

    goto :goto_0

    :cond_2
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    const-string v0, "%.4f"

    goto :goto_0

    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    const-string v0, "%.3f"

    goto :goto_0

    :cond_4
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_5

    const-string v0, "%.2f"

    goto :goto_0

    :cond_5
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_6

    const-string v0, "%.1f"

    goto :goto_0

    :cond_6
    const-string v0, "%.0f"

    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private you(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$tsu;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$tsu;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    new-instance v3, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$tsu;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget-object v4, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Qba:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Qba:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Qba:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->zta(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private you(Lcom/android/server/wm/OpPowerConsumpStats$qbh;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/OpPowerConsumpStats$qbh;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "OPCS"

    const-string v1, "makeDataToString"

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v2, "os_version"

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->nca:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "realStartTime"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->oca:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "realEndTime"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->pca:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "duration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->duration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "firstReport"

    iget-boolean v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dda:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "oldTotalDischarge"

    iget v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->rca:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalDischarge"

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Hda:Ljava/text/DecimalFormat;

    iget-wide v4, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->sca:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalDischargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->tca:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalChargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->uca:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "oldScreenOnDischarge"

    iget v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->vca:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOnDischarge"

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Hda:Ljava/text/DecimalFormat;

    iget-wide v4, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->wca:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalScreenOnDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->xca:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOnDischargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->yca:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOnChargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->zca:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "oldScreenOffDischarge"

    iget v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Aca:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOffDischarge"

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Hda:Ljava/text/DecimalFormat;

    iget-wide v4, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Bca:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalScreenOffDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Cca:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOffDischargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Dca:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOffChargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Eca:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Fca:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ","

    const-string v5, "]"

    const-string v6, "["

    const/4 v7, 0x0

    if-lez v3, :cond_2

    :try_start_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    :goto_0
    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Fca:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Fca:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    invoke-static {v8, v3}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bio;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Fca:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v3, v8, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v3, "dozeFragment"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Gca:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    :goto_1
    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Gca:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Gca:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    invoke-static {v8, v3}, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ssp;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Gca:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v3, v8, :cond_3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v3, "chargeFragment"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Hca:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    :goto_2
    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Hca:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_7

    const-string v8, "{\"seq\":\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\",\"des\":\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Hca:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\"}"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Hca:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v3, v8, :cond_6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v3, "errlist"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "/sys/class/power_supply/bms/charge_full"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats;->tsu(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "fullCharge"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Mca:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const-wide/16 v8, 0x0

    if-lez v3, :cond_a

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Mca:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-wide v11, v10, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Sba:J

    cmp-long v11, v11, v8

    if-lez v11, :cond_9

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fea:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v10, v8

    move v8, v7

    move v9, v8

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_c

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget v12, v12, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Rba:I

    add-int/2addr v9, v12

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-wide v12, v12, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Sba:J

    add-long/2addr v10, v12

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    invoke-static {v12, v8}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->zta(Lcom/android/server/wm/OpPowerConsumpStats$tsu;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-eq v8, v12, :cond_b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Cap] MDM-Capacity: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    const-string v2, "capacity"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "capacity_drop"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Cap] MDM-Capacity-Drop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    const-string v2, "capacity_run"

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Cap] MDM-Capacity-Run: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    :cond_d
    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vca:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] BGC_Daily: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vca:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vca:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_e

    const-string v2, "bgc"

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vca:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Kca:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_11

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    :goto_5
    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Kca:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_10

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Kca:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v8, v3}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bvj;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Kca:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v3, v8, :cond_f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v3, "kernelWakeLocks"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Lca:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    :goto_6
    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Lca:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_13

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Lca:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v8, v3}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bvj;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Lca:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v3, v8, :cond_12

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_13
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string p1, "kernelWakeupReasons"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/server/wm/OpPowerConsumpStats;->nea:Z

    if-eqz p1, :cond_18

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pda:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_17

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pda:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v7, v2, :cond_16

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pda:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OpPowerConsumpStats$you;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats$you;->zta(Lcom/android/server/wm/OpPowerConsumpStats$you;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pda:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v7, v2, :cond_15

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_16
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const-string p0, "baseEvent"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mdmData:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeDataToString Exception e:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private you(Lcom/android/server/wm/OpPowerConsumpStats$qbh;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats$qbh;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V

    sget-boolean p1, Lcom/android/server/wm/OpPowerConsumpStats;->nea:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ys()V

    :cond_0
    return-void
.end method

.method private you(Lcom/android/server/wm/OpPowerConsumpStats$you;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Qda:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pda:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/wm/OpPowerConsumpStats$you;->Hba:I

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->nc(I)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    return p1
.end method

.method private ys()V
    .locals 2

    const-string v0, "clearAllData"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->zs()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Es()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Fs()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Bs()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ds()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->As()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Cs()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yca:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zca:J

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->nea:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Ida:I

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Jda:I

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Kda:I

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Lda:I

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Mda:I

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Nda:I

    :cond_0
    return-void
.end method

.method static synthetic ywr(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tca:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    return-object p0
.end method

.method private ywr(J)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x3e8

    div-long v3, p1, v1

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v3, v1

    sub-long/2addr p1, v3

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private zc(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$bvj;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateWakeupReasons from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Dda:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rca:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    const/4 v6, 0x2

    invoke-static {v5, v2, v3, v6}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Eda:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    new-instance v12, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v13

    invoke-direct {v12, v4, v7, v8, v13}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;-><init>(Ljava/lang/String;JI)V

    if-eqz v11, :cond_1

    invoke-static {v11, v12}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you(Lcom/android/server/wm/OpPowerConsumpStats$bvj;Lcom/android/server/wm/OpPowerConsumpStats$bvj;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateWakeupReasons # continue key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " |totalTimeMillis:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v11, "handle_plug_event"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Eda:Ljava/util/HashMap;

    invoke-virtual {v13, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    if-nez v12, :cond_3

    new-instance v12, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-direct {v12, v4, v7, v8, v5}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;-><init>(Ljava/lang/String;JI)V

    goto :goto_2

    :cond_3
    new-instance v13, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-direct {v13, v12}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;-><init>(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-static {v13, v7, v8, v5}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bvj;JI)V

    move-object v12, v13

    :goto_2
    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bda:Z

    if-eqz v6, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Fda:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v12, v5}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->sis(Lcom/android/server/wm/OpPowerConsumpStats$bvj;Lcom/android/server/wm/OpPowerConsumpStats$bvj;)Z

    move-result v5

    :cond_4
    if-eqz v5, :cond_6

    iget-wide v5, v12, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mTime:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_6

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Dda:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateWakeupReasons # reason_new = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method static synthetic zgw(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/BatteryManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryManager:Landroid/os/BatteryManager;

    return-object p0
.end method

.method private zs()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Xca:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Qca:Lcom/android/server/wm/OpPowerConsumpStats$sis;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;D)D
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eda:D

    return-wide p1
.end method

.method private zta(ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)I
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    mul-int/lit8 p0, p0, 0x5

    add-int/2addr p0, p1

    return p0
.end method

.method private zta(Lcom/android/internal/os/BatterySipper$DrainType;)I
    .locals 0

    sget-object p0, Lcom/android/server/wm/lqr;->Cba:[I

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    const/16 p0, -0x55

    goto :goto_0

    :pswitch_0
    const/16 p0, -0x56

    goto :goto_0

    :pswitch_1
    const/16 p0, -0x57

    goto :goto_0

    :pswitch_2
    const/16 p0, -0x58

    goto :goto_0

    :pswitch_3
    const/16 p0, -0x59

    goto :goto_0

    :pswitch_4
    const/16 p0, -0x5a

    goto :goto_0

    :pswitch_5
    const/16 p0, -0x5b

    goto :goto_0

    :pswitch_6
    const/16 p0, -0x5c

    goto :goto_0

    :pswitch_7
    const/16 p0, -0x5d

    goto :goto_0

    :pswitch_8
    const/16 p0, -0x5e

    goto :goto_0

    :pswitch_9
    const/16 p0, -0x5f

    goto :goto_0

    :pswitch_a
    const/16 p0, -0x60

    goto :goto_0

    :pswitch_b
    const/16 p0, -0x61

    goto :goto_0

    :pswitch_c
    const/16 p0, -0x62

    goto :goto_0

    :pswitch_d
    const/16 p0, -0x63

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cda:I

    return p1
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)I

    move-result p0

    return p0
.end method

.method public static zta(Landroid/os/BatteryStats$Timer;JI)J
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    const-wide/16 p2, 0x1f4

    add-long/2addr p0, p2

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;)Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yda:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mNetworkType:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;)Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zda:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    return-object p1
.end method

.method private zta(Landroid/util/SparseArray;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)Lcom/android/server/wm/OpPowerConsumpStats$rtg;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/OpPowerConsumpStats$rtg;",
            ">;I",
            "Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;",
            ")",
            "Lcom/android/server/wm/OpPowerConsumpStats$rtg;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;Landroid/util/SparseArray;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)Lcom/android/server/wm/OpPowerConsumpStats$rtg;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Landroid/util/SparseArray;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$sis;)Lcom/android/server/wm/OpPowerConsumpStats$sis;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Qca:Lcom/android/server/wm/OpPowerConsumpStats$sis;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;J)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->ywr(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vca:Ljava/lang/StringBuilder;

    return-object p1
.end method

.method private zta(IJII)V
    .locals 0

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    invoke-virtual {p2, p1, p4, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private zta(Landroid/util/AtomicFile;)V
    .locals 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearPersistData file:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    const-string p0, "OPCS"

    if-nez p1, :cond_0

    const-string p1, "persistToDisk file is null, return"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persistToDisk Exception e:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private zta(Lcom/android/server/wm/OpPowerConsumpStats$qbh;)V
    .locals 10

    const-string v0, "generateSortqueueAnddSystemqueue"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p0, "generateSortqueueAnddSystemqueue data is null, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Kca:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Ica:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Ica:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eea:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/android/server/wm/OpPowerConsumpStats;->efa:I

    if-le v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateSortqueueAnddSystemqueue wakeLocks length:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v3, v1

    :goto_2
    const-string v4, " |count:"

    const-string v5, " |time:"

    const-string v6, " |name:"

    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateSortqueueAnddSystemqueue wakeLocks Top sort i:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v7, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mTime:J

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mCount:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Kca:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Lca:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Jca:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Jca:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eea:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sget v2, Lcom/android/server/wm/OpPowerConsumpStats;->ffa:I

    if-le p0, v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateSortqueueAnddSystemqueue wakeupReasons length:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    :goto_5
    if-ge v1, v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateSortqueueAnddSystemqueue wakeupReason Top sort i:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mTime:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mCount:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Lca:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method private zta(Lcom/android/server/wm/OpPowerConsumpStats$qbh;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "totalScreenOnDuration"

    const-string v3, "screenOnDischarge"

    const-string v4, "oldScreenOnDischarge"

    const-string v5, "totalChargeDuration"

    const-string v6, "totalDischargeDuration"

    const-string v7, "totalDischarge"

    const-string v8, "oldTotalDischarge"

    const-string v9, "count"

    const-string v10, "duration"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "persistToDisk order by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/android/server/wm/OpPowerConsumpStats;->ru:Landroid/util/AtomicFile;

    const-string v13, "OPCS"

    if-nez v11, :cond_0

    const-string v0, "persistToDisk mStatisticalData is null, return"

    :goto_0
    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "persistToDisk data is null, return"

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    :try_start_0
    iget-object v15, v1, Lcom/android/server/wm/OpPowerConsumpStats;->ru:Landroid/util/AtomicFile;

    invoke-virtual {v15}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v16 .. v16}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v14, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v12, 0x0

    invoke-interface {v11, v12, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v14, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v14}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "os_version"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v17, v15

    :try_start_2
    iget-object v15, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->nca:Ljava/lang/String;

    invoke-interface {v11, v12, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "realStartTime"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v15, v13

    :try_start_3
    iget-wide v12, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->oca:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v11, v13, v14, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v12, "realEndTime"

    iget-wide v13, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->pca:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v11, v14, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v12, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->duration:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v14, v10, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v12, "firstReport"

    iget-boolean v13, v1, Lcom/android/server/wm/OpPowerConsumpStats;->dda:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v14, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v12, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11, v14, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v12, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->rca:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v14, v9, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11, v14, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v8, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11, v14, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v1, Lcom/android/server/wm/OpPowerConsumpStats;->Hda:Ljava/text/DecimalFormat;

    iget-wide v12, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->sca:D

    invoke-virtual {v8, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v14, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11, v14, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v7, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11, v14, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v7, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->tca:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v14, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11, v14, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11, v14, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v6, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->uca:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v14, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11, v14, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v5, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11, v14, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v5, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->vca:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v14, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11, v14, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11, v14, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/server/wm/OpPowerConsumpStats;->Hda:Ljava/text/DecimalFormat;

    iget-wide v5, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->wca:D

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v14, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11, v14, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v3, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->xca:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v14, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "screenOnDischargeDuration"

    invoke-interface {v11, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->yca:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v14, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "screenOnDischargeDuration"

    invoke-interface {v11, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "screenOnChargeDuration"

    invoke-interface {v11, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->zca:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v14, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "screenOnChargeDuration"

    invoke-interface {v11, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "oldScreenOffDischarge"

    invoke-interface {v11, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Aca:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v14, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "oldScreenOffDischarge"

    invoke-interface {v11, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "screenOffDischarge"

    invoke-interface {v11, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats;->Hda:Ljava/text/DecimalFormat;

    iget-wide v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Bca:D

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v14, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "screenOffDischarge"

    invoke-interface {v11, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "totalScreenOffDuration"

    invoke-interface {v11, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Cca:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v14, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "totalScreenOffDuration"

    invoke-interface {v11, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "screenOffDischargeDuration"

    invoke-interface {v11, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Dca:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v14, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "screenOffDischargeDuration"

    invoke-interface {v11, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "screenOffChargeDuration"

    invoke-interface {v11, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Eca:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v14, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "screenOffChargeDuration"

    invoke-interface {v11, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "/sys/class/power_supply/bms/charge_full"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats;->tsu(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "capacity"

    const/4 v4, 0x0

    invoke-interface {v11, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "charge_full"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v4, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "capacity"

    invoke-interface {v11, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    :goto_1
    iget-object v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Fca:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v5, "seq"

    if-ge v3, v4, :cond_2

    :try_start_4
    iget-object v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Fca:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    const-string v6, "dozeFragment"

    const/4 v7, 0x0

    invoke-interface {v11, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "relativeBeginTime"

    iget-wide v12, v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;->Xba:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "relativeEndTime"

    iget-wide v12, v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;->Yba:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v5, v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;->duration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v7, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "realBeginTime"

    iget-wide v12, v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;->Zba:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "beginPowerLevel"

    iget v6, v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;->_ba:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "endPowerLevel"

    iget v6, v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;->aca:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "exitReason"

    iget-object v4, v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;->gca:Ljava/lang/String;

    invoke-interface {v11, v7, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "dozeFragment"

    invoke-interface {v11, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget-object v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Gca:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Gca:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    const-string v6, "chargeFragment"

    const/4 v7, 0x0

    invoke-interface {v11, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "relativeBeginTime"

    iget-wide v12, v4, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Xba:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "relativeEndTime"

    iget-wide v12, v4, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Yba:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v12, v4, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->duration:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v7, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "realBeginTime"

    iget-wide v12, v4, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Zba:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "beginPowerLevel"

    iget v8, v4, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->_ba:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "endPowerLevel"

    iget v8, v4, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->aca:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "screenOnDuration"

    iget-wide v12, v4, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->bca:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "firstFullTimeToRelativeBeginTime"

    iget-wide v12, v4, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->cca:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "plugType"

    iget-object v4, v4, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->dca:Ljava/lang/String;

    invoke-interface {v11, v7, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "chargeFragment"

    invoke-interface {v11, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_3
    iget-object v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Hca:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Hca:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "errlist"

    const/4 v7, 0x0

    invoke-interface {v11, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "des"

    invoke-interface {v11, v7, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "errlist"

    invoke-interface {v11, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    iget-object v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Ica:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Ica:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    iget-wide v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mTime:J

    cmp-long v5, v7, v5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    const-string v5, "kernelWakeLocks"

    const/4 v6, 0x0

    invoke-interface {v11, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "name"

    iget-object v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mName:Ljava/lang/String;

    invoke-interface {v11, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "time"

    iget-wide v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v4, v4, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v6, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "kernelWakeLocks"

    invoke-interface {v11, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    :cond_6
    iget-object v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Jca:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Jca:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    iget-wide v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mTime:J

    cmp-long v7, v7, v5

    if-nez v7, :cond_7

    goto :goto_5

    :cond_7
    const-string v7, "kernelWakeupReasons"

    const/4 v8, 0x0

    invoke-interface {v11, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "name"

    iget-object v10, v4, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mName:Ljava/lang/String;

    invoke-interface {v11, v8, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "time"

    iget-wide v12, v4, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v8, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v4, v4, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v8, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "kernelWakeupReasons"

    invoke-interface {v11, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Mca:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-wide v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Sba:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_9

    iget-wide v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Sba:J

    const-wide/16 v9, 0x1f4

    add-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-double v7, v7

    const-wide v9, 0x414b774000000000L    # 3600000.0

    div-double/2addr v7, v9

    iget v9, v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Rba:I

    int-to-double v9, v9

    div-double/2addr v9, v7

    iput-wide v9, v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Tba:D

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    sget-object v0, Lcom/android/server/wm/lqr;->Bba:[I

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_d

    const/4 v4, 0x2

    if-eq v0, v4, :cond_c

    const/4 v4, 0x3

    if-eq v0, v4, :cond_b

    goto :goto_8

    :cond_b
    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats;->hea:Ljava/util/Comparator;

    :goto_7
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_8

    :cond_c
    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats;->gea:Ljava/util/Comparator;

    goto :goto_7

    :cond_d
    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats;->fea:Ljava/util/Comparator;

    goto :goto_7

    :goto_8
    move-wide v7, v5

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_14

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    const-string v10, "capConsumption"

    const/4 v12, 0x0

    invoke-interface {v11, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "pkgName"

    iget-object v13, v9, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->mPkgName:Ljava/lang/String;

    invoke-interface {v11, v12, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "versionCode"

    iget v13, v9, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->mVersionCode:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "drop"

    iget v13, v9, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Rba:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "run"

    iget-wide v13, v9, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Sba:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v10, v9, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Rba:I

    add-int/2addr v4, v10

    iget-wide v12, v9, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Sba:J

    add-long/2addr v7, v12

    const/4 v10, 0x0

    :goto_a
    sget-object v12, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->LBa:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-gt v10, v12, :cond_12

    const/4 v12, 0x0

    :goto_b
    const/4 v13, 0x5

    if-ge v12, v13, :cond_11

    iget-object v13, v9, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Qba:Landroid/util/SparseArray;

    mul-int/lit8 v14, v10, 0x5

    add-int/2addr v14, v12

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    if-eqz v13, :cond_e

    invoke-static {v13}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)J

    move-result-wide v18

    invoke-static {v13}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)I

    move-result v13

    goto :goto_c

    :cond_e
    move-wide/from16 v18, v5

    const/4 v13, 0x0

    :goto_c
    sget-object v14, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->WIFI:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    if-ne v10, v14, :cond_f

    const-string v14, "W_"

    goto :goto_d

    :cond_f
    sget-object v14, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->CELLULAR:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    if-ne v10, v14, :cond_10

    const-string v14, "M_"

    goto :goto_d

    :cond_10
    const-string v14, "N_"

    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "R"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v11, v6, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "C"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-long v5, v13

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v11, v6, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v5, 0x0

    goto :goto_b

    :cond_11
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v5, 0x0

    goto/16 :goto_a

    :cond_12
    const-string v2, "capConsumption"

    const/4 v5, 0x0

    invoke-interface {v11, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v5, 0x0

    goto/16 :goto_9

    :cond_13
    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    :cond_14
    const-string v0, "capStatistics"

    const/4 v2, 0x0

    invoke-interface {v11, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "drop"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "run"

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "capStatistics"

    invoke-interface {v11, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cap] [capStatistics]: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v7, v8}, Lcom/android/server/wm/OpPowerConsumpStats;->ywr(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v2, v15

    const/4 v12, 0x0

    :try_start_5
    invoke-interface {v11, v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->rv:Ljava/lang/String;

    invoke-interface {v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats;->ru:Landroid/util/AtomicFile;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v3, v17

    :try_start_6
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_10

    :catch_0
    move-exception v0

    goto :goto_f

    :catch_1
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    move-object v2, v15

    goto :goto_e

    :catch_3
    move-exception v0

    move-object v2, v13

    :goto_e
    move-object/from16 v3, v17

    goto :goto_f

    :catch_4
    move-exception v0

    move-object v2, v13

    move-object v3, v15

    goto :goto_f

    :catch_5
    move-exception v0

    move-object v2, v13

    const/4 v12, 0x0

    move-object v3, v12

    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persistToDisk Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v3, :cond_15

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats;->ru:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_15
    :goto_10
    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->sis(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$qbh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats$qbh;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$qbh;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats$qbh;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Ac(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;ZLcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(ZLcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V

    return-void
.end method

.method private zta(Ljava/lang/StringBuilder;J)V
    .locals 10

    const-wide/32 v0, 0x15180

    div-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "d "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-wide/16 v4, 0x3c

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    const-wide/16 v6, 0x18

    mul-long/2addr v0, v6

    sub-long v6, p2, v0

    const-wide/16 v8, 0xe10

    div-long/2addr v6, v8

    cmp-long p0, v6, v2

    if-nez p0, :cond_1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_2

    :cond_1
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "h "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    mul-long/2addr v6, v4

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    sub-long v6, p2, v0

    div-long/2addr v6, v4

    cmp-long p0, v6, v2

    if-nez p0, :cond_3

    cmp-long p0, v0, v2

    if-eqz p0, :cond_4

    :cond_3
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "m "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    cmp-long p0, p2, v2

    if-nez p0, :cond_5

    cmp-long p0, v0, v2

    if-eqz p0, :cond_6

    :cond_5
    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "s "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    return-void
.end method

.method private zta(ZLcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePersist shutDown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x66

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rda:Lcom/android/server/wm/OpPowerConsumpStats$ibl;

    invoke-virtual {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->stop()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->jea:Z

    if-eqz v0, :cond_1

    const-string v0, "OPCS"

    const-string v1, "ScreenOnWatchTimer re-start again...."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rda:Lcom/android/server/wm/OpPowerConsumpStats$ibl;

    invoke-virtual {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->start()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rda:Lcom/android/server/wm/OpPowerConsumpStats$ibl;

    invoke-virtual {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->flushToDisk()V

    :cond_3
    const-string v0, "handlePersist"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ec(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    move-result-object v0

    if-nez v0, :cond_4

    const-string p0, "handlePersist StatisticalData is null, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats$qbh;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ss()V

    :cond_5
    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dda:Z

    return p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_ca:Z

    return p1
.end method


# virtual methods
.method Re()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uda:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->BG:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats$gck;->zta(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] oops, why can\'t locate last topPkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uda:Ljava/util/HashMap;

    const-string v0, "LockScreen"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->BG:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats$gck;->zta(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V

    goto :goto_1

    :cond_1
    const-string p0, "[Cap] oops, why can\'t locate dummy topPkg: LockScreen"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public getResult(Ljava/io/PrintWriter;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=== getResult === order by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    const-string v0, "cmd persist"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ec(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "OPCS data is null, just return"

    const-string p2, "OPCS"

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats$qbh;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ru:Landroid/util/AtomicFile;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPCS result is ready on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ru:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", order by "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "OPCS mPersistData is still null, just return"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "handleShowOrOccludedChanged: showing: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " occluded: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    const/16 p4, 0x11

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/ActivityManagerService;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/wm/OpPowerConsumpStats;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initPlugState(ZIZ)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPlugState Plug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |plugType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |isFastCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public notifyBGCMDMReady(Ljava/lang/StringBuilder;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBGCMDMReady, forQuickDebug: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyBatteryLevelEvent(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBatteryLevelEvent Level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Vs()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "notifyBatteryLevelEvent not yet timing, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyDozeEvent(ZLjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDozeEvent idle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Vs()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "notifyDozeEvent not yet timing, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyFastChargeEvent(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFastChargeEvent isFastCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Vs()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "notifyFastChargeEvent not yet timing, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public notifyPkgEvent(Landroid/content/ComponentName;Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->nea:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Vs()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "notifyPkgEvent not yet timing, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    const/16 v0, 0xe

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public notifyPlugEvent(Ljava/lang/Boolean;IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPlugEvent Plug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " |plugType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |isFastCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Vs()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p0, "notifyPlugEvent not yet timing, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, ""

    invoke-virtual {p3, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyScreenEvent(Ljava/lang/Boolean;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyScreenEvent Screen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerResetParamListener(Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;)V
    .locals 1

    const-string v0, "registerResetParamListener"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Wca:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    return-void
.end method

.method public resetClean(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "=== resetClean ==="

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Vs()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "OPCS BaseTimer not yet timing, just return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->us:Z

    const-string v1, "Enable OPCS testing procedure mode, start skipping any MDM data reporting on 03:00AM"

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->notifyBGCMDMReady(Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public updateScreenState(I)V
    .locals 4

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->lea:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateScreenState to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x66

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rda:Lcom/android/server/wm/OpPowerConsumpStats$ibl;

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->stop()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Rda:Lcom/android/server/wm/OpPowerConsumpStats$ibl;

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public zta(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/wm/OpPowerConsumpStats;
    .locals 2

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->sInstance:Lcom/android/server/wm/OpPowerConsumpStats;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iput-object p4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAms:Lcom/android/server/am/ActivityManagerService;

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance p1, Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-direct {p1, p0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tda:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Tda:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p1, 0x0

    const-string p2, "persist.sys.opcs.debug_log"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    sput-boolean p2, Lcom/android/server/wm/OpPowerConsumpStats;->kea:Z

    const-string p2, "persist.sys.opcs.debug_specific"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    sput-boolean p2, Lcom/android/server/wm/OpPowerConsumpStats;->mea:Z

    const-string p2, "persist.sys.opcs.debug_verify"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    sput-boolean p2, Lcom/android/server/wm/OpPowerConsumpStats;->nea:Z

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "mConsumptionDetectorThread"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    new-instance p3, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p3, p0, p2}, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Sca:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    const-string p3, "alarm"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    const-string p3, "power"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPowerManager:Landroid/os/PowerManager;

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    const-string p3, "batterymanager"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/BatteryManager;

    iput-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryManager:Landroid/os/BatteryManager;

    const-string p2, "package"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    new-instance p3, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object p4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    invoke-direct {p3, p4, p1, p1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p3

    new-instance p4, Ljava/io/File;

    const-string v0, "system"

    invoke-direct {p4, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p3, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    const-string v1, "consumptionDetector_statistcal_data.xml"

    invoke-direct {v0, p4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p3, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ru:Landroid/util/AtomicFile;

    new-instance p3, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    const-string v1, "consumptionDetector_base_data.xml"

    invoke-direct {v0, p4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p3, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Pca:Landroid/util/AtomicFile;

    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string p4, "com.OPCS.action.debug"

    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Mu:Landroid/content/BroadcastReceiver;

    invoke-virtual {p4, v0, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string p4, "com.OPCS.action.report"

    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bea:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    const/high16 p4, 0x8000000

    invoke-static {p3, p1, p2, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pi:Landroid/app/PendingIntent;

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/16 p3, 0x66

    aput p3, p2, p1

    invoke-static {p2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Ts()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->initOnlineConfig()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->lr()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ct()V

    iget-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Wda:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->LOCKED:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yda:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    sget-object p1, Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;->Pfa:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zda:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[Cap] Init mKeyguardStatus: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Yda:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mOccludedStatus: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Zda:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    const-string p1, "[Cap] Manually simulate Dummy Lock Screen Topping when booting"

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->OBa:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    const-string p2, "LockScreen"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Ljava/lang/String;Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;)V

    :cond_1
    sput-object p0, Lcom/android/server/wm/OpPowerConsumpStats;->sInstance:Lcom/android/server/wm/OpPowerConsumpStats;

    sput-object p0, Lcom/android/server/wm/OpPowerConsumpStats;->iea:Lcom/android/server/wm/OpPowerConsumpStats;

    :cond_2
    sget-object p0, Lcom/android/server/wm/OpPowerConsumpStats;->sInstance:Lcom/android/server/wm/OpPowerConsumpStats;

    return-object p0
.end method

.method zta(Ljava/lang/String;Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] OnPkgStateChanged: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "][mScreenState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] pkg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->TOP:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->NORMAL:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Re()V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] Update mCurrentTopPkgName to pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Vda:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-nez v0, :cond_2

    const-string p0, "[Cap] due to screen-off, no need to execute any-topping action."

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->OBa:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    if-ne p2, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Re()V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->PBa:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->PBa:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uda:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/OpPowerConsumpStats$gck;

    if-nez p2, :cond_3

    new-instance p2, Lcom/android/server/wm/OpPowerConsumpStats$gck;

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$gck;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Uda:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->TOP:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    invoke-virtual {p2, p0}, Lcom/android/server/wm/OpPowerConsumpStats$gck;->zta(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V

    :cond_4
    :goto_2
    return-void
.end method
