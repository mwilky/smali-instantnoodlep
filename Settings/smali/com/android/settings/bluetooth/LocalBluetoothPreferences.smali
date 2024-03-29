.class final Lcom/android/settings/bluetooth/LocalBluetoothPreferences;
.super Ljava/lang/Object;
.source "LocalBluetoothPreferences.java"


# direct methods
.method static shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LocalBluetoothPreferences"

    if-nez v0, :cond_0

    const-string p0, "manager == null - do not show dialog."

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v4, 0x5

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_2

    const-string p0, "in appliance mode - do not show dialog."

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v0, "bluetooth_settings"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v6, 0x0

    const-string v8, "discoverable_end_timestamp"

    invoke-interface {v0, v8, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    cmp-long v8, v8, v4

    if-lez v8, :cond_3

    return v3

    :cond_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v9

    if-eqz v9, :cond_4

    return v3

    :cond_4
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getDiscoveryEndMillis()J

    move-result-wide v8

    add-long/2addr v8, v10

    cmp-long v8, v8, v4

    if-lez v8, :cond_5

    return v3

    :cond_5
    if-eqz p1, :cond_6

    const/4 v8, 0x0

    const-string v9, "last_selected_device"

    invoke-interface {v0, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "last_selected_device_time"

    invoke-interface {v0, p1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v6, v10

    cmp-long p1, v6, v4

    if-lez p1, :cond_6

    return v3

    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const p1, 0x10401a2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "showing dialog for packaged keyboard"

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7
    const-string p0, "Found no reason to show the dialog - do not show dialog."

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
