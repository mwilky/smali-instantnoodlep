.class public Lcom/android/server/am/OnePlusBGController$tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "tsu"
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

.field public mTimestamp:J

.field public mType:Lcom/android/server/am/OnePlusBGController$ProcType;

.field public mUidState:I

.field public yc:J

.field public zc:D


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusBGController$ProcType;IJLcom/android/server/am/OnePlusBGController$rtg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->mType:Lcom/android/server/am/OnePlusBGController$ProcType;

    iput p2, p0, Lcom/android/server/am/OnePlusBGController$tsu;->mUidState:I

    iput-wide p3, p0, Lcom/android/server/am/OnePlusBGController$tsu;->mTimestamp:J

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$rtg;->yc:J

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->yc:J

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$rtg;->zc:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->zc:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$rtg;->Ac:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Ac:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$rtg;->Bc:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Bc:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$rtg;->Cc:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Cc:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$rtg;->Dc:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Dc:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$rtg;->Ec:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Ec:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$rtg;->Fc:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Fc:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$rtg;->Gc:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Gc:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$rtg;->Hc:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Hc:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$rtg;->Ic:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Ic:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$rtg;->Jc:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Jc:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$rtg;->Kc:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Kc:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$rtg;->Lc:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Lc:D

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$tsu;->mTimestamp:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$tsu;->yc:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$tsu;->zc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Ac:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Bc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Cc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Dc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Ec:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Fc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Gc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Hc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Ic:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Jc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Kc:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Lc:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# MAhRecord ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->mType:Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->mUidState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |Stamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |Run="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->yc:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |Total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->zc:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Usg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Ac:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Wifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Bc:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Gps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Cc:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Cpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Dc:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Sen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Ec:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Mob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Fc:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Wak="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Gc:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Cam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Hc:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Flh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Ic:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Ble="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Jc:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Aud="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Kc:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->Lc:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
