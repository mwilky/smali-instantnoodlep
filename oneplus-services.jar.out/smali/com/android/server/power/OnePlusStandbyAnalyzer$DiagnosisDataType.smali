.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiagnosisDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum DP:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum GAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum HAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum IAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum JAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum KAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum LAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum MAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum MIN:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum NAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum OAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum PAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum QAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum RAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum nAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/4 v1, 0x0

    const-string v2, "VER"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->GAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/4 v2, 0x1

    const-string v3, "SBHR"

    invoke-direct {v0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->HAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/4 v3, 0x2

    const-string v4, "EVDI"

    invoke-direct {v0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->IAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/4 v4, 0x3

    const-string v5, "DP"

    invoke-direct {v0, v5, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->DP:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/4 v5, 0x4

    const-string v6, "AC"

    invoke-direct {v0, v6, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->JAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/4 v6, 0x5

    const-string v7, "CRI"

    invoke-direct {v0, v7, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->KAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/4 v7, 0x6

    const-string v8, "MIN"

    invoke-direct {v0, v8, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->MIN:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/4 v8, 0x7

    const-string v9, "WLP"

    invoke-direct {v0, v9, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->LAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/16 v9, 0x8

    const-string v10, "CRP"

    invoke-direct {v0, v10, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->MAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/16 v10, 0x9

    const-string v11, "KWLP"

    invoke-direct {v0, v11, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->NAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/16 v11, 0xa

    const-string v12, "WR"

    invoke-direct {v0, v12, v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->nAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/16 v12, 0xb

    const-string v13, "SBP"

    invoke-direct {v0, v13, v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->OAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/16 v13, 0xc

    const-string v14, "SNP"

    invoke-direct {v0, v14, v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->PAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/16 v14, 0xd

    const-string v15, "UCP"

    invoke-direct {v0, v15, v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->QAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/16 v15, 0xe

    const-string v14, "RPM"

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->RAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    sget-object v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->GAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v14, v0, v1

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->HAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->IAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->DP:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->JAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->KAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->MIN:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->LAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->MAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->NAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->nAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->OAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->PAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->QAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->RAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v1, v0, v15

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    return-object v0
.end method
