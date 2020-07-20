.class public Lcom/google/android/setupdesign/SetupWizardLayout;
.super Lcom/google/android/setupcompat/internal/TemplateLayout;
.source "SetupWizardLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x0

    const v0, 0x7f040480

    invoke-direct {p0, p1, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x0

    const p2, 0x7f040480

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f040480

    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 7

    const-class v0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;

    new-instance v1, Lcom/google/android/setupcompat/template/SystemNavBarMixin;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/view/Window;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    new-instance v1, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupdesign/template/HeaderMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    new-instance v1, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-direct {v1, p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    const-class v0, Lcom/google/android/setupdesign/template/NavigationBarMixin;

    new-instance v1, Lcom/google/android/setupdesign/template/NavigationBarMixin;

    invoke-direct {v1, p0}, Lcom/google/android/setupdesign/template/NavigationBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    new-instance v0, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-direct {v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;-><init>()V

    const-class v1, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    invoke-virtual {p0}, Lcom/google/android/setupdesign/SetupWizardLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;

    invoke-direct {v2, v0, v1}, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/widget/ScrollView;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudSetupWizardLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudSetupWizardLayout_sudBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setBackgroundTile(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v1, 0x2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz p2, :cond_7

    if-eqz v3, :cond_7

    const v4, 0x7f0a06d1

    invoke-virtual {p0, v4}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/setupdesign/view/Illustration;

    if-eqz v5, :cond_7

    check-cast v4, Lcom/google/android/setupdesign/view/Illustration;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05005d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_6

    instance-of v5, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_4

    move-object v5, v3

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    :cond_4
    instance-of v5, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_5

    move-object v5, p2

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v6, 0x33

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    :cond_5
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    new-array v6, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v6, v2

    aput-object p2, v6, v0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/LayerDrawable;->setAutoMirrored(Z)V

    move-object p2, v5

    goto :goto_1

    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :goto_1
    invoke-virtual {v4, p2}, Lcom/google/android/setupdesign/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_2
    const/4 p2, -0x1

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-ne v1, p2, :cond_8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f07058e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_8
    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/SetupWizardLayout;->setDecorPaddingTop(I)V

    const/4 p2, 0x4

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    cmpl-float v1, p2, v1

    if-nez v1, :cond_9

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705b2

    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    :cond_9
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setIllustrationAspectRatio(F)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setBackgroundTile(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    const p1, 0x7f0a06d0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationBar()Lcom/google/android/setupdesign/view/NavigationBar;
    .locals 1

    const-class v0, Lcom/google/android/setupdesign/template/NavigationBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/NavigationBarMixin;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/NavigationBarMixin;->getNavigationBar()Lcom/google/android/setupdesign/view/NavigationBar;

    move-result-object p0

    return-object p0
.end method

.method public getProgressBarColor()Landroid/content/res/ColorStateList;
    .locals 1

    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 1

    const v0, 0x7f0a06c7

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ScrollView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isProgressBarShown()Z
    .locals 1

    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->isShown()Z

    move-result p0

    return p0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    const p2, 0x7f0d0343

    :cond_0
    const v0, 0x7f130423

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;

    if-nez v0, :cond_0

    const-string v0, "Ignoring restore instance state "

    const-string v1, "SetupWizardLayout"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline37(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->setProgressBarShown(Z)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/google/android/setupdesign/SetupWizardLayout;->isProgressBarShown()Z

    move-result p0

    iput-boolean p0, v1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    return-object v1
.end method

.method public setBackgroundTile(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->setBackgroundTile(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDecorPaddingTop(I)V
    .locals 3

    const v0, 0x7f0a06d1

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setHeaderText(I)V
    .locals 1

    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1

    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setIllustration(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const v0, 0x7f0a06d1

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/setupdesign/view/Illustration;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/setupdesign/view/Illustration;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setIllustrationAspectRatio(F)V
    .locals 1

    const v0, 0x7f0a06d1

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/setupdesign/view/Illustration;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/setupdesign/view/Illustration;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/Illustration;->setAspectRatio(F)V

    :cond_0
    return-void
.end method

.method public setLayoutBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const v0, 0x7f0a06d1

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setProgressBarColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setProgressBarShown(Z)V
    .locals 1

    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->setShown(Z)V

    return-void
.end method
