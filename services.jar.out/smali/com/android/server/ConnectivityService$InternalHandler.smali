.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_f

    const/16 v1, 0x9

    if-eq v0, v1, :cond_e

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_d

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_c

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_b

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto/16 :goto_5

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStartKeepalive(Landroid/os/Message;)V

    goto/16 :goto_5

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "start_dns_time_out_monitor"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$6102(Lcom/android/server/ConnectivityService;Z)Z

    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "registerDnsNetdEventCallback success"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    const-string/jumbo v0, "registerDnsNetdEventCallback fail"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_3
    new-array v0, v2, [I

    const/16 v2, 0x125

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$6000(Lcom/android/server/ConnectivityService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->setUpstreamUserChoice(I)V

    goto/16 :goto_5

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$5900()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    :cond_2
    const-string/jumbo v3, "op_tcp_timestamps_value"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5802(Lcom/android/server/ConnectivityService;I)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$5800(Lcom/android/server/ConnectivityService;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/INetd;->setTcpTimestamps(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error set tcp timestamps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$700(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_auto_change_to_mobile_data"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->access$2002(Lcom/android/server/ConnectivityService;Z)Z

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mWifiAutoChangeMobile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    array-length v5, v4

    move v6, v3

    move-object v3, v0

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_6

    aget-object v7, v4, v0

    iget-object v8, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v8, v7}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v8, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v2, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    if-eq v6, v2, :cond_7

    const-string/jumbo v0, "there\'s no wifi network"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/NetworkMonitorManager;->forceReevaluation(I)Z

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    iget-object v1, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Z

    move-result v4

    xor-int/2addr v2, v4

    iput-boolean v2, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v3}, Lcom/android/server/ConnectivityService;->access$5600(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v1

    iget-object v2, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v3, v0}, Lcom/android/server/ConnectivityService;->access$5700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v3}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_5

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2900(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->handleRestrictBackgroundChanged(Z)V

    goto/16 :goto_5

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService;->handleUidRulesChanged(II)V

    goto/16 :goto_5

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    goto/16 :goto_5

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_5

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2900(I)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$5200(Lcom/android/server/ConnectivityService;Landroid/net/Network;IZ)V

    goto/16 :goto_5

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_5

    :pswitch_d
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_5

    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2900(I)Z

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2900(I)Z

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    goto/16 :goto_5

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/PendingIntent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    goto/16 :goto_5

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto/16 :goto_5

    :pswitch_11
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->start()V

    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/NetPluginDelegate;->registerHandler(Landroid/os/Handler;)V

    goto/16 :goto_5

    :pswitch_12
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Messenger;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    goto/16 :goto_5

    :pswitch_13
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkRequest;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;IZ)V

    goto/16 :goto_5

    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto/16 :goto_5

    :pswitch_15
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto :goto_5

    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/net/INetworkMonitor;

    invoke-static {v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;)V

    goto :goto_5

    :pswitch_17
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    goto :goto_5

    :pswitch_18
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/ProxyInfo;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$6300(Lcom/android/server/ConnectivityService;I)V

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5500(Lcom/android/server/ConnectivityService;)V

    goto :goto_5

    :cond_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2900(I)Z

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2900(I)Z

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOGGED_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/ProxyTracker;->loadDeprecatedGlobalHttpProxy()V

    goto :goto_5

    :cond_f
    :pswitch_19
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;I)V

    nop

    :cond_10
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_13
        :pswitch_12
        :pswitch_19
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x23
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8100b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
