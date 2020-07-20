.class Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;
.super Landroid/os/AsyncTask;
.source "ResetSystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetSystemSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetSystemSettingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field final synthetic this$0:Lcom/android/settings/ResetSystemSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetSystemSettings;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, [Ljava/lang/Void;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->factoryReset()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const-string v3, "bluetooth"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearAllDevices()V

    :cond_2
    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    const-string v0, "ResetSystemSettings"

    const-string v5, "Reset Night mode"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayAutoMode(I)Z

    :cond_3
    iget-object v6, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/16 v7, 0x32

    const/4 v8, -0x2

    const-string v9, "oem_nightmode_progress_status"

    invoke-static {v6, v9, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v6, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "oem_nightmode_brightness_progress"

    invoke-static {v6, v9, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {v5}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayActivated(Z)Z

    :cond_4
    iget-object v5, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const v6, 0x44aa200

    const-string v7, "night_display_custom_start_time"

    invoke-static {v5, v7, v6, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v5, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const v6, 0x1808580

    const-string v7, "night_display_custom_end_time"

    invoke-static {v5, v7, v6, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v5, "Turn on Adaptive brightness"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "screen_brightness_mode"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "Reset Screen timeout"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v5, v6, [I

    const/16 v7, 0x5d

    aput v7, v5, v1

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    const-string v7, "screen_off_timeout"

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-wide/16 v9, 0x7530

    invoke-static {v5, v7, v9, v10}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-wide/32 v9, 0xea60

    invoke-static {v5, v7, v9, v10}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :goto_0
    const-string v5, "Set Screen calibration as Vivid"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "screen_color_mode_settings_value"

    invoke-static {v5, v7, v6, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v5, "Set Screen Refresh rate 90"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x2

    const-string v9, "oneplus_screen_refresh_rate"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "Turn off Video enhancer"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "false"

    const-string v7, "persist.sys.oem.vendor.media.vpp.enable"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "op_video_enhancer"

    invoke-static {v7, v9, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "Set font scale to 1.0f"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/high16 v9, 0x3f800000    # 1.0f

    const-string v10, "font_scale"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    const-string v7, "Reset display size/screen zoon to Small"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/settingslib/display/DisplayDensityUtils;->clearForcedDisplayDensity(I)V

    iget-object v7, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "status_bar_battery_style"

    invoke-static {v7, v9, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "status_bar_show_battery_percent"

    invoke-static {v7, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "icon_blacklist"

    invoke-static {v7, v9, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/settings/statusbar/Utils;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v7

    const-string v10, "mBlacklist = "

    invoke-static {v10}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "networkspeed"

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v10, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const v11, 0x10406bf

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "clock_seconds"

    invoke-static {v11, v12, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v7, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_7
    const-string v10, "rotate"

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v10, "ethernet"

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v7, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_9
    const-string v10, "mobile"

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v7, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_a
    const-string v10, "volume"

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v7, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_b
    const-string v10, "vowifi"

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v7, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_c
    const-string v10, "airplane"

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v7, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_d
    const-string v10, "managed_profile"

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v7, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_e
    const-string v10, "nfc"

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v7, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_f
    const-string v10, "zen"

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v7, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_10
    const-string v10, "cast"

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v7, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_11
    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v7, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_12
    const-string v2, "volte"

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v7, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_13
    const-string v2, "alarm_clock"

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v7, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_14
    const-string v2, "headset"

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v7, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_15
    const-string v2, "hotspot"

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v7, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_16
    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v7, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_17
    const-string v2, "wlb"

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v7, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_18
    iget-object v2, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v9, v3, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v2, "Turn On Auto-rotate"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    const-string v2, "Reset Preset Theme"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const-class v7, Lcom/oneplus/settings/OPThemeService;

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/-$$Lambda$ResetSystemSettings$ResetSystemSettingsTask$84GKT26DadRk0eloaj8DcJV2yjM;

    invoke-direct {v3, p0}, Lcom/android/settings/-$$Lambda$ResetSystemSettings$ResetSystemSettingsTask$84GKT26DadRk0eloaj8DcJV2yjM;-><init>(Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;)V

    const-wide/16 v9, 0x64

    invoke-virtual {v2, v3, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_customization_theme_style"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aod_clock_style"

    invoke-static {v2, v3, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "doze_enabled"

    invoke-static {v3, v7, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v6, v3, :cond_19

    move v3, v6

    goto :goto_1

    :cond_19
    move v3, v1

    :goto_1
    iget-object v7, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "prox_wake_enabled"

    invoke-static {v7, v9, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v6, v7, :cond_1a

    move v7, v6

    goto :goto_2

    :cond_1a
    move v7, v1

    :goto_2
    const-string v9, "aod_smart_display_enabled"

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v10, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v2, v10, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/16 v10, 0xb

    invoke-static {v2, v10}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->get(II)I

    move-result v2

    if-ne v2, v6, :cond_1b

    move v2, v6

    goto :goto_3

    :cond_1b
    move v2, v1

    :goto_3
    if-eqz v3, :cond_1e

    if-nez v7, :cond_1c

    if-eqz v2, :cond_1e

    :cond_1c
    iget-object v2, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v9, v6, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_4

    :cond_1d
    if-eqz v3, :cond_1e

    if-eqz v7, :cond_1e

    iget-object v2, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v9, v6, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1e
    :goto_4
    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    const-string p1, "setAnimStyle value:"

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline31(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentHorizonLightByIndex(I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "oneplus_aodnotification"

    invoke-static {v3, p1, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentHorizonLight(Landroid/content/Context;I)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;

    invoke-direct {v2, p0, v6}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;-><init>(Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;I)V

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "oneplus_fullscreen_gesture_type"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "overlay"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mOverlayManager:Landroid/content/om/IOverlayManager;

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    const-string v2, "setNavBarInteractionMode: overlayPackage = "

    const-string v3, "com.android.internal.systemui.navbar.threebutton"

    invoke-static {v2, v3, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline40(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1, v3, v8}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "oem_acc_key_define"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, 0x3

    const-string v3, "key_home_long_press_action"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "key_home_double_tap_action"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "key_app_switch_long_press_action"

    invoke-static {p1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "key_app_switch_double_tap_action"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "key_back_long_press_action"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "key_back_double_tap_action"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    const-string v2, "Turn OFF OTG storage"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "persist.sys.oem.otg_support"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oneplus_otg_auto_disable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "Reset Experience improvement programs"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_receive_notifications"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    const-string v5, "net.oneplus.push.action.SWITCH_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "net.oneplus.push"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "oem_join_user_plan_settings"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v5, "INTENT_START_ODM"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "oem_join_stability_plan_settings"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "oem_app_updates_enable"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.oneplus.appupgrader.action.SWITCH_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.oneplus.appupgrader"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.settings.RECEIVE_PERMISSION"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p1, "Turn On RAM boost"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-static {p1, v6}, Lcom/oneplus/settings/system/OPRamBoostSettings;->setRamBoostState(Landroid/content/Context;Z)V

    const-string p1, "Reset device name"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-static {v0}, Lcom/android/settings/ResetSystemSettings;->access$500(Lcom/android/settings/ResetSystemSettings;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oem_oneplus_devicename"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "oem_oneplus_modified_devicename"

    const-string v0, "null"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-object v4

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public synthetic lambda$resetCustomizationCategory$0$ResetSystemSettings$ResetSystemSettingsTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mAm:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mAm:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->killProcess(Landroid/app/ActivityManager;Z)V

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableLightThemes(Landroid/content/Context;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-static {p1}, Lcom/android/settings/ResetSystemSettings;->access$200(Lcom/android/settings/ResetSystemSettings;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-static {p1}, Lcom/android/settings/ResetSystemSettings;->access$200(Lcom/android/settings/ResetSystemSettings;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->mContext:Landroid/content/Context;

    const p1, 0x7f12134d

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
