.class public final enum Lcom/android/server/wm/OpPowerConsumpStats$SettleType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/OpPowerConsumpStats$SettleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

.field public static final enum Fya:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

.field public static final enum UPDATE:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    const/4 v1, 0x0

    const-string v2, "UPDATE"

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->UPDATE:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    const/4 v2, 0x1

    const-string v3, "CALCULATE"

    invoke-direct {v0, v3, v2}, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->Fya:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    sget-object v3, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->UPDATE:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->Fya:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->$VALUES:[Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$SettleType;
    .locals 1

    const-class v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/OpPowerConsumpStats$SettleType;
    .locals 1

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->$VALUES:[Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    invoke-virtual {v0}, [Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    return-object v0
.end method
