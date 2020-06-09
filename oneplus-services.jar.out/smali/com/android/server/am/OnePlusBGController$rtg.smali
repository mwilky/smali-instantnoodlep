.class public Lcom/android/server/am/OnePlusBGController$rtg;
.super Lcom/android/internal/os/BatterySipper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "rtg"
.end annotation


# instance fields
.field public Ac:D

.field public Bc:D

.field public Cc:D

.field public Dc:D

.field public Ec:D

.field public Fc:D

.field public Gc:D

.field public Hc:D

.field public Ic:D

.field public Jc:D

.field public Kc:D

.field public Lc:D

.field public Mc:J

.field public Nc:D

.field public Oc:D

.field public Pc:D

.field public Qc:D

.field public Rc:D

.field public Sc:D

.field public Tc:D

.field public Uc:D

.field public Vc:D

.field public Wc:D

.field public Xc:D

.field public Yc:D

.field public Zc:D

.field public xc:Lcom/android/server/am/OnePlusBGController$MySipperType;

.field public yc:J

.field public zc:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatterySipper;JI)V
    .locals 4

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUidTotalRunningTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->yc:J

    new-instance p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result p3

    invoke-direct {p2, p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    :cond_0
    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Ac:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Bc:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Cc:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Dc:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Ec:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Fc:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Gc:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Hc:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Ic:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Jc:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Kc:D

    iget-wide p1, p1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Lc:D

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController$rtg;->jm()D

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/OnePlusBGController$MySipperType;)V
    .locals 4

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$rtg;->xc:Lcom/android/server/am/OnePlusBGController$MySipperType;

    return-void
.end method

.method private im()D
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Oc:D

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Pc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Qc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Rc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Sc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Tc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Uc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Vc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Wc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Xc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Yc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Zc:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Nc:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Nc:D

    return-wide v0
.end method

.method private jm()D
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Ac:D

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Bc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Cc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Dc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Ec:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Fc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Gc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Hc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Ic:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Jc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Kc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Lc:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->zc:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->zc:D

    return-wide v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  AccT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->xc:Lcom/android/server/am/OnePlusBGController$MySipperType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") |Run="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Mc:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBGController;->ywr(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Wifi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Pc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Gps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Qc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Cpu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Rc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Sen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Sc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Mob="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Tc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Wak="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Uc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Flh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Wc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Ble="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Xc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Cam="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Vc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Nc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Nc:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Mc:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Oc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Pc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Qc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Rc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Sc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Tc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Uc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Vc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Wc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Xc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Yc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Zc:D

    return-void
.end method

.method public y()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->zc:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/OnePlusBGController$rtg;->yc:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Ac:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Bc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Cc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Dc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Ec:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Fc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Gc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Hc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Ic:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Jc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Kc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Lc:D

    return-void
.end method

.method public zta(Lcom/android/server/am/OnePlusBGController$tsu;Lcom/android/server/am/OnePlusBGController$rtg;)V
    .locals 6

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Mc:J

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$rtg;->yc:J

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->yc:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Mc:J

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Oc:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$rtg;->Ac:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->Ac:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Oc:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Pc:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$rtg;->Bc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->Bc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Pc:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Qc:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$rtg;->Cc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->Cc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Qc:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Rc:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$rtg;->Dc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->Dc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Rc:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Sc:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$rtg;->Ec:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->Ec:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Sc:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Tc:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$rtg;->Fc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->Fc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Tc:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Uc:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$rtg;->Gc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->Gc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Uc:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Vc:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$rtg;->Hc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->Hc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Vc:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Wc:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$rtg;->Ic:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->Ic:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Wc:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Xc:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$rtg;->Jc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->Jc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Xc:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Yc:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$rtg;->Kc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->Kc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Yc:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Zc:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$rtg;->Lc:D

    iget-wide p1, p1, Lcom/android/server/am/OnePlusBGController$tsu;->Lc:D

    sub-double/2addr v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->Zc:D

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController$rtg;->im()D

    return-void
.end method
