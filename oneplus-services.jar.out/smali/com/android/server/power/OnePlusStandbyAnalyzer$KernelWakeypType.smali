.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KernelWakeypType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

.field public static final enum SAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

.field public static final enum TAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

.field public static final enum UAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

.field public static final enum VAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

.field public static final enum WAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

.field public static final enum XAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

.field public static final enum modem:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    const/4 v1, 0x0

    const-string v2, "WLAN_CE_2"

    invoke-direct {v0, v2, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->SAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    const/4 v2, 0x1

    const-string v3, "msm_pcie_wake"

    invoke-direct {v0, v3, v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->TAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    const/4 v3, 0x2

    const-string v4, "modem"

    invoke-direct {v0, v4, v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->modem:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    const/4 v4, 0x3

    const-string v5, "ipa"

    invoke-direct {v0, v5, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->UAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    const/4 v5, 0x4

    const-string v6, "dsps"

    invoke-direct {v0, v6, v5, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->VAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    const/4 v6, 0x5

    const-string v7, "msm_hs_wakeup"

    invoke-direct {v0, v7, v6, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->WAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    const/4 v7, 0x6

    const-string v8, "other"

    invoke-direct {v0, v8, v7, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->XAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->SAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->TAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->modem:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->UAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->VAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->WAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->XAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->text:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;
    .locals 5

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->text:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->XAa:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    return-object v0
.end method
