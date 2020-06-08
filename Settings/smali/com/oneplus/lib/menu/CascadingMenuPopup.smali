.class public Lcom/oneplus/lib/menu/CascadingMenuPopup;
.super Lcom/oneplus/lib/menu/MenuPopup;
.source "CascadingMenuPopup.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    }
.end annotation


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasXOffset:Z

.field private mHasYOffset:Z

.field private mLastPosition:I

.field private final mMenuItemHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

.field private final mMenuMaxWidth:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPendingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/menu/MenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

.field private mRawDropDownGravity:I

.field mShouldCloseImmediately:Z

.field private mShowTitle:Z

.field final mShowingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field mShownAnchorView:Landroid/view/View;

.field final mSubMenuHoverHandler:Landroid/os/Handler;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/lib/menu/MenuPopup;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    new-instance v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$1;-><init>(Lcom/oneplus/lib/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$2;-><init>(Lcom/oneplus/lib/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;-><init>(Lcom/oneplus/lib/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mMenuItemHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iput v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput p3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    iput p4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPopupStyleRes:I

    iput-boolean p5, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mOverflowOnly:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mForceShowIcon:Z

    iget-object p2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    move p3, v0

    :cond_0
    iput p3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    const p3, 0x7f07048f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p0
.end method

.method static synthetic access$002(Lcom/oneplus/lib/menu/CascadingMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/lib/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method private showMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 14

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/menu/MenuAdapter;

    iget-boolean v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mOverflowOnly:Z

    invoke-direct {v1, p1, v0, v2}, Lcom/oneplus/lib/menu/MenuAdapter;-><init>(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mForceShowIcon:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/menu/MenuAdapter;->setForceShowIcon(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/oneplus/lib/menu/MenuPopup;->shouldPreserveIconSpacing(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuAdapter;->setForceShowIcon(Z)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4}, Lcom/oneplus/lib/menu/MenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v2

    new-instance v4, Lcom/oneplus/lib/menu/MenuPopupWindow;

    iget-object v6, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    iget v8, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPopupStyleRes:I

    invoke-direct {v4, v6, v5, v7, v8}, Lcom/oneplus/lib/menu/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget-object v6, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mMenuItemHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    invoke-virtual {v4, v6}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setHoverListener(Lcom/oneplus/lib/menu/MenuItemHoverListener;)V

    invoke-virtual {v4, p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v4, p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v6, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4, v6}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget v6, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v4, v6}, Lcom/oneplus/lib/widget/ListPopupWindow;->setDropDownGravity(I)V

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/ListPopupWindow;->setModal(Z)V

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/oneplus/lib/widget/ListPopupWindow;->setInputMethodMode(I)V

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/ListPopupWindow;->setContentWidth(I)V

    iget v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setDropDownGravity(I)V

    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x0

    if-lez v1, :cond_b

    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline8(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v3, v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v7

    move v8, v6

    :goto_1
    if-ge v8, v7, :cond_3

    invoke-virtual {v3, v8}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v10

    if-ne p1, v10, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    move-object v9, v5

    :goto_2
    if-nez v9, :cond_4

    goto :goto_6

    :cond_4
    invoke-virtual {v1}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    instance-of v8, v7, Landroid/widget/HeaderViewListAdapter;

    if-eqz v8, :cond_5

    check-cast v7, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v7}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v8

    invoke-virtual {v7}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/menu/MenuAdapter;

    goto :goto_3

    :cond_5
    check-cast v7, Lcom/oneplus/lib/menu/MenuAdapter;

    move v8, v6

    :goto_3
    invoke-virtual {v7}, Lcom/oneplus/lib/menu/MenuAdapter;->getCount()I

    move-result v10

    move v11, v6

    :goto_4
    const/4 v12, -0x1

    if-ge v11, v10, :cond_7

    invoke-virtual {v7, v11}, Lcom/oneplus/lib/menu/MenuAdapter;->getItem(I)Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v13

    if-ne v9, v13, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_7
    move v11, v12

    :goto_5
    if-ne v11, v12, :cond_8

    goto :goto_6

    :cond_8
    add-int/2addr v11, v8

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v11, v7

    if-ltz v11, :cond_a

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-lt v11, v7, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v3, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_7

    :cond_a
    :goto_6
    move-object v3, v5

    goto :goto_7

    :cond_b
    move-object v1, v5

    move-object v3, v1

    :goto_7
    if-eqz v3, :cond_16

    invoke-virtual {v4, v6}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setTouchModal(Z)V

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setEnterTransition(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline8(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v7}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v7

    const/4 v9, 0x2

    new-array v9, v9, [I

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v11, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    if-ne v11, v8, :cond_c

    aget v8, v9, v6

    invoke-virtual {v7}, Landroid/widget/ListView;->getWidth()I

    move-result v7

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    iget v8, v10, Landroid/graphics/Rect;->right:I

    if-le v7, v8, :cond_d

    goto :goto_8

    :cond_c
    aget v7, v9, v6

    sub-int/2addr v7, v2

    if-gez v7, :cond_e

    :cond_d
    const/4 v7, 0x1

    goto :goto_9

    :cond_e
    :goto_8
    move v7, v6

    :goto_9
    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    const/4 v8, 0x1

    goto :goto_a

    :cond_f
    move v8, v6

    :goto_a
    iput v7, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    sget-object v7, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v9, "REL"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    sget-object v7, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v9, "O"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    sget-object v7, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v9, "OMR"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_10
    const/4 v7, 0x1

    goto :goto_b

    :cond_11
    move v7, v6

    :goto_b
    if-eqz v7, :cond_12

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    move v7, v6

    move v10, v7

    goto :goto_c

    :cond_12
    const/4 v7, 0x2

    new-array v9, v7, [I

    iget-object v10, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v7, v7, [I

    invoke-virtual {v3, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v10, v7, v6

    aget v11, v9, v6

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    aget v7, v7, v11

    aget v9, v9, v11

    sub-int/2addr v7, v9

    :goto_c
    iget v9, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    const/4 v11, 0x5

    and-int/2addr v9, v11

    if-ne v9, v11, :cond_14

    if-eqz v8, :cond_13

    add-int/2addr v10, v2

    goto :goto_e

    :cond_13
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_d

    :cond_14
    if-eqz v8, :cond_15

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v10, v2

    goto :goto_e

    :cond_15
    :goto_d
    sub-int/2addr v10, v2

    :goto_e
    invoke-virtual {v4, v10}, Lcom/oneplus/lib/widget/ListPopupWindow;->setHorizontalOffset(I)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/ListPopupWindow;->setOverlapAnchor(Z)V

    invoke-virtual {v4, v7}, Lcom/oneplus/lib/widget/ListPopupWindow;->setVerticalOffset(I)V

    goto :goto_f

    :cond_16
    iget-boolean v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mHasXOffset:Z

    if-eqz v2, :cond_17

    iget v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mXOffset:I

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/ListPopupWindow;->setHorizontalOffset(I)V

    :cond_17
    iget-boolean v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mHasYOffset:Z

    if-eqz v2, :cond_18

    iget v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mYOffset:I

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/ListPopupWindow;->setVerticalOffset(I)V

    :cond_18
    invoke-super {p0}, Lcom/oneplus/lib/menu/MenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/ListPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    :goto_f
    new-instance v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    invoke-direct {v2, v4, p1, v3}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Lcom/oneplus/lib/menu/MenuPopupWindow;Lcom/oneplus/lib/menu/MenuBuilder;I)V

    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/ListPopupWindow;->show()V

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v1, :cond_19

    iget-boolean p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowTitle:Z

    if-eqz p0, :cond_19

    iget-object p0, p1, Lcom/oneplus/lib/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    if-eqz p0, :cond_19

    const p0, 0x7f0d0161

    invoke-virtual {v0, p0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object p1, p1, Lcom/oneplus/lib/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p0, v5, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/ListPopupWindow;->show()V

    :cond_19
    return-void
.end method


# virtual methods
.method public addMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->showMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dismiss()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    new-array v1, v0, [Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v1, p0, v0

    iget-object v2, v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->dismiss()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public flagActionItems()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHorizontalOffset()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public isShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v3, v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-gez v2, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v2, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->removeMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    iget-boolean v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setExitTransition(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAnimationStyle(I)V

    :cond_4
    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    iget-object v4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v4, v4, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    iput v4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_6

    move v4, v1

    goto :goto_2

    :cond_6
    move v4, v2

    :goto_2
    iput v4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    :goto_3
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->dismiss()V

    iget-object p2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1, v2}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    :cond_7
    iget-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_8
    iput-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_9
    iget-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object p2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_4

    :cond_a
    if-eqz p2, :cond_b

    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    :cond_b
    :goto_4
    return-void
.end method

.method public onDismiss()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v4, v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    iget-object p0, v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/oneplus/lib/menu/MenuPopup;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v3, v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ListView;->requestFocus()Z

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->showMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    :cond_3
    return v2

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iget p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    return-void
.end method

.method public bridge synthetic setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mForceShowIcon:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mHasXOffset:Z

    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mXOffset:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowTitle:Z

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mHasYOffset:Z

    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mYOffset:I

    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-direct {p0, v1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->showMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/menu/MenuAdapter;

    goto :goto_1

    :cond_0
    check-cast p1, Lcom/oneplus/lib/menu/MenuAdapter;

    :goto_1
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method
