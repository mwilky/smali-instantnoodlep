.class public Lcom/android/server/backlight/zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backlight/zta$zta;
    }
.end annotation


# static fields
.field public static final AG:Ljava/lang/String; = "wireless"

.field public static final CG:Ljava/lang/String; = "game"

.field public static final DG:Ljava/lang/String; = "special_wireless"

.field public static final EG:Ljava/lang/String; = "special_batterytemp"

.field public static final FG:Ljava/lang/String; = "special_game"

.field public static final GG:I = 0x0

.field public static final HG:I = 0x1

.field public static final IG:I = 0x2

.field public static final JG:I = 0x3

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_OTHER:I = 0x4

.field public static final TYPE_VIDEO:I = 0x2

.field public static final wG:I = 0x1

.field public static final xG:I = 0x3

.field public static final yG:Ljava/lang/String; = "default"

.field public static final zG:Ljava/lang/String; = "temp"


# instance fields
.field private _d:Ljava/lang/String;

.field private mPkgName:Ljava/lang/String;

.field private mStatus:I

.field private mType:I

.field private uG:I

.field private vG:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backlight/zta;->mStatus:I

    iput v0, p0, Lcom/android/server/backlight/zta;->uG:I

    iput v0, p0, Lcom/android/server/backlight/zta;->vG:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/backlight/zta;->mPkgName:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/backlight/zta;->mType:I

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/server/backlight/zta;->_d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backlight/zta;->mStatus:I

    iput v0, p0, Lcom/android/server/backlight/zta;->uG:I

    iput v0, p0, Lcom/android/server/backlight/zta;->vG:I

    iput-object p1, p0, Lcom/android/server/backlight/zta;->mPkgName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/backlight/zta;->mType:I

    iput-object p3, p0, Lcom/android/server/backlight/zta;->_d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLevel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/backlight/zta;->_d:Ljava/lang/String;

    return-object p0
.end method

.method public getRefreshRate()I
    .locals 0

    iget p0, p0, Lcom/android/server/backlight/zta;->vG:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/android/server/backlight/zta;->mType:I

    return p0
.end method

.method public jd()I
    .locals 0

    iget p0, p0, Lcom/android/server/backlight/zta;->uG:I

    return p0
.end method

.method public kd()I
    .locals 0

    iget p0, p0, Lcom/android/server/backlight/zta;->mStatus:I

    return p0
.end method

.method public tb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/backlight/zta;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppBacklightConfig:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backlight/zta;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/backlight/zta;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backlight/zta;->_d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/backlight/zta;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/backlight/zta;->uG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/backlight/zta;->vG:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateStatus(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/backlight/zta;->mStatus:I

    return-void
.end method

.method public v(I)I
    .locals 0

    iput p1, p0, Lcom/android/server/backlight/zta;->uG:I

    return p1
.end method

.method public w(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/backlight/zta;->vG:I

    return-void
.end method

.method public you(ZI)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/server/backlight/zta;->uG:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/backlight/zta;->uG:I

    iget p1, p0, Lcom/android/server/backlight/zta;->uG:I

    if-lt p1, p2, :cond_1

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/android/server/backlight/zta;->uG:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/backlight/zta;->mStatus:I

    return v0

    :cond_0
    iget p1, p0, Lcom/android/server/backlight/zta;->uG:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/backlight/zta;->uG:I

    iget p1, p0, Lcom/android/server/backlight/zta;->uG:I

    if-gez p1, :cond_1

    iput v0, p0, Lcom/android/server/backlight/zta;->uG:I

    iput v0, p0, Lcom/android/server/backlight/zta;->mStatus:I

    return v0

    :cond_1
    return v1
.end method
