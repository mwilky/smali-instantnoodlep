.class Lcom/android/server/gwm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OnePlusExService;->showCarModeNotification(ILandroid/content/Context;IILandroid/app/Notification$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ee:I

.field final synthetic Fe:I

.field final synthetic Ge:I

.field final synthetic this$0:Lcom/android/server/OnePlusExService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$n:Landroid/app/Notification$Builder;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusExService;Landroid/app/Notification$Builder;Landroid/content/Context;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/gwm;->this$0:Lcom/android/server/OnePlusExService;

    iput-object p2, p0, Lcom/android/server/gwm;->val$n:Landroid/app/Notification$Builder;

    iput-object p3, p0, Lcom/android/server/gwm;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/android/server/gwm;->Ee:I

    iput p5, p0, Lcom/android/server/gwm;->Fe:I

    iput p6, p0, Lcom/android/server/gwm;->Ge:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/gwm;->val$n:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/gwm;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/gwm;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {v2}, Lcom/android/server/OnePlusExService;->access$900(Lcom/android/server/OnePlusExService;)[I

    move-result-object v2

    iget v3, p0, Lcom/android/server/gwm;->Ee:I

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/gwm;->this$0:Lcom/android/server/OnePlusExService;

    iget-object v1, p0, Lcom/android/server/gwm;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/gwm;->val$n:Landroid/app/Notification$Builder;

    invoke-static {v0, v1, v2}, Lcom/android/server/OnePlusExService;->access$1000(Lcom/android/server/OnePlusExService;Landroid/content/Context;Landroid/app/Notification$Builder;)V

    iget-object v0, p0, Lcom/android/server/gwm;->val$n:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/gwm;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {v1}, Lcom/android/server/OnePlusExService;->access$1100(Lcom/android/server/OnePlusExService;)Landroid/app/NotificationManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/gwm;->Fe:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget v0, p0, Lcom/android/server/gwm;->Ee:I

    iget v5, p0, Lcom/android/server/gwm;->Ge:I

    add-int/lit8 v1, v5, -0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/gwm;->this$0:Lcom/android/server/OnePlusExService;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/server/gwm;->val$context:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/gwm;->Fe:I

    :goto_0
    invoke-static {v1}, Lcom/android/server/OnePlusExService;->access$1200(Lcom/android/server/OnePlusExService;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/android/server/OnePlusExService;->access$1300(Lcom/android/server/OnePlusExService;ILandroid/content/Context;IILandroid/app/Notification$Builder;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/server/gwm;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {v0}, Lcom/android/server/OnePlusExService;->access$1400(Lcom/android/server/OnePlusExService;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/gwm;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {v0}, Lcom/android/server/OnePlusExService;->access$1500(Lcom/android/server/OnePlusExService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/gwm;->this$0:Lcom/android/server/OnePlusExService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/gwm;->val$context:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/gwm;->Fe:I

    iget v5, p0, Lcom/android/server/gwm;->Ge:I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
