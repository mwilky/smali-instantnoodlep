.class Lcom/android/server/wm/dma;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ibl$zta;->sendReadModeNotification(Lcom/android/server/wm/ActivityRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic maa:Landroid/app/Notification$Builder;

.field final synthetic this$0:Lcom/android/server/wm/ibl$zta;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ibl$zta;Landroid/app/Notification$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/dma;->this$0:Lcom/android/server/wm/ibl$zta;

    iput-object p2, p0, Lcom/android/server/wm/dma;->maa:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oem.intent.action.ENABLE_READ_MODE_NOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oem.intent.action.GO_READ_MODE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/dma;->this$0:Lcom/android/server/wm/ibl$zta;

    invoke-static {v1}, Lcom/android/server/wm/ibl$zta;->zta(Lcom/android/server/wm/ibl$zta;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/dma;->this$0:Lcom/android/server/wm/ibl$zta;

    iget-object v2, v2, Lcom/android/server/wm/ibl$zta;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/wm/ibl$zta;->access$300()Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/dma;->this$0:Lcom/android/server/wm/ibl$zta;

    invoke-static {v1}, Lcom/android/server/wm/ibl$zta;->you(Lcom/android/server/wm/ibl$zta;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/dma;->maa:Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v3, 0x3ff

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method