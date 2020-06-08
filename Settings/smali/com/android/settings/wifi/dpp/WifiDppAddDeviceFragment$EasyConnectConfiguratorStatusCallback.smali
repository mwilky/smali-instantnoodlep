.class Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;
.super Landroid/net/wifi/EasyConnectStatusCallback;
.source "WifiDppAddDeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyConnectConfiguratorStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;


# direct methods
.method synthetic constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    invoke-direct {p0}, Landroid/net/wifi/EasyConnectStatusCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfiguratorSuccess(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->access$000(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Z)V

    return-void
.end method

.method public onEnrolleeSuccess(I)V
    .locals 0

    return-void
.end method

.method public onFailure(I)V
    .locals 2

    const-string v0, "EasyConnectConfiguratorStatusCallback.onFailure "

    const-string v1, "WifiDppAddDeviceFragment"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline31(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->access$100(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;IZ)V

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method
