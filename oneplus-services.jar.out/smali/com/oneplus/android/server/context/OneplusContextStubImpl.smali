.class public Lcom/oneplus/android/server/context/OneplusContextStubImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/context/IOneplusContextStub;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OneplusContextStubImpl"


# instance fields
.field private ina:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_onlineconfig:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {p1}, Lcom/oneplus/android/server/sis/zta;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/sis/zta;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_windowmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v2, Lcom/android/server/wm/OpWindowManagerService;

    invoke-direct {v2}, Lcom/android/server/wm/OpWindowManagerService;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x10

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_permissioncontrolservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;

    invoke-direct {v4}, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-array v1, v0, [I

    const/16 v3, 0x9f

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_consumption_statistics:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {v4}, Lcom/android/server/wm/OpPowerConsumpStats;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-array v1, v0, [I

    const/16 v3, 0xa1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_colordisplay:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-direct {v4, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-array v1, v0, [I

    const/16 v3, 0x16

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_reserve_app:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/pm/wtn;

    invoke-direct {v4}, Lcom/android/server/pm/wtn;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-array v1, v0, [I

    const/16 v3, 0x17

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_openid:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/openid/sis;

    invoke-direct {v4, p1}, Lcom/oneplus/android/server/openid/sis;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-array v1, v0, [I

    const/16 v3, 0x18

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_heytap_business:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/heytapbusiness/sis;

    invoke-direct {v4, p1}, Lcom/oneplus/android/server/heytapbusiness/sis;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-array v1, v0, [I

    const/16 v3, 0x72

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_motor:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/vdb;

    invoke-direct {v4, p1}, Lcom/oneplus/android/server/vdb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-array v1, v0, [I

    const/16 v3, 0xa0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/OpPowerControllerService;

    iget-object v5, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/OpPowerControllerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-array v1, v0, [I

    const/16 v3, 0xa5

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_opservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/server/OnePlusService;

    invoke-direct {v4}, Lcom/oneplus/server/OnePlusService;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v3, 0x67

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/zta/you/zta;

    invoke-direct {v4}, Lcom/oneplus/android/server/zta/you/zta;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    new-array v1, v0, [I

    const/16 v3, 0xa3

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_exservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/OnePlusExService;

    invoke-direct {v4}, Lcom/android/server/OnePlusExService;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v3, 0xa4

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/tsu/zta;

    invoke-direct {v4}, Lcom/oneplus/android/server/tsu/zta;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/am/ywr;

    invoke-direct {v4}, Lcom/android/server/am/ywr;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batteryoutlier:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/am/dma;

    invoke-direct {v4}, Lcom/android/server/am/dma;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_param_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/ParamService;

    invoke-direct {v4}, Lcom/android/server/ParamService;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v3, 0x31

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_a

    new-array v1, v0, [I

    const/16 v3, 0x7a

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_vibratorservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/OpVibratorService;

    invoke-direct {v4}, Lcom/android/server/OpVibratorService;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_phonewindowmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-direct {v4}, Lcom/android/server/policy/OpPhoneWindowManager;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alertslider_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/alertslider/tsu;

    invoke-direct {v4}, Lcom/oneplus/android/server/alertslider/tsu;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v3, 0x6a

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_op_audiomonitor_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/you/zta;

    invoke-direct {v4}, Lcom/oneplus/android/server/you/zta;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/power/gwm;

    invoke-direct {v4}, Lcom/android/server/power/gwm;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v3, 0xa6

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_fast_charge:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/e;

    invoke-direct {v4}, Lcom/android/server/e;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    new-array v1, v0, [I

    const/16 v3, 0x75

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_process_resident:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/e;

    invoke-direct {v4}, Lcom/android/server/wm/e;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    new-array v1, v0, [I

    const/16 v3, 0x5f

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_aggressive_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/cgv;

    invoke-direct {v4}, Lcom/android/server/cgv;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    new-array v1, v0, [I

    const/16 v3, 0x12d

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/s;

    invoke-direct {v4}, Lcom/android/server/s;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    new-array v1, v0, [I

    const/16 v3, 0x60

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    iget-object v4, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/u;->getInstance(Landroid/content/Context;)Lcom/android/server/u;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    new-array v1, v0, [I

    const/16 v3, 0xcc

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_process_adj_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/am/C;

    invoke-direct {v4}, Lcom/android/server/am/C;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_nfc:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/OnePlusNfcService;

    invoke-direct {v4, p1}, Lcom/android/server/OnePlusNfcService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v3, 0xb5

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_wifi:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/wifi/OpWifiService;

    invoke-direct {v4}, Lcom/oneplus/android/server/wifi/OpWifiService;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    new-array v1, v0, [I

    const/16 v3, 0xbb

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_oputil:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/OnePlusUtil;

    invoke-direct {v4}, Lcom/android/server/OnePlusUtil;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    new-array v1, v0, [I

    const/16 v3, 0x1d

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/am/r;

    invoke-direct {v4}, Lcom/android/server/am/r;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    new-array v1, v0, [I

    const/16 v3, 0x20

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_applocker:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/OpAppLocker;

    invoke-direct {v4}, Lcom/android/server/wm/OpAppLocker;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    new-array v1, v0, [I

    const/16 v3, 0xb9

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_perf_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManager;->getInstance()Lcom/android/server/wm/OnePlusPerfManager;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    new-array v1, v0, [I

    const/16 v3, 0x23

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_quickpay:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/policy/OpQuickPay;

    invoke-direct {v4}, Lcom/android/server/policy/OpQuickPay;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_activitystarter:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/OpActivityStarter;

    invoke-direct {v4}, Lcom/android/server/wm/OpActivityStarter;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v3, 0x25

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_launcherappsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/pm/OpLauncherAppsService;

    invoke-direct {v4}, Lcom/android/server/pm/OpLauncherAppsService;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    new-array v1, v0, [I

    const/16 v3, 0xba

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_restartprocessmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {}, Lcom/android/server/am/E;->getInstance()Lcom/android/server/am/E;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    new-array v1, v0, [I

    const/16 v3, 0x43

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1b

    new-array v1, v0, [I

    const/16 v3, 0x2c

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1b
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screencompat:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/OpScreenCompat;

    invoke-direct {v4, p1}, Lcom/android/server/wm/OpScreenCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    new-array v1, v0, [I

    const/16 v3, 0xbc

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_uididle:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/rtg/you;

    invoke-direct {v4, p1}, Lcom/oneplus/android/server/rtg/you;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    new-array v1, v0, [I

    const/16 v3, 0xbd

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenshotimprovement:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/policy/vju;

    invoke-direct {v4, p1}, Lcom/android/server/policy/vju;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    new-array v1, v0, [I

    const/16 v3, 0xbe

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_gps_notification:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/oxb;

    invoke-direct {v4, p1}, Lcom/android/server/oxb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    new-array v1, v0, [I

    const/16 v3, 0xbf

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_zenmode:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/scene/h;

    invoke-direct {v4}, Lcom/oneplus/android/server/scene/h;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    new-array v1, v0, [I

    const/16 v3, 0x84

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smartboost:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/zta/tsu;

    invoke-direct {v4}, Lcom/oneplus/android/server/zta/tsu;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_displaypowercontroller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {}, Lcom/android/server/backlight/OpBacklightManager;->getInstance()Lcom/android/server/backlight/OpBacklightManager;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v3, 0x1e

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_memorytracker:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {p1}, Lcom/android/server/am/OnePlusMemoryTracker;->getInstance(Landroid/content/Context;)Lcom/android/server/am/OnePlusMemoryTracker;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    new-array v1, v0, [I

    const/16 v3, 0x141

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_proximity_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/display/rtg;

    invoke-direct {v4}, Lcom/android/server/display/rtg;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    new-array v1, v0, [I

    const/16 v3, 0x1f

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_apprecord:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    new-array v1, v0, [I

    const/16 v3, 0x61

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_alignment:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/bud;

    invoke-direct {v4}, Lcom/android/server/bud;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    new-array v1, v0, [I

    const/16 v3, 0xc0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/net/OpNetworkPolicy;

    invoke-direct {v4}, Lcom/android/server/net/OpNetworkPolicy;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    new-array v1, v0, [I

    const/16 v3, 0x79

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/OpScreenModeService;

    invoke-direct {v4}, Lcom/android/server/wm/OpScreenModeService;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    new-array v1, v0, [I

    const/16 v3, 0xca

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_dexoptmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    iget-object v4, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/pm/zta;->getInstance(Landroid/content/Context;)Lcom/android/server/pm/zta;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_powerkey_launch:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/policy/cjf;

    invoke-direct {v4}, Lcom/android/server/policy/cjf;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_shutdown_chord:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/policy/les;

    invoke-direct {v4}, Lcom/android/server/policy/les;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_secrecy:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/secrecy/SecrecyService;

    iget-object v5, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/secrecy/SecrecyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_engineer:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/engineer/OneplusEngineerService;

    iget-object v5, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/engineer/OneplusEngineerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v3, 0xcb

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_skipdoframe:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/am/o;

    invoke-direct {v4, p1}, Lcom/android/server/am/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    new-array v1, v0, [I

    const/16 v3, 0xcd

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenrotationimprovement:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/w;

    invoke-direct {v4, p1}, Lcom/android/server/wm/w;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    new-array v1, v0, [I

    const/16 v3, 0xcf

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_activitytaskmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/ugm;

    invoke-direct {v4}, Lcom/android/server/wm/ugm;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_displaycontent:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/vdb;

    invoke-direct {v4}, Lcom/android/server/wm/vdb;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    new-array v1, v0, [I

    const/16 v3, 0x102

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_onehandmode:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/hmo;

    invoke-direct {v4}, Lcom/android/server/wm/hmo;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_windowmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/OpWindowManagerService;

    invoke-direct {v4}, Lcom/android/server/wm/OpWindowManagerService;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/les;

    invoke-direct {v4}, Lcom/android/server/les;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v3, 0xce

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_jankmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/zta/sis/you;

    invoke-direct {v4, p1}, Lcom/oneplus/android/server/zta/sis/you;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    new-array v1, v0, [I

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_china_gms:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/pm/you;

    invoke-direct {v4}, Lcom/android/server/pm/you;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    new-array v1, v0, [I

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_package_manager_helper:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/pm/igw;

    invoke-direct {v4}, Lcom/android/server/pm/igw;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    new-array v1, v0, [I

    const/16 v3, 0x89

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_connor:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/zta/zta/zta;

    invoke-direct {v4}, Lcom/oneplus/android/server/zta/zta/zta;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    new-array v1, v0, [I

    const/16 v3, 0x22

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_scenemode:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/gwm;

    invoke-direct {v4}, Lcom/android/server/wm/gwm;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    new-array v1, v0, [I

    const/16 v3, 0x2d

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_quickreply:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {p1}, Lcom/android/server/wm/p;->getInstance(Landroid/content/Context;)Lcom/android/server/wm/p;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_carkit_identification:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/zta;

    invoke-direct {v4}, Lcom/oneplus/android/server/zta;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v3, 0xe0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_verificationcode_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-direct {v4}, Lcom/android/server/inputmethod/OpVerificationCodeController;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    new-array v1, v0, [I

    const/16 v3, 0x62

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/am/t;

    invoke-direct {v4}, Lcom/android/server/am/t;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    new-array v1, v0, [I

    const/16 v3, 0xdb

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_opsla:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wifi/zta;

    invoke-direct {v4}, Lcom/android/server/wifi/zta;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_scene_call_block:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;

    invoke-direct {v4}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_longshot_manager_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {p1}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->getInstance(Landroid/content/Context;)Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_compatibility_helper:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/pm/sis;

    invoke-direct {v4}, Lcom/android/server/pm/sis;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_op_ads:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/OpAppSwitchManagerServiceHelper;

    invoke-direct {v4}, Lcom/android/server/OpAppSwitchManagerServiceHelper;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_op_instant_app:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/h;

    invoke-direct {v4}, Lcom/android/server/h;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_fingerprint_acccelerate:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/zgw;

    invoke-direct {v4, p1}, Lcom/android/server/wm/zgw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_game_shake:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    iget-object v4, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/am/e;->getInstance(Landroid/content/Context;)Lcom/android/server/am/e;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v3, 0x113

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_force_dark_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/am/OpForceDarkController;

    invoke-direct {v4}, Lcom/android/server/am/OpForceDarkController;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    new-array v1, v0, [I

    const/16 v3, 0x10f

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_37

    new-array v1, v0, [I

    const/16 v3, 0x10e

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_38

    :cond_37
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_iris_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-direct {v4, p1}, Lcom/oneplus/android/server/iris/OpIrisService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_antiburn_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/am/q;

    invoke-direct {v4}, Lcom/android/server/am/q;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v3, 0x149

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_wireless_charge_disconnect_detector:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/B;

    invoke-direct {v4}, Lcom/android/server/B;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    new-array v0, v0, [I

    const/16 v1, 0x13e

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystats_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v2, Lcom/android/server/am/v;

    invoke-direct {v2, p1}, Lcom/android/server/am/v;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    sget-boolean p1, Lcom/oneplus/theme/OpFontHelperInjector;->sFeatureEnable:Z

    if-eqz p1, :cond_3b

    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object p1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_font_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v0, Lcom/oneplus/server/theme/OnePlusFontController;

    invoke-direct {v0}, Lcom/oneplus/server/theme/OnePlusFontController;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    return-void
.end method


# virtual methods
.method public bootComplete()V
    .locals 5

    sget-boolean v0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OneplusContextStubImpl"

    const-string v1, "bootComplete()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/zta/sis;->getInstance()Lcom/oneplus/android/server/zta/sis;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/zta/sis;->initEnv(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/android/server/sis/zta;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/sis/zta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/android/server/sis/zta;->init()V

    iget-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/android/server/sis/zta;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/sis/zta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/android/server/sis/zta;->kf()V

    iget-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OpPowerControllerService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/OpPowerControllerService;->init()V

    invoke-virtual {v0}, Lcom/android/server/OpPowerControllerService;->bootCompleted()V

    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x60

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/u;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/u;->onBootComplete()V

    :cond_2
    new-array v1, v0, [I

    const/16 v2, 0x10a

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/am/c;->init(Landroid/content/Context;)Lcom/android/server/am/c;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/am/G;->init(Landroid/content/Context;)Lcom/android/server/am/G;

    :cond_3
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_engineer:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/engineer/OneplusEngineerService;

    if-eqz v1, :cond_4

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/server/engineer/OneplusEngineerService;->onBootPhase(I)V

    const/16 v2, 0x1e0

    invoke-virtual {v1, v2}, Lcom/android/server/engineer/OneplusEngineerService;->onBootPhase(I)V

    :cond_4
    new-array v1, v0, [I

    const/16 v2, 0x17

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_openid:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/openid/sis;

    invoke-virtual {v1}, Lcom/oneplus/android/server/openid/sis;->onBootComplete()V

    :cond_5
    new-array v1, v0, [I

    const/16 v2, 0x141

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_proximity_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/rtg;

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/display/rtg;->init(Landroid/content/Context;)V

    :cond_6
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_exservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusExService;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/server/OnePlusExService;->bootComplete()V

    :cond_7
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_windowmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/OpWindowManagerService;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/OpWindowManagerService;->bootComplete(Landroid/content/Context;)V

    :cond_8
    new-array v1, v0, [I

    const/16 v2, 0x2d

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_quickreply:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/p;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/server/wm/p;->bootComplete()V

    :cond_9
    new-array v1, v0, [I

    aput v3, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_apperror_dialog:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/am/s;

    invoke-direct {v4}, Lcom/android/server/am/s;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    new-array v1, v0, [I

    const/16 v2, 0x10f

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_b

    new-array v0, v0, [I

    const/16 v1, 0x10e

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_iris_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/android/server/iris/OpIrisService;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->onBootComplete()V

    :cond_c
    return-void
.end method

.method public queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public shutdown()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OneplusContextStubImpl"

    const-string v1, "shutdown()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/OpPowerControllerService;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/OpPowerControllerService;->shutdown()V

    :cond_1
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 4

    sget-boolean p1, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->DEBUG:Z

    const-string v0, "OneplusContextStubImpl"

    if-eqz p1, :cond_0

    const-string p1, "start"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_windowmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/OpWindowManagerService;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/OpWindowManagerService;->publish(Landroid/content/Context;)V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/OpPowerControllerService;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/OpPowerControllerService;->publish()V

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_opservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/server/OnePlusService;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/server/OnePlusService;->publish(Landroid/content/Context;)V

    :cond_3
    const/4 p1, 0x1

    new-array v1, p1, [I

    const/16 v2, 0x10

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_permissioncontrolservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;->publish(Landroid/content/Context;)V

    :cond_4
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_exservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusExService;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusExService;->publish(Landroid/content/Context;)V

    :cond_5
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_param_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ParamService;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/ParamService;->publish(Landroid/content/Context;)V

    :cond_6
    new-array v1, p1, [I

    const/16 v2, 0xa1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_colordisplay:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/display/OpColorDisplayService;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->publish(Landroid/content/Context;)V

    :cond_7
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_nfc:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusNfcService;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusNfcService;->publish(Landroid/content/Context;)V

    :cond_8
    new-array v1, p1, [I

    const/16 v2, 0xb5

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_wifi:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/wifi/OpWifiService;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/wifi/OpWifiService;->publish(Landroid/content/Context;)V

    :cond_9
    new-array v1, p1, [I

    const/16 v2, 0x18

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_heytap_business:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/heytapbusiness/sis;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/oneplus/android/server/heytapbusiness/sis;->onStart()V

    :cond_a
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_secrecy:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/secrecy/SecrecyService;

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/secrecy/SecrecyService;->publish(Landroid/content/Context;)V

    :cond_b
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_engineer:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/engineer/OneplusEngineerService;

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/engineer/OneplusEngineerService;->publish(Landroid/content/Context;)V

    :cond_c
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_scene_call_block:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->publish()V

    :cond_d
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_longshot_manager_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;

    if-eqz v1, :cond_e

    const-string v2, "Longshot publishing"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->publish(Landroid/content/Context;)V

    :cond_e
    iget-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_bluetooth_service_information:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v2, Lcom/oneplus/android/server/tsu;

    invoke-direct {v2}, Lcom/oneplus/android/server/tsu;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, p1, [I

    const/16 v1, 0x10f

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_f

    new-array p1, p1, [I

    const/16 v0, 0x10e

    aput v0, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_f
    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_iris_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/android/server/iris/OpIrisService;

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/oneplus/android/server/iris/OpIrisService;->publish(Landroid/content/Context;)V

    :cond_10
    return-void
.end method

.method public systemReady()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OneplusContextStubImpl"

    const-string v1, "systemReady()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x1f

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppRecordManagerService;->initEnv(Landroid/content/Context;)V

    :cond_1
    new-array v1, v0, [I

    const/16 v2, 0x72

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_motor:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/vdb;

    invoke-virtual {v1}, Lcom/oneplus/android/server/vdb;->systemReady()V

    :cond_2
    new-array v1, v0, [I

    const/16 v2, 0x17

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_openid:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/openid/sis;

    invoke-virtual {v1}, Lcom/oneplus/android/server/openid/sis;->onSystemReady()V

    :cond_3
    new-array v1, v0, [I

    const/16 v2, 0x18

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_heytap_business:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/heytapbusiness/sis;

    invoke-virtual {v1}, Lcom/oneplus/android/server/heytapbusiness/sis;->onSystemReady()V

    :cond_4
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_opservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/server/OnePlusService;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/oneplus/server/OnePlusService;->systemReady()V

    :cond_5
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_exservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusExService;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/server/OnePlusExService;->systemRunning()V

    :cond_6
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_nfc:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusNfcService;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/server/OnePlusNfcService;->systemRunning()V

    :cond_7
    new-array v1, v0, [I

    const/16 v2, 0xa1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_colordisplay:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/display/OpColorDisplayService;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->systemReady()V

    :cond_8
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_restartprocessmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/E;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/am/E;->systemReady(Landroid/content/Context;)V

    :cond_9
    new-array v1, v0, [I

    const/16 v2, 0xbe

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_gps_notification:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/oxb;

    invoke-virtual {v1}, Lcom/android/server/oxb;->systemReady()V

    :cond_a
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_secrecy:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/secrecy/SecrecyService;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/android/server/secrecy/SecrecyService;->systemReady()V

    :cond_b
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_engineer:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/engineer/OneplusEngineerService;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/server/engineer/OneplusEngineerService;->systemReady()V

    :cond_c
    new-array v1, v0, [I

    const/16 v2, 0x13b

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/oneplus/android/server/wifi/sis;->getInstance()Lcom/oneplus/android/server/wifi/sis;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/wifi/sis;->rtg(Landroid/content/Context;)V

    :cond_d
    new-array v1, v0, [I

    const/16 v2, 0x84

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smartboost:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/zta/tsu;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/zta/tsu;->initOnlineConfig(Landroid/content/Context;)V

    :cond_e
    invoke-static {}, Lcom/android/server/backlight/OpBacklightManager;->getInstance()Lcom/android/server/backlight/OpBacklightManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/backlight/OpBacklightManager;->initOnlineConfig(Landroid/content/Context;)V

    sget-boolean v1, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->IN_USING:Z

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->getInstance()Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->initOnlineConfig(Landroid/content/Context;)V

    :cond_f
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/am/e;->getInstance(Landroid/content/Context;)Lcom/android/server/am/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/e;->initOnlineConfig()V

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_scene_call_block:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;

    if-eqz v1, :cond_10

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->systemReady(Landroid/content/Context;)V

    :cond_10
    new-array v1, v0, [I

    const/16 v2, 0x117

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->initOnlineConfig(Landroid/content/Context;)V

    :cond_11
    new-array v1, v0, [I

    const/16 v2, 0x57

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/server/sis;->systemReady(Landroid/content/Context;)V

    :cond_12
    new-array v1, v0, [I

    const/16 v2, 0xb9

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManager;->getInstance()Lcom/android/server/wm/OnePlusPerfManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/OnePlusPerfManager;->initOnlineConfig(Landroid/content/Context;)V

    :cond_13
    sget-boolean v1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->IN_USING:Z

    if-eqz v1, :cond_14

    :try_start_0
    new-instance v1, Lcom/oneplus/android/server/scene/bio;

    invoke-direct {v1, v3, v3}, Lcom/oneplus/android/server/scene/bio;-><init>(II)V

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->setHapticEffect(Lcom/oneplus/android/server/scene/bio;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->disableFeatureWhenException()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_0
    new-array v1, v0, [I

    const/16 v2, 0x10f

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_15

    new-array v1, v0, [I

    const/16 v2, 0x10e

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_iris_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/iris/OpIrisService;

    if-eqz v1, :cond_16

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/iris/OpIrisService;->systemReady(Landroid/content/Context;)V

    :cond_16
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->ina:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_wifi:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/wifi/OpWifiService;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/oneplus/android/server/wifi/OpWifiService;->systemRunning()V

    :cond_17
    new-array v0, v0, [I

    const/16 v1, 0xca

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/pm/zta;->getInstance(Landroid/content/Context;)Lcom/android/server/pm/zta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/zta;->initOnlineConfig()V

    :cond_18
    return-void
.end method
