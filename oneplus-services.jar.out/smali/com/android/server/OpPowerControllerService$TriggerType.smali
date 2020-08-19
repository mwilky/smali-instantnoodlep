.class final enum Lcom/android/server/OpPowerControllerService$TriggerType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpPowerControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TriggerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OpPowerControllerService$TriggerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OpPowerControllerService$TriggerType;

.field public static final enum eza:Lcom/android/server/OpPowerControllerService$TriggerType;

.field public static final enum fza:Lcom/android/server/OpPowerControllerService$TriggerType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/server/OpPowerControllerService$TriggerType;

    const/4 v1, 0x0

    const-string v2, "RECHECK"

    invoke-direct {v0, v2, v1}, Lcom/android/server/OpPowerControllerService$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OpPowerControllerService$TriggerType;->eza:Lcom/android/server/OpPowerControllerService$TriggerType;

    new-instance v0, Lcom/android/server/OpPowerControllerService$TriggerType;

    const/4 v2, 0x1

    const-string v3, "UPDATE_ONLY"

    invoke-direct {v0, v3, v2}, Lcom/android/server/OpPowerControllerService$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OpPowerControllerService$TriggerType;->fza:Lcom/android/server/OpPowerControllerService$TriggerType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/OpPowerControllerService$TriggerType;

    sget-object v3, Lcom/android/server/OpPowerControllerService$TriggerType;->eza:Lcom/android/server/OpPowerControllerService$TriggerType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/server/OpPowerControllerService$TriggerType;->fza:Lcom/android/server/OpPowerControllerService$TriggerType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/OpPowerControllerService$TriggerType;->$VALUES:[Lcom/android/server/OpPowerControllerService$TriggerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OpPowerControllerService$TriggerType;
    .locals 1

    const-class v0, Lcom/android/server/OpPowerControllerService$TriggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/OpPowerControllerService$TriggerType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/OpPowerControllerService$TriggerType;
    .locals 1

    sget-object v0, Lcom/android/server/OpPowerControllerService$TriggerType;->$VALUES:[Lcom/android/server/OpPowerControllerService$TriggerType;

    invoke-virtual {v0}, [Lcom/android/server/OpPowerControllerService$TriggerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OpPowerControllerService$TriggerType;

    return-object v0
.end method
