.class public Lcom/oneplus/android/server/wifi/OpWifiService;
.super Lcom/oneplus/android/wifi/IOpWifi$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/wifi/OpWifiService$zta;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final SCREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/android/wifi/IOpWifi;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "OpWifiService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/android/server/wifi/tsu;

    invoke-direct {v0}, Lcom/oneplus/android/server/wifi/tsu;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/wifi/OpWifiService;->SCREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/wifi/IOpWifi$Stub;-><init>()V

    const-string p0, "OpWifiService"

    const-string v0, "construct called"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/android/server/wifi/OpWifiService;Landroid/net/wifi/WifiManager;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/wifi/OpWifiService;->checkSoftApSecurityType(Landroid/net/wifi/WifiManager;Landroid/content/ContentResolver;)V

    return-void
.end method

.method private checkSoftApSecurityType(Landroid/net/wifi/WifiManager;Landroid/content/ContentResolver;)V
    .locals 2

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result p1

    const/4 v0, 0x1

    const-string v1, "wifi_hotspot_security_setting"

    if-nez p1, :cond_0

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-static {p2, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result p0

    const/16 p1, 0x8

    if-ne p0, p1, :cond_1

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    invoke-static {p2, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v0, :cond_2

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static getDefault()Lcom/oneplus/android/wifi/IOpWifi;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/wifi/OpWifiService;->SCREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/wifi/IOpWifi;

    return-object v0
.end method

.method private setDefaultValue(Landroid/content/ContentResolver;)V
    .locals 1

    const-string p0, "wifi_hotspot_security_setting"

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x0

    const-string v0, "tether_usb_on"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "tether_bt_on"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "wifi_hotspot_on"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "wifi_ip_addresses"

    const-string v0, ""

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private startMonitorBCastforVZW()V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/android/server/wifi/OpWifiService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/oneplus/android/server/wifi/OpWifiService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/oneplus/android/server/wifi/OpWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v6}, Lcom/oneplus/android/server/wifi/OpWifiService;->setDefaultValue(Landroid/content/ContentResolver;)V

    invoke-direct {p0, v7, v6}, Lcom/oneplus/android/server/wifi/OpWifiService;->checkSoftApSecurityType(Landroid/net/wifi/WifiManager;Landroid/content/ContentResolver;)V

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    new-instance v2, Lcom/oneplus/android/server/wifi/OpWifiService$zta;

    invoke-direct {v2, p0, v6}, Lcom/oneplus/android/server/wifi/OpWifiService$zta;-><init>(Lcom/oneplus/android/server/wifi/OpWifiService;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v0, p0, Lcom/oneplus/android/server/wifi/OpWifiService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/oneplus/android/server/wifi/rtg;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/android/server/wifi/rtg;-><init>(Lcom/oneplus/android/server/wifi/OpWifiService;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/wifi/WifiManager;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_1
    :goto_0
    const-string p0, "OpWifiService"

    const-string v0, "wifimanager, cm or contentResolver is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public publish(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpWifiService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/oneplus/android/server/wifi/OpWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/android/wifi/IOpWifi$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string p1, "oneplus_wifi_service"

    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public systemRunning()V
    .locals 2

    const-string v0, "OpWifiService"

    const-string v1, "[systemRunning]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->isVerizonSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/wifi/OpWifiService;->startMonitorBCastforVZW()V

    :cond_0
    return-void
.end method

.method public testOpWifi()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "OpWifiService"

    const-string v0, "Just test. testOpWifi"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
