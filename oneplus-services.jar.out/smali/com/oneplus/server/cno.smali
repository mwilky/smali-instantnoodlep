.class Lcom/oneplus/server/cno;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/kth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/kth;


# direct methods
.method constructor <init>(Lcom/oneplus/server/kth;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/cno;->this$0:Lcom/oneplus/server/kth;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/oneplus/server/kth;->DEBUG:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mScreenStateReceiver: action="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DozeManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/oneplus/server/kth;->access$200()Landroid/app/AlarmManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/oneplus/server/kth;->access$000()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Lcom/oneplus/server/kth;->access$100()Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/oneplus/server/kth;->access$200()Landroid/app/AlarmManager;

    move-result-object p0

    invoke-static {}, Lcom/oneplus/server/kth;->access$100()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_2
    const-string p2, "com.oneplus.android.screenOffCheckProcessState"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/oneplus/server/cno;->this$0:Lcom/oneplus/server/kth;

    invoke-static {p0}, Lcom/oneplus/server/kth;->zta(Lcom/oneplus/server/kth;)V

    :cond_3
    :goto_0
    return-void
.end method
