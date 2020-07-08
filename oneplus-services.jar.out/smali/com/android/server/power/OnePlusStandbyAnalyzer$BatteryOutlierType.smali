.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BatteryOutlierType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum Aza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum Bza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum Cza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum Dza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum Eza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum Fza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum Gza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum UNKNOWN:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum kza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum lza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum mza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum nza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum oza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum pza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum qza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum rza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum sza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum tza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum uza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum vza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum wza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum xza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum yza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

.field public static final enum zza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/4 v1, 0x0

    const-string v2, "NOT_DEFINDED"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->kza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/4 v2, 0x1

    const-string v3, "DOZE_DISABLED"

    invoke-direct {v0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->lza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/4 v3, 0x2

    const-string v4, "NO_ENTER_DEEPIDLE"

    invoke-direct {v0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->mza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/4 v4, 0x3

    const-string v5, "USERSPEACE_WAKELOCK"

    invoke-direct {v0, v5, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->nza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/4 v5, 0x4

    const-string v6, "KERNELSPACE_WAKELOCK"

    invoke-direct {v0, v6, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->oza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/4 v6, 0x5

    const-string v7, "KERNEL_WAKEUP"

    invoke-direct {v0, v7, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->pza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/4 v7, 0x6

    const-string v8, "SINGAL_BAD"

    invoke-direct {v0, v8, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->qza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/4 v8, 0x7

    const-string v9, "HIGH_UNACCOUNTED"

    invoke-direct {v0, v9, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->rza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v9, 0x8

    const-string v10, "UNKNOWN"

    invoke-direct {v0, v10, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->UNKNOWN:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v10, 0x9

    const-string v11, "AOSD_VMIN_NO_INCREASE"

    invoke-direct {v0, v11, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->sza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v11, 0xa

    const-string v12, "TELEPHONY_NETWORK_ANOMALY"

    invoke-direct {v0, v12, v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->tza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v12, 0xb

    const-string v13, "TELEPHONY_DATACALL_ANOMALY"

    invoke-direct {v0, v13, v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->uza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v13, 0xc

    const-string v14, "TELEPHONY_IMS_ANOMALY"

    invoke-direct {v0, v14, v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->vza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v14, 0xd

    const-string v15, "QXDM_TELEPHONY_NETWORK_ANOMALY"

    invoke-direct {v0, v15, v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->wza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v15, 0xe

    const-string v14, "QXDM_TELEPHONY_DATACALL_ANOMALY"

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->xza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const-string v14, "QXDM_TELEPHONY_IMS_ANOMALY"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->yza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const-string v14, "TELEPHONY_RAT_ANOMALY"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->zza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const-string v14, "QXDM_TELEPHONY_RAT_ANOMALY"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->Aza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const-string v14, "QXDM_MODEM_ANOMALY"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->Bza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const-string v14, "NO_SIGNAL_ANNOMALY"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->Cza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const-string v14, "NO_SIGNAL_INTERSECTION_ANNOMALY"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->Dza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const-string v14, "QXDM_NO_SIGNAL_INTERSECTION_ANNOMALY"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->Eza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const-string v14, "DATA_FREQ_CHANGE_ANNOMALY"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->Fza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const-string v14, "QXDM_DATA_FREQ_CHANGE_ANNOMALY"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->Gza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    sget-object v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->kza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    aput-object v14, v0, v1

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->lza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->mza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->nza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->oza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->pza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->qza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->rza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->UNKNOWN:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->sza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->tza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->uza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->vza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->wza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->xza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->yza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->zza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->Aza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->Bza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->Cza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->Dza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->Eza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->Fza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->Gza:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    return-object v0
.end method
