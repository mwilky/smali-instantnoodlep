.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TelephonyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

.field public static final enum mCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

.field public static final enum nCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

.field public static final enum oCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

.field public static final enum pCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

.field public static final enum qCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

.field public static final enum rCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "NETWORK_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->mCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    const/4 v3, 0x2

    const-string v4, "DATACALL_STATE"

    invoke-direct {v0, v4, v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->nCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    const/4 v4, 0x3

    const-string v5, "IMS_STATE"

    invoke-direct {v0, v5, v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->oCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    const/4 v5, 0x4

    const-string v6, "RAT_STATE"

    invoke-direct {v0, v6, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->pCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    const/4 v6, 0x5

    const-string v7, "SIGNAL_CHANGE_TYPE"

    invoke-direct {v0, v7, v5, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->qCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    const/4 v7, 0x6

    const-string v8, "DATA_CONNECTION_CHANGE_TYPE"

    invoke-direct {v0, v8, v6, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->rCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    new-array v0, v7, [Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->mCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    aput-object v7, v0, v1

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->nCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->oCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->pCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->qCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->rCa:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->value:I

    return-void
.end method

.method static fromValue(I)Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;
    .locals 5

    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    return-object v0
.end method

.method static zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;Z)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/power/cno;->zQ:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    if-eqz p1, :cond_0

    const-string p0, "QXDM_DATA_FREQ_CHANGE_ANNOMALY"

    goto :goto_0

    :cond_0
    const-string p0, "DATA_FREQ_CHANGE_ANNOMALY"

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_1

    const-string p0, "QXDM_NO_SIGNAL_INTERSECTION_ANNOMALY"

    goto :goto_0

    :cond_1
    const-string p0, "NO_SIGNAL_INTERSECTION_ANNOMALY"

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_2

    const-string p0, "QXDM_TELEPHONY_RAT_ANOMALY"

    goto :goto_0

    :cond_2
    const-string p0, "TELEPHONY_RAT_ANOMALY"

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_3

    const-string p0, "QXDM_TELEPHONY_IMS_ANOMALY"

    goto :goto_0

    :cond_3
    const-string p0, "TELEPHONY_IMS_ANOMALY"

    goto :goto_0

    :pswitch_4
    if-eqz p1, :cond_4

    const-string p0, "QXDM_TELEPHONY_DATACALL_ANOMALY"

    goto :goto_0

    :cond_4
    const-string p0, "TELEPHONY_DATACALL_ANOMALY"

    goto :goto_0

    :pswitch_5
    if-eqz p1, :cond_5

    const-string p0, "QXDM_TELEPHONY_NETWORK_ANOMALY"

    goto :goto_0

    :cond_5
    const-string p0, "TELEPHONY_NETWORK_ANOMALY"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
