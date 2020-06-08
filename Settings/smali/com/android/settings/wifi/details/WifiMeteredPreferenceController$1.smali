.class Lcom/android/settings/wifi/details/WifiMeteredPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiMeteredPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x60e99352

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "wifiConfiguration"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iget-object p2, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;

    invoke-static {p2}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->access$000(Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/DropDownPreference;

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-static {p0, p2, p1}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->access$100(Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;Landroidx/preference/DropDownPreference;I)V

    :goto_2
    return-void
.end method
