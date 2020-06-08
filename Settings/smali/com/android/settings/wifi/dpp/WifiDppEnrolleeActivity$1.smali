.class Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiDppEnrolleeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->access$000(Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;)Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "qr_code_scanner_fragment"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->releaseCamera()V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
