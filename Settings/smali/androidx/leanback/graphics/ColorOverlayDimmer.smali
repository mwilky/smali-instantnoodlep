.class public final Landroidx/leanback/graphics/ColorOverlayDimmer;
.super Ljava/lang/Object;
.source "ColorOverlayDimmer.java"


# instance fields
.field private final mActiveLevel:F

.field private mAlpha:I

.field private mAlphaFloat:F

.field private final mDimmedLevel:F

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>(IFF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    move p2, v0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-gez v2, :cond_1

    move p2, v1

    :cond_1
    cmpl-float v2, p3, v0

    if-lez v2, :cond_2

    move p3, v0

    :cond_2
    cmpg-float v2, p3, v1

    if-gez v2, :cond_3

    move p3, v1

    :cond_3
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroidx/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v1, v2, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iget-object v1, p0, Landroidx/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p2, p0, Landroidx/leanback/graphics/ColorOverlayDimmer;->mActiveLevel:F

    iput p3, p0, Landroidx/leanback/graphics/ColorOverlayDimmer;->mDimmedLevel:F

    invoke-virtual {p0, v0}, Landroidx/leanback/graphics/ColorOverlayDimmer;->setActiveLevel(F)V

    return-void
.end method

.method public static createDefault(Landroid/content/Context;)Landroidx/leanback/graphics/ColorOverlayDimmer;
    .locals 6

    sget-object v0, Landroidx/leanback/R$styleable;->LeanbackTheme:[I

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x7f090010

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    const/16 v4, 0x22

    invoke-virtual {v0, v4, v3, v3, v2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f090011

    invoke-virtual {p0, v4, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p0

    const/16 v4, 0x23

    invoke-virtual {v0, v4, v3, v3, p0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroidx/leanback/graphics/ColorOverlayDimmer;

    invoke-direct {v0, v1, v2, p0}, Landroidx/leanback/graphics/ColorOverlayDimmer;-><init>(IFF)V

    return-object v0
.end method


# virtual methods
.method public getPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Landroidx/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public setActiveLevel(F)V
    .locals 2

    iget v0, p0, Landroidx/leanback/graphics/ColorOverlayDimmer;->mDimmedLevel:F

    iget v1, p0, Landroidx/leanback/graphics/ColorOverlayDimmer;->mActiveLevel:F

    invoke-static {v1, v0, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline0(FFFF)F

    move-result p1

    iput p1, p0, Landroidx/leanback/graphics/ColorOverlayDimmer;->mAlphaFloat:F

    iget p1, p0, Landroidx/leanback/graphics/ColorOverlayDimmer;->mAlphaFloat:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Landroidx/leanback/graphics/ColorOverlayDimmer;->mAlpha:I

    iget-object p1, p0, Landroidx/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Landroidx/leanback/graphics/ColorOverlayDimmer;->mAlpha:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
