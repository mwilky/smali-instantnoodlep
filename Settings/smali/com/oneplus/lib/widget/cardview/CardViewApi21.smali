.class Lcom/oneplus/lib/widget/cardview/CardViewApi21;
.super Ljava/lang/Object;
.source "CardViewApi21.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p0

    return p0
.end method

.method public getMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F
    .locals 0

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->getPadding()F

    move-result p0

    return p0
.end method

.method public getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F
    .locals 0

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->getRadius()F

    move-result p0

    return p0
.end method

.method public initStatic()V
    .locals 0

    return-void
.end method

.method public initialize(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;Landroid/content/Context;IFFF)V
    .locals 0

    new-instance p2, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-direct {p2, p3, p4}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;-><init>(IF)V

    invoke-interface {p1, p2}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object p2, p1

    check-cast p2, Landroid/view/View;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1, p6}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->setMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setBackgroundColor(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;I)V
    .locals 0

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->setColor(I)V

    return-void
.end method

.method public setElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public setMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V
    .locals 3

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->setPadding(FZZ)V

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getUseCompatPadding()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0, p0, p0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result p2

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result p0

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v0

    invoke-static {p2, p0, v0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-static {p2, p0, v1}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    invoke-interface {p1, v0, p0, v0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    :goto_0
    return-void
.end method

.method public setRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V
    .locals 0

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->setRadius(F)V

    return-void
.end method
