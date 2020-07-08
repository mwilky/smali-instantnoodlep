.class public Lcom/android/server/backlight/zta$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backlight/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# instance fields
.field private LG:D

.field private MG:D

.field private NG:I

.field private OG:I

.field private PG:I

.field private _d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DDIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/backlight/zta$zta;->_d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backlight/zta$zta;->NG:I

    iput v0, p0, Lcom/android/server/backlight/zta$zta;->OG:I

    iput v0, p0, Lcom/android/server/backlight/zta$zta;->PG:I

    iput-object p1, p0, Lcom/android/server/backlight/zta$zta;->_d:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/backlight/zta$zta;->LG:D

    iput-wide p4, p0, Lcom/android/server/backlight/zta$zta;->MG:D

    iput p6, p0, Lcom/android/server/backlight/zta$zta;->NG:I

    iput p7, p0, Lcom/android/server/backlight/zta$zta;->OG:I

    iput p8, p0, Lcom/android/server/backlight/zta$zta;->PG:I

    return-void
.end method


# virtual methods
.method public fd()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/backlight/zta$zta;->LG:D

    return-wide v0
.end method

.method public gd()I
    .locals 0

    iget p0, p0, Lcom/android/server/backlight/zta$zta;->PG:I

    return p0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/backlight/zta$zta;->_d:Ljava/lang/String;

    return-object p0
.end method

.method public hd()I
    .locals 0

    iget p0, p0, Lcom/android/server/backlight/zta$zta;->NG:I

    return p0
.end method

.method public jd()I
    .locals 0

    iget p0, p0, Lcom/android/server/backlight/zta$zta;->OG:I

    return p0
.end method

.method public kd()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/backlight/zta$zta;->MG:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Param:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backlight/zta$zta;->_d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/backlight/zta$zta;->LG:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", inc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/backlight/zta$zta;->MG:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", enter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/backlight/zta$zta;->NG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/backlight/zta$zta;->OG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/backlight/zta$zta;->PG:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
