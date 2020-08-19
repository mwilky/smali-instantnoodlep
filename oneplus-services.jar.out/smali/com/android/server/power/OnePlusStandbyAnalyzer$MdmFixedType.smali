.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MdmFixedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

.field public static final enum NA:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

.field public static final enum PBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

.field public static final enum QBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

.field public static final enum RBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

.field public static final enum SBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

.field public static final enum TBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

.field public static final enum UBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

.field public static final enum VBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    const/4 v1, 0x0

    const-string v2, "NA"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->NA:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    const/4 v2, 0x1

    const-string v3, "NO_ENTER_DEEP_IDLE"

    invoke-direct {v0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->PBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    const/4 v3, 0x2

    const-string v4, "NA_WR"

    invoke-direct {v0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->QBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    const/4 v4, 0x3

    const-string v5, "NA_KWL"

    invoke-direct {v0, v5, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->RBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    const/4 v5, 0x4

    const-string v6, "NA_SBD"

    invoke-direct {v0, v6, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->SBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    const/4 v6, 0x5

    const-string v7, "NA_SNO"

    invoke-direct {v0, v7, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->TBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    const/4 v7, 0x6

    const-string v8, "NA_RPM"

    invoke-direct {v0, v8, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->UBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    const/4 v8, 0x7

    const-string v9, "NA_NOCULPRIT"

    invoke-direct {v0, v9, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->VBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    sget-object v9, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->NA:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    aput-object v9, v0, v1

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->PBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->QBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->RBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->SBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->TBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->UBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->VBa:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    return-object v0
.end method
