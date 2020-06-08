.class public Lcom/oneplus/lib/widget/cardview/OPCardView;
.super Lcom/oneplus/lib/widget/cardview/CardView;
.source "OPCardView.java"


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundColorMask:I

.field mCardBackgroundMaskPaint:Landroid/graphics/Paint;

.field private mIsCardSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/cardview/OPCardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/cardview/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/cardview/OPCardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/cardview/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/cardview/OPCardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->CardView:[I

    const v1, 0x7f1301ef

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mBackgroundColor:I

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mBackgroundColorMask:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardView;->setCardBackgroundColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mCardBackgroundMaskPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mCardBackgroundMaskPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mBackgroundColorMask:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mCardBackgroundMaskPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mIsCardSelected:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mCardBackgroundMaskPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setCardSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mIsCardSelected:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
