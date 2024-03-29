.class public final Landroidx/leanback/widget/SeekBar;
.super Landroid/view/View;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/SeekBar$AccessibilitySeekListener;
    }
.end annotation


# instance fields
.field private mActiveBarHeight:I

.field private mActiveRadius:I

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBackgroundRect:Landroid/graphics/RectF;

.field private mBarHeight:I

.field private final mKnobPaint:Landroid/graphics/Paint;

.field private mKnobx:I

.field private mMax:I

.field private mProgress:I

.field private final mProgressPaint:Landroid/graphics/Paint;

.field private final mProgressRect:Landroid/graphics/RectF;

.field private mSecondProgress:I

.field private final mSecondProgressPaint:Landroid/graphics/Paint;

.field private final mSecondProgressRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mKnobPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object p2, p0, Landroidx/leanback/widget/SeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    const v0, -0x777778

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressPaint:Landroid/graphics/Paint;

    const v0, -0x333334

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Landroidx/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Landroidx/leanback/widget/SeekBar;->mKnobPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07027c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07027a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/SeekBar;->mActiveBarHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07027b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/SeekBar;->mActiveRadius:I

    return-void
.end method

.method private calculate()V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/SeekBar;->mActiveBarHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Landroidx/leanback/widget/SeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v4, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    int-to-float v6, v0

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    int-to-float v4, v4

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {v3, v5, v6, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroidx/leanback/widget/SeekBar;->mActiveRadius:I

    goto :goto_1

    :cond_1
    iget v2, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v2, v2, 0x2

    :goto_1
    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    iget v3, p0, Landroidx/leanback/widget/SeekBar;->mProgress:I

    int-to-float v3, v3

    iget v4, p0, Landroidx/leanback/widget/SeekBar;->mMax:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v1, v1

    mul-float/2addr v3, v1

    iget-object v4, p0, Landroidx/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v5, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v3

    invoke-virtual {v4, v7, v6, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v4, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgress:I

    int-to-float v4, v4

    iget v5, p0, Landroidx/leanback/widget/SeekBar;->mMax:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, v1

    iget-object v1, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressRect:Landroid/graphics/RectF;

    iget-object v5, p0, Landroidx/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget v7, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v4

    invoke-virtual {v1, v5, v6, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    float-to-int v0, v3

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/leanback/widget/SeekBar;->mKnobx:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMax()I
    .locals 0

    iget p0, p0, Landroidx/leanback/widget/SeekBar;->mMax:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    iget p0, p0, Landroidx/leanback/widget/SeekBar;->mProgress:I

    return p0
.end method

.method public getSecondProgress()I
    .locals 0

    iget p0, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgress:I

    return p0
.end method

.method public getSecondaryProgressColor()I
    .locals 0

    iget-object p0, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/SeekBar;->mActiveRadius:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v0, v0, 0x2

    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/SeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    iget-object v2, p0, Landroidx/leanback/widget/SeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-object v2, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v1, p0, Landroidx/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget-object v2, p0, Landroidx/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, p0, Landroidx/leanback/widget/SeekBar;->mKnobx:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object p0, p0, Landroidx/leanback/widget/SeekBar;->mKnobPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-direct {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public setAccessibilitySeekListener(Landroidx/leanback/widget/SeekBar$AccessibilitySeekListener;)V
    .locals 0

    return-void
.end method

.method public setActiveBarHeight(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/SeekBar;->mActiveBarHeight:I

    invoke-direct {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method public setActiveRadius(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/SeekBar;->mActiveRadius:I

    invoke-direct {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method public setBarHeight(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    invoke-direct {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/SeekBar;->mMax:I

    invoke-direct {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/SeekBar;->mMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/leanback/widget/SeekBar;->mProgress:I

    invoke-direct {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    iget-object p0, p0, Landroidx/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/SeekBar;->mMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgress:I

    invoke-direct {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method public setSecondaryProgressColor(I)V
    .locals 0

    iget-object p0, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
