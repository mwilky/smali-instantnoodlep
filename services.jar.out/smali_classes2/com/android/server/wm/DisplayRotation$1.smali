.class Lcom/android/server/wm/DisplayRotation$1;
.super Ljava/lang/Thread;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayRotation;->onDisplayRemoved()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayRotation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$1;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$1;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->access$000(Lcom/android/server/wm/DisplayRotation;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$1;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->access$100(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation$1;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->access$000(Lcom/android/server/wm/DisplayRotation;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$1;->this$0:Lcom/android/server/wm/DisplayRotation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayRotation;->access$002(Lcom/android/server/wm/DisplayRotation;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
