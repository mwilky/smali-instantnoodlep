.class Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;
.super Landroid/os/Handler;
.source "OPGameAndReadPickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPGameAndReadPickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$000(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$100(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$200(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$200(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$100(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$000(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$200(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$000(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$300(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->setAppType(I)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    const v0, 0x7f0a04bc

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$200(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$400(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
