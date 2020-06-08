.class public Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;
.super Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;,
        Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;,
        Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field static final MAIN_DIR_SPEC:I


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->MAIN_DIR_SPEC:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method private getMainDirSpec(I)I
    .locals 0

    if-gez p1, :cond_0

    sget p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->MAIN_DIR_SPEC:I

    return p0

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private getSpanGroupIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 0

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const-string p0, "Cannot find span size for pre layout position. "

    const-string p1, "GridLayoutManager"

    invoke-static {p0, p3, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline33(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p0

    return p0
.end method

.method private getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 1

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p0

    return p0

    :cond_0
    iget-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    :cond_1
    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    const-string p0, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    const-string p1, "GridLayoutManager"

    invoke-static {p0, p3, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline33(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p0

    return p0
.end method

.method private getSpanSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 2

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    return v0

    :cond_0
    iget-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p2, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v1, :cond_1

    return p2

    :cond_1
    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    if-ne p1, v1, :cond_2

    const-string p0, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    const-string p1, "GridLayoutManager"

    invoke-static {p0, p3, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline33(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    :cond_2
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    return v0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    if-nez p4, :cond_0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    invoke-direct {p0, p2, v1, v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    :cond_1
    if-nez p4, :cond_2

    iget p4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-nez p4, :cond_3

    :cond_2
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    invoke-direct {p0, p3, p4, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private updateSpecWithExtra(III)I
    .locals 1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public checkLayoutParams(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    return p0
.end method

.method findReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;III)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-le p4, p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eq p3, p4, :cond_6

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_5

    if-ge v6, p5, :cond_5

    invoke-direct {p0, p1, p2, v6}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_5

    move-object v4, v5

    goto :goto_3

    :cond_2
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-ge v6, v1, :cond_4

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-ge v6, v0, :cond_3

    goto :goto_2

    :cond_3
    return-object v5

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    move-object v3, v5

    :cond_5
    :goto_3
    add-int/2addr p3, v2

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v4

    :goto_4
    return-object v3
.end method

.method public generateDefaultLayoutParams()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 1

    new-instance p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 0

    new-instance p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 0

    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getColumnCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    return p0

    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanGroupIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result p0

    return p0
.end method

.method public getRowCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    return p0

    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanGroupIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result p0

    return p0
.end method

.method layoutChunk(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_0

    move v3, v8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v4, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-nez v3, :cond_1

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v0, v1, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v4

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v0, v1, v5}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    const/4 v5, 0x0

    move v9, v5

    :goto_1
    iget v5, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ge v9, v5, :cond_6

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    if-ltz v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v10

    if-ge v5, v10, :cond_2

    move v5, v8

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_6

    if-lez v4, :cond_6

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v0, v1, v5}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v10

    iget v11, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-gt v10, v11, :cond_5

    sub-int/2addr v4, v10

    if-gez v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->next(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    iget-object v10, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v5, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Item at position "

    const-string v2, " requires "

    const-string v3, " spans but GridLayoutManager has only "

    invoke-static {v1, v5, v2, v10, v3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline25(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    const-string v3, " spans."

    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline19(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    if-nez v9, :cond_7

    iput-boolean v8, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    :cond_7
    const/4 v4, -0x1

    if-eqz v3, :cond_8

    const/4 v5, 0x0

    move v11, v8

    move v10, v9

    goto :goto_4

    :cond_8
    add-int/lit8 v5, v9, -0x1

    move v10, v4

    move v11, v10

    :goto_4
    iget v12, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne v12, v8, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->isLayoutRTL()Z

    move-result v12

    if-eqz v12, :cond_9

    iget v12, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v12, v8

    move v13, v12

    move v12, v4

    goto :goto_5

    :cond_9
    const/4 v12, 0x0

    move v13, v12

    move v12, v8

    :goto_5
    if-eq v5, v10, :cond_b

    iget-object v14, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v14, v14, v5

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-virtual {v6, v14}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v14

    invoke-direct {v6, v0, v1, v14}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v14

    invoke-static {v15, v14}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$102(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;I)I

    if-ne v12, v4, :cond_a

    invoke-static {v15}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v14

    if-le v14, v8, :cond_a

    invoke-static {v15}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v14

    sub-int/2addr v14, v8

    sub-int v14, v13, v14

    invoke-static {v15, v14}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$002(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;I)I

    goto :goto_6

    :cond_a
    invoke-static {v15, v13}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$002(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;I)I

    :goto_6
    invoke-static {v15}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v14

    mul-int/2addr v14, v12

    add-int/2addr v13, v14

    add-int/2addr v5, v11

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    const/high16 v5, 0x40000000    # 2.0f

    if-ge v0, v9, :cond_11

    iget-object v10, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v10, v10, v0

    iget-object v11, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v11, :cond_d

    if-eqz v3, :cond_c

    invoke-virtual {v6, v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    goto :goto_8

    :cond_c
    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_8

    :cond_d
    const/4 v11, 0x0

    if-eqz v3, :cond_e

    invoke-virtual {v6, v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_8

    :cond_e
    invoke-virtual {v6, v10, v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    :goto_8
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    iget-object v12, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    invoke-static {v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v13

    invoke-static {v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v14

    add-int/2addr v13, v14

    aget v12, v12, v13

    iget-object v13, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    invoke-static {v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v14

    aget v13, v13, v14

    sub-int/2addr v12, v13

    invoke-static {v12, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v12, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne v12, v8, :cond_f

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {v6, v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getMainDirSpec(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v6, v10, v5, v11, v12}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_9

    :cond_f
    const/4 v12, 0x0

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-direct {v6, v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getMainDirSpec(I)I

    move-result v11

    invoke-direct {v6, v10, v11, v5, v12}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    :goto_9
    iget-object v5, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    if-le v5, v1, :cond_10

    move v1, v5

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    const/4 v0, 0x0

    invoke-direct {v6, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getMainDirSpec(I)I

    move-result v3

    move v10, v0

    :goto_a
    if-ge v10, v9, :cond_14

    iget-object v11, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v11, v10

    iget-object v12, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v12, v11}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v12

    if-eq v12, v1, :cond_13

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    iget-object v13, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    invoke-static {v12}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v14

    invoke-static {v12}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v15

    add-int/2addr v14, v15

    aget v13, v13, v14

    iget-object v14, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    invoke-static {v12}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v12

    aget v12, v14, v12

    sub-int/2addr v13, v12

    invoke-static {v13, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    iget v13, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne v13, v8, :cond_12

    invoke-direct {v6, v11, v12, v3, v8}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_b

    :cond_12
    invoke-direct {v6, v11, v3, v12, v8}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    :cond_13
    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_14
    iput v1, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v3, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne v3, v8, :cond_16

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v4, :cond_15

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v1, v2, v1

    goto :goto_c

    :cond_15
    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    add-int/2addr v1, v2

    move/from16 v17, v2

    move v2, v1

    move/from16 v1, v17

    :goto_c
    move v10, v0

    move v3, v1

    move v1, v10

    goto :goto_e

    :cond_16
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v4, :cond_17

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v1, v2, v1

    move v3, v0

    move v10, v3

    move v0, v2

    goto :goto_d

    :cond_17
    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    add-int/2addr v1, v2

    move v3, v0

    move v10, v3

    move v0, v1

    move v1, v2

    :goto_d
    move v2, v10

    :goto_e
    if-ge v10, v9, :cond_1b

    iget-object v4, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v10

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    iget v4, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne v4, v8, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    invoke-static {v12}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v4

    aget v1, v1, v4

    add-int/2addr v0, v1

    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, v11}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move v13, v0

    move v15, v1

    move/from16 v16, v2

    move v14, v3

    goto :goto_f

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    iget-object v3, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    invoke-static {v12}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v4

    aget v3, v3, v4

    add-int/2addr v2, v3

    iget-object v3, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v11}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    move v15, v0

    move v13, v1

    move v14, v2

    move/from16 v16, v3

    :goto_f
    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v2, v13, v0

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v3, v14, v0

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v4, v15, v0

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v5, v16, v0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    invoke-virtual {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    iput-boolean v8, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    :cond_1a
    iget-boolean v0, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v11}, Landroid/view/View;->isFocusable()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    add-int/lit8 v10, v10, 0x1

    move v1, v13

    move v3, v14

    move v0, v15

    move/from16 v2, v16

    goto :goto_e

    :cond_1b
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method onAnchorReady(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    :goto_0
    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    if-eqz v2, :cond_1

    array-length v3, v2

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    add-int/2addr v4, v1

    if-ne v3, v4, :cond_1

    array-length v3, v2

    sub-int/2addr v3, v1

    aget v2, v2, v3

    if-eq v2, v0, :cond_2

    :cond_1
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    add-int/2addr v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    const/4 v3, 0x0

    aput v3, v2, v3

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    div-int v4, v0, v2

    rem-int/2addr v0, v2

    move v2, v3

    :goto_1
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-gt v1, v5, :cond_4

    add-int/2addr v3, v0

    if-lez v3, :cond_3

    sub-int v6, v5, v3

    if-ge v6, v0, :cond_3

    add-int/lit8 v6, v4, 0x1

    sub-int/2addr v3, v5

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_2
    add-int/2addr v2, v6

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    aput v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v0

    :goto_3
    if-lez v0, :cond_5

    iget v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v0

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz p1, :cond_6

    array-length p1, p1

    iget p2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-eq p1, p2, :cond_7

    :cond_6
    iget p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    :cond_7
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    invoke-super {p0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void

    :cond_0
    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanGroupIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result p1

    iget p2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v2

    const/4 v4, 0x1

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-le v3, v1, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ne v0, p0, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, p3

    :goto_0
    const/4 v6, 0x0

    move v1, p2

    move v3, p1

    invoke-static/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    iget p2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-le p2, v1, :cond_3

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result p2

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ne p2, p0, :cond_3

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, p3

    :goto_1
    const/4 v6, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    :goto_2
    return-void
.end method

.method public onItemsAdded(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemsChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemsMoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;III)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemsRemoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemsUpdated(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 7

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    :cond_1
    return-void
.end method

.method public setSpanCount(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    if-lt p1, v0, :cond_1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Span count should be at least 1. Provided "

    invoke-static {v0, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline12(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStackFromEnd(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
