.class Lcom/oneplus/houston/common/client/EventManager$1;
.super Landroid/os/Handler;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/houston/common/client/EventManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/houston/common/client/EventManager;


# direct methods
.method constructor <init>(Lcom/oneplus/houston/common/client/EventManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v0}, Lcom/oneplus/houston/common/client/EventManager;->access$600(Lcom/oneplus/houston/common/client/EventManager;)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v0}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    const-string v0, "EventManager"

    const-string v2, "Binder died, register all again!"

    invoke-static {v0, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v3}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    iget-object v4, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v4}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/houston/common/client/AbsEventCallback;

    invoke-virtual {v3, v4}, Lcom/oneplus/houston/common/client/EventManager;->registerEventObserver(Lcom/oneplus/houston/common/client/AbsEventCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v2}, Lcom/oneplus/houston/common/client/EventManager;->access$200(Lcom/oneplus/houston/common/client/EventManager;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "EventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRetryCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v4}, Lcom/oneplus/houston/common/client/EventManager;->access$304(Lcom/oneplus/houston/common/client/EventManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v2}, Lcom/oneplus/houston/common/client/EventManager;->access$300(Lcom/oneplus/houston/common/client/EventManager;)I

    move-result v2

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_4

    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v0}, Lcom/oneplus/houston/common/client/EventManager;->access$400(Lcom/oneplus/houston/common/client/EventManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v0}, Lcom/oneplus/houston/common/client/EventManager;->access$400(Lcom/oneplus/houston/common/client/EventManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_4
    const-string v1, "EventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore callback failed, size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v3}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v1}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/EventManager;->access$302(Lcom/oneplus/houston/common/client/EventManager;I)I

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/EventManager;->access$302(Lcom/oneplus/houston/common/client/EventManager;I)I

    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v0}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/EventManager;->access$502(Lcom/oneplus/houston/common/client/EventManager;Lcom/oneplus/houston/common/client/AbsEventCallback;)Lcom/oneplus/houston/common/client/AbsEventCallback;

    nop

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
