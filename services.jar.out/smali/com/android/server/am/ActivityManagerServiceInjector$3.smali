.class Lcom/android/server/am/ActivityManagerServiceInjector$3;
.super Landroid/os/Handler;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private count:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceInjector;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerServiceInjector;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->count:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$800(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getPcbNumber"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$900(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$1000(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$902(Lcom/android/server/am/ActivityManagerServiceInjector;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$900(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$900(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$900(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$900(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$902(Lcom/android/server/am/ActivityManagerServiceInjector;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$900(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$1100(Lcom/android/server/am/ActivityManagerServiceInjector;Ljava/lang/String;)V

    :cond_1
    iput v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->count:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    iget v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->count:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->count:I

    iget v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->count:I

    if-ltz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retry count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$3;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManagerServiceInjector"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerServiceInjector$3;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerServiceInjector$3;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
