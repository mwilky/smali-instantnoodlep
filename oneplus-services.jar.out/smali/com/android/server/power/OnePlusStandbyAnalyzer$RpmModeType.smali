.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RpmModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

.field public static final enum lCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

.field public static final enum mCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

.field public static final enum nCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

.field public static final enum oCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    const/4 v1, 0x0

    const-string v2, "vlow"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->lCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    const/4 v2, 0x1

    const-string v3, "vmin"

    invoke-direct {v0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->mCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    const/4 v3, 0x2

    const-string v4, "aosd"

    invoke-direct {v0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->nCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    const/4 v4, 0x3

    const-string v5, "cxsd"

    invoke-direct {v0, v5, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->oCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->lCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->mCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->nCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->oCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    return-object v0
.end method
