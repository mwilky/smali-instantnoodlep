.class Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver$1;
.super Ljava/lang/Object;
.source "WifiTetherSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver$1;->this$1:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$700()Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;->updateDisplay()V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver$1;->this$1:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$800(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->updateDisplay()V

    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$900()Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->updateDisplay()V

    return-void
.end method
