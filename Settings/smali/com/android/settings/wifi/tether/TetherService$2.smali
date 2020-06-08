.class Lcom/android/settings/wifi/tether/TetherService$2;
.super Landroid/content/BroadcastReceiver;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/TetherService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/TetherService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/android/settings/wifi/tether/TetherService;->access$000()Z

    move-result p1

    const-string v0, "TetherService"

    if-eqz p1, :cond_0

    const-string p1, "Got provision result "

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/TetherService;->getResourceForDefaultDataSubId()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x104019a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/TetherService;->access$100(Lcom/android/settings/wifi/tether/TetherService;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "Unexpected provision response "

    invoke-static {p0, p2, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline36(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/TetherService;->access$300(Lcom/android/settings/wifi/tether/TetherService;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/TetherService;->access$200(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/tether/TetherService;->access$102(Lcom/android/settings/wifi/tether/TetherService;Z)Z

    const-string v0, "EntitlementResult"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    const-string v0, "connectivity"

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/TetherService;->access$500(Lcom/android/settings/wifi/tether/TetherService;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-virtual {v2, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-virtual {v2, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0, p1, p2}, Lcom/android/settings/wifi/tether/TetherService;->access$700(Lcom/android/settings/wifi/tether/TetherService;II)V

    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/TetherService;->access$204(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p2}, Lcom/android/settings/wifi/tether/TetherService;->access$300(Lcom/android/settings/wifi/tether/TetherService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p1, p2, :cond_6

    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/TetherService;->access$200(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->access$800(Lcom/android/settings/wifi/tether/TetherService;I)V

    :cond_7
    :goto_1
    return-void
.end method
