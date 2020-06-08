.class public Lcom/android/settings/network/telephony/NetworkScanHelper;
.super Ljava/lang/Object;
.source "NetworkScanHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanSyncTask;,
        Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;,
        Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;
    }
.end annotation


# static fields
.field private static final NETWORK_SCAN_REQUEST:Landroid/telephony/NetworkScanRequest;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mInternalNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

.field private final mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

.field private mNetworkScanFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNetworkScanRequester:Landroid/telephony/NetworkScan;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v8, Landroid/telephony/NetworkScanRequest;

    const/4 v0, 0x3

    new-array v2, v0, [Landroid/telephony/RadioAccessSpecifier;

    new-instance v1, Landroid/telephony/RadioAccessSpecifier;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v4}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    const/4 v5, 0x0

    aput-object v1, v2, v5

    new-instance v1, Landroid/telephony/RadioAccessSpecifier;

    invoke-direct {v1, v0, v4, v4}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    aput-object v1, v2, v3

    new-instance v0, Landroid/telephony/RadioAccessSpecifier;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v4, v4}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    aput-object v0, v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x5

    const/16 v4, 0x12c

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/telephony/NetworkScanRequest;-><init>(I[Landroid/telephony/RadioAccessSpecifier;IIZILjava/util/ArrayList;)V

    sput-object v8, Lcom/android/settings/network/telephony/NetworkScanHelper;->NETWORK_SCAN_REQUEST:Landroid/telephony/NetworkScanRequest;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/TelephonyManager;Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    new-instance p1, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;-><init>(Lcom/android/settings/network/telephony/NetworkScanHelper;Lcom/android/settings/network/telephony/NetworkScanHelper$1;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mInternalNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    iput-object p3, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/NetworkScanHelper;Ljava/util/List;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    check-cast p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$300(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/network/telephony/NetworkScanHelper;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    check-cast p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$300(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/network/telephony/NetworkScanHelper;I)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    check-cast p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$300(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic access$400(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x2710

    :goto_0
    return p0
.end method


# virtual methods
.method public startNetworkScan(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v0, Lcom/android/settings/network/telephony/NetworkScanHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/NetworkScanHelper$1;-><init>(Lcom/android/settings/network/telephony/NetworkScanHelper;)V

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanSyncTask;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    check-cast p0, Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanSyncTask;-><init>(Landroid/telephony/TelephonyManager;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/android/settings/network/telephony/NetworkScanHelper;->NETWORK_SCAN_REQUEST:Landroid/telephony/NetworkScanRequest;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mInternalNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    invoke-virtual {p1, v0, v1, v2}, Landroid/telephony/TelephonyManager;->requestNetworkScan(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanRequester:Landroid/telephony/NetworkScan;

    :cond_1
    :goto_0
    return-void
.end method

.method public stopNetworkQuery()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanRequester:Landroid/telephony/NetworkScan;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/NetworkScan;->stopScan()V

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_1
    return-void
.end method
