.class public Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPRecognizedBluetoothCarKitNoDevicesPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;


# static fields
.field static final KEY_RECOGNIZED_BLUETOOTH_CAR_KITS_NO_DEVICES:Ljava/lang/String; = "recognized_bluetooth_car_kits_no_devices"


# instance fields
.field private mOPBluetoothCarKitDeviceUpdater:Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;

.field private mPreference:Landroidx/preference/Preference;

.field private mPreferenceSize:I

.field private mStatusReceive:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p2, "recognized_bluetooth_car_kits_no_devices"

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController$1;-><init>(Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;)Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mOPBluetoothCarKitDeviceUpdater:Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;

    return-object p0
.end method

.method private updatePreferenceOnSizeChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget p0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mPreferenceSize:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mOPBluetoothCarKitDeviceUpdater:Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->setPrefContext(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2

    new-instance v0, Lcom/android/settings/bluetooth/OPRecognizedBluetoothCarKitDeviceUpdater;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/bluetooth/OPRecognizedBluetoothCarKitDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mOPBluetoothCarKitDeviceUpdater:Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;

    return-void
.end method

.method public onDeviceAdded(Landroidx/preference/Preference;)V
    .locals 0

    iget p1, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mPreferenceSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mPreferenceSize:I

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->updatePreferenceOnSizeChanged()V

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 0

    iget p1, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mPreferenceSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mPreferenceSize:I

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->updatePreferenceOnSizeChanged()V

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mOPBluetoothCarKitDeviceUpdater:Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->registerCallback()V

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->updatePreferenceOnSizeChanged()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oneplus.action.intent.UpdateBluetoothCarkitDevice"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mOPBluetoothCarKitDeviceUpdater:Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->unregisterCallback()V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method setBluetoothDeviceUpdater(Lcom/android/settings/bluetooth/OPPairedBluetoothDeviceUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mOPBluetoothCarKitDeviceUpdater:Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;

    return-void
.end method

.method setPreference(Landroidx/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method setPreferenceSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->mPreferenceSize:I

    return-void
.end method
