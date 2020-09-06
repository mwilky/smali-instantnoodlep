.class public Lcom/oneplus/lib/design/widget/BottomNavigationView;
.super Landroid/widget/LinearLayout;
.source "BottomNavigationView.java"

# interfaces
.implements Lcom/oneplus/lib/design/widget/Badge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;,
        Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;,
        Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# instance fields
.field private final menu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private menuInflater:Landroid/view/MenuInflater;

.field private final menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

.field private final presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f040072

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040072

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-direct {v1}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    new-instance v1, Lcom/oneplus/lib/design/widget/BottomNavigationMenu;

    invoke-direct {v1, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    new-instance v1, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-string v1, "ro.boot.project_name"

    invoke-static {v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAfter5T devices = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BottomNavigationView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    :goto_0
    move v1, v8

    goto :goto_1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x4589

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v9

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070142

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070493

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_2
    const/16 v1, 0x11

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setBottomNavigationMenuView(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v1, v8}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setId(I)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setPresenter(Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView:[I

    const v4, 0x7f1305ca

    const/4 v10, 0x2

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    const v2, 0x1010038

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    :goto_3
    const/4 v1, 0x4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemIconSize(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1, v9}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemTextAppearanceInactive(I)V

    :cond_4
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1, v9}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemTextAppearanceActive(I)V

    :cond_5
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    :cond_6
    invoke-virtual {v0, v8}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v8, v9}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/oneplus/support/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_7
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v7}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getInteger(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setLabelVisibilityMode(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v8}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    invoke-virtual {v0, v10, v9}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1, v9}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->inflateMenu(I)V

    :cond_8
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    new-instance v1, Lcom/oneplus/lib/design/widget/BottomNavigationView$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView$1;-><init>(Lcom/oneplus/lib/design/widget/BottomNavigationView;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->setCallback(Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    return-void

    :array_0
    .array-data 4
        0x8
        0x7
    .end array-data
.end method

.method static synthetic access$000(Lcom/oneplus/lib/design/widget/BottomNavigationView;)V
    .locals 0

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    return-object p0
.end method


# virtual methods
.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getItemBackgroundResource()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getItemBackgroundRes()I

    move-result p0

    return p0
.end method

.method public getItemIconSize()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getItemIconSize()I

    move-result p0

    return p0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getItemTextAppearanceActive()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getItemTextAppearanceActive()I

    move-result p0

    return p0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getItemTextAppearanceInactive()I

    move-result p0

    return p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getLabelVisibilityMode()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getLabelVisibilityMode()I

    move-result p0

    return p0
.end method

.method public getMaxItemCount()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-object p0
.end method

.method public getSelectedItemId()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getSelectedItemId()I

    move-result p0

    return p0
.end method

.method public inflateMenu(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->updateMenuView(Z)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;

    invoke-virtual {p1}, Lcom/oneplus/support/core/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object p1, p1, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v0, v1, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/support/annotation/GestureBarAdapterPolicy;->gestureButtonEnabled(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070493

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemHorizontalTranslationEnabled(Z)V

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemTextAppearanceActive(I)V

    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemTextAppearanceInactive(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setLabelVisibilityMode(I)V

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;)V
    .locals 0

    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .locals 0

    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/oneplus/lib/menu/MenuPresenter;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
