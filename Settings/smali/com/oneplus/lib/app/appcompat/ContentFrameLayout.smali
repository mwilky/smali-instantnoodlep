.class public Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ContentFrameLayout.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/DecorContentParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;
    }
.end annotation


# instance fields
.field private final mDecorPadding:Landroid/graphics/Rect;

.field private mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mMinWidthMajor:Landroid/util/TypedValue;

.field private mMinWidthMinor:Landroid/util/TypedValue;

.field private mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public dispatchFitSystemWindows(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public getDecorToolbar()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getSupportWrap()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object p0

    return-object p0
.end method

.method public getFixedHeightMajor()Landroid/util/TypedValue;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    return-object p0
.end method

.method public getFixedHeightMinor()Landroid/util/TypedValue;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    return-object p0
.end method

.method public getFixedWidthMajor()Landroid/util/TypedValue;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    return-object p0
.end method

.method public getFixedWidthMinor()Landroid/util/TypedValue;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    return-object p0
.end method

.method public getMinWidthMajor()Landroid/util/TypedValue;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    return-object p0
.end method

.method public getMinWidthMinor()Landroid/util/TypedValue;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/high16 v8, -0x80000000

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v2, v8, :cond_4

    if-eqz v1, :cond_1

    iget-object v10, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object v10, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    :goto_1
    if-eqz v10, :cond_4

    iget v11, v10, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_4

    if-ne v11, v7, :cond_2

    invoke-virtual {v10, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v10

    :goto_2
    float-to-int v10, v10

    goto :goto_3

    :cond_2
    if-ne v11, v6, :cond_3

    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v11

    int-to-float v11, v11

    invoke-virtual {v10, v12, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v10

    goto :goto_2

    :cond_3
    move v10, v4

    :goto_3
    if-lez v10, :cond_4

    iget-object v11, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v11

    sub-int/2addr v10, v12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move v10, p1

    move p1, v3

    goto :goto_4

    :cond_4
    move v10, p1

    move p1, v4

    :goto_4
    if-ne v5, v8, :cond_8

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_5

    :cond_5
    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    :goto_5
    if-eqz v5, :cond_8

    iget v11, v5, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_8

    if-ne v11, v7, :cond_6

    invoke-virtual {v5, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v5

    :goto_6
    float-to-int v5, v5

    goto :goto_7

    :cond_6
    if-ne v11, v6, :cond_7

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v11

    int-to-float v11, v11

    invoke-virtual {v5, v12, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    goto :goto_6

    :cond_7
    move v5, v4

    :goto_7
    if-lez v5, :cond_8

    iget-object v11, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->top:I

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v11

    sub-int/2addr v5, v12

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_8
    invoke-super {p0, v10, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    if-nez p1, :cond_d

    if-ne v2, v8, :cond_d

    if-eqz v1, :cond_9

    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    goto :goto_8

    :cond_9
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    :goto_8
    if-eqz p1, :cond_d

    iget v1, p1, Landroid/util/TypedValue;->type:I

    if-eqz v1, :cond_d

    if-ne v1, v7, :cond_a

    invoke-virtual {p1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    :goto_9
    float-to-int p1, p1

    goto :goto_a

    :cond_a
    if-ne v1, v6, :cond_b

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    goto :goto_9

    :cond_b
    move p1, v4

    :goto_a
    if-lez p1, :cond_c

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    :cond_c
    if-ge v5, p1, :cond_d

    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_b

    :cond_d
    move v3, v4

    :goto_b
    if-eqz v3, :cond_e

    invoke-super {p0, v10, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_e
    return-void
.end method

.method pullChildren()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getDecorToolbar()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    return-void
.end method

.method public setAttachListener(Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;)V
    .locals 0

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setIcon(I)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setLogo(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setLogo(I)V

    :cond_0
    return-void
.end method

.method public setSupportToolbar(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    return-void
.end method

.method public setUiOptions(I)V
    .locals 0

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setWindowCallback(Landroid/view/Window$Callback;)V

    :cond_0
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->pullChildren()V

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method