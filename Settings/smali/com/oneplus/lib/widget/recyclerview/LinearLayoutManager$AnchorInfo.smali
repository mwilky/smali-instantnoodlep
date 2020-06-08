.class Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorInfo"
.end annotation


# instance fields
.field mCoordinate:I

.field mLayoutFromEnd:Z

.field mPosition:I

.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result p0

    return p0
.end method

.method private isViewValidAsAnchor(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p0

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    return-void
.end method

.method public assignFromView(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "AnchorInfo{mPosition="

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
