.class Lcom/android/server/wm/OpPowerConsumpStats$ssp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ssp"
.end annotation


# instance fields
.field Bca:J

.field Cca:J

.field Dca:J

.field Eca:I

.field Fca:I

.field Gca:J

.field Hca:J

.field Ica:Ljava/lang/String;

.field duration:J

.field final synthetic this$0:Lcom/android/server/wm/OpPowerConsumpStats;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Bca:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Cca:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Dca:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Eca:I

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Fca:I

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->duration:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Gca:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Hca:J

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Ica:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$ssp;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Bca:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Cca:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Dca:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Eca:I

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Fca:I

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->duration:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Gca:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Hca:J

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Ica:Ljava/lang/String;

    iget-wide v0, p2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Bca:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Bca:J

    iget-wide v0, p2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Cca:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Cca:J

    iget-wide v0, p2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Dca:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Dca:J

    iget p1, p2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Eca:I

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Eca:I

    iget p1, p2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Fca:I

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Fca:I

    iget-wide v0, p2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->duration:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->duration:J

    iget-wide v0, p2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Gca:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Gca:J

    iget-wide v0, p2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Hca:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Hca:J

    iget-object p1, p2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Ica:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Ica:Ljava/lang/String;

    return-void
.end method

.method private clear()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Bca:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Cca:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Dca:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Eca:I

    iput v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Fca:I

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->duration:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Gca:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Hca:J

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Ica:Ljava/lang/String;

    return-void
.end method

.method private ic(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"seq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\",\"relativeBeginTime\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Bca:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\",\"relativeEndTime\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Cca:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\",\"duration\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\",\"realBeginTime\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Dca:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\",\"beginPowerLevel\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Eca:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\",\"endPowerLevel\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Fca:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\",\"screenOnDuration\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Gca:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\",\"firstFullTimeToRelativeBeginTime\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Hca:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\",\"plugType\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Ica:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$ssp;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->ic(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$ssp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->clear()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChargeFragment relativeBeginTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Bca:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |relativeEndTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Cca:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |realBeginTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Dca:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |beginPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Eca:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |endPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Fca:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |screenOnDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Gca:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |firstFullTimeToRelativeBeginTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Hca:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |plugType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->Ica:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
