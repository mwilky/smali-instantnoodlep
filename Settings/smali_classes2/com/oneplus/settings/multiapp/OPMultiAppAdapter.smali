.class public Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPMultiAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mSelectedList:Ljava/util/List;

    iput-object p2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/better/OPAppModel;

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getSelected(I)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    iget-object p3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/better/OPAppModel;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01ef

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;)V

    const v2, 0x7f0a053c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a076b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v2, 0x7f0a0305

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    const v2, 0x7f0a044b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    const v2, 0x7f0a06e2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v2, 0x7f0a00f0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    const v2, 0x7f0a02c0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    const v2, 0x7f0a06ee

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;

    :goto_0
    iget-object v2, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f120e75

    const/4 v5, 0x1

    if-nez p1, :cond_2

    iget-object v6, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v2, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v6, 0x7f120e77

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v4, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v6}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v4, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_1
    iget-object v2, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {p3, v3}, Landroid/widget/Switch;->setClickable(Z)V

    iget-object p3, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {p3, v0}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {p0, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    :cond_6
    iget-object p0, v1, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {p0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_2
    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mSelectedList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelected(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mSelectedList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
