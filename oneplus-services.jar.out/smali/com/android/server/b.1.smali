.class Lcom/android/server/b;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/e;->registerObserver(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/e;


# direct methods
.method constructor <init>(Lcom/android/server/e;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/b;->this$0:Lcom/android/server/e;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/b;->this$0:Lcom/android/server/e;

    invoke-static {p1}, Lcom/android/server/e;->kth(Lcom/android/server/e;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/b;->this$0:Lcom/android/server/e;

    invoke-static {p0}, Lcom/android/server/e;->bio(Lcom/android/server/e;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
