.class public Lcom/android/server/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/IOpWirelessChargeDisconnectDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/z$zta;
    }
.end annotation


# static fields
.field private static final Am:I = 0x32

.field private static final CONFIG_NAME:Ljava/lang/String; = "WirelessChargeDisconnect"

.field private static final DEBUG:Z

.field public static final FEATURE_SUPPORT:Z

.field private static final TAG:Ljava/lang/String; = "WirelessChargeDisconnectDetector"

.field private static final om:Ljava/lang/String; = "WirelessChargeDisconnectDetector"

.field private static final pm:Ljava/lang/String; = "/sys/class/power_supply/wireless/icon_delay"

.field private static final qm:I = 0x1

.field private static final rm:I = 0x2

.field private static final sm:I = 0x3

.field private static final tm:I = 0x4

.field private static final um:J = 0x1770L

.field private static final vm:J = 0x1f4L

.field private static final wm:J = 0x320L

.field private static final xm:F = 0.2f

.field private static final ym:F = 0.2f

.field private static final zm:F = 0.2f


# instance fields
.field private Yl:Landroid/content/Context;

.field private Zl:Landroid/content/Intent;

.field private _l:Landroid/content/Intent;

.field private am:Z

.field private bm:J

.field private cm:J

.field private dm:F

.field private em:F

.field private enable:Z

.field private fm:F

.field private gm:F

.field private hm:F

.field private im:F

.field private final jm:Landroid/hardware/SensorEventListener;

.field private km:Z

.field private lm:Z

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mGravitySensor:Landroid/hardware/Sensor;

.field private mHandler:Lcom/android/server/z$zta;

.field private final mMotionListener:Landroid/hardware/SensorEventListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSamplingInterval:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mm:J

.field private nm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/z;->DEBUG:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x147

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/z;->FEATURE_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/z;->enable:Z

    const-wide/16 v1, 0x1770

    iput-wide v1, p0, Lcom/android/server/z;->mm:J

    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Lcom/android/server/z;->bm:J

    const-wide/16 v1, 0x320

    iput-wide v1, p0, Lcom/android/server/z;->cm:J

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/android/server/z;->gm:F

    iput v1, p0, Lcom/android/server/z;->hm:F

    iput v1, p0, Lcom/android/server/z;->im:F

    const/16 v1, 0x32

    iput v1, p0, Lcom/android/server/z;->mSamplingInterval:I

    new-instance v1, Lcom/android/server/w;

    invoke-direct {v1, p0}, Lcom/android/server/w;-><init>(Lcom/android/server/z;)V

    iput-object v1, p0, Lcom/android/server/z;->jm:Landroid/hardware/SensorEventListener;

    new-instance v1, Lcom/android/server/x;

    invoke-direct {v1, p0}, Lcom/android/server/x;-><init>(Lcom/android/server/z;)V

    iput-object v1, p0, Lcom/android/server/z;->mMotionListener:Landroid/hardware/SensorEventListener;

    iget-boolean v1, p0, Lcom/android/server/z;->enable:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/z;->ra(Z)V

    return-void
.end method

.method private Vm()V
    .locals 3

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/z;->Yl:Landroid/content/Context;

    const-string v2, "WirelessChargeDisconnect"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/z;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private Wm()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/z;->Yl:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/z;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/z;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/z;->mGravitySensor:Landroid/hardware/Sensor;

    return-void
.end method

