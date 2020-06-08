.class Lcom/android/settings/location/LocationEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationEnabler;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationEnabler$1;->this$0:Lcom/android/settings/location/LocationEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "LocationEnabler"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Received location mode change intent: "

    invoke-static {v0, p2, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/location/LocationEnabler$1;->this$0:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->refreshLocationMode()V

    return-void
.end method
