.class public Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;
.super Ljava/lang/Object;
.source "Enhanced4gLteSliceHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getEnhanced4gLteSlice(Landroid/net/Uri;ZI)Landroidx/slice/Slice;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f080234

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    new-instance v1, Landroidx/slice/builders/ListBuilder;

    iget-object v2, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const-wide/16 v3, -0x1

    invoke-direct {v1, v2, p1, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    new-instance p1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-direct {p0, p3}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getEnhanced4glteModeTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.mobilenetwork.action.ENHANCED_4G_LTE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v6, Landroidx/slice/builders/SliceAction;

    invoke-direct {v6, v2, v3, p2}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    invoke-virtual {p1, v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    new-instance p2, Landroid/content/Intent;

    const-string v2, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, p2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getEnhanced4glteModeTitle(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p2, v0, v5, p0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-virtual {v1, p1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    invoke-virtual {v1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method private getEnhanced4glteModeTitle(I)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "com.android.phone"

    iget-object v1, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f1206ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :try_start_0
    const-string v2, "enhanced_4g_lte_title_variant_bool"

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->isCarrierConfigManagerKeyEnabled(Ljava/lang/String;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "enhanced_4g_lte_mode_title_variant"

    const-string v2, "string"

    invoke-virtual {p0, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    const-string p0, "Enhanced4gLteSlice"

    const-string p1, "package name not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1
.end method

.method private isCarrierConfigManagerKeyEnabled(Ljava/lang/String;IZ)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getCarrierConfigManager()Landroid/telephony/CarrierConfigManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    :cond_0
    return p3
.end method

.method private isEnhanced4gLteModeEnabled(Lcom/android/ims/ImsManager;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper$1;-><init>(Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;Lcom/android/ims/ImsManager;)V

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

    return p0
.end method


# virtual methods
.method public createEnhanced4gLteSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getDefaultVoiceSubId()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Enhanced4gLteSlice"

    const/4 v3, -0x1

    if-gt v0, v3, :cond_0

    const-string p0, "Invalid subscription Id"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getImsManager(I)Lcom/android/ims/ImsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const-string v5, "hide_enhanced_4g_lte_bool"

    invoke-direct {p0, v5, v0, v4}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->isCarrierConfigManagerKeyEnabled(Ljava/lang/String;IZ)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    const-string v5, "editable_enhanced_4g_lte_bool"

    invoke-direct {p0, v5, v0, v4}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->isCarrierConfigManagerKeyEnabled(Ljava/lang/String;IZ)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->isEnhanced4gLteModeEnabled(Lcom/android/ims/ImsManager;)Z

    move-result v3

    invoke-direct {p0, p1, v3, v0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getEnhanced4gLteSlice(Landroid/net/Uri;ZI)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Unable to read the current Enhanced 4g LTE status"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_3
    :goto_0
    const-string p0, "Setting is either hidden or not editable"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    :goto_1
    const-string p0, "Setting is either not provisioned or not enabled by Platform"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected getCarrierConfigManager()Landroid/telephony/CarrierConfigManager;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

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

    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    return-object p0
.end method

.method public handleEnhanced4gLteChanged(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getDefaultVoiceSubId()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getImsManager(I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eq p1, v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/settings/slices/CustomSliceRegistry;->ENHANCED_4G_SLICE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method
