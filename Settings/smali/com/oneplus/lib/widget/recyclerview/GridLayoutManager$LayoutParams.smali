.class public Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private mSpanIndex:I

.field private mSpanSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanSize:I

    return p0
.end method

.method static synthetic access$102(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanSize:I

    return p1
.end method


# virtual methods
.method public getSpanIndex()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return p0
.end method

.method public getSpanSize()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanSize:I

    return p0
.end method
