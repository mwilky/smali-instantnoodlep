.class Lcom/oneplus/lib/design/widget/SnackbarManager$1;
.super Ljava/lang/Object;
.source "SnackbarManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/SnackbarManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/SnackbarManager;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/SnackbarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager$1;->this$0:Lcom/oneplus/lib/design/widget/SnackbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager$1;->this$0:Lcom/oneplus/lib/design/widget/SnackbarManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->handleTimeout(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;)V

    const/4 p0, 0x1

    return p0
.end method
