.class public Lcom/oneplus/settings/ui/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mDrawingRect:Landroid/graphics/RectF;

.field private mHue:F

.field private mHueIndicatorPaint:Landroid/graphics/Paint;

.field private mHueIndicatorWidth:F

.field private mHueInidcatorOffset:F

.field private mHuePaint:Landroid/graphics/Paint;

.field private mHuePanelHeight:F

.field private mHueRect:Landroid/graphics/RectF;

.field private mHueShader:Landroid/graphics/Shader;

.field private mHueTouchRect:Landroid/graphics/RectF;

.field private mIndicatorBlurRadius:F

.field private mIndicatorBorderWidth:F

.field private mIndicatorColor:I

.field private mIndicatorCornerRadius:F

.field private mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

.field private mMarginTop:F

.field private mMinHeight:F

.field private mMinWidth:F

.field private mPadding:F

.field private mPanelSpacing:F

.field private mPanelWidth:F

.field private mSVIndicatorPaint:Landroid/graphics/Paint;

.field private mSVIndicatorWidth:F

.field private mSVPanelHeight:F

.field private mSat:F

.field private mSatPaint:Landroid/graphics/Paint;

.field private mSatRect:Landroid/graphics/RectF;

.field private mSatShader:Landroid/graphics/Shader;

.field private mSatTouchRect:Landroid/graphics/RectF;

.field private mSatValRect:Landroid/graphics/RectF;

.field private mSatValTouchRect:Landroid/graphics/RectF;

.field private mTouchPoint:Landroid/graphics/Point;

.field private mVal:F

.field private mValPaint:Landroid/graphics/Paint;

.field private mValRect:Landroid/graphics/RectF;

.field private mValShader:Landroid/graphics/Shader;

