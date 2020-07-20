.class public Lcom/oneplus/android/server/iris/kth$zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/iris/kth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/iris/kth;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/iris/kth;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/oneplus/android/server/iris/kth;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisMEMCTimer"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "stop_memc_120hz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/kth;->zta(Lcom/oneplus/android/server/iris/kth;)V

    :goto_0
    iget-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p1, v1}, Lcom/oneplus/android/server/iris/kth;->zta(Lcom/oneplus/android/server/iris/kth;Z)Z

    iget-object p0, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/kth;->tsu(Lcom/oneplus/android/server/iris/kth;)V

    goto/16 :goto_4

    :cond_1
    const-string v0, "reset_timer_action"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p1}, Lcom/oneplus/android/server/iris/kth;->Pf()V

    iget-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/kth;->rtg(Lcom/oneplus/android/server/iris/kth;)V

    iget-object p0, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/kth;->ssp(Lcom/oneplus/android/server/iris/kth;)V

    goto/16 :goto_4

    :cond_2
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const/4 p1, -0x1

    const-string v0, "status"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    invoke-static {p2, v1}, Lcom/oneplus/android/server/iris/kth;->you(Lcom/oneplus/android/server/iris/kth;Z)Z

    iget-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/kth;->cno(Lcom/oneplus/android/server/iris/kth;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p1}, Lcom/oneplus/android/server/iris/kth;->Pf()V

    goto/16 :goto_3

    :cond_5
    iget-object p0, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/kth;->Of()V

    goto/16 :goto_4

    :cond_6
    const-string p2, "notification_content"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/kth;->igw(Lcom/oneplus/android/server/iris/kth;)V

    :goto_2
    iget-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/kth;->bio(Lcom/oneplus/android/server/iris/kth;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p2}, Lcom/oneplus/android/server/iris/kth;->kth(Lcom/oneplus/android/server/iris/kth;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    :cond_7
    const-string p2, "notification_cancel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/kth;->bio(Lcom/oneplus/android/server/iris/kth;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p2}, Lcom/oneplus/android/server/iris/kth;->kth(Lcom/oneplus/android/server/iris/kth;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p1}, Lcom/oneplus/android/server/iris/kth;->Pf()V

    iget-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/kth;->rtg(Lcom/oneplus/android/server/iris/kth;)V

    iget-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p1, v1}, Lcom/oneplus/android/server/iris/kth;->zta(Lcom/oneplus/android/server/iris/kth;Z)Z

    iget-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/kth;->you(Lcom/oneplus/android/server/iris/kth;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/kth;->sis(Lcom/oneplus/android/server/iris/kth;)I

    move-result p0

    const-string p2, "op_iris_memc_notification_switch"

    invoke-static {p1, p2, v2, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_4

    :cond_8
    const-string p2, "notification_DELETE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_2

    :cond_9
    const-string p2, "notification_turn_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/kth;->you(Lcom/oneplus/android/server/iris/kth;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p2}, Lcom/oneplus/android/server/iris/kth;->sis(Lcom/oneplus/android/server/iris/kth;)I

    move-result p2

    const-string v0, "op_iris_video_memc_extreme_status"

    invoke-static {p1, v0, v2, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/kth;->ssp(Lcom/oneplus/android/server/iris/kth;)V

    iget-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/kth;->rtg(Lcom/oneplus/android/server/iris/kth;)V

    :goto_3
    iget-object p1, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/kth;->bio(Lcom/oneplus/android/server/iris/kth;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/kth$zta;->this$0:Lcom/oneplus/android/server/iris/kth;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/kth;->kth(Lcom/oneplus/android/server/iris/kth;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_a
    :goto_4
    return-void
.end method
