.class public Lcom/android/settingslib/RestrictedLockImageSpan;
.super Landroid/text/style/ImageSpan;
.source "RestrictedLockImageSpan.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mExtraPadding:F

.field private final mRestrictedPadlock:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/android/settingslib/RestrictedLockImageSpan;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/settingslib/RestrictedLockImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070533

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settingslib/RestrictedLockImageSpan;->mExtraPadding:F

    iget-object p1, p0, Lcom/android/settingslib/RestrictedLockImageSpan;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getRestrictedPadlock(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/RestrictedLockImageSpan;->mRestrictedPadlock:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    iget-object p2, p0, Lcom/android/settingslib/RestrictedLockImageSpan;->mRestrictedPadlock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget p0, p0, Lcom/android/settingslib/RestrictedLockImageSpan;->mExtraPadding:F

    add-float/2addr p5, p0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p8, p0

    int-to-float p0, p8

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p0, p3

    invoke-virtual {p1, p5, p0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/RestrictedLockImageSpan;->mRestrictedPadlock:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/text/style/ImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/android/settingslib/RestrictedLockImageSpan;->mExtraPadding:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p0, p2

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method
