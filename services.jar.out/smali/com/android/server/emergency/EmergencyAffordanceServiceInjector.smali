.class public Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;
.super Ljava/lang/Object;
.source "EmergencyAffordanceServiceInjector.java"


# static fields
.field private static final NUM_POLLING_UNTIL_ABORT:I = 0x6

.field private static final POLLING_CELL_INFO_INTERVAL:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "EmergencyAffordanceServiceInjector"

.field private static sInstance:Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInitializeState:I

.field private mPollingComplete:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mInitializeState:I

    const-string v0, "EmergencyAffordanceServiceInjector"

    const-string v1, "EmergencyAffordanceServiceInjector: constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceService;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->getInitializeState()I

    move-result v0

    iput v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mInitializeState:I

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public static getInstance()Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;
    .locals 2

    sget-object v0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->sInstance:Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    if-nez v0, :cond_0

    const-string v0, "EmergencyAffordanceServiceInjector"

    const-string v1, "getInstance: called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->sInstance:Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    return-object v0
.end method

.method private isMccChange(I)Z
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "sys.radio.mcc"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMccChange oldMcc =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " newMcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyAffordanceServiceInjector"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public static make(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->sInstance:Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->sInstance:Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    goto :goto_0

    :cond_0
    const-string v0, "EmergencyAffordanceServiceInjector"

    const-string/jumbo v1, "make: should be called once "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public addEmergencyCallMccNumbersForTestMcc()V
    .locals 4

    const-string v0, "ecc.test.mcc"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "EmergencyAffordanceServiceInjector"

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :try_start_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "addEmergencyCallMccNumbersForTestMcc: mcc should be a number"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEmergencyCallMccNumbersForTestMcc: add a test mcc = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceService;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService;->addEmergencyCallMccNumbers(I)V

    goto :goto_1

    :cond_0
    const-string v0, "addEmergencyCallMccNumbersForTestMcc: prop ecc.test.mcc is empty"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onStartPollingCellInfo()V
    .locals 4

    iget v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mPollingComplete:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mPollingComplete:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartPollingCellInfo: polling mPollingComplete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mPollingComplete:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mInitializeState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mInitializeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmergencyAffordanceServiceInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mPollingComplete:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceService;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mInitializeState:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceService;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mInitializeState:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceService;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/emergency/EmergencyAffordanceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->onStopPollingCellInfo()V

    :goto_0
    return-void
.end method

.method public onStopPollingCellInfo()V
    .locals 2

    const-string v0, "EmergencyAffordanceServiceInjector"

    const-string/jumbo v1, "onStopPollingCellInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mPollingComplete:I

    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceService;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mInitializeState:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public setPollingComplete(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPollingComplete: pollingComplete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmergencyAffordanceServiceInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mPollingComplete:I

    return-void
.end method

.method public setWifiCountryCode(I)V
    .locals 4

    if-eqz p1, :cond_2

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWifiCountryCode: receive emergency raido mcc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmergencyAffordanceServiceInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->isMccChange(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "setWifiCountryCode: set country code from radio mcc"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->setCountryCodeFromMcc(IZ)V

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sys.radio.mcc"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
