.class public Lcom/oneplus/lib/widget/cardview/CardView;
.super Landroid/widget/FrameLayout;
.source "CardView.java"

# interfaces
.implements Lcom/oneplus/lib/widget/cardview/CardViewDelegate;


# static fields
.field private static final IMPL:Lcom/oneplus/lib/widget/cardview/CardViewApi21;


# instance fields
.field private mCompatPadding:Z

.field private final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field private final mShadowBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->initStatic()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mShadowBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/cardview/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mShadowBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/cardview/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/cardview/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->CardView:[I

    const v1, 0x7f1300fe

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/4 v1, 0x5

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    const/4 v1, 0x6

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mCompatPadding:Z

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mPreventCornerOverlap:Z

    const/16 v1, 0x9

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iget-object v1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    const/16 v2, 0xb

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    const/16 v2, 0xd

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    const/16 v2, 0xc

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    const/16 v2, 0xa

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, v1, Landroid/graphics/Rect;->bottom:I

    cmpl-float p3, v6, v0

    if-lez p3, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v0

    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->initialize(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;Landroid/content/Context;IFFF)V

    return-void
.end method


# virtual methods
.method public getCardElevation()F
    .locals 1

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result p0

    return p0
.end method

.method public getContentPaddingBottom()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public getContentPaddingLeft()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getContentPaddingRight()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public getContentPaddingTop()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public getMaxCardElevation()F
    .locals 1

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result p0

    return p0
.end method

.method public getPreventCornerOverlap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mPreventCornerOverlap:Z

    return p0
.end method

.method public getRadius()F
    .locals 1

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result p0

    return p0
.end method

.method public getUseCompatPadding()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mCompatPadding:Z

    return p0
.end method

.method protected onMeasure(II)V
    .locals 6

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    instance-of v0, v0, Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    invoke-virtual {v4, p0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v4

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v2

    mul-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_2
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 1

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->setBackgroundColor(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;I)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 1

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->setElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 1

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->setMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mPreventCornerOverlap:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mPreventCornerOverlap:Z

    sget-object p1, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->setMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->setRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mCompatPadding:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mCompatPadding:Z

    sget-object p1, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->setMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    return-void
.end method
