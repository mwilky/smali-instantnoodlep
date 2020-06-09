.class public Lcom/android/server/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/power/IOpFastCharge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/c$tsu;,
        Lcom/android/server/c$sis;,
        Lcom/android/server/c$zta;,
        Lcom/android/server/c$you;
    }
.end annotation


# static fields
.field private static final Ai:Ljava/lang/String; = "/sys/class/power_supply/wireless/real_type"

.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final Bi:Ljava/lang/String; = "/proc/wireless/enable_tx"

.field private static final Ci:Ljava/lang/String; = "sys/class/power_supply/usb/real_type"

.field private static final DEBUG:Z

.field private static final Di:Ljava/lang/String; = "/proc/wireless/deviated"

.field private static Ei:Lcom/android/server/c$sis; = null

.field private static final Sd:Ljava/lang/String; = "/sys/class/power_supply/wireless/online"

.field private static final TAG:Ljava/lang/String; = "FastCharge"

.field private static final Td:Ljava/lang/String; = "/proc/wireless/quiet_mode"

.field private static mContext:Landroid/content/Context; = null

.field private static final wi:Z = false

.field private static final xi:Ljava/lang/String; = "BatteryLed"

.field private static final yi:Ljava/lang/String; = "/sys/class/power_supply/battery/fastchg_status"

.field private static final zi:Ljava/lang/String; = "/proc/enhance_dash"


# instance fields
.field private ai:Z

.field private bi:Z

.field private di:Z

.field private ei:Z

.field private fi:Z

.field private gi:Z

.field private hi:Z

.field private ii:Z

.field private ji:Z

.field private ki:Z

.field private li:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBatteryLevel:I

.field private mBatteryReceiver:Lcom/android/server/c$zta;

.field private mBatteryStatus:I

.field private mContentObserver:Lcom/android/server/c$you;

.field private mDefLowBatteryWarningLevel:I

.field private final mLock:Ljava/lang/Object;

.field private mPlugType:I

.field private mi:Z

.field private ni:Z

.field private oi:I

.field private qi:I

.field private ri:Z

.field private ti:Ljava/lang/String;

.field private ui:Z

.field private vi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/c;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/c;->ai:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/c;->mLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/server/c;->ri:Z

    return-void
.end method

.method private Cm()I
    .locals 6

    const-string p0, "getFastChargeType io close exception :"

    const-string v0, "FastCharge"

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/enhance_dash"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

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

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v3, v2

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v3, v2

    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFastChargeType io exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    const-string p0, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :try_start_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFastChargeType NumberFormatException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x1

    :goto_3
    sget-boolean v1, Lcom/android/server/c;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FastChargeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0

    :catchall_1
    move-exception v1

    :goto_4
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    throw v1
.end method

.method private Dm()Z
    .locals 6

    const-string p0, "Failure in reading charger type"

    const-string v0, "FastCharge"

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/power_supply/battery/fastchg_status"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v0, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v2
.end method

.method private Em()V
    .locals 4

    sget-object p0, Lcom/android/server/c;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/server/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "battery_light_low_color"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/android/server/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "battery_light_medium_color"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/android/server/c;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0093

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "battery_light_full_color"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sget-object v2, Lcom/android/server/c;->Ei:Lcom/android/server/c$sis;

    invoke-virtual {v2, v0, v1, p0}, Lcom/android/server/c$sis;->tsu(III)V

    sget-object p0, Lcom/android/server/c;->Ei:Lcom/android/server/c$sis;

    invoke-virtual {p0}, Lcom/android/server/c$sis;->updateLightsLocked()V

    return-void
.end method

.method private Fm()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/c;->fi:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/c;->Dm()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/c;->ei:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/c;->ei:Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/c;->ki:Z

    if-eqz v0, :cond_1

    const-string v0, "/sys/class/power_supply/wireless/real_type"

    invoke-virtual {p0, v0}, Lcom/android/server/c;->vdb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DASH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/c;->gi:Z

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/c;->gi:Z

    :goto_1
    iget-boolean v0, p0, Lcom/android/server/c;->li:Z

    if-eqz v0, :cond_2

    const-string v0, "/proc/wireless/enable_tx"

    invoke-virtual {p0, v0}, Lcom/android/server/c;->vdb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/c;->ii:Z

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/c;->ii:Z

    :goto_2
    invoke-direct {p0}, Lcom/android/server/c;->Cm()I

    move-result v0

    iput v0, p0, Lcom/android/server/c;->oi:I

    sget-boolean v0, Lcom/android/server/c;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastChargeStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/c;->ei:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FastCharge"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method static synthetic access$100()Lcom/android/server/c$sis;
    .locals 1

    sget-object v0, Lcom/android/server/c;->Ei:Lcom/android/server/c$sis;

    return-object v0
