.class synthetic Lcom/android/server/am/cjf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic Ar:[I

.field static final synthetic tr:[I

.field static final synthetic ur:[I

.field static final synthetic vr:[I

.field static final synthetic wr:[I

.field static final synthetic xr:[I

.field static final synthetic yr:[I

.field static final synthetic zr:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/android/server/am/OnePlusBGController$SnapshotType;->values()[Lcom/android/server/am/OnePlusBGController$SnapshotType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/am/cjf;->Ar:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/android/server/am/cjf;->Ar:[I

    sget-object v2, Lcom/android/server/am/OnePlusBGController$SnapshotType;->Aza:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/android/server/am/cjf;->Ar:[I

    sget-object v3, Lcom/android/server/am/OnePlusBGController$SnapshotType;->Dza:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/server/am/cjf;->Ar:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$SnapshotType;->Bza:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/android/server/am/cjf;->Ar:[I

    sget-object v5, Lcom/android/server/am/OnePlusBGController$SnapshotType;->Cza:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$CleanType;->values()[Lcom/android/server/am/OnePlusBGController$CleanType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/am/cjf;->zr:[I

    :try_start_4
    sget-object v4, Lcom/android/server/am/cjf;->zr:[I

    sget-object v5, Lcom/android/server/am/OnePlusBGController$CleanType;->oza:Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/android/server/am/cjf;->zr:[I

    sget-object v5, Lcom/android/server/am/OnePlusBGController$CleanType;->pza:Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/android/server/am/cjf;->zr:[I

    sget-object v5, Lcom/android/server/am/OnePlusBGController$CleanType;->qza:Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/android/server/am/cjf;->zr:[I

    sget-object v5, Lcom/android/server/am/OnePlusBGController$CleanType;->rza:Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$MySipperType;->values()[Lcom/android/server/am/OnePlusBGController$MySipperType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/am/cjf;->yr:[I

    :try_start_8
    sget-object v4, Lcom/android/server/am/cjf;->yr:[I

    sget-object v5, Lcom/android/server/am/OnePlusBGController$MySipperType;->T:Lcom/android/server/am/OnePlusBGController$MySipperType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Lcom/android/server/am/cjf;->yr:[I

    sget-object v5, Lcom/android/server/am/OnePlusBGController$MySipperType;->M:Lcom/android/server/am/OnePlusBGController$MySipperType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/android/server/am/cjf;->yr:[I

    sget-object v5, Lcom/android/server/am/OnePlusBGController$MySipperType;->B:Lcom/android/server/am/OnePlusBGController$MySipperType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$NetType;->values()[Lcom/android/server/am/OnePlusBGController$NetType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/am/cjf;->xr:[I

    :try_start_b
    sget-object v4, Lcom/android/server/am/cjf;->xr:[I

    sget-object v5, Lcom/android/server/am/OnePlusBGController$NetType;->PUBLIC:Lcom/android/server/am/OnePlusBGController$NetType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v4, Lcom/android/server/am/cjf;->xr:[I

    sget-object v5, Lcom/android/server/am/OnePlusBGController$NetType;->uza:Lcom/android/server/am/OnePlusBGController$NetType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    invoke-static {}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->values()[Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/am/cjf;->wr:[I

    :try_start_d
    sget-object v4, Lcom/android/server/am/cjf;->wr:[I

    sget-object v5, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->BG:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    invoke-virtual {v5}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v4, Lcom/android/server/am/cjf;->wr:[I

    sget-object v5, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->TOP:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    invoke-virtual {v5}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v4, Lcom/android/server/am/cjf;->wr:[I

    sget-object v5, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ACC_BG:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    invoke-virtual {v5}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v4, Lcom/android/server/am/cjf;->wr:[I

    sget-object v5, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ACC_TOP:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    invoke-virtual {v5}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$PersistType;->values()[Lcom/android/server/am/OnePlusBGController$PersistType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/server/am/cjf;->vr:[I

    :try_start_11
    sget-object v3, Lcom/android/server/am/cjf;->vr:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$PersistType;->vza:Lcom/android/server/am/OnePlusBGController$PersistType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v3, Lcom/android/server/am/cjf;->vr:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$PersistType;->wza:Lcom/android/server/am/OnePlusBGController$PersistType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v3, Lcom/android/server/am/cjf;->vr:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$PersistType;->xza:Lcom/android/server/am/OnePlusBGController$PersistType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$ProcType;->values()[Lcom/android/server/am/OnePlusBGController$ProcType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/server/am/cjf;->ur:[I

    :try_start_14
    sget-object v3, Lcom/android/server/am/cjf;->ur:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$ProcType;->B:Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v3, Lcom/android/server/am/cjf;->ur:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$ProcType;->yza:Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v3, Lcom/android/server/am/cjf;->ur:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$ProcType;->F:Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$RomType;->values()[Lcom/android/server/am/OnePlusBGController$RomType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/server/am/cjf;->tr:[I

    :try_start_17
    sget-object v3, Lcom/android/server/am/cjf;->tr:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$RomType;->ALPHA:Lcom/android/server/am/OnePlusBGController$RomType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/android/server/am/cjf;->tr:[I

    sget-object v3, Lcom/android/server/am/OnePlusBGController$RomType;->zza:Lcom/android/server/am/OnePlusBGController$RomType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/android/server/am/cjf;->tr:[I

    sget-object v1, Lcom/android/server/am/OnePlusBGController$RomType;->nza:Lcom/android/server/am/OnePlusBGController$RomType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    return-void
.end method