.field private mValTouchRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/settings/ui/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mTouchPoint:Landroid/graphics/Point;

    const/high16 p1, 0x43b40000    # 360.0f

    iput p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    iput p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0704fb

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelWidth:F

    const-string p3, "panel width 375dp:"

    invoke-static {p3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelWidth:F

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ColorPickerView"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device width pixels:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p3, v1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline44(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iput p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelSpacing:F

    const p3, 0x7f0702b0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMarginTop:F

    const p3, 0x7f0702ae

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    const p3, 0x7f0701ab

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    const p3, 0x7f070538

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVPanelHeight:F

    iget p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelWidth:F

    iput p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMinWidth:F

    iget p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    iget v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVPanelHeight:F

    add-float/2addr p3, v0

    iget v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelSpacing:F

    add-float/2addr p3, v0

    iput p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMinHeight:F

    const p3, 0x7f0701ad

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    const p3, 0x7f0701ae

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBlurRadius:F

    const p3, 0x7f0701ac

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBorderWidth:F

    const p3, 0x7f06020a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorColor:I

    const p3, 0x7f0701aa

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorWidth:F

    const p3, 0x7f0701a9

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    iget p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    iput p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorWidth:F

    iput p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPadding:F

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBorderWidth:F

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBlurRadius:F

    const v1, -0x777778

    invoke-virtual {p2, v0, p1, p1, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBorderWidth:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBlurRadius:F

    invoke-virtual {p2, v0, p1, p1, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private updateIndicatorIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mTouchPoint:Landroid/graphics/Point;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueTouchRect:Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v3, v2, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v3, p1, v2

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    sub-float v5, p1, v2

    :goto_0
    const/high16 p1, 0x43b40000    # 360.0f

    mul-float/2addr v5, p1

    div-float/2addr v5, v1

    iput v5, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatTouchRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    iget-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_4

    goto :goto_1

    :cond_4
    iget p1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_5

    move v5, v1

    goto :goto_1

    :cond_5
    sub-float v5, v0, v2

    :goto_1
    div-float/2addr v6, v1

    mul-float/2addr v6, v5

    iput v6, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValTouchRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    iget-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_7

    goto :goto_2

    :cond_7
    iget p1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_8

    move v5, v1

    goto :goto_2

    :cond_8
    sub-float v5, v0, v2

    :goto_2
    div-float p1, v6, v1

    mul-float/2addr p1, v5

    sub-float/2addr v6, p1

    iput v6, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    goto :goto_3

    :cond_9
    move v4, v1

    :goto_3
    return v4
.end method


# virtual methods
.method public getColor()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget p0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    const/4 v1, 0x2

    aput p0, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_3

    iget-object v2, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    if-nez v3, :cond_2

    const/16 v3, 0x169

    new-array v14, v3, [I

    move v3, v6

    move v9, v3

    :goto_0
    array-length v10, v14

    sub-int/2addr v10, v8

    if-gt v3, v10, :cond_1

    new-array v10, v5, [F

    int-to-float v11, v3

    aput v11, v10, v6

    aput v7, v10, v8

    aput v7, v10, v4

    invoke-static {v10}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    aput v10, v14, v9

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v9, v8

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/graphics/LinearGradient;

    iget v10, v2, Landroid/graphics/RectF;->left:F

    iget v13, v2, Landroid/graphics/RectF;->top:F

    iget v12, v2, Landroid/graphics/RectF;->right:F

    const/4 v15, 0x0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v3

    move v11, v13

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    iget-object v3, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    iget-object v9, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_2
    iget v3, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v3, v9

    iget-object v10, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v3, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v3, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    iget-object v10, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v11

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    iget v13, v10, Landroid/graphics/RectF;->top:F

    float-to-int v13, v13

    iput v13, v12, Landroid/graphics/Point;->y:I

    iget v10, v10, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v11

    const/high16 v11, 0x43b40000    # 360.0f

    div-float/2addr v3, v11

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v12, Landroid/graphics/Point;->x:I

    iget v3, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    iget-object v10, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    iget v12, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorWidth:F

    sub-float/2addr v10, v12

    iget v12, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBorderWidth:F

    sub-float/2addr v10, v12

    mul-float/2addr v10, v3

    div-float/2addr v10, v11

    iget-object v3, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v12, v3

    add-float/2addr v12, v10

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    iput v12, v10, Landroid/graphics/RectF;->left:F

    iget v11, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorWidth:F

    add-float/2addr v12, v11

    iput v12, v10, Landroid/graphics/RectF;->right:F

    iget v11, v2, Landroid/graphics/RectF;->top:F

    iget v12, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    sub-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v12

    iput v2, v10, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    iget-object v11, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v2, v2, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-array v2, v5, [F

    iget v5, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    aput v5, v2, v6

    aput v7, v2, v8

    aput v7, v2, v4

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v16

    new-instance v2, Landroid/graphics/LinearGradient;

    iget-object v4, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatRect:Landroid/graphics/RectF;

    iget v11, v4, Landroid/graphics/RectF;->left:F

    iget v14, v4, Landroid/graphics/RectF;->top:F

    iget v13, v4, Landroid/graphics/RectF;->right:F

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v15, -0x1

    move-object v10, v2

    move v12, v14

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    iget-object v2, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatRect:Landroid/graphics/RectF;

    iget v4, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    mul-float/2addr v4, v9

    iget-object v5, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    iget-object v4, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorWidth:F

    sub-float/2addr v4, v5

    iget v5, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBorderWidth:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    iget-object v2, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v2

    div-float/2addr v5, v3

    add-float/2addr v5, v4

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput v5, v2, Landroid/graphics/RectF;->left:F

    iget v4, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorWidth:F

    add-float/2addr v5, v4

    iput v5, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->top:F

    iget v6, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    sub-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->top:F

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v6

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    iget-object v5, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/LinearGradient;

    iget-object v4, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    iget v11, v4, Landroid/graphics/RectF;->left:F

    iget v14, v4, Landroid/graphics/RectF;->top:F

    iget v13, v4, Landroid/graphics/RectF;->right:F

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v15, -0x1

    const/high16 v16, -0x1000000

    move-object v10, v2

    move v12, v14

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    iget-object v2, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mValPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    iget v4, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    mul-float/2addr v4, v9

    iget-object v5, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mValPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    sub-float/2addr v7, v2

    iget-object v2, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v4, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorWidth:F

    sub-float/2addr v2, v4

    iget v4, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBorderWidth:F

    sub-float/2addr v2, v4

    mul-float/2addr v2, v7

    iget-object v5, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    div-float/2addr v4, v3

    add-float/2addr v4, v2

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput v4, v2, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorWidth:F

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v5, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->top:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    iget-object v0, v0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, v4, :cond_0

    if-eq v0, v2, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v5, :cond_1

    iget p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMinWidth:F

    float-to-int p1, p1

    :cond_1
    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    iget p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMinHeight:F

    float-to-int p2, p2

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget p4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPadding:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p4, v0

    iput p4, p3, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    iget p4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPadding:F

    sub-float/2addr p1, p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p1, p4

    iput p1, p3, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPadding:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p3, p4

    iput p3, p1, Landroid/graphics/RectF;->top:F

    iget-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float p2, p2

    iget p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPadding:F

    sub-float/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget p3, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p3

    iget v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMarginTop:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    sub-float/2addr p4, v2

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelSpacing:F

    mul-float v3, v2, v1

    sub-float/2addr p4, v3

    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    mul-float/2addr v3, v1

    sub-float/2addr p4, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr p4, v3

    iput p4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    add-float/2addr p3, v3

    add-float/2addr p3, v0

    add-float/2addr p3, v2

    sub-float/2addr p2, v0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p4, p3, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValTouchRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValTouchRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorWidth:F

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    iput v2, p2, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v2

    iput v3, p2, Landroid/graphics/RectF;->right:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iput v2, p2, Landroid/graphics/RectF;->top:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    add-float/2addr p1, p2

    iget p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMarginTop:F

    add-float/2addr p1, p3

    iget p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelSpacing:F

    add-float/2addr p1, p3

    add-float/2addr p2, p1

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3, p4, p1, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatTouchRect:Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatTouchRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatRect:Landroid/graphics/RectF;

    iget v2, p3, Landroid/graphics/RectF;->left:F

    iput v2, p1, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->right:F

    iput v2, p1, Landroid/graphics/RectF;->right:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iput v2, p1, Landroid/graphics/RectF;->top:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iput p3, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMarginTop:F

    add-float/2addr p2, p1

    iget p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelSpacing:F

    add-float/2addr p2, p1

    iget p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    add-float/2addr p1, p2

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3, p4, p2, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValTouchRect:Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValTouchRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    iput p3, p1, Landroid/graphics/RectF;->left:F

    iget p3, p2, Landroid/graphics/RectF;->right:F

    iput p3, p1, Landroid/graphics/RectF;->right:F

    iget p3, p2, Landroid/graphics/RectF;->top:F

    iput p3, p1, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p3, p1, Landroid/graphics/RectF;->top:F

    iget p4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    mul-float/2addr p4, v1

    add-float/2addr p4, p3

    iget p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    add-float/2addr p3, p4

    iget p1, p1, Landroid/graphics/RectF;->right:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2, p4, p1, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueTouchRect:Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueTouchRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    iput p3, p1, Landroid/graphics/RectF;->left:F

    iget p3, p2, Landroid/graphics/RectF;->right:F

    iput p3, p1, Landroid/graphics/RectF;->right:F

    iget p3, p2, Landroid/graphics/RectF;->top:F

    iget p0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    add-float/2addr p3, p0

    iput p3, p1, Landroid/graphics/RectF;->top:F

    iget p0, p2, Landroid/graphics/RectF;->bottom:F

    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerView;->updateIndicatorIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mTouchPoint:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerView;->updateIndicatorIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v0, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mTouchPoint:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerView;->updateIndicatorIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

    if-eqz p1, :cond_3

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    aput v4, v0, v2

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    aput v2, v0, v3

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3

    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/ui/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public setColor(IZ)V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [F

    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x0

    aget v2, v1, p1

    iput v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    const/4 v2, 0x1

    aget v3, v1, v2

    iput v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    const/4 v3, 0x2

    aget v1, v1, v3

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

    if-eqz p2, :cond_0

    new-array v0, v0, [F

    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    aput v1, v0, p1

    iget p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    aput p1, v0, v2

    iget p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    aput p1, v0, v3

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    invoke-interface {p2, p1}, Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnColorChangedListener(Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

    return-void
.end method
