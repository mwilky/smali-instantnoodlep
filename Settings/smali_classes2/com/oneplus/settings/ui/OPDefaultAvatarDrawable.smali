.class public Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "OPDefaultAvatarDrawable.java"


# static fields
.field private static final CIRCLE_TEXTURE_RESOURCE_IDS:[I


# instance fields
.field private abridgeName:Ljava/lang/String;

.field private color:I

.field private final colors:Landroid/content/res/TypedArray;

.field private mContext:Landroid/content/Context;

.field private offset:F

.field private final paint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/Rect;

.field private texture:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->CIRCLE_TEXTURE_RESOURCE_IDS:[I

    return-void

    :array_0
    .array-data 4
        0x7f08058a
        0x7f08058b
        0x7f08058c
        0x7f08058d
        0x7f08058e
        0x7f08058f
        0x7f080590
        0x7f080591
        0x7f080592
        0x7f080593
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->offset:F

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030111

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->colors:Landroid/content/res/TypedArray;

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    const-string v1, "sans-serif-medium"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->colors:Landroid/content/res/TypedArray;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result p2

    rem-int/2addr p1, p2

    :goto_0
    const-string p2, "index:"

    const-string p3, "OPDefaultAvatarDrawable"

    invoke-static {p2, p1, p3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline31(Ljava/lang/String;ILjava/lang/String;)V

    if-ltz p1, :cond_1

    const/16 p2, 0xa

    if-lt p1, p2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    const/4 p2, 0x0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget-object v0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->CIRCLE_TEXTURE_RESOURCE_IDS:[I

    aget v0, v0, p1

    invoke-virtual {p3, v0, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->texture:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->colors:Landroid/content/res/TypedArray;

    iget-object p3, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->mContext:Landroid/content/Context;

    const v0, 0x7f06005b

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->color:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->texture:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->texture:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    const-string v2, "minDimension:"

    const-string v5, "LetterTileDrawable"

    invoke-static {v2, v1, v5}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline31(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v2, v5}, Lcom/oneplus/settings/utils/OPUtils;->sp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    const-string v2, "sans-serif"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->offset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    sub-float/2addr v4, v0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
