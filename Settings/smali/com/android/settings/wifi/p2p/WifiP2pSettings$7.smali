.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->startSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, " discover fail "

    const-string v0, "WifiP2pSettings"

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline31(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
