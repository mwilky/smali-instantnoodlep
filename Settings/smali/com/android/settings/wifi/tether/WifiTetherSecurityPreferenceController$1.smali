.class Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;
.super Ljava/lang/Object;
.source "WifiTetherSecurityPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    iget-object p1, p1, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$200(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$102(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;I)I

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$400(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)Landroidx/preference/ListPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {p2}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$200(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$300(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$400(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)Landroidx/preference/ListPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {p2}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$200(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    goto :goto_0

    :cond_1
    const/4 p1, -0x2

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$400(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)Landroidx/preference/ListPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$100(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
