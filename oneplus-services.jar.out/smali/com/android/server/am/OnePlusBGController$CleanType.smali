.class public final enum Lcom/android/server/am/OnePlusBGController$CleanType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CleanType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$CleanType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/OnePlusBGController$CleanType;

.field public static final enum Aza:Lcom/android/server/am/OnePlusBGController$CleanType;

.field public static final enum xza:Lcom/android/server/am/OnePlusBGController$CleanType;

.field public static final enum yza:Lcom/android/server/am/OnePlusBGController$CleanType;

.field public static final enum zza:Lcom/android/server/am/OnePlusBGController$CleanType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/am/OnePlusBGController$CleanType;

    const/4 v1, 0x0

    const-string v2, "DAILY_RESET_CLEAN"

    invoke-direct {v0, v2, v1}, Lcom/android/server/am/OnePlusBGController$CleanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$CleanType;->xza:Lcom/android/server/am/OnePlusBGController$CleanType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$CleanType;

    const/4 v2, 0x1

    const-string v3, "HANDLED_CLEAN"

    invoke-direct {v0, v3, v2}, Lcom/android/server/am/OnePlusBGController$CleanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$CleanType;->yza:Lcom/android/server/am/OnePlusBGController$CleanType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$CleanType;

    const/4 v3, 0x2

    const-string v4, "NEGATIVE_CLEAN"

    invoke-direct {v0, v4, v3}, Lcom/android/server/am/OnePlusBGController$CleanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$CleanType;->zza:Lcom/android/server/am/OnePlusBGController$CleanType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$CleanType;

    const/4 v4, 0x3

    const-string v5, "BATT_RESET_CLEAN"

    invoke-direct {v0, v5, v4}, Lcom/android/server/am/OnePlusBGController$CleanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$CleanType;->Aza:Lcom/android/server/am/OnePlusBGController$CleanType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/am/OnePlusBGController$CleanType;

    sget-object v5, Lcom/android/server/am/OnePlusBGController$CleanType;->xza:Lcom/android/server/am/OnePlusBGController$CleanType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/server/am/OnePlusBGController$CleanType;->yza:Lcom/android/server/am/OnePlusBGController$CleanType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/OnePlusBGController$CleanType;->zza:Lcom/android/server/am/OnePlusBGController$CleanType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/OnePlusBGController$CleanType;->Aza:Lcom/android/server/am/OnePlusBGController$CleanType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/am/OnePlusBGController$CleanType;->$VALUES:[Lcom/android/server/am/OnePlusBGController$CleanType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$CleanType;
    .locals 1

    const-class v0, Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$CleanType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$CleanType;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController$CleanType;->$VALUES:[Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$CleanType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$CleanType;

    return-object v0
.end method
