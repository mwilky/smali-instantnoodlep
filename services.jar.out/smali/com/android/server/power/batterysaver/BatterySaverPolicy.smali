.class public Lcom/android/server/power/batterysaver/BatterySaverPolicy;
.super Landroid/database/ContentObserver;
.source "BatterySaverPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;,
        Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;,
        Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyLevel;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field private static final DEFAULT_FULL_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field private static final KEY_ACTIVATE_DATASAVER_DISABLED:Ljava/lang/String; = "datasaver_disabled"

.field private static final KEY_ACTIVATE_FIREWALL_DISABLED:Ljava/lang/String; = "firewall_disabled"

.field private static final KEY_ADJUST_BRIGHTNESS_DISABLED:Ljava/lang/String; = "adjust_brightness_disabled"

.field private static final KEY_ADJUST_BRIGHTNESS_FACTOR:Ljava/lang/String; = "adjust_brightness_factor"

.field private static final KEY_ADVERTISE_IS_ENABLED:Ljava/lang/String; = "advertise_is_enabled"

.field private static final KEY_ANIMATION_DISABLED:Ljava/lang/String; = "animation_disabled"

.field private static final KEY_AOD_DISABLED:Ljava/lang/String; = "aod_disabled"

.field private static final KEY_CPU_FREQ_INTERACTIVE:Ljava/lang/String; = "cpufreq-i"

.field private static final KEY_CPU_FREQ_NONINTERACTIVE:Ljava/lang/String; = "cpufreq-n"

.field private static final KEY_ENABLE_NIGHT_MODE:Ljava/lang/String; = "enable_night_mode"

.field private static final KEY_FORCE_ALL_APPS_STANDBY:Ljava/lang/String; = "force_all_apps_standby"

.field private static final KEY_FORCE_BACKGROUND_CHECK:Ljava/lang/String; = "force_background_check"

.field private static final KEY_FULLBACKUP_DEFERRED:Ljava/lang/String; = "fullbackup_deferred"

.field private static final KEY_GPS_MODE:Ljava/lang/String; = "gps_mode"

.field private static final KEY_KEYVALUE_DEFERRED:Ljava/lang/String; = "keyvaluebackup_deferred"

.field private static final KEY_LAUNCH_BOOST_DISABLED:Ljava/lang/String; = "launch_boost_disabled"

.field private static final KEY_OPTIONAL_SENSORS_DISABLED:Ljava/lang/String; = "optional_sensors_disabled"

.field private static final KEY_QUICK_DOZE_ENABLED:Ljava/lang/String; = "quick_doze_enabled"

.field private static final KEY_SOUNDTRIGGER_DISABLED:Ljava/lang/String; = "soundtrigger_disabled"

.field private static final KEY_VIBRATION_DISABLED:Ljava/lang/String; = "vibration_disabled"

.field static final OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final POLICY_LEVEL_ADAPTIVE:I = 0x1

.field static final POLICY_LEVEL_FULL:I = 0x2

.field static final POLICY_LEVEL_OFF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BatterySaverPolicy"


# instance fields
.field private mAccessibilityEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mAdaptiveDeviceSpecificSettings:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mAdaptiveSettings:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDeviceSpecificSettings:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDeviceSpecificSettingsSource:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDisableVibrationEffective:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mEventLogKeys:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPolicyLevel:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSettings:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v21, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-object/from16 v0, v21

    new-instance v1, Landroid/util/ArrayMap;

    move-object/from16 v16, v1

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    move-object/from16 v17, v1

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v20}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZLandroid/util/ArrayMap;Landroid/util/ArrayMap;ZZI)V

    sput-object v21, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    sput-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v3, 0x112

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f333333    # 0.7f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    move v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    new-instance v1, Landroid/util/ArrayMap;

    move-object/from16 v17, v1

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    move-object/from16 v18, v1

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v21}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZLandroid/util/ArrayMap;Landroid/util/ArrayMap;ZZI)V

    sput-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_FULL_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_FULL_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    return-void
.end method

.method private dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ": \'"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "\'"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dumpPolicyLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  advertise_is_enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  vibration_disabled:config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  vibration_disabled:effective="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Z

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  animation_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  fullbackup_deferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  keyvaluebackup_deferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  firewall_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  datasaver_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  launch_boost_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    adjust_brightness_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  adjust_brightness_factor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  gps_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  force_all_apps_standby="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  force_background_check="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    optional_sensors_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  aod_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  soundtrigger_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  quick_doze_enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  enable_night_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Interactive File values:\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForInteractive:Landroid/util/ArrayMap;

    const-string v1, "      "

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArrayMap;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "    Noninteractive File values:\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForNoninteractive:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArrayMap;)V

    return-void
.end method

.method private getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .locals 2

    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-object v0
.end method

