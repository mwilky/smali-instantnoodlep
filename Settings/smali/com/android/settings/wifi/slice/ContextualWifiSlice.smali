.class public Lcom/android/settings/wifi/slice/ContextualWifiSlice;
.super Lcom/android/settings/wifi/slice/WifiSlice;
.source "ContextualWifiSlice.java"


# static fields
.field static sActiveUiSession:J = -0x3e8L

.field static sPreviouslyDisplayed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/slice/WifiSlice;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v0

    check-cast v0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;

    invoke-virtual {v0}, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->getUiSessionToken()J

    move-result-wide v0

    sget-wide v2, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sActiveUiSession:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sput-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sActiveUiSession:J

    sput-boolean v3, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sPreviouslyDisplayed:Z

    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sPreviouslyDisplayed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v2, 0x3

    const-string v4, "<unknown ssid>"

    if-eq v0, v2, :cond_1

    move-object v0, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    move v3, v1

    :cond_3
    if-eqz v3, :cond_4

    const-string p0, "ContextualWifiSlice"

    const-string v0, "Wifi is connected, no point showing any suggestion."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sput-boolean v1, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sPreviouslyDisplayed:Z

    invoke-super {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getSlice()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_WIFI_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method
