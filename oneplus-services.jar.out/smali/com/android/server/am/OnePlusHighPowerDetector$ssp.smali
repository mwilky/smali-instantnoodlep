.class Lcom/android/server/am/OnePlusHighPowerDetector$ssp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ssp"
.end annotation


# instance fields
.field private Iy:J

.field private Jy:Z

.field final synthetic this$0:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->Iy:J

    iput-boolean p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->Jy:Z

    return-void
.end method


# virtual methods
.method public Ac()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->Jy:Z

    return p0
.end method

.method public Bc()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->Iy:J

    return-wide v0
.end method

.method public Cc()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->Jy:Z

    return-void
.end method

.method public oif(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->Iy:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# NotifyTimeAndIntervel ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->Iy:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->Jy:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
