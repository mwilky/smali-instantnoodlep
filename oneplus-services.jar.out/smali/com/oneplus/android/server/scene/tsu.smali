.class Lcom/oneplus/android/server/scene/tsu;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/rtg;->listenForConfigChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/rtg;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/rtg;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/tsu;->this$0:Lcom/oneplus/android/server/scene/rtg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/tsu;->this$0:Lcom/oneplus/android/server/scene/rtg;

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/rtg;->configurationChanged()V

    :cond_0
    return-void
.end method
