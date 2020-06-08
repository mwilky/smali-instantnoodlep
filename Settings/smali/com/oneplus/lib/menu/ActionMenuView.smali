.class public Lcom/oneplus/lib/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;
.implements Lcom/oneplus/lib/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;,
        Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;,
        Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuPresenterCallback;,
        Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;,
        Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

.field mMenuBuilderCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z

.field private mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMinCellSize:I

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mGeneratedItemPadding:I

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupContext:Landroid/content/Context;

    iput p2, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupTheme:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/menu/ActionMenuView;)Lcom/oneplus/lib/widget/actionbar/Toolbar;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    return-object p0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    instance-of p4, p0, Lcom/oneplus/lib/menu/ActionMenuItemView;

    if-eqz p4, :cond_0

    move-object p4, p0

    check-cast p4, Lcom/oneplus/lib/menu/ActionMenuItemView;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/oneplus/lib/menu/ActionMenuItemView;->hasText()Z

    move-result p4

    if-eqz p4, :cond_1

    move p4, v1

    goto :goto_1

    :cond_1
    move p4, v2

    :goto_1
    const/4 v3, 0x2

    if-lez p2, :cond_5

    if-eqz p4, :cond_2

    if-lt p2, v3, :cond_5

    :cond_2
    mul-int/2addr p2, p1

    const/high16 v4, -0x80000000

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int v4, p2, p1

    rem-int/2addr p2, p1

    if-eqz p2, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    if-eqz p4, :cond_4

    if-ge v4, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    iget-boolean p2, v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez p2, :cond_6

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    iput-boolean v1, v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expandable:Z

    iput v3, v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr p1, v3

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    return v3
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    instance-of p0, p1, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dismissPopupMenus()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideSubMenus()Z

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .locals 1

    new-instance p0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .locals 1

    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .locals 0

    if-eqz p1, :cond_2

    instance-of p0, p1, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;-><init>(Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget p1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz p1, :cond_1

    const/16 p1, 0x10

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateOverflowButtonLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    new-instance v2, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;-><init>(Lcom/oneplus/lib/menu/ActionMenuView;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->setCallback(Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    new-instance v1, Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1}, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iput-object p0, v0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    iget-object v0, v0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ActionMenuView;->initialize(Lcom/oneplus/lib/menu/MenuBuilder;)V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-object p0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPopupTheme()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupTheme:I

    return p0
.end method

.method public getWindowAnimations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    if-ge p1, p0, :cond_1

    instance-of p0, v1, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;

    if-eqz p0, :cond_1

    check-cast v1, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v1}, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result p0

    or-int/2addr v0, p0

    :cond_1
    if-lez p1, :cond_2

    instance-of p0, v2, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;

    if-eqz p0, :cond_2

    check-cast v2, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v2}, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result p0

    or-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initialize(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/oneplus/lib/menu/MenuPresenter;I)Z

    move-result p0

    return p0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 3

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOverflowReserved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mReserveOverflow:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->updateMenuView(Z)V

    iget-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->dismissPopupMenus()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItems:Z

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p2

    sub-int p2, p4, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p3

    const/4 v0, 0x0

    move v3, p2

    move p2, v0

    move v1, p2

    move v2, v1

    :goto_0
    const/16 v4, 0x8

    const/4 v5, 0x1

    if-ge p2, p1, :cond_5

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    iget-boolean v7, v4, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/menu/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v1, v1, 0x0

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v8

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v4

    add-int v4, v8, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v4, v8, v4

    sub-int v8, v4, v1

    :goto_1
    div-int/lit8 v9, v7, 0x2

    sub-int v9, p5, v9

    add-int/2addr v7, v9

    invoke-virtual {v6, v8, v9, v4, v7}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v3, v1

    move v1, v5

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v4

    sub-int/2addr v3, v5

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/menu/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v4

    add-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    if-ne p1, v5, :cond_6

    if-nez v1, :cond_6

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p4, p4, 0x2

    div-int/lit8 p3, p1, 0x2

    sub-int/2addr p4, p3

    div-int/lit8 p3, p2, 0x2

    sub-int/2addr p5, p3

    add-int/2addr p1, p4

    add-int/2addr p2, p5

    invoke-virtual {p0, p4, p5, p1, p2}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    xor-int/lit8 p2, v1, 0x1

    sub-int/2addr v2, p2

    if-lez v2, :cond_7

    div-int p2, v3, v2

    goto :goto_3

    :cond_7
    move p2, v0

    :goto_3
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-eqz p3, :cond_a

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    :goto_4
    if-ge v0, p1, :cond_d

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v4, :cond_9

    iget-boolean v2, v1, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p3, v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v5, v3, 0x2

    sub-int v5, p5, v5

    sub-int v6, p3, v2

    add-int/2addr v3, v5

    invoke-virtual {p4, v6, v5, p3, v3}, Landroid/view/View;->layout(IIII)V

    iget p4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, p4

    add-int/2addr v2, p2

    sub-int/2addr p3, v2

    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p3

    :goto_6
    if-ge v0, p1, :cond_d

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v4, :cond_c

    iget-boolean v2, v1, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_b
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr p3, v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v5, v3, 0x2

    sub-int v5, p5, v5

    add-int v6, p3, v2

    add-int/2addr v3, v5

    invoke-virtual {p4, p3, v5, v6, v3}, Landroid/view/View;->layout(IIII)V

    iget p4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, p4

    add-int/2addr v2, p2

    add-int/2addr v2, p3

    move p3, v2

    :cond_c
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .locals 30

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItems:Z

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItems:Z

    iget-boolean v2, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItems:Z

    if-eq v1, v2, :cond_1

    iput v4, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItemsWidth:I

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-boolean v2, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v2, :cond_2

    iget v6, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v6, :cond_2

    iput v1, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItemsWidth:I

    invoke-virtual {v2, v5}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    iget-boolean v2, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v2, :cond_27

    if-lez v1, :cond_27

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v7

    const/4 v7, -0x2

    move/from16 v10, p2

    invoke-static {v10, v9, v7}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v7

    sub-int/2addr v2, v8

    iget v8, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mMinCellSize:I

    div-int v10, v2, v8

    rem-int v11, v2, v8

    if-nez v10, :cond_3

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    goto/16 :goto_17

    :cond_3
    div-int/2addr v11, v10

    add-int/2addr v11, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    move v3, v4

    move v12, v3

    move v14, v12

    move v15, v14

    move/from16 v17, v15

    move/from16 v16, v10

    const-wide/16 v18, 0x0

    move/from16 v10, v17

    :goto_1
    if-ge v10, v8, :cond_b

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v4, 0x8

    if-ne v5, v4, :cond_4

    move/from16 v20, v6

    goto :goto_5

    :cond_4
    instance-of v4, v13, Lcom/oneplus/lib/menu/ActionMenuItemView;

    add-int/lit8 v15, v15, 0x1

    if-eqz v4, :cond_5

    iget v5, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v20, v6

    const/4 v6, 0x0

    invoke-virtual {v13, v5, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_5
    move/from16 v20, v6

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    iput-boolean v6, v5, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expanded:Z

    iput v6, v5, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->extraPixels:I

    iput v6, v5, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    iput-boolean v6, v5, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expandable:Z

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    if-eqz v4, :cond_6

    move-object v4, v13

    check-cast v4, Lcom/oneplus/lib/menu/ActionMenuItemView;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/ActionMenuItemView;->hasText()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, v5, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    iget-boolean v4, v5, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    move/from16 v4, v16

    :goto_4
    invoke-static {v13, v11, v4, v7, v9}, Lcom/oneplus/lib/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-boolean v6, v5, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v6, :cond_8

    add-int/lit8 v17, v17, 0x1

    :cond_8
    iget-boolean v5, v5, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_9

    const/4 v14, 0x1

    :cond_9
    sub-int v16, v16, v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v6, :cond_a

    shl-int v4, v6, v10

    int-to-long v12, v4

    or-long v18, v18, v12

    :cond_a
    move v12, v5

    :goto_5
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v20

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_1

    :cond_b
    move/from16 v20, v6

    const/4 v4, 0x2

    if-eqz v14, :cond_c

    if-ne v15, v4, :cond_c

    const/4 v5, 0x1

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    :goto_6
    move/from16 v6, v16

    const/4 v9, 0x0

    :goto_7
    if-lez v17, :cond_16

    if-lez v6, :cond_16

    const v10, 0x7fffffff

    move v4, v10

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-wide/16 v21, 0x0

    :goto_8
    if-ge v10, v8, :cond_10

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    move/from16 v24, v9

    move-object/from16 v9, v23

    check-cast v9, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move/from16 v23, v12

    iget-boolean v12, v9, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v12, :cond_e

    :cond_d
    move v9, v1

    move/from16 v25, v2

    goto :goto_9

    :cond_e
    iget v9, v9, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v9, v4, :cond_f

    const/4 v12, 0x1

    shl-int v4, v12, v10

    int-to-long v12, v4

    move/from16 v25, v2

    move v4, v9

    move-wide/from16 v21, v12

    const/4 v13, 0x1

    move v9, v1

    goto :goto_9

    :cond_f
    if-ne v9, v4, :cond_d

    const/4 v9, 0x1

    shl-int v12, v9, v10

    move v9, v1

    move/from16 v25, v2

    int-to-long v1, v12

    or-long v1, v21, v1

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v21, v1

    :goto_9
    add-int/lit8 v10, v10, 0x1

    move v1, v9

    move/from16 v12, v23

    move/from16 v9, v24

    move/from16 v2, v25

    goto :goto_8

    :cond_10
    move/from16 v25, v2

    move/from16 v24, v9

    move/from16 v23, v12

    move v9, v1

    or-long v18, v18, v21

    if-le v13, v6, :cond_11

    goto :goto_d

    :cond_11
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v8, :cond_15

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    const/4 v12, 0x1

    shl-int v13, v12, v1

    int-to-long v12, v13

    and-long v26, v21, v12

    const-wide/16 v28, 0x0

    cmp-long v24, v26, v28

    if-nez v24, :cond_13

    iget v2, v10, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v2, v4, :cond_12

    or-long v18, v18, v12

    :cond_12
    move/from16 v24, v4

    goto :goto_c

    :cond_13
    if-eqz v5, :cond_14

    iget-boolean v12, v10, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v12, :cond_14

    const/4 v12, 0x1

    if-ne v6, v12, :cond_14

    iget v13, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mGeneratedItemPadding:I

    add-int v12, v13, v11

    move/from16 v24, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v12, v4, v13, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b

    :cond_14
    move/from16 v24, v4

    :goto_b
    iget v2, v10, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v10, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    iput-boolean v4, v10, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expanded:Z

    add-int/lit8 v6, v6, -0x1

    :goto_c
    add-int/lit8 v1, v1, 0x1

    move/from16 v4, v24

    goto :goto_a

    :cond_15
    move v1, v9

    move/from16 v12, v23

    move/from16 v2, v25

    const/4 v4, 0x2

    const/4 v9, 0x1

    goto/16 :goto_7

    :cond_16
    move/from16 v25, v2

    move/from16 v24, v9

    move/from16 v23, v12

    move v9, v1

    :goto_d
    const/4 v1, 0x1

    if-nez v14, :cond_17

    if-ne v15, v1, :cond_17

    move v2, v1

    goto :goto_e

    :cond_17
    const/4 v2, 0x0

    :goto_e
    if-lez v6, :cond_22

    const-wide/16 v4, 0x0

    cmp-long v10, v18, v4

    if-eqz v10, :cond_22

    sub-int/2addr v15, v1

    if-lt v6, v15, :cond_18

    if-nez v2, :cond_18

    if-le v3, v1, :cond_22

    :cond_18
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    int-to-float v1, v1

    if-nez v2, :cond_1a

    const-wide/16 v2, 0x1

    and-long v2, v18, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    iget-boolean v2, v2, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v2, :cond_19

    sub-float/2addr v1, v3

    :cond_19
    add-int/lit8 v2, v8, -0x1

    const/4 v4, 0x1

    shl-int v5, v4, v2

    int-to-long v4, v5

    and-long v4, v18, v4

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-eqz v4, :cond_1a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    iget-boolean v2, v2, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v2, :cond_1a

    sub-float/2addr v1, v3

    :cond_1a
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1b

    mul-int/2addr v6, v11

    int-to-float v2, v6

    div-float/2addr v2, v1

    float-to-int v4, v2

    goto :goto_f

    :cond_1b
    const/4 v4, 0x0

    :goto_f
    move/from16 v5, v24

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v8, :cond_23

    const/4 v2, 0x1

    shl-int v3, v2, v1

    int-to-long v2, v3

    and-long v2, v18, v2

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-nez v2, :cond_1c

    goto :goto_11

    :cond_1c
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    instance-of v2, v2, Lcom/oneplus/lib/menu/ActionMenuItemView;

    if-eqz v2, :cond_1e

    iput v4, v3, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v1, :cond_1d

    iget-boolean v2, v3, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v2, :cond_1d

    neg-int v2, v4

    const/4 v5, 0x2

    div-int/2addr v2, v5

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_1d
    const/4 v5, 0x1

    :goto_11
    const/4 v6, 0x1

    const/4 v10, 0x2

    goto :goto_12

    :cond_1e
    iget-boolean v2, v3, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v2, :cond_1f

    iput v4, v3, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expanded:Z

    neg-int v2, v4

    const/4 v10, 0x2

    div-int/2addr v2, v10

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v5, v6

    goto :goto_12

    :cond_1f
    const/4 v6, 0x1

    const/4 v10, 0x2

    if-eqz v1, :cond_20

    div-int/lit8 v2, v4, 0x2

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_20
    add-int/lit8 v2, v8, -0x1

    if-eq v1, v2, :cond_21

    div-int/lit8 v2, v4, 0x2

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_21
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_22
    move/from16 v5, v24

    :cond_23
    if-eqz v5, :cond_25

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v8, :cond_25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    iget-boolean v4, v3, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v4, :cond_24

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_14

    :cond_24
    iget v4, v3, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v4, v11

    iget v3, v3, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v4, v7}, Landroid/view/View;->measure(II)V

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_25
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v9, v3, :cond_26

    move/from16 v1, v23

    goto :goto_15

    :cond_26
    move/from16 v1, v20

    :goto_15
    move/from16 v2, v25

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    goto :goto_17

    :cond_27
    move/from16 v10, p2

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_28

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_28
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :goto_17
    return-void
.end method

.method public peekMenu()Lcom/oneplus/lib/menu/MenuBuilder;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-object p0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    return-void
.end method

.method public setMenuCallbacks(Lcom/oneplus/lib/menu/MenuPresenter$Callback;Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    iput-object p2, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenuBuilderCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mOnMenuItemClickListener:Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupTheme:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupContext:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPresenter(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iput-object p0, p1, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    iget-object p1, p1, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->initialize(Lcom/oneplus/lib/menu/MenuBuilder;)V

    return-void
.end method

.method public setToolbar(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
