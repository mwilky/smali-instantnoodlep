.class public Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "wtn"
.end annotation


# instance fields
.field public AQ:J

.field public BQ:J

.field public CQ:J

.field public DQ:J

.field public EQ:F

.field public FQ:Z

.field public GQ:Ljava/lang/String;

.field public HQ:Ljava/lang/String;

.field public mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

.field public zQ:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;


# direct methods
.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->FQ:Z

    const-string v0, "na"

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->GQ:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->HQ:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    iput-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->GQ:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->HQ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->FQ:Z

    const-string v0, "na"

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->GQ:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->HQ:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    const/16 p1, 0x10

    invoke-static {p2, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->AQ:J

    invoke-static {p3, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->BQ:J

    invoke-static {p4, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->CQ:J

    invoke-static {p5, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->DQ:J

    return-void
.end method


# virtual methods
.method public Md()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->zQ:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->AQ:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->EQ:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->HQ:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# RPMMasterInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->zQ:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->AQ:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->EQ:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x10

    invoke-static {p2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->BQ:J

    invoke-static {p3, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->CQ:J

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p1

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->AQ:J

    sub-long/2addr p1, v1

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->AQ:J

    invoke-static {p4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->DQ:J

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->DQ:J

    iget-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->DQ:J

    const-wide/32 p3, 0x124f800

    div-long/2addr p1, p3

    long-to-float p1, p1

    const/high16 p2, 0x45610000    # 3600.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->EQ:F

    new-instance p1, Ljava/math/BigDecimal;

    iget p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->EQ:F

    float-to-double p2, p2

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p2, 0x5

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->EQ:F

    iget-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->CQ:J

    iget-wide p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->BQ:J

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->FQ:Z

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->FQ:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;->N:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;->A:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    :goto_1
    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->zQ:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    return-void
.end method