.method private Xm()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/z;->mHandler:Lcom/android/server/z$zta;

    new-instance v1, Lcom/android/server/zta;

    invoke-direct {v1, p0}, Lcom/android/server/zta;-><init>(Lcom/android/server/z;)V

    iget-wide v2, p0, Lcom/android/server/z;->bm:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private Ym()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/z;->mGravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/z;->lm:Z

    if-nez v0, :cond_0

    const-string v0, "start detecting motion"

    invoke-direct {p0, v0}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/z;->mHandler:Lcom/android/server/z$zta;

    new-instance v1, Lcom/android/server/rtg;

    invoke-direct {v1, p0}, Lcom/android/server/rtg;-><init>(Lcom/android/server/z;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/z;->lm:Z

    iget-object v0, p0, Lcom/android/server/z;->mHandler:Lcom/android/server/z$zta;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/server/z;->mHandler:Lcom/android/server/z$zta;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/z;->mm:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private Zm()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/z;->mGravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/z;->lm:Z

    if-eqz v0, :cond_0

    const-string v0, "stop detecting motion"

    invoke-direct {p0, v0}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/z;->mHandler:Lcom/android/server/z$zta;

    new-instance v1, Lcom/android/server/ssp;

    invoke-direct {v1, p0}, Lcom/android/server/ssp;-><init>(Lcom/android/server/z;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/z;->lm:Z

    iget-object p0, p0, Lcom/android/server/z;->mHandler:Lcom/android/server/z$zta;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private dump()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/z;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deferTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/z;->mm:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordDockGravityDelay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/z;->bm:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordDockGravityTimeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/z;->cm:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGravityOffsetX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/z;->gm:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGravityOffsetY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/z;->hm:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGravityOffsetZ = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/z;->im:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSamplingInterval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/z;->mSamplingInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    return-void
.end method

.method private motionLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/z;->Zl:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/server/z;->mHandler:Lcom/android/server/z$zta;

    new-instance v3, Lcom/android/server/sis;

    invoke-direct {v3, p0, v2}, Lcom/android/server/sis;-><init>(Lcom/android/server/z;Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/android/server/z;->Zl:Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/android/server/z;->_l:Landroid/content/Intent;

    if-eqz v0, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/server/z;->mHandler:Lcom/android/server/z$zta;

    new-instance v3, Lcom/android/server/tsu;

    invoke-direct {v3, v2}, Lcom/android/server/tsu;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/android/server/z;->_l:Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private pb(Ljava/lang/String;)V
    .locals 0

    sget-boolean p0, Lcom/android/server/z;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "WirelessChargeDisconnectDetector"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private processSampleLocked(FFF)V
    .locals 2

    iget v0, p0, Lcom/android/server/z;->dm:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/z;->gm:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/server/z;->em:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/z;->hm:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/server/z;->fm:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/z;->im:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/z;->mHandler:Lcom/android/server/z$zta;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/server/z;->Zm()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/z;->km:Z

    iput-boolean v0, p0, Lcom/android/server/z;->nm:Z

    invoke-direct {p0}, Lcom/android/server/z;->motionLocked()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detect trigger. trigger gravity x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "; trigger gravity y "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "; trigger gravity z "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private ra(Z)V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/wireless/icon_delay"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, "1"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    :goto_0
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_1

    :cond_0
    const-string p1, "0"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    move-object v1, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_5

    :catch_2
    move-exception p1

    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/z;->pb(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_4
    return-void

    :goto_5
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    :cond_3
    :goto_6
    throw p1
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "record_gravity_timeout"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_1
    const-string v5, "defer_time"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_2

    :sswitch_2
    const-string v5, "sensor_sampling_interval"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_3
    const-string v5, "enable"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_2

    :sswitch_4
    const-string v5, "record_gravity_delay"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_5
    const-string v5, "gravity_trigger_offset_z"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_6
    const-string v5, "gravity_trigger_offset_y"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_7
    const-string v5, "gravity_trigger_offset_x"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v4

    :goto_2
    const-string v4, "value"

    packed-switch v3, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    :try_start_1
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/z;->mSamplingInterval:I

    goto :goto_4

    :pswitch_1
    new-instance v3, Ljava/lang/Double;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/android/server/z;->im:F

    goto :goto_4

    :pswitch_2
    new-instance v3, Ljava/lang/Double;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/android/server/z;->hm:F

    goto :goto_4

    :pswitch_3
    new-instance v3, Ljava/lang/Double;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/android/server/z;->gm:F

    goto :goto_4

    :pswitch_4
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/z;->cm:J

    goto :goto_4

    :pswitch_5
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/z;->bm:J

    goto :goto_4

    :pswitch_6
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/z;->mm:J

    goto :goto_4

    :pswitch_7
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/z;->enable:Z

    iget-boolean v2, p0, Lcom/android/server/z;->enable:Z

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    move v6, v0

    :goto_3
    invoke-direct {p0, v6}, Lcom/android/server/z;->ra(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/server/z;->dump()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x734e87bc -> :sswitch_7
        -0x734e87bb -> :sswitch_6
        -0x734e87ba -> :sswitch_5
        -0x669e071c -> :sswitch_4
        -0x4d6ada7d -> :sswitch_3
        -0x1dfe4328 -> :sswitch_2
        -0x9c94086 -> :sswitch_1
        0x1e0e3882 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method static synthetic rtg(Lcom/android/server/z;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iget-object p0, p0, Lcom/android/server/z;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/z;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/z;->dm:F

    return p1
.end method

.method static synthetic sis(Lcom/android/server/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/z;->Zm()V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/z;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/z;->am:Z

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/z;->motionLocked()V

    return-void
.end method

.method static synthetic you(Lcom/android/server/z;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/z;->fm:F

    return p1
.end method

.method static synthetic you(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/z;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/z;->lm:Z

    return p0
.end method

.method static synthetic you(Lcom/android/server/z;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/z;->nm:Z

    return p1
.end method

.method static synthetic zta(Lcom/android/server/z;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/z;->em:F

    return p1
.end method

.method static synthetic zta(Lcom/android/server/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/z;->Vm()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/z;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/z;->processSampleLocked(FFF)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/z;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/z;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/z;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/z;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/z;->km:Z

    return p1
.end method


# virtual methods
.method public synthetic La()V
    .locals 2

    const-string v0, "end record gravity"

    invoke-direct {p0, v0}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/z;->am:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last record gravity x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/z;->dm:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last record gravity y "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/z;->em:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last record gravity z "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/z;->fm:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/z;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/z;->jm:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synthetic Ma()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/z;->am:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/z;->dm:F

    iput v0, p0, Lcom/android/server/z;->em:F

    iput v0, p0, Lcom/android/server/z;->fm:F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "start record gravity"

    invoke-direct {p0, v0}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/z;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/z;->jm:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/z;->mGravitySensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/server/z;->mSamplingInterval:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/android/server/z;->mHandler:Lcom/android/server/z$zta;

    new-instance v1, Lcom/android/server/you;

    invoke-direct {v1, p0}, Lcom/android/server/you;-><init>(Lcom/android/server/z;)V

    iget-wide v2, p0, Lcom/android/server/z;->cm:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synthetic Na()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/z;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/z;->mMotionListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/z;->mGravitySensor:Landroid/hardware/Sensor;

    iget p0, p0, Lcom/android/server/z;->mSamplingInterval:I

    mul-int/lit16 p0, p0, 0x3e8

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public synthetic Oa()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/z;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/z;->mMotionListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public copyPowerDisconnectedBroadcast(Landroid/content/Intent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/z;->enable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/z;->Zl:Landroid/content/Intent;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public fakeBatteryChangedBroadcast(Landroid/content/Intent;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/z;->enable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "plugged"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/z;->km:Z

    if-nez v1, :cond_3

    const-string v1, "wireless_status"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "wireless_fastcharge_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/z;->nm:Z

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/server/z;->_l:Landroid/content/Intent;

    const-string v1, "wireless_fastcharge_type"

    iget-boolean v4, p0, Lcom/android/server/z;->nm:Z

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/android/server/z;->nm:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x4

    const-string v0, "plugged"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "status"

    invoke-virtual {p1, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "wireless_status"

    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public initInstance(Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Lcom/android/server/z;->Yl:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/z;->mPowerManager:Landroid/os/PowerManager;

    iget-object p1, p0, Lcom/android/server/z;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "WirelessChargeDisconnectDetector"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/z;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/z$zta;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/android/server/z$zta;-><init>(Lcom/android/server/z;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/z;->mHandler:Lcom/android/server/z$zta;

    invoke-direct {p0}, Lcom/android/server/z;->Wm()V

    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/z;->Yl:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/z;->mHandler:Lcom/android/server/z$zta;

    new-instance v3, Lcom/android/server/y;

    invoke-direct {v3, p0}, Lcom/android/server/y;-><init>(Lcom/android/server/z;)V

    const-string v4, "WirelessChargeDisconnect"

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/z;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, Lcom/android/server/z;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, Lcom/android/server/z;->mHandler:Lcom/android/server/z$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public isFakingWirelessCharging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/z;->enable:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/z;->km:Z

    return p0
.end method

.method public shouldAbortPowerConnectedBroadcast(I)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/z;->enable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/z;->Zm()V

    iget-boolean v0, p0, Lcom/android/server/z;->km:Z

    iput-boolean v1, p0, Lcom/android/server/z;->km:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/z;->Zl:Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/server/z;->_l:Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/android/server/z;->nm:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/z;->mHandler:Lcom/android/server/z$zta;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/z;->Xm()V

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public shouldDeferWirelessDisconnection()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/z;->enable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/z;->am:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/z;->am:Z

    iget-object v0, p0, Lcom/android/server/z;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/z;->jm:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string v0, "should defer: false"

    invoke-direct {p0, v0}, Lcom/android/server/z;->pb(Ljava/lang/String;)V

    monitor-exit p0

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/z;->Ym()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/z;->km:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic zta(Landroid/content/Intent;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/z;->Yl:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
