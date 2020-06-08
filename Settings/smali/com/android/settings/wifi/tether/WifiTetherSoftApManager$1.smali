.class Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$1;
.super Ljava/lang/Object;
.source "WifiTetherSoftApManager.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumClientsChanged(I)V
    .locals 0

    return-void
.end method

.method public onStaConnected(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;)Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->onNumClientsChanged(I)V

    return-void
.end method

.method public onStaDisconnected(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;)Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->onNumClientsChanged(I)V

    return-void
.end method

.method public onStateChanged(II)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;)Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->access$002(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;I)I

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->handleWifiApStateChanged(II)V

    return-void
.end method
