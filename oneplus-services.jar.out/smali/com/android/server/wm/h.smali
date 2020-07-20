.class Lcom/android/server/wm/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/p;->setQuickReplyRunning(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/p;


# direct methods
.method constructor <init>(Lcom/android/server/wm/p;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/h;->this$0:Lcom/android/server/wm/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/h;->this$0:Lcom/android/server/wm/p;

    invoke-static {v0}, Lcom/android/server/wm/p;->gck(Lcom/android/server/wm/p;)V

    iget-object p0, p0, Lcom/android/server/wm/h;->this$0:Lcom/android/server/wm/p;

    invoke-static {p0}, Lcom/android/server/wm/p;->oif(Lcom/android/server/wm/p;)V

    return-void
.end method
