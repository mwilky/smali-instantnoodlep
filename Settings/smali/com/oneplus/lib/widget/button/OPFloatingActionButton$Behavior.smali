.class public Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;
.super Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
.source "OPFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/button/OPFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<",
        "Lcom/oneplus/lib/widget/button/OPFloatingActionButton;",
        ">;"
    }
.end annotation


# instance fields
.field private mAutoHideEnabled:Z

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mAutoHideEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OpFloatingActionButton_Behavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpFloatingActionButton_Behavior_Layout_op_behavior_autoHide:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mAutoHideEnabled:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private shouldUpdateVisibility(Landroid/view/View;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mAutoHideEnabled:Z

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getAnchorId()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getUserSetVisibility()I

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private updateFabVisibilityForAppBarLayout(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->shouldUpdateVisibility(Landroid/view/View;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p1, p2, p0}, Lcom/oneplus/lib/design/widget/Utils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    move-result p1

    if-gt p0, p1, :cond_2

    invoke-virtual {p3, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->hide(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->show(Z)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bridge synthetic getInsetDodgeRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 0

    check-cast p2, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->getInsetDodgeRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public getInsetDodgeRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/graphics/Rect;)Z
    .locals 3

    invoke-static {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$000(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLeft()I

    move-result p1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getBottom()I

    move-result p2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p0

    invoke-virtual {p3, p1, v0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p0, 0x1

    return p0
.end method

.method public onAttachedToLayoutParams(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;)V
    .locals 0

    iget p0, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez p0, :cond_0

    const/16 p0, 0x50

    iput p0, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    :cond_0
    return-void
.end method

.method public bridge synthetic onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    check-cast p2, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/view/View;)Z
    .locals 1

    instance-of v0, p3, Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-direct {p0, p1, p3, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->updateFabVisibilityForAppBarLayout(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    check-cast p2, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;I)Z

    move-result p0

    return p0
.end method

.method public onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;I)Z
    .locals 6

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    instance-of v5, v4, Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-direct {p0, p1, v4, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->updateFabVisibilityForAppBarLayout(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1, p2, p3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    invoke-static {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$000(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    if-lez p3, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    if-lez p3, :cond_7

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, v3

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gt v0, v1, :cond_3

    iget v0, p0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p1, v3

    if-lt v1, p1, :cond_4

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-gt p1, p3, :cond_5

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int v2, p0

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    invoke-static {p2, v2}, Lcom/oneplus/support/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_6
    if-eqz v0, :cond_7

    invoke-static {p2, v0}, Lcom/oneplus/support/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method setInternalAutoHideListener(Lcom/oneplus/lib/widget/button/OPFloatingActionButton$OnVisibilityChangedListener;)V
    .locals 0

    return-void
.end method
