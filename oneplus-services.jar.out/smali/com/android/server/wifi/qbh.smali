.class Lcom/android/server/wifi/qbh;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/ire;->qr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/ire;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ire;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received broadcast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->irq(Lcom/android/server/wifi/ire;)V

    iget-object p1, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->vdw(Lcom/android/server/wifi/ire;)Landroid/net/ConnectivityManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->vdw(Lcom/android/server/wifi/ire;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p2}, Lcom/android/server/wifi/ire;->qeg(Lcom/android/server/wifi/ire;)Landroid/net/NetworkRequest;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {v0}, Lcom/android/server/wifi/ire;->ivd(Lcom/android/server/wifi/ire;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->a(Lcom/android/server/wifi/ire;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    new-instance p2, Lcom/android/server/wifi/ywr;

    invoke-direct {p2, p0}, Lcom/android/server/wifi/ywr;-><init>(Lcom/android/server/wifi/qbh;)V

    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object p1, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->gck(Lcom/android/server/wifi/ire;)V

    iget-object p0, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->qbh(Lcom/android/server/wifi/ire;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x4

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1, v3}, Lcom/android/server/wifi/ire;->rtg(Lcom/android/server/wifi/ire;Z)Z

    iget-object p1, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->vdb(Lcom/android/server/wifi/ire;)V

    :goto_0
    iget-object p1, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->cno(Lcom/android/server/wifi/ire;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/wifi/ire;->gck(Lcom/android/server/wifi/ire;Z)V

    iget-object p0, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->qbh(Lcom/android/server/wifi/ire;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_2
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1, v4}, Lcom/android/server/wifi/ire;->rtg(Lcom/android/server/wifi/ire;Z)Z

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.action.ENABLE_DOWNLOAD_SWITCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->q(Lcom/android/server/wifi/ire;)V

    iget-object p0, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0, v3}, Lcom/android/server/wifi/ire;->dma(Lcom/android/server/wifi/ire;Z)V

    goto/16 :goto_3

    :cond_4
    const-string v0, "android.intent.action.GO_ACCELERATION_SETTINGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->wtn(Lcom/android/server/wifi/ire;)Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "oneplus.intent.action.OP_SLA"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start activity not found:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_5
    const-string v0, "android.intent.action.ENABLE_SLS_APP_SWITCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->ugm(Lcom/android/server/wifi/ire;)V

    iget-object p0, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0, v3}, Lcom/android/server/wifi/ire;->ywr(Lcom/android/server/wifi/ire;Z)V

    goto/16 :goto_3

    :cond_6
    const-string v0, "android.net.network.INTERNET_LOST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->b(Lcom/android/server/wifi/ire;)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mWifiValidate:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {v0}, Lcom/android/server/wifi/ire;->c(Lcom/android/server/wifi/ire;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " slsWanDetectConditionCheck:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p2}, Lcom/android/server/wifi/ire;->c(Lcom/android/server/wifi/ire;)Z

    move-result p2

    if-nez p2, :cond_d

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->e(Lcom/android/server/wifi/ire;)V

    goto/16 :goto_3

    :cond_7
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->irq(Lcom/android/server/wifi/ire;)V

    iget-object p1, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->vdw(Lcom/android/server/wifi/ire;)Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p2

    if-eqz p2, :cond_8

    move p2, v3

    goto :goto_1

    :cond_8
    move p2, v4

    :goto_1
    if-eqz p2, :cond_d

    iget-object p0, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-ne p1, v3, :cond_9

    goto :goto_2

    :cond_9
    move v3, v4

    :goto_2
    invoke-static {p0, v3}, Lcom/android/server/wifi/ire;->qbh(Lcom/android/server/wifi/ire;Z)V

    goto :goto_3

    :cond_a
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->gck(Lcom/android/server/wifi/ire;)V

    goto :goto_3

    :cond_b
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    const/16 p1, -0xc8

    const-string v0, "newRssi"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/wifi/ire;->gck(Lcom/android/server/wifi/ire;I)V

    goto :goto_3

    :cond_c
    const-string v0, "android.net.wifi.COUNTRY_CODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "country_code"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WIFI_COUNTRY_CODE_CHANGED_ACTION: new = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->wtn(Lcom/android/server/wifi/ire;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "op_wifi_country_code"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_d
    :goto_3
    return-void
.end method
