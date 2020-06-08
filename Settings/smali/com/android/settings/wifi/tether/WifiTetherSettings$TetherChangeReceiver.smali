.class Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiTetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "updating display config due to receiving broadcast action "

    const-string v1, "WifiTetherSettings"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline40(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$500(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    const-string v0, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xb

    const-wide/16 v2, 0xc8

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$100(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$200(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$600(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$600(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const-string v0, "wifi_state"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$700()Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$600(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;)V

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$200(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$600(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$600(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method
