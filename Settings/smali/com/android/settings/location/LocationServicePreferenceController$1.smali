.class Lcom/android/settings/location/LocationServicePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationServicePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationServicePreferenceController;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationServicePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationServicePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationServicePreferenceController$1;->this$0:Lcom/android/settings/location/LocationServicePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "LocationServicePrefCtrl"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Received settings change intent: "

    invoke-static {v0, p2, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/location/LocationServicePreferenceController$1;->this$0:Lcom/android/settings/location/LocationServicePreferenceController;

    invoke-static {p0}, Lcom/android/settings/location/LocationServicePreferenceController;->access$000(Lcom/android/settings/location/LocationServicePreferenceController;)Lcom/android/settings/location/AppSettingsInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/location/SettingsInjector;->reloadStatusMessages()V

    return-void
.end method
