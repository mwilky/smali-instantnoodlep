.class Lcom/android/server/am/A$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/A;


# direct methods
.method public constructor <init>(Lcom/android/server/am/A;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/A$you;->this$0:Lcom/android/server/am/A;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/A$you;->this$0:Lcom/android/server/am/A;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/am/A;->zta(Lcom/android/server/am/A;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object p1, p0, Lcom/android/server/am/A$you;->this$0:Lcom/android/server/am/A;

    invoke-static {p1}, Lcom/android/server/am/A;->tsu(Lcom/android/server/am/A;)Z

    move-result p1

    if-eq v2, p1, :cond_3

    iget-object p0, p0, Lcom/android/server/am/A$you;->this$0:Lcom/android/server/am/A;

    invoke-static {p0, v2, v0}, Lcom/android/server/am/A;->zta(Lcom/android/server/am/A;ZLjava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/android/server/am/A$you;->this$0:Lcom/android/server/am/A;

    invoke-static {v0}, Lcom/android/server/am/A;->you(Lcom/android/server/am/A;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Slient5G"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/A$you;->this$0:Lcom/android/server/am/A;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/A;->zta(Lcom/android/server/am/A;Lorg/json/JSONArray;)V

    iget-object p0, p0, Lcom/android/server/am/A$you;->this$0:Lcom/android/server/am/A;

    invoke-static {p0}, Lcom/android/server/am/A;->sis(Lcom/android/server/am/A;)Lcom/oneplus/config/ConfigObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_3
    :goto_1
    return-void
.end method
