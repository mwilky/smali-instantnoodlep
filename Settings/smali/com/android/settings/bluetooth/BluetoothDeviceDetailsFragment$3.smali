.class Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;
.super Ljava/lang/Object;
.source "BluetoothDeviceDetailsFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected componentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " iBinder = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BTDeviceDetailsFrg"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p2}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$502(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "device_address"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->isOnePlusPods(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->setIOnePlusUpdate(Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;)V

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p2, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1200(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1300(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/Preference;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->setTwsAddress(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$800(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$900(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1300(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$502(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->setTwsAddress(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "onServiceConnected e = "

    invoke-static {p1, p0, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p0, "onServiceDisconnected componentName = "

    const-string v0, "BTDeviceDetailsFrg"

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
