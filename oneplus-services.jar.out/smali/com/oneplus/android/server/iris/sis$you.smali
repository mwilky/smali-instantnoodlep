.class final Lcom/oneplus/android/server/iris/sis$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/iris/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/iris/sis;


# direct methods
.method private constructor <init>(Lcom/oneplus/android/server/iris/sis;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/android/server/iris/sis$you;->this$0:Lcom/oneplus/android/server/iris/sis;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/android/server/iris/sis;Landroid/os/Looper;Lcom/oneplus/android/server/iris/you;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/iris/sis$you;-><init>(Lcom/oneplus/android/server/iris/sis;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis$you;->this$0:Lcom/oneplus/android/server/iris/sis;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/iris/sis;->zta(Lcom/oneplus/android/server/iris/sis;Z)V

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis$you;->this$0:Lcom/oneplus/android/server/iris/sis;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/sis;->you(Lcom/oneplus/android/server/iris/sis;)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis$you;->this$0:Lcom/oneplus/android/server/iris/sis;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/iris/sis;->rtg(Lcom/oneplus/android/server/iris/sis;Z)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis$you;->this$0:Lcom/oneplus/android/server/iris/sis;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/iris/sis;->tsu(Lcom/oneplus/android/server/iris/sis;Z)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis$you;->this$0:Lcom/oneplus/android/server/iris/sis;

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    invoke-static {p0, v0, v1}, Lcom/oneplus/android/server/iris/sis;->zta(Lcom/oneplus/android/server/iris/sis;ZZ)V

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis$you;->this$0:Lcom/oneplus/android/server/iris/sis;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/iris/sis;->zta(Lcom/oneplus/android/server/iris/sis;Landroid/os/Bundle;)V

    :goto_2
    return-void
.end method
