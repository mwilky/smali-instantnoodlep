.class Lcom/android/server/igw$tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/igw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "tsu"
.end annotation


# static fields
.field private static mInstance:Lcom/android/server/igw$tsu;


# instance fields
.field private jd:J

.field private kd:J

.field public ld:J

.field public md:J

.field public nd:J

.field public od:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/igw$tsu;->ld:J

    iput-wide v0, p0, Lcom/android/server/igw$tsu;->md:J

    iput-wide v0, p0, Lcom/android/server/igw$tsu;->nd:J

    iput-wide v0, p0, Lcom/android/server/igw$tsu;->od:J

    return-void
.end method

.method static synthetic access$2500()Lcom/android/server/igw$tsu;
    .locals 1

    invoke-static {}, Lcom/android/server/igw$tsu;->getInstance()Lcom/android/server/igw$tsu;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance()Lcom/android/server/igw$tsu;
    .locals 1

    sget-object v0, Lcom/android/server/igw$tsu;->mInstance:Lcom/android/server/igw$tsu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/igw$tsu;

    invoke-direct {v0}, Lcom/android/server/igw$tsu;-><init>()V

    sput-object v0, Lcom/android/server/igw$tsu;->mInstance:Lcom/android/server/igw$tsu;

    :cond_0
    sget-object v0, Lcom/android/server/igw$tsu;->mInstance:Lcom/android/server/igw$tsu;

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/igw$tsu;->kd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/igw$tsu;->kd:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/igw$tsu;->nd:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/igw$tsu;->nd:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspendedStartSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/igw$tsu;->kd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalSusConChargingDurSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/igw$tsu;->nd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusChargingGuarder"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public B()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/igw$tsu;->kd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/igw$tsu;->kd:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/igw$tsu;->od:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/igw$tsu;->od:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspendedStartSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/igw$tsu;->kd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalSusDisconnectedDurSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/igw$tsu;->od:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusChargingGuarder"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public C()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/igw$tsu;->kd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/igw$tsu;->kd:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/igw$tsu;->md:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/igw$tsu;->md:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspendedStartSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/igw$tsu;->kd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalSuspendedDurationSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/igw$tsu;->md:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusChargingGuarder"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/igw$tsu;->ld:J

    iput-wide v0, p0, Lcom/android/server/igw$tsu;->md:J

    iput-wide v0, p0, Lcom/android/server/igw$tsu;->nd:J

    iput-wide v0, p0, Lcom/android/server/igw$tsu;->od:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "totalConnectedDurationSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/igw$tsu;->ld:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalSuspendedDurationSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/igw$tsu;->md:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalSusConChargingDurSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/igw$tsu;->nd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalSusDisconnectedDurSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/igw$tsu;->od:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public you(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/igw$tsu;->kd:J

    return-void
.end method

.method public z()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/igw$tsu;->jd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/igw$tsu;->jd:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/igw$tsu;->ld:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/igw$tsu;->ld:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPowerConnectStartTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/igw$tsu;->jd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalConnectedDurationSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/igw$tsu;->ld:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusChargingGuarder"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public zta(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/igw$tsu;->jd:J

    return-void
.end method