.method private refreshSettings()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "battery_saver_constants"

    invoke-virtual {p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "battery_saver_device_specific_constants"

    invoke-virtual {p0, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery_saver_device_specific_constants"

    iput-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getDeviceSpecificConfigResId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    const-string v3, "(overlay)"

    iput-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    :cond_1
    const-string v3, "battery_saver_adaptive_constants"

    invoke-virtual {p0, v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "battery_saver_adaptive_device_specific_constants"

    invoke-virtual {p0, v4}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updateConstantsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mListeners:Ljava/util/List;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;

    move-object v1, v5

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverPolicy$7a-wfvqpjaa389r6FVZsJX98cd8;

    invoke-direct {v2, p0, v1}, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverPolicy$7a-wfvqpjaa389r6FVZsJX98cd8;-><init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;[Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateConstantsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptiveSettings:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptiveDeviceSpecificSettings:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptiveSettings:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptiveDeviceSpecificSettings:Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_FULL_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-static {p1, p2, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromSettings(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {v2, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    sget-object v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-static {p3, p4, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromSettings(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iput-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    return v0
.end method

.method private updatePolicyDependenciesLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDisableVibrationEffective:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    if-eqz v2, :cond_1

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    if-eqz v2, :cond_2

    const-string v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDisableVibrationEffective:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    if-eqz v2, :cond_4

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    if-eqz v2, :cond_6

    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    if-eqz v2, :cond_7

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    if-eqz v2, :cond_8

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    if-eqz v2, :cond_9

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    if-eqz v2, :cond_a

    const-string v2, "b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "l"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    if-eqz v2, :cond_c

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "o"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    if-eqz v2, :cond_e

    const-string/jumbo v2, "q"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEventLogKeys:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Battery saver policy (*NOTE* they only apply when battery saver is ON):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Settings: battery_saver_constants"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Adaptive Settings: battery_saver_adaptive_constants"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptiveSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Adaptive Device Specific Settings: battery_saver_adaptive_device_specific_constants"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptiveDeviceSpecificSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAccessibilityEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPolicyLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  "

    const-string v2, "full"

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpPolicyLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V

    const-string v1, "  "

    const-string v2, "default adaptive"

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpPolicyLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V

    const-string v1, "  "

    const-string v2, "current adaptive"

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpPolicyLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBatterySaverPolicy(I)Landroid/os/PowerSaveState;
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v1

    new-instance v2, Landroid/os/PowerSaveState$Builder;

    invoke-direct {v2}, Landroid/os/PowerSaveState$Builder;-><init>()V

    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setGlobalBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    goto/16 :goto_2

    :pswitch_1
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :pswitch_2
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :pswitch_3
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :pswitch_4
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :pswitch_5
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :pswitch_6
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :pswitch_7
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :pswitch_8
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :pswitch_9
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    invoke-virtual {v3, v4}, Landroid/os/PowerSaveState$Builder;->setBrightnessFactor(F)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :pswitch_a
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :pswitch_b
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :pswitch_c
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :pswitch_d
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :pswitch_e
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDisableVibrationEffective:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :pswitch_f
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    if-nez v3, :cond_1

    iget v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    invoke-virtual {v4, v5}, Landroid/os/PowerSaveState$Builder;->setLocationMode(I)Landroid/os/PowerSaveState$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v4

    monitor-exit v0

    return-object v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method getDeviceSpecificConfigResId()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const v0, 0x104013a

    return v0
.end method

.method public getFileValues(Z)Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForInteractive:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForNoninteractive:Landroid/util/ArrayMap;

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGpsMode()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v1

    iget v1, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLaunchBoostDisabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$refreshSettings$1$BatterySaverPolicy([Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2, p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;->onBatterySaverPolicyChanged(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$systemReady$0$BatterySaverPolicy(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->refreshSettings()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->refreshSettings()V

    return-void
.end method

.method resetAdaptivePolicyLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z

    move-result v0

    return v0
.end method

.method public setAccessibilityEnabledForTest(Z)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Z

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "BatterySaverPolicy"

    const-string/jumbo v2, "setAdaptivePolicy given null policy"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    return v2

    :cond_2
    return v0
.end method

.method setPolicyLevel(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const-string v1, "BatterySaverPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPolicyLevel invalid level given: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_1
    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    nop

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method shouldAdvertiseIsEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    const-string v1, "BatterySaverPolicy"

    invoke-static {v1, v0}, Lcom/android/internal/util/ConcurrentUtils;->wtfIfLockHeld(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_saver_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_saver_device_specific_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_saver_adaptive_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_saver_adaptive_device_specific_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    new-instance v1, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverPolicy$rfw31Sb8JX1OVD2rGHGtCXyfop8;

    invoke-direct {v1, p0}, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverPolicy$rfw31Sb8JX1OVD2rGHGtCXyfop8;-><init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->onChange(ZLandroid/net/Uri;)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public toEventLogString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEventLogKeys:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateConstantsLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updateConstantsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
