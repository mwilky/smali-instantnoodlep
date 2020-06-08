.class Landroidx/cardview/widget/CardViewApi21Impl;
.super Ljava/lang/Object;
.source "CardViewApi21Impl.java"

# interfaces
.implements Landroidx/cardview/widget/CardViewImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;
    .locals 0

    check-cast p1, Landroidx/cardview/widget/CardView$1;

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView$1;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroidx/cardview/widget/RoundRectDrawable;

    return-object p0
.end method


# virtual methods
.method public getBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getElevation(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 0

    check-cast p1, Landroidx/cardview/widget/CardView$1;

    iget-object p0, p1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p0

    return p0
.end method

.method public getMaxElevation(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawable;->getPadding()F

    move-result p0

    return p0
.end method

.method public getMinHeight(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawable;->getRadius()F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public getMinWidth(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawable;->getRadius()F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public getRadius(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawable;->getRadius()F

    move-result p0

    return p0
.end method

.method public initStatic()V
    .locals 0

    return-void
.end method

.method public initialize(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 0

    new-instance p2, Landroidx/cardview/widget/RoundRectDrawable;

    invoke-direct {p2, p3, p4}, Landroidx/cardview/widget/RoundRectDrawable;-><init>(Landroid/content/res/ColorStateList;F)V

    check-cast p1, Landroidx/cardview/widget/CardView$1;

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView$1;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1, p6}, Landroidx/cardview/widget/CardViewApi21Impl;->setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V

    return-void
.end method

.method public onCompatPaddingChanged(Landroidx/cardview/widget/CardViewDelegate;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/cardview/widget/RoundRectDrawable;->getPadding()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/cardview/widget/CardViewApi21Impl;->setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V

    return-void
.end method

.method public onPreventCornerOverlapChanged(Landroidx/cardview/widget/CardViewDelegate;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/cardview/widget/RoundRectDrawable;->getPadding()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/cardview/widget/CardViewApi21Impl;->setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V

    return-void
.end method

.method public setBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/cardview/widget/RoundRectDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setElevation(Landroidx/cardview/widget/CardViewDelegate;F)V
    .locals 0

    check-cast p1, Landroidx/cardview/widget/CardView$1;

    iget-object p0, p1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object v0

    check-cast p1, Landroidx/cardview/widget/CardView$1;

    iget-object v1, p1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView$1;->getPreventCornerOverlap()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroidx/cardview/widget/RoundRectDrawable;->setPadding(FZZ)V

    iget-object p2, p1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    invoke-virtual {p2}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/cardview/widget/RoundRectDrawable;->getPadding()F

    move-result p2

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawable;->getRadius()F

    move-result p0

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView$1;->getPreventCornerOverlap()Z

    move-result v0

    invoke-static {p2, p0, v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView$1;->getPreventCornerOverlap()Z

    move-result v1

    invoke-static {p2, p0, v1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    invoke-virtual {p1, v0, p0, v0, p0}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    :goto_0
    return-void
.end method

.method public setRadius(Landroidx/cardview/widget/CardViewDelegate;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/cardview/widget/RoundRectDrawable;->setRadius(F)V

    return-void
.end method

.method public updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V
    .locals 4

    check-cast p1, Landroidx/cardview/widget/CardView$1;

    iget-object v0, p1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/cardview/widget/RoundRectDrawable;->getPadding()F

    move-result v0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/cardview/widget/RoundRectDrawable;->getRadius()F

    move-result p0

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView$1;->getPreventCornerOverlap()Z

    move-result v1

    invoke-static {v0, p0, v1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView$1;->getPreventCornerOverlap()Z

    move-result v2

    invoke-static {v0, p0, v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result p0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    invoke-virtual {p1, v1, p0, v1, p0}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    return-void
.end method
