.class Lcom/oneplus/settings/OPFontStyleActivity$SpaceItemDecoration;
.super Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;
.source "OPFontStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPFontStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpaceItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPFontStyleActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPFontStyleActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity$SpaceItemDecoration;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Lcom/oneplus/settings/OPFontStyleActivity$SpaceItemDecoration;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070472

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result p2

    iget-object p3, p0, Lcom/oneplus/settings/OPFontStyleActivity$SpaceItemDecoration;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {p3}, Lcom/oneplus/settings/OPFontStyleActivity;->access$000(Lcom/oneplus/settings/OPFontStyleActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleActivity$SpaceItemDecoration;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method
