.class Lcom/oneplus/android/server/wifi/OpWifiService$zta;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/wifi/OpWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/oneplus/android/server/wifi/OpWifiService;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/wifi/OpWifiService;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/wifi/OpWifiService$zta;->this$0:Lcom/oneplus/android/server/wifi/OpWifiService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    iput-object p2, p0, Lcom/oneplus/android/server/wifi/OpWifiService$zta;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 3

    new-instance p1, Ljava/util/StringJoiner;

    const-string v0, "\n"

    invoke-direct {p1, v0}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->isIpv4()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkAddress;->isIpv6()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    :cond_2
    const-string p2, "wifi_ip_addresses"

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/util/StringJoiner;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/none ipv6 address"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object p0, p0, Lcom/oneplus/android/server/wifi/OpWifiService$zta;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/util/StringJoiner;->length()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "none ipv4 address/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-string p0, "OpWifiService"

    const-string p1, "ipv4v6Address is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/android/server/wifi/OpWifiService$zta;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "wifi_ip_addresses"

    const-string v0, ""

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
