.class public Landroid/support/v4/widget/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/CircularProgressDrawable$Ring;
    }
.end annotation


# static fields
.field private static final COLORS:[I

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mFinishing:Z

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    new-instance p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-direct {p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;-><init>()V

    iput-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    iget-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    sget-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->COLORS:[I

    iput-object v0, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    const/high16 p1, 0x40200000    # 2.5f

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    iput p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    iget-object v0, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/v4/widget/CircularProgressDrawable$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$1;-><init>(Landroid/support/v4/widget/CircularProgressDrawable;Landroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    sget-object v1, Landroid/support/v4/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroid/support/v4/widget/CircularProgressDrawable$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$2;-><init>(Landroid/support/v4/widget/CircularProgressDrawable;Landroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Landroid/support/v4/widget/CircularProgressDrawable;FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/CircularProgressDrawable;FLandroid/support/v4/widget/CircularProgressDrawable$Ring;Z)V
    .locals 7

    iget-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    const v1, 0x3c23d70a    # 0.01f

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    iget p0, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    const p3, 0x3f4ccccd    # 0.8f

    div-float/2addr p0, p3

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-float p0, v2

    iget p3, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v0

    sub-float/2addr v0, v1

    iget v1, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    invoke-static {v0, v1, p1, p3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline0(FFFF)F

    move-result p3

    iput p3, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result p3

    iput p3, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    iget p3, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    invoke-static {p0, p3, p1, p3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline0(FFFF)F

    move-result p0

    iput p0, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-nez v2, :cond_1

    if-eqz p3, :cond_3

    :cond_1
    iget p3, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v3, p1, v2

    const v4, 0x3f4a3d71    # 0.79f

    if-gez v3, :cond_2

    div-float v0, p1, v2

    iget v2, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    sget-object v3, Landroid/support/v4/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_0

    :cond_2
    sub-float v3, p1, v2

    div-float/2addr v3, v2

    iget v2, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    add-float/2addr v2, v4

    sget-object v5, Landroid/support/v4/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v0, v3

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    sub-float v0, v2, v0

    :goto_0
    const v1, 0x3e570a3c    # 0.20999998f

    mul-float/2addr v1, p1

    add-float/2addr v1, p3

    const/high16 p3, 0x43580000    # 216.0f

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotationCount:F

    add-float/2addr p1, v3

    mul-float/2addr p1, p3

    iput v0, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    iput v2, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    iput v1, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    invoke-direct {p0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->setRotation(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/widget/CircularProgressDrawable;)F
    .locals 0

    iget p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotationCount:F

    return p0
.end method

.method static synthetic access$202(Landroid/support/v4/widget/CircularProgressDrawable;F)F
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotationCount:F

    return p1
.end method

.method static synthetic access$300(Landroid/support/v4/widget/CircularProgressDrawable;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    return p0
.end method

.method static synthetic access$302(Landroid/support/v4/widget/CircularProgressDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    return p1
.end method

.method private setRotation(F)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotation:F

    return-void
.end method

.method private setSizeParameters(FFFF)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p0

    iput p2, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    iget-object v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    mul-float/2addr p1, p0

    iput p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRingCenterRadius:F

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    mul-float/2addr p3, p0

    mul-float/2addr p4, p0

    float-to-int p0, p3

    iput p0, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    float-to-int p0, p4

    iput p0, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowHeight:I

    return-void
.end method

.method private updateRingColor(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V
    .locals 7

    const/high16 p0, 0x3f400000    # 0.75f

    cmpl-float v0, p1, p0

    if-lez v0, :cond_0

    sub-float/2addr p1, p0

    const/high16 p0, 0x3e800000    # 0.25f

    div-float/2addr p1, p0

    iget-object p0, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    iget v0, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    aget p0, p0, v0

    iget-object v0, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    iget v1, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    rem-int/2addr v1, v2

    aget v0, v0, v1

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v0, 0x8

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v4, v1

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v1, v4

    shl-int/lit8 v1, v1, 0x18

    sub-int/2addr v5, v2

    int-to-float v4, v5

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    sub-int/2addr v6, v3

    int-to-float v2, v6

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v3, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v1, v2

    sub-int/2addr v0, p0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/2addr p0, p1

    or-int/2addr p0, v1

    iput p0, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    goto :goto_0

    :cond_0
    iget-object p0, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    iget p1, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    aget p0, p0, p1

    iput p0, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    iget-object v7, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRingCenterRadius:F

    iget v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    add-float/2addr v2, v1

    const/4 v9, 0x0

    cmpg-float v1, v1, v9

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    iget v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v3, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v2, v1, v2

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-virtual {v7, v1, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v0, v2

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    add-float/2addr v3, v1

    mul-float/2addr v3, v2

    sub-float v10, v3, v0

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v1, v8

    invoke-virtual {v7, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v8

    iget-object v5, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    neg-float v1, v1

    invoke-virtual {v7, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move-object v2, v7

    move v3, v0

    move v4, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-boolean v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    :goto_0
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v1, v8

    iget v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    iget-object v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v3, v9, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v8

    iget v6, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    add-float/2addr v4, v1

    sub-float/2addr v4, v2

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v2, v8

    add-float/2addr v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->offset(FF)V

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    add-float/2addr v0, v10

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    iget p0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    iput p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowEnabled(Z)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    iget-boolean v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowScale(F)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    iget v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    iput p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    iget-object v0, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    iput-object p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    iput p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    iput p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    iput p2, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStyle(I)V
    .locals 3

    if-nez p1, :cond_0

    const/high16 p1, 0x41300000    # 11.0f

    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v4/widget/CircularProgressDrawable;->setSizeParameters(FFFF)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40f00000    # 7.5f

    const/high16 v0, 0x40200000    # 2.5f

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v4/widget/CircularProgressDrawable;->setSizeParameters(FFFF)V

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    iget v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    iget v2, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    iput v2, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    iget v3, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    iput v3, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotation:F

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    iput v0, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    iput v0, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    iput v0, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    iput v0, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    iput v0, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    iput v0, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
