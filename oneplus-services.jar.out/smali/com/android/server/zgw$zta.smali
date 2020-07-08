.class Lcom/android/server/zgw$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/zgw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/zgw;


# direct methods
.method public constructor <init>(Lcom/android/server/zgw;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/zgw$zta;->this$0:Lcom/android/server/zgw;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/zgw$zta;->this$0:Lcom/android/server/zgw;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/server/zgw;->you(Lcom/android/server/zgw;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/zgw$zta;->this$0:Lcom/android/server/zgw;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v1, p1}, Lcom/android/server/zgw;->sis(Lcom/android/server/zgw;I)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/zgw$zta;->this$0:Lcom/android/server/zgw;

    invoke-static {p0, v0}, Lcom/android/server/zgw;->zta(Lcom/android/server/zgw;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/zgw$zta;->this$0:Lcom/android/server/zgw;

    invoke-static {p1, v0}, Lcom/android/server/zgw;->tsu(Lcom/android/server/zgw;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/zgw$zta;->this$0:Lcom/android/server/zgw;

    invoke-static {p0, v0}, Lcom/android/server/zgw;->rtg(Lcom/android/server/zgw;I)V

    :cond_2
    :goto_0
    return-void
.end method
