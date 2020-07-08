.class Lcom/android/server/wm/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/l;->setQuickReplyRunning(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/l;


# direct methods
.method constructor <init>(Lcom/android/server/wm/l;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/d;->this$0:Lcom/android/server/wm/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/d;->this$0:Lcom/android/server/wm/l;

    invoke-static {v0}, Lcom/android/server/wm/l;->gck(Lcom/android/server/wm/l;)V

    iget-object p0, p0, Lcom/android/server/wm/d;->this$0:Lcom/android/server/wm/l;

    invoke-static {p0}, Lcom/android/server/wm/l;->oif(Lcom/android/server/wm/l;)V

    return-void
.end method
