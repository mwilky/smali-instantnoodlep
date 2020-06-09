.class Lcom/android/server/engineer/cno;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/OneplusEngineerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private retryCount:I

.field final synthetic this$0:Lcom/android/server/engineer/OneplusEngineerService;


# direct methods
.method constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/cno;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/engineer/cno;->retryCount:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/android/server/engineer/cno;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p1}, Lcom/android/server/engineer/OneplusEngineerService;->zta(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "getPcbNumber"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/engineer/cno;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v1}, Lcom/android/server/engineer/OneplusEngineerService;->sis(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/engineer/cno;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    iget-object v3, p0, Lcom/android/server/engineer/cno;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v3}, Lcom/android/server/engineer/OneplusEngineerService;->tsu(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/Object;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/server/engineer/OneplusEngineerService;->zta(Lcom/android/server/engineer/OneplusEngineerService;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/engineer/cno;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p1}, Lcom/android/server/engineer/OneplusEngineerService;->sis(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    iget-object v1, p0, Lcom/android/server/engineer/cno;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v1}, Lcom/android/server/engineer/OneplusEngineerService;->sis(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/server/engineer/cno;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    iget-object v1, p0, Lcom/android/server/engineer/cno;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v1}, Lcom/android/server/engineer/OneplusEngineerService;->sis(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/engineer/cno;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v3}, Lcom/android/server/engineer/OneplusEngineerService;->sis(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/engineer/OneplusEngineerService;->zta(Lcom/android/server/engineer/OneplusEngineerService;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string p1, "gsm.serial"

    iget-object v1, p0, Lcom/android/server/engineer/cno;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v1}, Lcom/android/server/engineer/OneplusEngineerService;->sis(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    iget p1, p0, Lcom/android/server/engineer/cno;->retryCount:I

    const/4 v1, 0x5

    if-ge p1, v1, :cond_1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/engineer/cno;->retryCount:I

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
