.class public Lcom/oneplus/lib/widget/OPTooltipView;
.super Landroid/widget/LinearLayout;
.source "OPTooltipView.java"


# instance fields
.field private color:I

.field private mArrowHeight:I

.field private mArrowPath:Landroid/graphics/Path;

.field private mArrowWidth:I

.field private mBody:Landroid/graphics/RectF;

.field private mContentView:Landroid/widget/LinearLayout;

.field private mDirection:I

.field private mMessage:Landroid/widget/TextView;

.field private mPaint:Landroid/graphics/Paint;

.field private mPercent:F

.field private mRadius:I

.field private mTitle:Landroid/widget/TextView;

.field private porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPTooltipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    const/high16 p2, 0x3f000000    # 0.5f

    iput p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d018b

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0189

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mContentView:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0744

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mTitle:Landroid/widget/TextView;

    const p1, 0x7f0a03f9

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mMessage:Landroid/widget/TextView;

    const p1, 0x7f0a010a

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const p1, 0x7f0a010b

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703fb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0704a8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0704a9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->color:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xdd

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/OPTooltipView;->setDirection(IF)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v4, v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    if-ne v3, v0, :cond_1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_2
    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    if-ne v4, v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_4
    if-ne v3, v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_5
    if-ne v2, v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_6
    if-ne v1, v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public setDirection(IF)V
    .locals 9

    iput p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    iput p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iput p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    goto :goto_0

    :cond_0
    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget-object p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    const/4 v0, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v3, p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr p1, v6

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v6, v4

    int-to-float v6, v6

    add-float/2addr p1, v6

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    int-to-float v6, v6

    add-float/2addr p1, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float p1, p1, v6

    if-lez p1, :cond_2

    iput p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance p2, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v1, v1

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {p2, v1, v6}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v7, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr v6, v7

    invoke-direct {v1, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr p2, v4

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr p2, v6

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance p2, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr v1, v6

    invoke-direct {p2, v5, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    iget v7, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {v1, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :cond_3
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance p2, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v1, v1

    div-int/2addr v1, v4

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {p2, v1, v6}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v6, v4

    iget v7, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {v1, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    :goto_1
    iget-object v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v7, p1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, p1, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v7, p2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v6, v7, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p2, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    :cond_4
    if-ne v2, p1, :cond_7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr p1, v6

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v6, v4

    int-to-float v6, v6

    add-float/2addr p1, v6

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    int-to-float v6, v6

    add-float/2addr p1, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float p1, p1, v6

    if-lez p1, :cond_5

    iput p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {p1, v5, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance p2, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v1, v1

    invoke-direct {p2, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    neg-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr p2, v4

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr p2, v6

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {p1, v5, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance p2, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    neg-int v1, v1

    invoke-direct {p2, v5, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2

    :cond_6
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {p1, v5, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance p2, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v1, v1

    div-int/2addr v1, v4

    invoke-direct {p2, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v6, v4

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    :goto_2
    iget-object v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v7, p1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, p1, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v7, p2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v6, v7, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p2, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    :cond_7
    if-ne v0, p1, :cond_a

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr p1, v6

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v6, v4

    int-to-float v6, v6

    add-float/2addr p1, v6

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    int-to-float v6, v6

    add-float/2addr p1, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float p1, p1, v6

    if-lez p1, :cond_8

    iput p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance p2, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr v1, v6

    invoke-direct {p2, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v7, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v7, v7

    invoke-direct {v1, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr p2, v4

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr p2, v6

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_9

    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance p2, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr v1, v6

    invoke-direct {p2, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v7, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    invoke-direct {v1, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_3

    :cond_9
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance p2, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v6, v4

    invoke-direct {p2, v1, v6}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v7, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v7, v7

    div-int/2addr v7, v4

    invoke-direct {v1, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    :goto_3
    iget-object v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v7, p1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, p1, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v7, p2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v6, v7, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p2, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    :cond_a
    if-ne v4, p1, :cond_d

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr p1, v6

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v6, v4

    int-to-float v6, v6

    add-float/2addr p1, v6

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    int-to-float v6, v6

    add-float/2addr p1, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float p1, p1, v6

    if-lez p1, :cond_b

    iput p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {p1, p2, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance p2, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    neg-int v1, v1

    invoke-direct {p2, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr p2, v4

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr p2, v6

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_c

    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {p1, p2, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance p2, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    neg-int v1, v1

    invoke-direct {p2, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    invoke-direct {v1, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    :cond_c
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {p1, p2, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance p2, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v1, v1

    div-int/2addr v1, v4

    invoke-direct {p2, v5, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v6, v4

    invoke-direct {v1, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    :goto_4
    iget-object v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v7, p1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, p1, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v7, p2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v6, v7, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p2, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    if-eq p2, v0, :cond_11

    if-eq p2, v4, :cond_10

    if-eq p2, v3, :cond_f

    if-eq p2, v2, :cond_e

    goto :goto_6

    :cond_e
    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_6

    :cond_f
    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_6

    :cond_10
    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_6

    :cond_11
    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_6
    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mTitle:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setmMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
