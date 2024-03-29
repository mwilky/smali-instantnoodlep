.class public Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPApplicationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;
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

.field private mAppType:I

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

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mSelectedList:Ljava/util/List;

    iput-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

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

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    iget-object p3, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/better/OPAppModel;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d017b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;)V

    const v1, 0x7f0a0539

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0768

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v1, 0x7f0a00e3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    const v1, 0x7f0a0450

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    const v1, 0x7f0a06df

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v1, 0x7f0a00f0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v1, 0x7f0a02c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    const v1, 0x7f0a0147

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;

    :goto_0
    const/4 v1, 0x0

    const v2, 0x7f120f13

    const/16 v3, 0x3ec

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-nez p1, :cond_3

    iget-object v6, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget v6, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppType:I

    if-ne v6, v3, :cond_2

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v3, 0x7f120f78

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v3, 0x7f120c57

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppType:I

    if-ne v6, v3, :cond_6

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->getSelected(I)Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_7
    iget-object p0, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    return-object p2
.end method

.method public setAppType(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppType:I

    return-void
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

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mSelectedList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

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

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mSelectedList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
