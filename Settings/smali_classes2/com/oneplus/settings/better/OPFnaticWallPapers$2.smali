.class Lcom/oneplus/settings/better/OPFnaticWallPapers$2;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "OPFnaticWallPapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPFnaticWallPapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$2;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$2;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$500(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$2;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$500(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$2;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$500(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$2;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$500(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
