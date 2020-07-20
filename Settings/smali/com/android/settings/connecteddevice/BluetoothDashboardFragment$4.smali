.class Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p1, "BluetoothDashboardFrag"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$000(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$000(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->isOnePlusPods(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v2, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    array-length v1, p2

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    const/4 v1, 0x2

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xa

    const/4 v3, 0x4

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0xa

    const/4 v4, 0x6

    aget-object v5, p2, v4

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    aget-object p2, p2, v4

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v2

    mul-int/lit8 v2, p2, 0xa

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_VENDOR_SPECIFIC_HEADSET_EVENT address = "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", leftLevel: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", rightLevel: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", boxLevel: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {p2, v1, v3, v2}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$500(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;III)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$100(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    const-string v2, "available_device_list"

    invoke-static {v1, v0, v2}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$600(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    const-string v1, "connected_device_list"

    invoke-static {p0, v0, v1}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$600(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTwsBattery(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p2, "onReceive e2 = "

    invoke-static {p2, p0, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
