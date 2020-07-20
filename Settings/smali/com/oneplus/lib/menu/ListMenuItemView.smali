.class public Lcom/oneplus/lib/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuView$ItemView;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDoubleLineHeight:I

.field private mForceShowIcon:Z

.field private mIconSize:I

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

.field private mMarginLeft2:I

.field private mMarginLeft4:I

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mSubMenuArrow:Landroid/graphics/drawable/Drawable;

.field private mSubMenuArrowView:Landroid/widget/ImageView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleLayout:Landroid/widget/RelativeLayout;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10104f2

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->MenuView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0703ca

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mMarginLeft2:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0703cc

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mMarginLeft4:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07038d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mIconSize:I

    const/4 p3, 0x5

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x1

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mTextAppearance:I

    const/16 p3, 0x8

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    iput-object p1, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    const/4 p3, 0x7

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0703b3

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mDoubleLineHeight:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private insertCheckBox()V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/lib/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d015d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/lib/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0160

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setSubMenuArrowVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    return-object p0
.end method

.method public initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitleForItemView(Lcom/oneplus/lib/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/menu/ListMenuItemView;->setCheckable(Z)V

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result p2

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/oneplus/lib/menu/ListMenuItemView;->setShortcut(ZC)V

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/oneplus/lib/menu/ListMenuItemView;->setSubMenuArrowVisible(Z)V

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0741

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    const v0, 0x7f0a065e

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    const v0, 0x7f0a06be

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v0, 0x7f0a0745

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mTitleLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mDoubleLineHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCheckable(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/lib/menu/ListMenuItemView;->insertRadioButton()V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/lib/menu/ListMenuItemView;->insertCheckBox()V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    :goto_0
    const/16 v2, 0x8

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->isChecked()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz p1, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    move p0, v2

    :goto_1
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result p1

    if-eq p1, p0, :cond_5

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :cond_5
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result p0

    if-eq p0, v2, :cond_8

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_7
    iget-object p0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/menu/ListMenuItemView;->insertRadioButton()V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/lib/menu/ListMenuItemView;->insertCheckBox()V

    :cond_2
    iget-object p0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    iget-object v0, v0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_3

    if-nez p1, :cond_3

    iget-boolean v2, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/oneplus/lib/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d015e

    invoke-virtual {v2, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mTitleLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mMarginLeft4:I

    iget v4, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mMarginLeft2:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mIconSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    if-nez p1, :cond_1

    iget-object p2, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p2, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-eq p2, p1, :cond_2

    iget-object p0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
