.class public Lcom/android/settings/media/MediaOutputSlice;
.super Ljava/lang/Object;
.source "MediaOutputSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputSlice;->getUri()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "media_package_name"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/media/MediaOutputSlice;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private getBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputSlice;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class p0, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p0, "media_device_id"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1, p3, v0, p0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getDeviceIconCompat(Lcom/android/settingslib/media/MediaDevice;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getDeviceIconCompat() device : "

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", drawable is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaOutputSlice"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    const p1, 0x7f0801ba

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method private getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputSlice;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v0

    check-cast v0, Lcom/android/settings/media/MediaDeviceUpdateWorker;

    iput-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/media/MediaOutputSlice;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->setPackageName(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/media/MediaOutputSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-object p0
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 10

    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f13053b

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v2, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputSlice;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-direct {v0, v2, v3, v4, v5}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    iget-object v2, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-nez v1, :cond_1

    const-string p0, "MediaOutputSlice"

    const-string v1, "getSlice() is not visible"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getMediaDevices()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/media/MediaOutputSlice;->getDeviceIconCompat(Lcom/android/settingslib/media/MediaDevice;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/media/MediaOutputSlice;->getBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {v6, v5, v4, v3}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v6

    new-instance v7, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {v7, v5, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-virtual {v7, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-virtual {v2}, Lcom/android/settingslib/media/MediaDevice;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-virtual {v7, v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-virtual {v0, v7}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/media/MediaDevice;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_4
    invoke-virtual {v3}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/media/MediaOutputSlice;->getBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-direct {p0, v3}, Lcom/android/settings/media/MediaOutputSlice;->getDeviceIconCompat(Lcom/android/settingslib/media/MediaDevice;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v7

    new-instance v8, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v8}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {v8, v7, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    new-instance v9, Landroidx/slice/builders/SliceAction;

    invoke-direct {v9, v6, v7, v4, v5}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    invoke-virtual {v8, v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-virtual {v8, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-virtual {v3}, Lcom/android/settingslib/media/MediaDevice;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-virtual {v0, v8}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method init(Ljava/lang/String;Lcom/android/settings/media/MediaDeviceUpdateWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/media/MediaOutputSlice;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/media/MediaOutputSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-void
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string v0, "media_device_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getMediaDeviceById(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "onNotifyChange() device name : "

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaOutputSlice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->connectDevice(Lcom/android/settingslib/media/MediaDevice;)V

    :cond_1
    return-void
.end method
