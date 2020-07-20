.class public Lcom/android/server/wtn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wtn$sis;,
        Lcom/android/server/wtn$zta;,
        Lcom/android/server/wtn$you;,
        Lcom/android/server/wtn$tsu;
    }
.end annotation


# static fields
.field private static final ACTION_OPTIMIZE_SWITCH:Ljava/lang/String; = "com.oneplus.action.INTENT_TRANSIT_ACTIVITY"

.field private static final DEFAULT:I = -0x1

.field public static final Hd:Ljava/lang/String; = "/sys/class/power_supply/battery/op_disable_charge"

.field public static final Id:Ljava/lang/String; = "/sys/class/power_supply/bms/battery_health"

.field private static final Jd:Ljava/lang/String; = "charging_guarder_notification"

.field private static final Kd:Ljava/lang/String; = "Charging Guarder"

.field private static final Ld:Ljava/lang/String; = "net.oneplus.chargingguarder.intent.enable"

.field private static final MDM_APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final MDM_EVENT:Ljava/lang/String; = "OnePlusChargingGuarder"

.field private static final Md:Ljava/lang/String; = "net.oneplus.charingguarder.intent.OPCG"

.field private static final Nd:Ljava/lang/String; = "net.oneplus.charingguarder.intent.mdm"

.field private static final Od:Ljava/lang/String; = "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

.field private static final Pd:Ljava/lang/String; = "com.oneplus.chargingguarder.open_quietmode"

.field private static final Qd:Ljava/lang/String; = "com.oneplus.chargingguarder.close_quietmode"

.field private static final Rd:Ljava/lang/String; = "com.oneplus.chargingguarder.close_quietmode.notification"

.field private static final SEPARATOR:Ljava/lang/String; = "|"

.field private static final Sd:Ljava/lang/String; = "/sys/class/power_supply/wireless/online"

.field public static final TAG:Ljava/lang/String; = "OnePlusChargingGuarder"

.field private static final Td:Ljava/lang/String; = "/proc/wireless/quiet_mode"

.field public static final Ud:I = 0x8

.field private static final Vd:J = 0x249f00L

.field private static final Wd:J = 0x36ee80L

.field private static final Xd:I = 0x1

.field private static final Yd:I = 0x2

.field private static final Zd:I = 0x3

.field private static _d:I = 0x0

.field private static final ae:I = -0x2

.field private static final be:I = -0x1

.field private static final ce:I = 0x0

.field private static final de:I = 0x1

.field private static final ee:I = 0x2

.field private static final fe:I = 0x1

.field private static final ge:I = 0x0

.field private static final he:Ljava/lang/String; = "opcg_sleep_time_data"

.field private static final ie:Ljava/lang/String; = "\\|"

.field private static final je:Ljava/lang/String; = "opcg_recover_charge_data"

.field static final ke:J = 0x2710L

.field private static final le:J = 0x6ddd00L

.field private static mInstance:Lcom/android/server/wtn; = null

.field private static final me:I = 0x0

.field private static final ne:I = 0x1

.field private static final oe:I = 0x2

.field private static final pe:I = 0x0

.field private static final qe:I = 0x1

.field private static final re:I = 0x2


# instance fields
.field private Ad:Z

.field private Bd:Z

.field private Cd:J

.field private Dd:I

.field private Ed:Z

.field private Fd:I

.field private Gd:I

.field private filter:Landroid/content/IntentFilter;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mBatteryManager:Landroid/os/BatteryManager;

.field private mBatteryReceiver:Lcom/android/server/wtn$zta;

.field private mCharging:Z

.field private mContentObserver:Lcom/android/server/wtn$you;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/wtn$sis;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private mResolver:Landroid/content/ContentResolver;

.field private mState:I

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private pd:Ljava/time/LocalTime;

.field private qd:J

.field private rd:J

.field private sd:J

.field private td:J

.field private ud:J

.field private vd:I

.field private wd:I

.field private xd:Z

