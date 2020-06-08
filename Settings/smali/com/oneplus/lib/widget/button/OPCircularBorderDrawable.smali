.class Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "OPCircularBorderDrawable.java"


# instance fields
.field mBorderWidth:F

.field private mBottomInnerStrokeColor:I

.field private mBottomOuterStrokeColor:I

.field private mInvalidateShader:Z

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field final mRectF:Landroid/graphics/RectF;

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintColor:I

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTopInnerStrokeColor:I

.field private mTopOuterStrokeColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRectF:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private static compositeColors(II)I
    .locals 6

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    rsub-int v2, v0, 0xff

    rsub-int v3, v1, 0xff

    mul-int/2addr v3, v2

    div-int/lit16 v3, v3, 0xff

    rsub-int v2, v3, 0xff

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v3, v1, v4, v0, v2}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeComponent(IIIII)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v4, v1, v5, v0, v2}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeComponent(IIIII)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0, v1, p1, v0, v2}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeComponent(IIIII)I

    move-result p0

    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private static compositeComponent(IIIII)I
    .locals 0

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    mul-int/lit16 p0, p0, 0xff

    mul-int/2addr p0, p1

    mul-int/2addr p2, p3

    rsub-int p1, p1, 0xff

    mul-int/2addr p1, p2

    add-int/2addr p1, p0

    mul-int/lit16 p4, p4, 0xff

    div-int/2addr p1, p4

    return p1
.end method

.method public static setAlphaComponent(II)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-boolean v4, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v6, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBorderWidth:F

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/4 v7, 0x6

    new-array v13, v7, [I

    iget v8, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTopOuterStrokeColor:I

    iget v9, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    invoke-static {v8, v9}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result v8

    aput v8, v13, v3

    iget v8, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTopInnerStrokeColor:I

    iget v9, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    invoke-static {v8, v9}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result v8

    aput v8, v13, v2

    iget v8, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTopInnerStrokeColor:I

    invoke-static {v8, v3}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->setAlphaComponent(II)I

    move-result v8

    iget v9, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    invoke-static {v8, v9}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result v8

    const/4 v9, 0x2

    aput v8, v13, v9

    iget v8, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBottomInnerStrokeColor:I

    invoke-static {v8, v3}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->setAlphaComponent(II)I

    move-result v8

    iget v10, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    invoke-static {v8, v10}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result v8

    const/4 v10, 0x3

    aput v8, v13, v10

    iget v8, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBottomInnerStrokeColor:I

    iget v11, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    invoke-static {v8, v11}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result v8

    const/4 v11, 0x4

    aput v8, v13, v11

    iget v8, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBottomOuterStrokeColor:I

    iget v12, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    invoke-static {v8, v12}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result v8

    const/4 v12, 0x5

    aput v8, v13, v12

    new-array v14, v7, [F

    const/4 v7, 0x0

    aput v7, v14, v3

    aput v6, v14, v2

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v14, v9

    aput v2, v14, v10

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v6, v2, v6

    aput v6, v14, v11

    aput v2, v14, v12

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v10, v6

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v5

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-boolean v3, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    :cond_1
    iget-object v2, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRectF:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v2

    iput v4, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v2

    iput v4, v3, Landroid/graphics/RectF;->top:F

    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v2

    iput v4, v3, Landroid/graphics/RectF;->right:F

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v2

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v2, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    return-void
.end method

.method public getOpacity()I
    .locals 1

    iget p0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBorderWidth:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, -0x3

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    :goto_0
    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBorderWidth:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p0, 0x1

    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setBorderWidth(F)V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBorderWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBorderWidth:F

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    const v1, 0x3faaa993    # 1.3333f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setGradientColors(IIII)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTopOuterStrokeColor:I

    iput p2, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTopInnerStrokeColor:I

    iput p3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBottomOuterStrokeColor:I

    iput p4, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBottomInnerStrokeColor:I

    return-void
.end method

.method setTintColor(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
