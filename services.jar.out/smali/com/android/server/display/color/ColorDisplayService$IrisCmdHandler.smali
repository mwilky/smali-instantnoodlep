.class final Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;
.super Landroid/os/Handler;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IrisCmdHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2900(Lcom/android/server/display/color/ColorDisplayService;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2800(Lcom/android/server/display/color/ColorDisplayService;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2700(Lcom/android/server/display/color/ColorDisplayService;I)V

    nop

    :goto_0
    return-void
.end method