.field private yd:Z

.field private zd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wtn;->pd:Ljava/time/LocalTime;

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wtn;->mState:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wtn;->ud:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wtn;->xd:Z

    iput-boolean v1, p0, Lcom/android/server/wtn;->yd:Z

    iput-boolean v1, p0, Lcom/android/server/wtn;->zd:Z

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0x114

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wtn;->Ad:Z

    iput-boolean v1, p0, Lcom/android/server/wtn;->Bd:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wtn;->Dd:I

    iput-boolean v1, p0, Lcom/android/server/wtn;->Ed:Z

    iput v1, p0, Lcom/android/server/wtn;->Fd:I

    iput v1, p0, Lcom/android/server/wtn;->Gd:I

    iput-boolean v1, p0, Lcom/android/server/wtn;->mCharging:Z

    iput-object p1, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wtn;->mResolver:Landroid/content/ContentResolver;

    iget-object p1, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/wtn;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-wide/32 v3, 0x249f00

    iput-wide v3, p0, Lcom/android/server/wtn;->td:J

    const-wide/32 v3, 0x6ddd00

    iput-wide v3, p0, Lcom/android/server/wtn;->Cd:J

    new-instance p1, Lcom/android/server/wtn$sis;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lcom/android/server/wtn$sis;-><init>(Lcom/android/server/wtn;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wtn;->mHandler:Lcom/android/server/wtn$sis;

    iget-object p1, p0, Lcom/android/server/wtn;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "charging_guarder_enabled"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wtn;->vd:I

    invoke-direct {p0}, Lcom/android/server/wtn;->om()V

    iget-object p1, p0, Lcom/android/server/wtn;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "charging_optimized_status"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/server/wtn;->mContentObserver:Lcom/android/server/wtn$you;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/server/wtn$you;

    iget-object v1, p0, Lcom/android/server/wtn;->mHandler:Lcom/android/server/wtn$sis;

    invoke-direct {p1, p0, v1}, Lcom/android/server/wtn$you;-><init>(Lcom/android/server/wtn;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/wtn;->mContentObserver:Lcom/android/server/wtn$you;

    :cond_0
    new-instance p1, Lcom/android/server/wtn$zta;

    invoke-direct {p1, p0, v0}, Lcom/android/server/wtn$zta;-><init>(Lcom/android/server/wtn;Lcom/android/server/igw;)V

    iput-object p1, p0, Lcom/android/server/wtn;->mBatteryReceiver:Lcom/android/server/wtn$zta;

    iget-object p1, p0, Lcom/android/server/wtn;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/wtn;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_1
    iget-object p1, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/server/wtn;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p1, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    const-string v0, "batterymanager"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    iput-object p1, p0, Lcom/android/server/wtn;->mBatteryManager:Landroid/os/BatteryManager;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/server/wtn;->filter:Landroid/content/IntentFilter;

    iget-object p1, p0, Lcom/android/server/wtn;->filter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wtn;->filter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wtn;->filter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wtn;->filter:Landroid/content/IntentFilter;

    const-string v0, "net.oneplus.chargingguarder.intent.enable"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wtn;->filter:Landroid/content/IntentFilter;

    const-string v0, "net.oneplus.charingguarder.intent.OPCG"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wtn;->filter:Landroid/content/IntentFilter;

    const-string v0, "net.oneplus.charingguarder.intent.mdm"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wtn;->filter:Landroid/content/IntentFilter;

    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wtn;->filter:Landroid/content/IntentFilter;

    const-string v0, "com.oneplus.chargingguarder.open_quietmode"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wtn;->filter:Landroid/content/IntentFilter;

    const-string v0, "com.oneplus.chargingguarder.close_quietmode"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wtn;->filter:Landroid/content/IntentFilter;

    const-string v0, "com.oneplus.chargingguarder.close_quietmode.notification"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wtn;->filter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wtn;->filter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wtn;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lcom/android/server/wtn;->createNotificationChannel(Landroid/app/NotificationManager;)V

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wtn;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    invoke-virtual {p0}, Lcom/android/server/wtn;->J()V

    invoke-virtual {p0}, Lcom/android/server/wtn;->H()V

    invoke-virtual {p0}, Lcom/android/server/wtn;->K()V

    return-void
.end method

.method static synthetic bio(Lcom/android/server/wtn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wtn;->zd:Z

    return p0
.end method

.method static synthetic bvj(Lcom/android/server/wtn;)Lcom/android/server/wtn$zta;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wtn;->mBatteryReceiver:Lcom/android/server/wtn$zta;

    return-object p0
.end method

.method static synthetic cjf(Lcom/android/server/wtn;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wtn;->om()V

    return-void
.end method

.method static synthetic cno(Lcom/android/server/wtn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wtn;->xd:Z

    return p0
.end method

.method private createNotificationChannel(Landroid/app/NotificationManager;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/app/NotificationChannel;

    const/4 v0, 0x4

    const-string v1, "charging_guarder_notification"

    const-string v2, "Charging Guarder"

    invoke-direct {p0, v1, v2, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method static synthetic dma(Lcom/android/server/wtn;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wtn;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic ear(Lcom/android/server/wtn;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic fto(Lcom/android/server/wtn;)Lcom/android/server/wtn$sis;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wtn;->mHandler:Lcom/android/server/wtn$sis;

    return-object p0
.end method

.method private gb(Ljava/lang/String;)Landroid/app/Notification;
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.action.INTENT_TRANSIT_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "intent_action"

    const-string v2, "com.android.settings.SEARCH_RESULT_TRAMPOLINE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment"

    const-string v2, "com.android.settings.fuelgauge.PowerUsageSummary"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":settings:fragment_args_key"

    const-string v2, "charging_optimization_summary"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    const v3, 0x50f001c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v2

    const p1, 0x50f001b

    invoke-virtual {v3, p1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Landroid/content/Intent;

    const-string v5, "net.oneplus.chargingguarder.intent.enable"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/high16 v7, 0x8000000

    invoke-static {v5, v2, v3, v7, v6}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Action$Builder;

    iget-object v5, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    const v6, 0x50f001a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const v6, 0x1080362

    invoke-direct {v3, v6, v5, v2}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    const-string v7, "charging_guarder_notification"

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x5070142

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object p0, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    const v6, 0x106001c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v5, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string p1, "sys"

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {p0, p1, v4}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    iget p1, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method static synthetic gck(Lcom/android/server/wtn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wtn;->Ed:Z

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/wtn;
    .locals 1

    sget-object v0, Lcom/android/server/wtn;->mInstance:Lcom/android/server/wtn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wtn;

    invoke-direct {v0, p0}, Lcom/android/server/wtn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/wtn;->mInstance:Lcom/android/server/wtn;

    :cond_0
    sget-object p0, Lcom/android/server/wtn;->mInstance:Lcom/android/server/wtn;

    return-object p0
.end method

.method static synthetic gwm(Lcom/android/server/wtn;)Lcom/android/server/wtn$you;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wtn;->mContentObserver:Lcom/android/server/wtn$you;

    return-object p0
.end method

.method private hb(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/16 v0, 0x10

    new-array v0, v0, [C

    const/16 v1, 0x30

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/16 v1, 0x31

    const/4 v3, 0x1

    aput-char v1, v0, v3

    const/16 v1, 0x32

    const/4 v3, 0x2

    aput-char v1, v0, v3

    const/4 v1, 0x3

    const/16 v4, 0x33

    aput-char v4, v0, v1

    const/16 v1, 0x34

    const/4 v4, 0x4

    aput-char v1, v0, v4

    const/4 v1, 0x5

    const/16 v4, 0x35

    aput-char v4, v0, v1

    const/4 v1, 0x6

    const/16 v4, 0x36

    aput-char v4, v0, v1

    const/4 v1, 0x7

    const/16 v4, 0x37

    aput-char v4, v0, v1

    const/16 v1, 0x8

    const/16 v4, 0x38

    aput-char v4, v0, v1

    const/16 v1, 0x9

    const/16 v4, 0x39

    aput-char v4, v0, v1

    const/16 v1, 0xa

    const/16 v4, 0x61

    aput-char v4, v0, v1

    const/16 v1, 0xb

    const/16 v4, 0x62

    aput-char v4, v0, v1

    const/16 v1, 0xc

    const/16 v4, 0x63

    aput-char v4, v0, v1

    const/16 v1, 0xd

    const/16 v4, 0x64

    aput-char v4, v0, v1

    const/16 v1, 0xe

    const/16 v4, 0x65

    aput-char v4, v0, v1

    const/16 v1, 0x66

    const/16 v4, 0xf

    aput-char v1, v0, v4

    array-length v1, p1

    mul-int/2addr v1, v3

    new-array v1, v1, [C

    array-length v3, p1

    move v5, v2

    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v6, p1, v2

    add-int/lit8 v7, v5, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/2addr v8, v4

    aget-char v8, v0, v8

    aput-char v8, v1, v5

    add-int/lit8 v5, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    aput-char v6, v1, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object p0
.end method

.method static synthetic hmo(Lcom/android/server/wtn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wtn;->Ad:Z

    return p0
.end method

.method static synthetic ibl(Lcom/android/server/wtn;)Landroid/content/IntentFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wtn;->filter:Landroid/content/IntentFilter;

    return-object p0
.end method

.method static synthetic igw(Lcom/android/server/wtn;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wtn;->Fd:I

    return p0
.end method

.method static synthetic ire(Lcom/android/server/wtn;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wtn;->mState:I

    return p0
.end method

.method static synthetic kth(Lcom/android/server/wtn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wtn;->yd:Z

    return p0
.end method

.method static synthetic lqr(Lcom/android/server/wtn;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wtn;->ud:J

    return-wide v0
.end method

.method static synthetic obl(Lcom/android/server/wtn;)Lnet/oneplus/odm/OpDeviceManagerInjector;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wtn;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    return-object p0
.end method

.method static synthetic oif(Lcom/android/server/wtn;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wtn;->Dd:I

    return p0
.end method

.method private om()V
    .locals 3

    iget v0, p0, Lcom/android/server/wtn;->vd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wtn;->qm()Z

    move-result v0

    const-string v1, "charging_guarder_enabled"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wtn;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wtn;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput v2, p0, Lcom/android/server/wtn;->vd:I

    :cond_1
    return-void
.end method

.method static synthetic oxb(Lcom/android/server/wtn;)Landroid/app/Notification;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wtn;->pm()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private oxb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string p0, " sucessfully!"

    const-string v0, " to "

    const-string v1, "write "

    const-string v2, "OnePlusChargingGuarder"

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeNodeValue IO exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v3
.end method

.method private pm()Landroid/app/Notification;
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.BED_TIME_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    const v3, 0x50f00c0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    const v4, 0x50f00bf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.oneplus.chargingguarder.close_quietmode.notification"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/high16 v7, 0x8000000

    invoke-static {v5, v2, v4, v7, v6}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v4, Landroid/app/Notification$Action$Builder;

    iget-object v5, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    const v6, 0x50f00be

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const v6, 0x1080362

    invoke-direct {v4, v6, v5, v2}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    const-string v7, "charging_guarder_notification"

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x5070143

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object p0, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    const v6, 0x106001c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v5, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string v0, "sys"

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method static synthetic qbh(Lcom/android/server/wtn;)I
    .locals 2

    iget v0, p0, Lcom/android/server/wtn;->Gd:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wtn;->Gd:I

    return v0
.end method

.method private qm()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wtn;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wtn;->mHandler:Lcom/android/server/wtn$sis;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wtn;->mHandler:Lcom/android/server/wtn$sis;

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wtn;->hb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    int-to-double v2, p0

    const-wide v4, 0x4069980000000000L    # 204.75

    cmpl-double p0, v2, v4

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static synthetic rtg(Lcom/android/server/wtn;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wtn;->Dd:I

    return p1
.end method

.method static synthetic rtg(Lcom/android/server/wtn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wtn;->mCharging:Z

    return p0
.end method

.method static synthetic rtg(Lcom/android/server/wtn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wtn;->zd:Z

    return p1
.end method

.method static synthetic sis(Lcom/android/server/wtn;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wtn;->Fd:I

    return p1
.end method

.method static synthetic sis(Lcom/android/server/wtn;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wtn;->Cd:J

    return-wide v0
.end method

.method static synthetic sis(Lcom/android/server/wtn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wtn;->xd:Z

    return p1
.end method

.method static synthetic ssp(Lcom/android/server/wtn;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wtn;->wd:I

    return p0
.end method

.method static synthetic ssp(Lcom/android/server/wtn;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wtn;->mState:I

    return p1
.end method

.method static synthetic ssp(Lcom/android/server/wtn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wtn;->Ed:Z

    return p1
.end method

.method static synthetic tsu(Lcom/android/server/wtn;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wtn;->Gd:I

    return p1
.end method

.method static synthetic tsu(Lcom/android/server/wtn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wtn;->Bd:Z

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/wtn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wtn;->yd:Z

    return p1
.end method

.method static synthetic ugm(Lcom/android/server/wtn;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wtn;->td:J

    return-wide v0
.end method

.method static synthetic vdb(Lcom/android/server/wtn;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wtn;->rd:J

    return-wide v0
.end method

.method static synthetic wtn(Lcom/android/server/wtn;)I
    .locals 2

    iget v0, p0, Lcom/android/server/wtn;->Fd:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wtn;->Fd:I

    return v0
.end method

.method static synthetic you(Lcom/android/server/wtn;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wtn;->wd:I

    return p1
.end method

.method static synthetic you(Lcom/android/server/wtn;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wtn;->qd:J

    return-wide v0
.end method

.method static synthetic you(Lcom/android/server/wtn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wtn;->mCharging:Z

    return p1
.end method

.method static synthetic ywr(Lcom/android/server/wtn;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wtn;->Gd:I

    return p0
.end method

.method static synthetic zgw(Lcom/android/server/wtn;)Landroid/app/AlarmManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wtn;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/wtn;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wtn;->vd:I

    return p0
.end method

.method static synthetic zta(Lcom/android/server/wtn;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wtn;->vd:I

    return p1
.end method

.method static synthetic zta(Lcom/android/server/wtn;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wtn;->ud:J

    return-wide p1
.end method

.method static synthetic zta(Lcom/android/server/wtn;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wtn;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/wtn;Ljava/lang/String;)Landroid/app/Notification;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wtn;->gb(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/wtn;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wtn;->oxb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wtn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wtn;->Bd:Z

    return p1
.end method


# virtual methods
.method public D()V
    .locals 3

    const-string v0, "1"

    const-string v1, "/sys/class/power_supply/battery/op_disable_charge"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wtn;->oxb(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wtn;->mState:I

    iget-object v1, p0, Lcom/android/server/wtn;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "charging_optimized_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableCharging: mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wtn;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusChargingGuarder"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public E()V
    .locals 6

    const-string v0, "OnePlusChargingGuarder"

    const-string v1, "0"

    const-string v2, "/sys/class/power_supply/battery/op_disable_charge"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wtn;->oxb(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wtn;->mState:I

    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    const-string v2, "android"

    const/4 v3, 0x0

    const v4, 0x33954bd

    const/4 v5, -0x1

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel notification exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/wtn;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "charging_optimized_status"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCharging: mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wtn;->mState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public F()I
    .locals 4

    const/16 p0, 0xa

    const/4 v0, 0x0

    :try_start_0
    new-array v1, p0, [C

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/class/power_supply/bms/battery_health"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2, v1, v0, p0}, Ljava/io/FileReader;->read([CII)I

    move-result p0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v0, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string p0, "OnePlusChargingGuarder"

    const-string v1, "Can\'t get device health w /sys/class/power_supply/bms/battery_health"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public G()I
    .locals 2

    iget-object p0, p0, Lcom/android/server/wtn;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "charging_guarder_enabled"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public H()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "opcg_recover_charge_data"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wtn;->ud:J

    :cond_0
    iget-object v0, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "opcg_sleep_time_data"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wtn;->qd:J

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wtn;->rd:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initPersistData:mSleepStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/wtn;->qd:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mSleepDuration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/wtn;->rd:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OnePlusChargingGuarder"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wtn;->N()V

    :cond_2
    return-void
.end method

.method public I()Z
    .locals 1

    iget p0, p0, Lcom/android/server/wtn;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public J()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wtn;->mHandler:Lcom/android/server/wtn$sis;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wtn;->mHandler:Lcom/android/server/wtn$sis;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public K()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xb

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-virtual {v2, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    invoke-virtual {v2, v5, v4}, Ljava/util/Calendar;->set(II)V

    const-wide/16 v5, 0x3e8

    add-long/2addr v0, v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v0, v0, v5

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    :goto_0
    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/wtn;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/wtn;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v5, "net.oneplus.charingguarder.intent.mdm"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wtn;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, v4, v2, v3, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "it will set a alarm to report mdm data in "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusChargingGuarder"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public L()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/server/wtn;->qd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wtn;->rd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wtn;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "opcg_sleep_time_data"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public M()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wtn;->mHandler:Lcom/android/server/wtn$sis;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public N()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wtn;->pd:Ljava/time/LocalTime;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wtn;->pd:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    :cond_0
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wtn;->qd:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSleepStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wtn;->qd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusChargingGuarder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wtn;->L()V

    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "**** OnePlusChargingGuarder ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSleepStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wtn;->qd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSleepDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wtn;->rd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wtn;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOPCharingGuarderEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wtn;->vd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWirelessChargingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wtn;->Dd:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public sis(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/wtn;->rd:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSleepDuration:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/wtn;->rd:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OnePlusChargingGuarder"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wtn;->N()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wtn;->Bd:Z

    return-void
.end method

.method public tsu(J)V
    .locals 2

    iput-wide p1, p0, Lcom/android/server/wtn;->qd:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSleepStart:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/wtn;->qd:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusChargingGuarder"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public vdb(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string p0, "BufferedReader close exception :"

    const-string v0, "OnePlusChargingGuarder"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    move-object p1, v1

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, p1

    move-object p1, v2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v2, p1

    :goto_0
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readNodeValue IO exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move-object p1, v2

    :goto_2
    return-object p1

    :goto_3
    if-eqz p1, :cond_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    throw v1
.end method

.method public zta(Ljava/time/LocalTime;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wtn;->pd:Ljava/time/LocalTime;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSleepStartLocalTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wtn;->pd:Ljava/time/LocalTime;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusChargingGuarder"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public zta(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "advance_period"

    const-wide/32 v1, 0x249f00

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wtn;->td:J

    const-string v0, "disable_charge_optimizated_period"

    const-wide/32 v1, 0x6ddd00

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wtn;->Cd:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] mAdvancePeriod = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wtn;->td:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusChargingGuarder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/wtn;->vd:I

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/server/wtn;->vd:I

    const-string v4, "function_option"

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iput p1, p0, Lcom/android/server/wtn;->vd:I

    iget-object p1, p0, Lcom/android/server/wtn;->mResolver:Landroid/content/ContentResolver;

    iget v0, p0, Lcom/android/server/wtn;->vd:I

    const-string v2, "charging_guarder_enabled"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] mOPCharingGuarderEnabled = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wtn;->vd:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "function_option could not set to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", it can only set to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
