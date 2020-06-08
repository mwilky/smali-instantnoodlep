.class Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->getTab()Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget-object p2, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;

    invoke-virtual {p1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->getTab()Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->createTabView(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Z)Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p3, p2

    check-cast p3, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->getTab()Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->bindTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V

    :goto_0
    return-object p2
.end method
