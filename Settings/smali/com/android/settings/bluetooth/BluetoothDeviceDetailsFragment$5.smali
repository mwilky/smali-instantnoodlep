.class Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDeviceDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    const/high16 v3, -0x80000000

    const-string v4, "BTDeviceDetailsFrg"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    const-string p1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$800(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$900(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto/16 :goto_1

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->isOnePlusPods(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1200(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1300(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_1

    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oneplus.twspods"

    const-string v1, "com.oos.onepluspods.service.MultiDeviceCoreService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "address"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "device"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/ServiceConnection;

    move-result-object p0

    invoke-virtual {p2, p1, p0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    const-string p1, "onReceive e = "

    invoke-static {p1, p0, v4}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->isOnePlusPods(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v2, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    array-length v0, p2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_7

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x4

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0xa

    const/4 v2, 0x6

    aget-object v3, p2, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v5

    mul-int/lit8 v5, p2, 0xa

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_VENDOR_SPECIFIC_HEADSET_EVENT address = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", leftLevel: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rightLevel: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", boxLevel: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p2, v0, v1, v5}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1800(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;III)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    move-result-object p0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->updateSumary(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "onReceive e2 = "

    invoke-static {p1, p0, v4}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_7

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$800(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$900(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_7
    :goto_1
    return-void
.end method
