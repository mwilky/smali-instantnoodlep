.class public Lcom/android/settings/panel/PanelSlicesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PanelSlicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final MAX_NUM_OF_SLICES:I = 0x5


# instance fields
.field private final mMetricsCategory:I

.field private final mPanelFragment:Lcom/android/settings/panel/PanelFragment;

.field private final mSliceLiveData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/panel/PanelFragment;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/panel/PanelFragment;",
            "Ljava/util/List<",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->mPanelFragment:Lcom/android/settings/panel/PanelFragment;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->mSliceLiveData:Ljava/util/List;

    iput p3, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->mMetricsCategory:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/panel/PanelSlicesAdapter;)Lcom/android/settings/panel/PanelFragment;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->mPanelFragment:Lcom/android/settings/panel/PanelFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/panel/PanelSlicesAdapter;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->mMetricsCategory:I

    return p0
.end method


# virtual methods
.method getData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->mSliceLiveData:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelSlicesAdapter;->getItemCount()I

    move-result p0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->mSliceLiveData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/panel/PanelSlicesAdapter;->onBindViewHolder(Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->mSliceLiveData:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->onBind(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/panel/PanelSlicesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0277

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;-><init>(Lcom/android/settings/panel/PanelSlicesAdapter;Landroid/view/View;)V

    return-object p2
.end method
