.class public Lcom/oneplus/lib/widget/button/OPFloatingActionButton;
.super Landroid/widget/ImageView;
.source "OPFloatingActionButton.java"


# annotations
.annotation runtime Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;,
        Lcom/oneplus/lib/widget/button/OPFloatingActionButton$OnVisibilityChangedListener;
    }
.end annotation


# instance fields
.field private mBackgroundTint:Landroid/content/res/ColorStateList;

.field private mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mBorderWidth:I

.field private mContentPadding:I

.field private final mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

.field private mRippleColor:I

.field private final mShadowPadding:Landroid/graphics/Rect;

.field private mSize:I

.field private mUserSetVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f040002

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040002

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mUserSetVisibility:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton:[I

    const v1, 0x7f1301c6

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    const/4 p3, 0x2

    const/4 v0, -0x1

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    const/16 v4, 0x9

    if-eq v0, v4, :cond_2

    const/16 v4, 0xe

    if-eq v0, v4, :cond_1

    const/16 v4, 0xf

    if-eq v0, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    const/16 v0, 0x8

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mRippleColor:I

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mSize:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBorderWidth:I

    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;-><init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)V

    new-instance v0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;-><init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07014e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getSizeDimension()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/2addr v0, p3

    iput v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mContentPadding:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget v4, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mRippleColor:I

    iget v5, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBorderWidth:I

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    iget-object p1, p1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setElevation(F)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {p1, v7}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setPressedTranslationZ(F)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mContentPadding:I

    return p0
.end method

.method static synthetic access$201(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static resolveAdjustedSize(II)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->onDrawableStateChanged([I)V

    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method final getSizeDimension()I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mSize:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070152

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070151

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method final getUserSetVisibility()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mUserSetVisibility:I

    return p0
.end method

.method public hide(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->hide(Z)V

    return-void
.end method

.method final internalSetVisibility(IZ)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mUserSetVisibility:I

    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-super {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->jumpDrawableToCurrentState()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getSizeDimension()I

    move-result v0

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->resolveAdjustedSize(II)I

    move-result p1

    invoke-static {v0, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->resolveAdjustedSize(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget v4, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mRippleColor:I

    iget v5, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBorderWidth:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    :cond_0
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mRippleColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mRippleColor:I

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setRippleColor(I)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->internalSetVisibility(IZ)V

    return-void
.end method

.method public show(Z)V
    .locals 3

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isLaidOut()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/button/FastOutSlowInInterpolator;

    invoke-direct {v1}, Lcom/oneplus/lib/widget/button/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$2;-><init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->internalSetVisibility(IZ)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    :cond_1
    :goto_0
    return-void
.end method
