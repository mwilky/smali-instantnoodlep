.class public Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Lcom/oneplus/lib/widget/actionbar/DecorToolbar;


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTitleSet:Z

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->ActionBar:[I

    const v3, 0x7f040010

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v3, v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object p1

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xb

    if-eqz p2, :cond_e

    const/16 p2, 0x1f

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTitleSet:Z

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 p2, 0x1d

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iput-object p2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v3, p2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_2
    const/16 p2, 0x16

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/16 p2, 0x13

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    iput-object p2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateToolbarLogo()V

    :cond_4
    iget-object p2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    iput-object p2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateNavigationIcon()V

    :cond_5
    const/16 p2, 0x18

    invoke-virtual {p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    invoke-virtual {p1, v1, v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_8

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v1, p2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_6

    iget v3, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v3, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_6
    iput-object p2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz p2, :cond_7

    iget p2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_7
    iget p2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    :cond_8
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_android_height:I

    invoke-virtual {p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getLayoutDimension(II)I

    move-result p2

    if-lez p2, :cond_9

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p2, v1}, Landroid/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    const/16 p2, 0x9

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    if-gez p2, :cond_a

    if-ltz v1, :cond_b

    :cond_a
    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v3, p2, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setContentInsetsRelative(II)V

    :cond_b
    const/16 p2, 0x20

    invoke-virtual {p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_c

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    :cond_c
    const/16 p2, 0x1e

    invoke-virtual {p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_d

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    :cond_d
    invoke-virtual {p1, v2, v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_10

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v1, p2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setPopupTheme(I)V

    goto :goto_1

    :cond_e
    iget-object p2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_f

    const/16 v1, 0xf

    iget-object p2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    :cond_f
    iput v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    :cond_10
    :goto_1
    invoke-virtual {p1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    iget p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-nez p1, :cond_11

    goto :goto_3

    :cond_11
    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    iget-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-nez p1, :cond_12

    goto :goto_2

    :cond_12
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    iput-object v4, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    :cond_13
    :goto_3
    iget-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    new-instance p2, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;

    invoke-direct {p2, p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;-><init>(Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;)V

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateNavigationIcon()V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method private updateToolbarLogo()V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public setDisplayOptions(I)V
    .locals 3

    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    xor-int/2addr v0, p1

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateNavigationIcon()V

    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateToolbarLogo()V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_6

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateToolbarLogo()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateToolbarLogo()V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateToolbarLogo()V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateToolbarLogo()V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
