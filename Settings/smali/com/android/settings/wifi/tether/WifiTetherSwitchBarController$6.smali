.class Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$6;
.super Ljava/lang/Object;
.source "WifiTetherSwitchBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$6;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$6;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Lcom/android/settings/widget/SwitchWidgetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$6;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Lcom/android/settings/widget/SwitchWidgetController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$6;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$100(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    return-void
.end method
