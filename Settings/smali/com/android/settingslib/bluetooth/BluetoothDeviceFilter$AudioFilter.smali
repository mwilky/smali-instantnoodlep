.class final Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;
.super Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioFilter"
.end annotation


# direct methods
.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    return-void
.end method


# virtual methods
.method matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sget-object p2, Lcom/android/settingslib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v0

    :cond_0
    sget-object p2, Lcom/android/settingslib/bluetooth/HeadsetProfile;->UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2, p0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v0

    :cond_3
    return p0
.end method
