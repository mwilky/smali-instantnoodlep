.class public Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;
.super Ljava/lang/Object;
.source "FiveGNetWorkStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;
    }
.end annotation


# instance fields
.field private mBindRetryTimes:I

.field private mCallback:Lorg/codeaurora/internal/INetworkCallback;

.field private mClient:Lorg/codeaurora/internal/Client;

.field private mContext:Landroid/content/Context;

.field private final mCurrentServiceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInitRetryTimes:I

.field private final mLastServiceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

.field private mPackageName:Ljava/lang/String;

.field private mPhoneCount:I

.field private final mRsrpThresholds:[I

.field private mServiceConnected:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mCurrentServiceStates:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mLastServiceStates:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;-><init>(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;-><init>(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mPackageName:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mPhoneCount:I

    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03004e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mRsrpThresholds:[I

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f03004f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mServiceConnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->update5GIcon(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;I)I
    .locals 4

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mRsrpThresholds:[I

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget v0, p0, v0

    const/4 v2, 0x0

    if-lt v0, p1, :cond_3

    aget v0, p0, v2

    if-ge p1, v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    array-length v0, p0

    sub-int/2addr v0, v1

    if-ge v2, v0, :cond_2

    aget v0, p0, v2

    if-ge v0, p1, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget v3, p0, v0

    if-gt p1, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->binderService()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->initFiveGServiceState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lorg/codeaurora/internal/IExtTelephony;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Lorg/codeaurora/internal/Client;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Client;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Lorg/codeaurora/internal/INetworkCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    return-object p0
.end method

.method private binderService()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Lorg/codeaurora/internal/ServiceUtil;->bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    const-string v1, " bind service "

    const-string v2, "FiveGNetWorkStatus"

    invoke-static {v1, v0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline43(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    mul-int/lit16 v2, v2, 0x7d0

    add-int/lit16 v2, v2, 0xbb8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    :cond_0
    return-void
.end method

.method private initFiveGServiceState()V
    .locals 3

    const-string v0, "initFiveGServiceState mPhoneCount="

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mPhoneCount:I

    const-string v2, "FiveGNetWorkStatus"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline44(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->initFiveGServiceState(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initFiveGServiceState(I)V
    .locals 6

    const-string v0, "initFiveGServiceState: Exception = "

    const-string v1, "mNetworkService="

    invoke-static {v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mClient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FiveGNetWorkStatus"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    if-eqz v1, :cond_0

    const-string v1, "query 5G service state for phoneId "

    invoke-static {v1, p1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline31(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x4

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v3, p1, v4}, Lorg/codeaurora/internal/IExtTelephony;->queryNrDcParam(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryNrDcParam result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v3, p1, v4}, Lorg/codeaurora/internal/IExtTelephony;->queryNrBearerAllocation(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryNrBearerAllocation result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v3, p1, v4}, Lorg/codeaurora/internal/IExtTelephony;->queryNrSignalStrength(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryNrSignalStrength result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v3, p1, v4}, Lorg/codeaurora/internal/IExtTelephony;->queryUpperLayerIndInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryUpperLayerIndInfo result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v3, p1, v4}, Lorg/codeaurora/internal/IExtTelephony;->query5gConfigInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query5gConfigInfo result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v3, p1, v4}, Lorg/codeaurora/internal/IExtTelephony;->queryNrIconType(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryNrIconType result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v0, p1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    if-ge p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x401

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    mul-int/lit16 v1, v1, 0x7d0

    add-int/lit16 v1, v1, 0xbb8

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    goto :goto_0

    :catch_1
    move-exception p1

    iget v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    if-ge v3, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    mul-int/lit16 v4, v4, 0x7d0

    add-int/lit16 v4, v4, 0xbb8

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    invoke-static {v0, p1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private update5GIcon(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V
    .locals 2

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$000(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I

    move-result p0

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$400(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I

    move-result p0

    if-lez p0, :cond_0

    move p2, v0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$400(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$000(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$300(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I

    move-result p0

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    goto :goto_0

    :cond_2
    move p2, v0

    :goto_0
    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z

    goto :goto_1

    :cond_3
    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public getCurrentServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mCurrentServiceStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public registerListener(I)V
    .locals 2

    const-string v0, "registerListener phoneId="

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline31(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mServiceConnected:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->binderService()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->initFiveGServiceState(I)V

    :goto_0
    return-void
.end method

.method public unregisterListener(I)V
    .locals 2

    const-string v0, "unregisterListener phoneId="

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline31(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mCurrentServiceStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mLastServiceStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
