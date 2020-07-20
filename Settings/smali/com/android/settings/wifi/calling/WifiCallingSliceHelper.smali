.class public Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;
.super Ljava/lang/Object;
.source "WifiCallingSliceHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getActivityIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    const/high16 v0, 0x10000000

    invoke-static {p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline3(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getBroadcastIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getNonActionableWifiCallingSlice(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/app/PendingIntent;)Landroidx/slice/Slice;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0806fd

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    new-instance v1, Landroidx/slice/builders/ListBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const-wide/16 v3, -0x1

    invoke-direct {v1, v2, p3, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    new-instance p0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-virtual {p0, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    const/4 p2, 0x1

    invoke-static {p4, v0, p2, p1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-virtual {v1, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    invoke-virtual {v1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method private getWfcMode(Lcom/android/ims/ImsManager;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$2;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;Lcom/android/ims/ImsManager;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getWifiCallingSlice(Landroid/net/Uri;Z)Landroidx/slice/Slice;
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0806fd

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    new-instance v1, Landroidx/slice/builders/ListBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const-wide/16 v3, -0x1

    invoke-direct {v1, v2, p1, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    new-instance p1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f1218e6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    const-string v2, "com.android.settings.wifi.calling.action.WIFI_CALLING_CHANGED"

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getBroadcastIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v4, Landroidx/slice/builders/SliceAction;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, p2}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    invoke-virtual {p1, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    const-string p2, "android.settings.WIFI_CALLING_SETTINGS"

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getActivityIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p2, v0, v2, p0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-virtual {v1, p1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    invoke-virtual {v1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method private isWifiCallingEnabled(Lcom/android/ims/ImsManager;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;Lcom/android/ims/ImsManager;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private wifiPreferenceRowBuilder(ILjava/lang/String;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0806b2

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getBroadcastIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-instance p1, Landroidx/slice/builders/SliceAction;

    invoke-direct {p1, p2, v0, p0, p3}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v1, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    return-object v1
.end method


# virtual methods
.method public createWifiCallingPreferenceSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 13

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getDefaultVoiceSubId()I

    move-result v0

    const-string v1, "WifiCallingSliceHelper"

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-gt v0, v3, :cond_0

    const-string p0, "Invalid Subscription Id"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const/4 v3, 0x0

    const-string v4, "editable_wfc_mode_bool"

    invoke-virtual {p0, v4, v0, v3}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->isCarrierConfigManagerKeyEnabled(Ljava/lang/String;IZ)Z

    move-result v4

    const/4 v5, 0x1

    const-string v6, "carrier_wfc_supports_wifi_only_bool"

    invoke-virtual {p0, v6, v0, v5}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->isCarrierConfigManagerKeyEnabled(Ljava/lang/String;IZ)Z

    move-result v6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getImsManager(I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_3

    :cond_1
    if-nez v4, :cond_2

    const-string p0, "Wifi calling preference is not editable"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->isWifiCallingEnabled(Lcom/android/ims/ImsManager;)Z

    move-result v4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getWfcMode(Lcom/android/ims/ImsManager;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "android.settings.WIFI_CALLING_SETTINGS"

    const v7, 0x7f1218db

    if-nez v4, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f1218ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getActivityIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getNonActionableWifiCallingSlice(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/app/PendingIntent;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f0806fd

    invoke-static {v4, v8}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    new-instance v8, Landroidx/slice/builders/ListBuilder;

    iget-object v9, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const-wide/16 v10, -0x1

    invoke-direct {v8, v9, p1, v10, v11}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v8, p1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    new-instance p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-direct {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    const v9, 0x1040770

    const/4 v10, 0x2

    const v11, 0x104076e

    const v12, 0x104076f

    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v10, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v2}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getActivityIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v4, v3, v2}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-virtual {v8, p1}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    if-eqz v6, :cond_8

    if-nez v0, :cond_7

    move p1, v5

    goto :goto_1

    :cond_7
    move p1, v3

    :goto_1
    const-string v1, "com.android.settings.slice.action.WIFI_CALLING_PREFERENCE_WIFI_ONLY"

    invoke-direct {p0, v12, v1, p1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->wifiPreferenceRowBuilder(ILjava/lang/String;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    invoke-virtual {v8, p1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    :cond_8
    if-ne v0, v10, :cond_9

    move p1, v5

    goto :goto_2

    :cond_9
    move p1, v3

    :goto_2
    const-string v1, "com.android.settings.slice.action.WIFI_CALLING_PREFERENCE_WIFI_PREFERRED"

    invoke-direct {p0, v9, v1, p1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->wifiPreferenceRowBuilder(ILjava/lang/String;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    invoke-virtual {v8, p1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    if-ne v0, v5, :cond_a

    move v3, v5

    :cond_a
    const-string p1, "com.android.settings.slice.action.WIFI_CALLING_PREFERENCE_CELLULAR_PREFERRED"

    invoke-direct {p0, v11, p1, v3}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->wifiPreferenceRowBuilder(ILjava/lang/String;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    invoke-virtual {v8, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    invoke-virtual {v8}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Unable to get wifi calling preferred mode"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_b
    :goto_3
    const-string p0, "Wifi calling is either not provisioned or not enabled by platform"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public createWifiCallingSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getDefaultVoiceSubId()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WifiCallingSliceHelper"

    const/4 v3, -0x1

    if-gt v0, v3, :cond_0

    const-string p0, "Invalid subscription Id"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getImsManager(I)Lcom/android/ims/ImsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->isWifiCallingEnabled(Lcom/android/ims/ImsManager;)Z

    move-result v3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getWifiCallingCarrierActivityIntent(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    const-string v0, "Needs Activation"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f1218e6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f1218e5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "android.settings.WIFI_CALLING_SETTINGS"

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getActivityIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {p0, v0, v3, p1, v4}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getNonActionableWifiCallingSlice(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/app/PendingIntent;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getWifiCallingSlice(Landroid/net/Uri;Z)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Unable to read the current WiFi calling status"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_3
    :goto_0
    const-string p0, "Wifi calling is either not provisioned or not enabled by Platform"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected getCarrierConfigManager(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;
    .locals 0

    const-class p0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    return-object p0
.end method

.method protected getDefaultVoiceSubId()I
    .locals 0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result p0

    return p0
.end method

.method protected getImsManager(I)Lcom/android/ims/ImsManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    return-object p0
.end method

.method protected getWifiCallingCarrierActivityIntent(I)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getCarrierConfigManager(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string p1, "wfc_emergency_address_carrier_app_string"

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1
.end method

.method public handleWifiCallingChanged(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getDefaultVoiceSubId()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getImsManager(I)Lcom/android/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getWifiCallingCarrierActivityIntent(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    if-eq p1, v2, :cond_2

    invoke-virtual {v1, p1}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_CALLING_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public handleWifiCallingPreferenceChanged(Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getDefaultVoiceSubId()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_8

    const/4 v2, 0x0

    const-string v3, "editable_wfc_mode_bool"

    invoke-virtual {p0, v3, v0, v2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->isCarrierConfigManagerKeyEnabled(Ljava/lang/String;IZ)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "carrier_wfc_supports_wifi_only_bool"

    invoke-virtual {p0, v5, v0, v4}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->isCarrierConfigManagerKeyEnabled(Ljava/lang/String;IZ)Z

    move-result v5

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getImsManager(I)Lcom/android/ims/ImsManager;

    move-result-object v0

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x523c66d

    const/4 v8, 0x2

    if-eq v6, v7, :cond_2

    const v7, 0xa8b033a

    if-eq v6, v7, :cond_1

    const v7, 0x1d8fe7a8

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "com.android.settings.slice.action.WIFI_CALLING_PREFERENCE_CELLULAR_PREFERRED"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v8

    goto :goto_1

    :cond_1
    const-string v6, "com.android.settings.slice.action.WIFI_CALLING_PREFERENCE_WIFI_ONLY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_2
    const-string v6, "com.android.settings.slice.action.WIFI_CALLING_PREFERENCE_WIFI_PREFERRED"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v8, :cond_7

    goto :goto_2

    :cond_4
    move v4, v8

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v1

    :cond_7
    :goto_3
    if-eq v4, v1, :cond_8

    if-eq v4, v3, :cond_8

    invoke-virtual {v0, v4, v2}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    :cond_8
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_CALLING_PREFERENCE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected isCarrierConfigManagerKeyEnabled(Ljava/lang/String;IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getCarrierConfigManager(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
