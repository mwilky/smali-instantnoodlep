.class public Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;
.super Ljava/lang/Object;
.source "ConnectedUsbDeviceUpdater.java"


# instance fields
.field private mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

.field private mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

.field mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

.field mUsbPreference:Landroidx/preference/Preference;

.field mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V
    .locals 1

    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v0, p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$8_8ZhYJMgn-zGVqi-7esENaXwOM;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$8_8ZhYJMgn-zGVqi-7esENaXwOM;-><init>(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iput-object p4, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    new-instance p2, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    iget-object p3, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    iget-object p4, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {p2, p1, p3, p4}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    return-void
.end method


# virtual methods
.method public initUsbPreference(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroidx/preference/Preference;

    const v0, 0x7f121790

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroidx/preference/Preference;

    const v0, 0x7f080393

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$-GzbX4qf24akYMeF2cR6p1BWlpo;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$-GzbX4qf24akYMeF2cR6p1BWlpo;-><init>(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->register()V

    return-void
.end method

.method public synthetic lambda$initUsbPreference$1$ConnectedUsbDeviceUpdater(Landroidx/preference/Preference;)Z
    .locals 1

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const v0, 0x7f1205f1

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$new$0$ConnectedUsbDeviceUpdater(ZJII)V
    .locals 9

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroidx/preference/Preference;

    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    :goto_0
    const/4 p5, 0x1

    const-wide/16 v1, 0x8

    const-wide/16 v3, 0x10

    const-wide/16 v5, 0x20

    const-wide/16 v7, 0x4

    if-eq p4, p5, :cond_5

    const p5, 0x7f121796

    if-eq p4, v0, :cond_1

    goto :goto_1

    :cond_1
    cmp-long p4, p2, v7

    if-nez p4, :cond_2

    const p5, 0x7f121797

    goto :goto_1

    :cond_2
    cmp-long p4, p2, v5

    if-nez p4, :cond_3

    const p5, 0x7f12179c

    goto :goto_1

    :cond_3
    cmp-long p4, p2, v3

    if-nez p4, :cond_4

    const p5, 0x7f121799

    goto :goto_1

    :cond_4
    cmp-long p2, p2, v1

    if-nez p2, :cond_a

    const p5, 0x7f121794

    goto :goto_1

    :cond_5
    cmp-long p4, p2, v7

    if-nez p4, :cond_6

    const p5, 0x7f121798

    goto :goto_1

    :cond_6
    cmp-long p4, p2, v5

    if-nez p4, :cond_7

    const p5, 0x7f12179d

    goto :goto_1

    :cond_7
    cmp-long p4, p2, v3

    if-nez p4, :cond_8

    const p5, 0x7f12179a

    goto :goto_1

    :cond_8
    cmp-long p2, p2, v1

    if-nez p2, :cond_9

    const p5, 0x7f121795

    goto :goto_1

    :cond_9
    const p5, 0x7f12179b

    :cond_a
    :goto_1
    invoke-virtual {p1, p5}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroidx/preference/Preference;

    invoke-interface {p1, p0}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceAdded(Landroidx/preference/Preference;)V

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroidx/preference/Preference;

    invoke-interface {p1, p0}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceRemoved(Landroidx/preference/Preference;)V

    :goto_2
    return-void
.end method

.method public registerCallback()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->register()V

    return-void
.end method

.method public unregisterCallback()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->unregister()V

    return-void
.end method
