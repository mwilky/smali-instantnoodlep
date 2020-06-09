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


# static fields
.field private static TAG:Ljava/lang/String; = "BottomNavigationView"


# instance fields
.field private final menu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private menuInflater:Landroid/view/MenuInflater;

.field private final menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

.field private final presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

.field private reselectedListener:Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

.field private selectedListener:Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$attr;->bottomNavigationStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenu;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->isAfter5T()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->op_bottom_navigation_height_with_bottom_softkey_navigation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setBottomNavigationMenuView(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setId(I)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setPresenter(Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    sget-object v8, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView:[I

    sget v10, Lcom/oneplus/commonctrl/R$style;->Widget_Design_BottomNavigationView:I

    const/4 v2, 0x2

    new-array v11, v2, [I

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    const/4 v4, 0x0

    aput v2, v11, v4

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    aput v2, v11, v3

    move-object v6, p1

    move-object v7, p2

    move v9, p3

    invoke-static/range {v6 .. v11}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object p2

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {p2, v2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    const v2, 0x1010038

    invoke-virtual {p3, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    sget p3, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemIconSize:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_icon_size:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2, p3, v2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemIconSize(I)V

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    invoke-virtual {p2, p3, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemTextAppearanceInactive(I)V

    :cond_2
    sget p3, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_3

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    invoke-virtual {p2, p3, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemTextAppearanceActive(I)V

    :cond_3
    sget p3, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_4

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    sget p3, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_elevation:I

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_elevation:I

    invoke-virtual {p2, p3, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p0, p3}, Lcom/oneplus/support/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_5
    sget p3, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_labelVisibilityMode:I

    invoke-virtual {p2, p3, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setLabelVisibilityMode(I)V

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemHorizontalTranslationEnabled:I

    invoke-virtual {p2, p3, v3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemBackground:I

    invoke-virtual {p2, p3, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result p3

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v1, p3}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_6

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {p2, p3, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->inflateMenu(I)V

    :cond_6
    invoke-virtual {p2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    iget-object p2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-ge p2, p3, :cond_7

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->addCompatibilityTopDivider(Landroid/content/Context;)V

    :cond_7
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    new-instance p2, Lcom/oneplus/lib/design/widget/BottomNavigationView$1;

    invoke-direct {p2, p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView$1;-><init>(Lcom/oneplus/lib/design/widget/BottomNavigationView;)V

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/menu/MenuBuilder;->setCallback(Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/design/widget/BottomNavigationView;)Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->reselectedListener:Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/design/widget/BottomNavigationView;)Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->selectedListener:Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    return-object p0
.end method

.method private addCompatibilityTopDivider(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oneplus/commonctrl/R$color;->design_bottom_navigation_shadow_color:I

    invoke-static {p1, v1}, Lcom/oneplus/support/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_shadow_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

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

.method private isAfter5T()Z
    .locals 3

    const-string p0, "ro.boot.project_name"

    invoke-static {p0}, Lcom/oneplus/lib/util/ReflectUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAfter5T devices = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x4589

    if-le p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
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

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->op_bottom_navigation_height_with_bottom_softkey_navigation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
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
