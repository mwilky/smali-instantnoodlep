.class public Lcom/android/server/am/AppRecordManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppRecordManager$ListenerType;
    }
.end annotation


# static fields
.field public static final IN_USING:Z

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_IDLE:I = 0x2

.field public static final Zm:I = -0x3e8

.field public static final _m:I = 0x0

.field public static final an:I = 0x1

.field public static final bn:I = 0x2

.field public static final cn:I = 0x4

.field public static final dn:I = 0x8

.field public static final en:I = 0x10

.field public static final fn:I = 0x20

.field public static final gn:I = 0x40

.field public static final hn:I = 0x80

.field public static final jn:I = 0x100

.field public static final kn:I = 0x200

.field public static final ln:I = 0x400

.field public static final mn:I = 0x800

.field public static final nn:I = 0x1000

.field public static final pn:I = 0x2000

.field public static final qn:I = 0x4000

.field public static final rn:I = 0x8000

.field public static final sn:I = 0x10000

.field public static final tn:I = 0x20000

.field public static final un:I = 0x40000

.field public static final vn:I = 0x100000

.field public static final wn:I = 0x40000000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManagerService;->IN_USING:Z

    sput-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bud(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "Sensor,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    const-string v1, "PSensor,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    const-string v1, "Audio,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_3

    const-string v1, "Video,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_4

    const-string v1, "Camera,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_5

    const-string v1, "Flashlight,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_6

    const-string v1, "Vibrator,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_7

    const-string v1, "GPS,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_8

    const-string v1, "Traffic,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_9

    const-string v1, "PredctionApp,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_a

    const-string v1, "HighUsedApp,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_b

    const-string v1, "FreezeApp,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_c

    const-string v1, "FrontApp,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_d

    const-string v1, "UserLockApp,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_e

    const-string v1, "ShowingApp,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_f

    const-string v1, "SystemApp,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_10

    const-string v1, "HighPower,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_11

    const-string v1, "CustonPersist,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_12

    const-string v1, "Bluetooh,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_13

    const-string v1, "ColdStart,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_14

    const-string v1, "TrafficHigh,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    if-lez p0, :cond_15

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_15
    const-string p0, "NONE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cgv(I)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->isApp(I)Z

    move-result p0

    return p0
.end method

.method public static getAppRecord(II)Lcom/android/server/am/tsu;
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object p0

    return-object p0
.end method

.method public static getAppRecord(ILjava/lang/String;)Lcom/android/server/am/tsu;
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/tsu;

    move-result-object p0

    return-object p0
.end method

.method public static getAppRecord(Ljava/lang/String;)Lcom/android/server/am/tsu;
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(Ljava/lang/String;)Lcom/android/server/am/tsu;

    move-result-object p0

    return-object p0
.end method

.method public static getAppRecord(I)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/tsu;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static getAppRecordFromUid(I)Lcom/android/server/am/tsu;
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getAppRecordFromUid(I)Lcom/android/server/am/tsu;

    move-result-object p0

    return-object p0
.end method

.method public static getOwnerUid(I)I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getOwnerUid(I)I

    move-result p0

    return p0
.end method

.method public static getPackageName(II)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getPackageName(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageNameFromUid(I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPackagesUsingFlag(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getPackagesUsingFlag(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getProcState(I)I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/16 p0, 0x14

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getProcState(I)I

    move-result p0

    return p0
.end method

.method public static getSensorName(I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getSensorName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUidFromPackageName(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getUidFromPackageName(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getUidState(I)I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getUidState(I)I

    move-result p0

    return p0
.end method

.method public static isIsolatedUid(I)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->isIsolatedUid(I)Z

    move-result p0

    return p0
.end method

.method public static isPkgHoldNotification(Ljava/lang/String;IZZ)I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/notification/OpNotificationInjector;->isPkgHoldNotification(Ljava/lang/String;IZZ)I

    move-result p0

    return p0
.end method

.method public static lqr(I)I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getHoldingFlag(I)I

    move-result p0

    return p0
.end method

.method public static veq(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "unknow"

    return-object p0

    :cond_0
    const-string p0, "IDLE"

    return-object p0

    :cond_1
    const-string p0, "ACTIVE"

    return-object p0

    :cond_2
    const-string p0, "GONE"

    return-object p0
.end method

.method public static vju(I)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/AppRecordManager;->getUidState(I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static you(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/ssp;->you(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    return-void
.end method

.method public static zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    return-void
.end method