.end method

.method static synthetic access$700()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/c;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/c;->DEBUG:Z

    return v0
.end method

.method static synthetic bio(Lcom/android/server/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/c;->Em()V

    return-void
.end method

.method static synthetic cno(Lcom/android/server/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/c;->di:Z

    return p0
.end method

.method static synthetic igw(Lcom/android/server/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/c;->vi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic kth(Lcom/android/server/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/c;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method private obl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p0, "write sucess!"

    const-string v0, "FastCharge"

    :try_start_0
    invoke-static {p1, p2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p1
.end method

.method static synthetic rtg(Lcom/android/server/c;)I
    .locals 0

    iget p0, p0, Lcom/android/server/c;->mDefLowBatteryWarningLevel:I

    return p0
.end method

.method static synthetic sis(Lcom/android/server/c;)I
    .locals 0

    iget p0, p0, Lcom/android/server/c;->mBatteryLevel:I

    return p0
.end method

.method static synthetic ssp(Lcom/android/server/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/c;->ei:Z

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/c;)I
    .locals 0

    iget p0, p0, Lcom/android/server/c;->mBatteryStatus:I

    return p0
.end method

.method static synthetic you(Lcom/android/server/c;)I
    .locals 0

    iget p0, p0, Lcom/android/server/c;->mPlugType:I

    return p0
.end method

.method static synthetic you(Lcom/android/server/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/c;->di:Z

    return p1
.end method

.method static synthetic zta(Lcom/android/server/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/c;->vi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/c;->obl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/c;->bi:Z

    return p0
.end method

.method static synthetic zta(Lcom/android/server/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/c;->bi:Z

    return p1
.end method


# virtual methods
.method public addIntentExtra(Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    const/4 v6, 0x5

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v4

    :goto_1
    new-array v7, v4, [I

    const/16 v8, 0x112

    aput v8, v7, v5

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7

    const-string v9, "enable"

    const/4 v10, 0x0

    if-eqz v7, :cond_d

    const-string v7, "level"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/16 v10, 0x64

    mul-int/2addr v7, v10

    const-string v11, "scale"

    invoke-virtual {v1, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    div-int/2addr v7, v10

    const-string v10, "temperature"

    invoke-virtual {v1, v10, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "0"

    const/16 v12, 0xf

    const-string v13, "reverse_wireless_disable_reason"

    const-string v14, "null"

    const-string v15, "FastCharge"

    const-string v8, "/proc/wireless/enable_tx"

    if-gt v7, v12, :cond_4

    invoke-virtual {v0, v8}, Lcom/android/server/c;->vdb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v4, v0, Lcom/android/server/c;->ai:Z

    invoke-direct {v0, v8, v11}, Lcom/android/server/c;->obl(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "level "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is less than 15%, disable reverse wireless charge"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, v0, Lcom/android/server/c;->vi:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    sget-object v3, Lcom/android/server/c;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "low_power"

    invoke-static {v3, v13, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    const/16 v3, 0x1f4

    if-lt v10, v3, :cond_7

    invoke-virtual {v0, v8}, Lcom/android/server/c;->vdb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v4, v0, Lcom/android/server/c;->ai:Z

    invoke-direct {v0, v8, v11}, Lcom/android/server/c;->obl(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "temperature "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is over than 450, disable reverse wireless charge"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, v0, Lcom/android/server/c;->vi:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    sget-object v3, Lcom/android/server/c;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "temp_over_heat"

    invoke-static {v3, v13, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7
    if-le v7, v12, :cond_8

    const/16 v3, 0x1c2

    if-ge v10, v3, :cond_8

    iget-object v3, v0, Lcom/android/server/c;->vi:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/android/server/c;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v13, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/c;->ai:Z

    const-string v3, "reverse_wireless_disable_reason change to null"

    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v3, "/proc/wireless/deviated"

    invoke-virtual {v0, v3}, Lcom/android/server/c;->vdb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "/sys/class/power_supply/wireless/online"

    invoke-virtual {v0, v3}, Lcom/android/server/c;->vdb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "/sys/class/power_supply/wireless/real_type"

    invoke-virtual {v0, v5}, Lcom/android/server/c;->vdb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v8}, Lcom/android/server/c;->vdb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/proc/wireless/quiet_mode"

    invoke-virtual {v0, v8}, Lcom/android/server/c;->vdb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v11, v0, Lcom/android/server/c;->ti:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/android/server/c;->ui:Z

    if-ne v6, v11, :cond_9

    iget-boolean v11, v0, Lcom/android/server/c;->ai:Z

    if-eqz v11, :cond_c

    :cond_9
    sget-object v11, Lcom/android/server/c;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "reverse_wireless_charging_status"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const-string v14, "disable"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    if-eqz v11, :cond_a

    :goto_2
    sget-object v11, Lcom/android/server/c;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_a
    const-string v13, "charging"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x2

    if-eq v11, v13, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    if-eq v11, v4, :cond_c

    sget-object v11, Lcom/android/server/c;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v12, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_c
    :goto_3
    iput-object v7, v0, Lcom/android/server/c;->ti:Ljava/lang/String;

    iput-boolean v6, v0, Lcom/android/server/c;->ui:Z

    sget-boolean v11, Lcom/android/server/c;->DEBUG:Z

    if-eqz v11, :cond_e

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mChargeType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/c;->oi:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",wirelessStatus="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",wirelessType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",reverseWirelessCharge="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",deviatedWirelessCharge="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",status="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",quietMode="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_d
    move-object v3, v10

    move-object v5, v3

    move-object v7, v5

    move-object v8, v7

    :cond_e
    :goto_4
    const-string v2, "sys/class/power_supply/usb/real_type"

    invoke-virtual {v0, v2}, Lcom/android/server/c;->vdb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "USB_PD"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v6, :cond_f

    move v2, v4

    goto :goto_5

    :cond_f
    const/4 v2, 0x0

    :goto_5
    if-eqz v1, :cond_10

    iget-boolean v6, v0, Lcom/android/server/c;->ei:Z

    const-string v11, "fast_charge"

    invoke-virtual {v1, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v0, v0, Lcom/android/server/c;->oi:I

    const-string v6, "fastcharge_status"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "pd_charge"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-array v0, v4, [I

    const/16 v2, 0x112

    const/4 v4, 0x0

    aput v2, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz v3, :cond_10

    if-eqz v5, :cond_10

    if-eqz v7, :cond_10

    if-eqz v8, :cond_10

    const-string v0, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "wireless_status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "DASH"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "wireless_fastcharge_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "reverse_wireless_charge"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "true"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "deviated_wireless_charge"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "quiet_mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_10
    return-void
.end method

.method public chargeVibration()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/b;

    invoke-direct {v1, p0}, Lcom/android/server/b;-><init>(Lcom/android/server/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getFastChargeStatus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/c;->ei:Z

    return p0
.end method

.method public getLastFastChargeStatus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/c;->ni:Z

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/c;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FastCharge"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/battery/fastchg_status"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/c;->fi:Z

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/power_supply/wireless/real_type"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/server/c;->ki:Z

    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v2, "/proc/wireless/enable_tx"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/android/server/c;->li:Z

    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v2, "/proc/enhance_dash"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/android/server/c;->mi:Z

    :cond_4
    if-eqz p1, :cond_5

    sput-object p1, Lcom/android/server/c;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/c;->mDefLowBatteryWarningLevel:I

    new-instance v0, Lcom/android/server/c$sis;

    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsManager;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/c$sis;-><init>(Lcom/android/server/c;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    sput-object v0, Lcom/android/server/c;->Ei:Lcom/android/server/c$sis;

    :cond_5
    return-void
.end method

.method public registerObserver(ILandroid/os/Handler;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x226

    if-ne p1, v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/server/c$tsu;

    new-instance v3, Lcom/android/server/qeg;

    const-string v4, "battery_led_low_power"

    invoke-direct {v3, p0, p2, v4}, Lcom/android/server/qeg;-><init>(Lcom/android/server/c;Landroid/os/Handler;Ljava/lang/String;)V

    aput-object v3, v2, v1

    new-instance v3, Lcom/android/server/ivd;

    const-string v4, "battery_led_charging"

    invoke-direct {v3, p0, p2, v4}, Lcom/android/server/ivd;-><init>(Lcom/android/server/c;Landroid/os/Handler;Ljava/lang/String;)V

    aput-object v3, v2, v0

    :cond_0
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/android/server/c;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    new-instance v2, Lcom/android/server/a;

    invoke-direct {v2, p0, p2}, Lcom/android/server/a;-><init>(Lcom/android/server/c;Landroid/os/Handler;)V

    sget-object v3, Lcom/android/server/c;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_light_low_color"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v4, "battery_light_medium_color"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v4, "battery_light_full_color"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/c;->Em()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    new-array p1, v0, [I

    const/16 v2, 0x112

    aput v2, p1, v1

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/c;->mContentObserver:Lcom/android/server/c$you;

    if-nez p1, :cond_2

    new-instance p1, Lcom/android/server/c$you;

    sget-object v1, Lcom/android/server/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p1, p0, p2, v1}, Lcom/android/server/c$you;-><init>(Lcom/android/server/c;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object p1, p0, Lcom/android/server/c;->mContentObserver:Lcom/android/server/c$you;

    :cond_2
    iget-object p1, p0, Lcom/android/server/c;->mBatteryReceiver:Lcom/android/server/c$zta;

    if-nez p1, :cond_3

    new-instance p1, Lcom/android/server/c$zta;

    invoke-direct {p1, p0}, Lcom/android/server/c$zta;-><init>(Lcom/android/server/c;)V

    iput-object p1, p0, Lcom/android/server/c;->mBatteryReceiver:Lcom/android/server/c$zta;

    :cond_3
    sget-object p1, Lcom/android/server/c;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "reverse_wireless_disable_reason"

    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/c;->vi:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/c;->vi:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string p2, "null"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iput-boolean v0, p0, Lcom/android/server/c;->ai:Z

    :cond_4
    return-void
.end method

.method public update(Landroid/hardware/health/V1_0/HealthInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/server/c;->mPlugType:I

    goto :goto_1

    :cond_1
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, p0, Lcom/android/server/c;->mBatteryLevel:I

    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v0, p0, Lcom/android/server/c;->mBatteryStatus:I

    invoke-direct {p0}, Lcom/android/server/c;->Fm()V

    invoke-static {}, Lcom/android/server/backlight/OpBacklightManager;->getInstance()Lcom/android/server/backlight/OpBacklightManager;

    move-result-object p0

    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget-boolean p1, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backlight/OpBacklightManager;->qbh(IZ)V

    return-void
.end method

.method public updateLastFastChargeStatus()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/c;->ni:Z

    iget-boolean v1, p0, Lcom/android/server/c;->ei:Z

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/c;->ni:Z

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/c;->hi:Z

    iget-boolean v3, p0, Lcom/android/server/c;->gi:Z

    if-eq v1, v3, :cond_1

    iput-boolean v3, p0, Lcom/android/server/c;->hi:Z

    move v0, v2

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/c;->ji:Z

    iget-boolean v3, p0, Lcom/android/server/c;->ii:Z

    if-eq v1, v3, :cond_2

    iput-boolean v3, p0, Lcom/android/server/c;->ji:Z

    move v0, v2

    :cond_2
    iget v1, p0, Lcom/android/server/c;->qi:I

    iget v3, p0, Lcom/android/server/c;->oi:I

    if-eq v1, v3, :cond_3

    iput v3, p0, Lcom/android/server/c;->qi:I

    move v0, v2

    :cond_3
    return v0
.end method

.method public updateLightsLocked()Z
    .locals 0

    sget-object p0, Lcom/android/server/c;->Ei:Lcom/android/server/c$sis;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/c$sis;->updateLightsLocked()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public vdb(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string p0, "BufferedReader close exception :"

    const-string v0, "FastCharge"

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
