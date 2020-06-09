.class Lcom/android/server/zgw;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/obl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/obl;


# direct methods
.method constructor <init>(Lcom/android/server/obl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/zgw;->this$0:Lcom/android/server/obl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/zgw;->this$0:Lcom/android/server/obl;

    invoke-static {v0}, Lcom/android/server/obl;->zta(Lcom/android/server/obl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "forcePackageName"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/server/obl;->access$100()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/server/obl;->access$200()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mReceiver packageName  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/zgw;->this$0:Lcom/android/server/obl;

    invoke-static {p0}, Lcom/android/server/obl;->you(Lcom/android/server/obl;)Landroid/app/ActivityManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
