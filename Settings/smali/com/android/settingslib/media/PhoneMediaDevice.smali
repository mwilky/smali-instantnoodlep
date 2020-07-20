.class public Lcom/android/settingslib/media/PhoneMediaDevice;
.super Lcom/android/settingslib/media/MediaDevice;
.source "PhoneMediaDevice.java"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mSummary:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/media/MediaDevice;-><init>(Landroid/content/Context;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mSummary:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p2, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->initDeviceRecord()V

    return-void
.end method


# virtual methods
.method public connect()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settingslib/media/PhoneMediaDevice;->updateSummary(Z)V

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->setConnectedRecord()V

    const-string v0, "connect() device : "

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    const v1, 0x10401f3

    goto :goto_1

    :cond_3
    const v1, 0x7f120a5c

    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", is selected : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PhoneMediaDevice"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public disconnect()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/PhoneMediaDevice;->updateSummary(Z)V

    return-void
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    const v0, 0x7f080379

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "phone_media_device_id_1"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->buildBtRainbowDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    const-string p0, "phone_media_device_id_1"

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const v0, 0x10401f3

    goto :goto_0

    :cond_0
    const v0, 0x7f120a5c

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public isConnected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateSummary(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    const v0, 0x7f1202d5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mSummary:Ljava/lang/String;

    return-void
.end method
