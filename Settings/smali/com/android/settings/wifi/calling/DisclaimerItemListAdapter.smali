.class public Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DisclaimerItemListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter$DisclaimerItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter$DisclaimerItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDisclaimerItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/calling/DisclaimerItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/calling/DisclaimerItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter;->mDisclaimerItemList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter;->mDisclaimerItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    check-cast p1, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter$DisclaimerItemViewHolder;

    iget-object v0, p1, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter$DisclaimerItemViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter;->mDisclaimerItemList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/calling/DisclaimerItem;

    invoke-virtual {v1}, Lcom/android/settings/wifi/calling/DisclaimerItem;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p1, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter$DisclaimerItemViewHolder;->descriptionView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter;->mDisclaimerItemList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/calling/DisclaimerItem;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->getMessageId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "layout_inflater"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const p1, 0x7f0d0378

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter$DisclaimerItemViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter$DisclaimerItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
