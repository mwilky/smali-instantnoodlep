.class Lcom/oneplus/android/server/wifi/rtg;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/wifi/OpWifiService;->startMonitorBCastforVZW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bio:[Ljava/lang/String;

.field final synthetic dma:Landroid/net/wifi/WifiManager;

.field final synthetic gck:Landroid/content/ContentResolver;

.field final synthetic igw:[Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/android/server/wifi/OpWifiService;

.field final synthetic wtn:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/wifi/OpWifiService;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/wifi/WifiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/wifi/rtg;->this$0:Lcom/oneplus/android/server/wifi/OpWifiService;

    iput-object p2, p0, Lcom/oneplus/android/server/wifi/rtg;->bio:[Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/android/server/wifi/rtg;->igw:[Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/android/server/wifi/rtg;->wtn:[Ljava/lang/String;

    iput-object p5, p0, Lcom/oneplus/android/server/wifi/rtg;->gck:Landroid/content/ContentResolver;

    iput-object p6, p0, Lcom/oneplus/android/server/wifi/rtg;->dma:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string p1, "tetherArray"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v1, p2, :cond_8

    aget-object v6, p1, v1

    iget-object v7, p0, Lcom/oneplus/android/server/wifi/rtg;->bio:[Ljava/lang/String;

    array-length v8, v7

    move v9, v4

    move v4, v0

    :goto_1
    if-ge v4, v8, :cond_1

    aget-object v10, v7, v4

    invoke-virtual {v6, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v9, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v9, :cond_2

    goto :goto_5

    :cond_2
    iget-object v4, p0, Lcom/oneplus/android/server/wifi/rtg;->igw:[Ljava/lang/String;

    array-length v7, v4

    move v8, v2

    move v2, v0

    :goto_2
    if-ge v2, v7, :cond_4

    aget-object v10, v4, v2

    invoke-virtual {v6, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v8, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_5

    :goto_3
    move v2, v8

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/oneplus/android/server/wifi/rtg;->wtn:[Ljava/lang/String;

    array-length v4, v2

    move v7, v3

    move v3, v0

    :goto_4
    if-ge v3, v4, :cond_7

    aget-object v10, v2, v3

    invoke-virtual {v6, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v7, v5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    move v3, v7

    goto :goto_3

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v4, v9

    goto :goto_0

    :cond_8
    const-string p1, "tether_usb_on"

    iget-object p2, p0, Lcom/oneplus/android/server/wifi/rtg;->gck:Landroid/content/ContentResolver;

    invoke-static {p2, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz v2, :cond_9

    if-eq p2, v5, :cond_a

    iget-object p2, p0, Lcom/oneplus/android/server/wifi/rtg;->gck:Landroid/content/ContentResolver;

    invoke-static {p2, p1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    :cond_9
    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/oneplus/android/server/wifi/rtg;->gck:Landroid/content/ContentResolver;

    invoke-static {p2, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    :goto_6
    const-string p1, "tether_bt_on"

    iget-object p2, p0, Lcom/oneplus/android/server/wifi/rtg;->gck:Landroid/content/ContentResolver;

    invoke-static {p2, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz v3, :cond_b

    if-eq p2, v5, :cond_c

    iget-object p2, p0, Lcom/oneplus/android/server/wifi/rtg;->gck:Landroid/content/ContentResolver;

    invoke-static {p2, p1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    :cond_b
    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/oneplus/android/server/wifi/rtg;->gck:Landroid/content/ContentResolver;

    invoke-static {p2, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_c
    :goto_7
    const-string p1, "wifi_hotspot_on"

    if-eqz v4, :cond_d

    iget-object p2, p0, Lcom/oneplus/android/server/wifi/rtg;->this$0:Lcom/oneplus/android/server/wifi/OpWifiService;

    iget-object v1, p0, Lcom/oneplus/android/server/wifi/rtg;->dma:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/oneplus/android/server/wifi/rtg;->gck:Landroid/content/ContentResolver;

    invoke-static {p2, v1, v2}, Lcom/oneplus/android/server/wifi/OpWifiService;->access$000(Lcom/oneplus/android/server/wifi/OpWifiService;Landroid/net/wifi/WifiManager;Landroid/content/ContentResolver;)V

    iget-object p2, p0, Lcom/oneplus/android/server/wifi/rtg;->gck:Landroid/content/ContentResolver;

    invoke-static {p2, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v5, :cond_e

    iget-object p0, p0, Lcom/oneplus/android/server/wifi/rtg;->gck:Landroid/content/ContentResolver;

    invoke-static {p0, p1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :cond_d
    iget-object p2, p0, Lcom/oneplus/android/server/wifi/rtg;->gck:Landroid/content/ContentResolver;

    invoke-static {p2, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_e

    iget-object p0, p0, Lcom/oneplus/android/server/wifi/rtg;->gck:Landroid/content/ContentResolver;

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_e
    :goto_8
    return-void
.end method
