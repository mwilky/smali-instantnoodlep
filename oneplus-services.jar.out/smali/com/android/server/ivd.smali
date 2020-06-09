.class Lcom/android/server/ivd;
.super Lcom/android/server/c$tsu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/c;->registerObserver(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/c;


# direct methods
.method constructor <init>(Lcom/android/server/c;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ivd;->this$0:Lcom/android/server/c;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/c$tsu;-><init>(Lcom/android/server/c;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method kth(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ivd;->this$0:Lcom/android/server/c;

    invoke-static {v0}, Lcom/android/server/c;->cno(Lcom/android/server/c;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/ivd;->this$0:Lcom/android/server/c;

    invoke-static {p0, p1}, Lcom/android/server/c;->you(Lcom/android/server/c;Z)Z

    invoke-static {}, Lcom/android/server/c;->access$100()Lcom/android/server/c$sis;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/c;->access$100()Lcom/android/server/c$sis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/c$sis;->updateLightsLocked()V

    :cond_0
    return-void
.end method
