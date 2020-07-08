.class Lcom/oneplus/android/server/iris/sis$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/iris/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sis"
.end annotation


# instance fields
.field public gqa:Z

.field final synthetic this$0:Lcom/oneplus/android/server/iris/sis;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/iris/sis;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/iris/sis$sis;->this$0:Lcom/oneplus/android/server/iris/sis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis$sis;->gqa:Z

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/android/server/iris/sis;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/iris/sis$sis;->this$0:Lcom/oneplus/android/server/iris/sis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis$sis;->gqa:Z

    iput-boolean p2, p0, Lcom/oneplus/android/server/iris/sis$sis;->gqa:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/bio;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecentAnimRunnable isAnimating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis$sis;->gqa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis$sis;->this$0:Lcom/oneplus/android/server/iris/sis;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis$sis;->gqa:Z

    invoke-static {v0, v1}, Lcom/oneplus/android/server/iris/sis;->you(Lcom/oneplus/android/server/iris/sis;Z)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis$sis;->this$0:Lcom/oneplus/android/server/iris/sis;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/sis;->tsu(Lcom/oneplus/android/server/iris/sis;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
