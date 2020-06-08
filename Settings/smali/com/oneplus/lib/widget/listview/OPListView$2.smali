.class Lcom/oneplus/lib/widget/listview/OPListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPListView.java"


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/listview/OPListView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/listview/OPListView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {p1}, Lcom/oneplus/lib/widget/listview/OPListView;->access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/listview/OPListView;->access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {p1, v0}, Lcom/oneplus/lib/widget/listview/OPListView;->access$102(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z

    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {p1}, Lcom/oneplus/lib/widget/listview/OPListView;->access$400(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {p1}, Lcom/oneplus/lib/widget/listview/OPListView;->access$500(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/listview/OPListView;->access$702(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z

    :goto_1
    return-void
.end method
