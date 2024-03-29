.class public Lcom/oneplus/lib/widget/AnimationGriditemView;
.super Landroid/widget/FrameLayout;
.source "AnimationGriditemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/AnimationGriditemView$RoundRectOutlineProvider;,
        Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;
    }
.end annotation


# static fields
.field private static final sRadiusModeTypeArray:[Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mCheckBox:Lcom/oneplus/lib/widget/button/OPCheckBox;

.field private mChecked:Z

.field private mDuration:I

.field private mImage:Landroid/widget/ImageView;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mRadius:I

.field private mRadiusMode:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

.field private mZoomOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x4

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x5

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x6

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x7

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/lib/widget/AnimationGriditemView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    new-array v0, v4, [Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    sget-object v1, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->NONE:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->RADIUS:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/lib/widget/AnimationGriditemView;->sRadiusModeTypeArray:[Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->NONE:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    iput-object p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mRadiusMode:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    const p1, 0x3f333333    # 0.7f

    iput p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mZoomOffset:F

    sget-object p1, Lcom/oneplus/lib/util/AnimatorUtils;->GRID_ITEM_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/AnimationGriditemView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->NONE:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    iput-object p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mRadiusMode:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    const p1, 0x3f333333    # 0.7f

    iput p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mZoomOffset:F

    sget-object p1, Lcom/oneplus/lib/util/AnimatorUtils;->GRID_ITEM_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/AnimationGriditemView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->NONE:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    iput-object p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mRadiusMode:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    const p1, 0x3f333333    # 0.7f

    iput p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mZoomOffset:F

    sget-object p1, Lcom/oneplus/lib/util/AnimatorUtils;->GRID_ITEM_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/AnimationGriditemView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object p1, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->NONE:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    iput-object p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mRadiusMode:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    const p1, 0x3f333333    # 0.7f

    iput p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mZoomOffset:F

    sget-object p1, Lcom/oneplus/lib/util/AnimatorUtils;->GRID_ITEM_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/AnimationGriditemView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f0d0176

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a02c3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f0a02c2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPCheckBox;

    iput-object v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mCheckBox:Lcom/oneplus/lib/widget/button/OPCheckBox;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0703fb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mRadius:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0048

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mDuration:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->AnimationGridItemView:[I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/oneplus/commonctrl/R$styleable;->AnimationGridItemView_android_src:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/AnimationGriditemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    sget-object v2, Lcom/oneplus/lib/widget/AnimationGriditemView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ltz v0, :cond_2

    sget-object v1, Lcom/oneplus/lib/widget/AnimationGriditemView;->sRadiusModeTypeArray:[Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/AnimationGriditemView;->setRadiusMode(Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mChecked:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mChecked:Z

    iget-object p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mCheckBox:Lcom/oneplus/lib/widget/button/OPCheckBox;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mChecked:Z

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/button/OPCheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mChecked:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mZoomOffset:F

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mZoomOffset:F

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setImageDrawable(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mCheckBox:Lcom/oneplus/lib/widget/button/OPCheckBox;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setOnCheckedChangeListener(Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setRadiusMode(Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mRadiusMode:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mRadiusMode:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    iget-object p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mRadiusMode:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    sget-object v0, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->RADIUS:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/oneplus/lib/widget/AnimationGriditemView$RoundRectOutlineProvider;

    iget v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mRadius:I

    invoke-direct {p1, v0}, Lcom/oneplus/lib/widget/AnimationGriditemView$RoundRectOutlineProvider;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/oneplus/lib/widget/AnimationGriditemView$RoundRectOutlineProvider;

    iget v2, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mRadius:I

    invoke-direct {v1, v2}, Lcom/oneplus/lib/widget/AnimationGriditemView$RoundRectOutlineProvider;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    :cond_1
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
