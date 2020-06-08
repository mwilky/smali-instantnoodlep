.class abstract Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# instance fields
.field private mLastTotalSpace:I

.field protected final mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;


# direct methods
.method synthetic constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p2, -0x80000000

    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->mLastTotalSpace:I

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    return-void
.end method

.method public static createOrientationHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;I)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    return-object p1
.end method


# virtual methods
.method public abstract getDecoratedEnd(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurement(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurementInOther(Landroid/view/View;)I
.end method

.method public abstract getDecoratedStart(Landroid/view/View;)I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndAfterPadding()I
.end method

.method public abstract getEndPadding()I
.end method

.method public abstract getStartAfterPadding()I
.end method

.method public abstract getTotalSpace()I
.end method

.method public getTotalSpaceChange()I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->mLastTotalSpace:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->mLastTotalSpace:I

    sub-int p0, v0, p0

    :goto_0
    return p0
.end method

.method public abstract offsetChildren(I)V
.end method

.method public onLayoutComplete()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->mLastTotalSpace:I

    return-void
.end method
