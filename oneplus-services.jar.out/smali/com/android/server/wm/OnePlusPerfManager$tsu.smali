.class Lcom/android/server/wm/OnePlusPerfManager$tsu;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/OnePlusPerfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OnePlusPerfManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager$tsu;->this$0:Lcom/android/server/wm/OnePlusPerfManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager$tsu;->this$0:Lcom/android/server/wm/OnePlusPerfManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage # msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$tsu;->this$0:Lcom/android/server/wm/OnePlusPerfManager;

    const-string p1, "foreground"

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$tsu;->this$0:Lcom/android/server/wm/OnePlusPerfManager;

    const-string p1, "display"

    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->access$400(Lcom/android/server/wm/OnePlusPerfManager;Ljava/lang/String;)Z

    goto :goto_1

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$tsu;->this$0:Lcom/android/server/wm/OnePlusPerfManager;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->unlockPidToCpu(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$tsu;->this$0:Lcom/android/server/wm/OnePlusPerfManager;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/OnePlusPerfManager;->lockPidToCpu(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$tsu;->this$0:Lcom/android/server/wm/OnePlusPerfManager;

    invoke-static {p0}, Lcom/android/server/wm/OnePlusPerfManager;->access$300(Lcom/android/server/wm/OnePlusPerfManager;)V

    goto :goto_1

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$tsu;->this$0:Lcom/android/server/wm/OnePlusPerfManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->access$200(Lcom/android/server/wm/OnePlusPerfManager;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$tsu;->this$0:Lcom/android/server/wm/OnePlusPerfManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->access$100(Lcom/android/server/wm/OnePlusPerfManager;Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
