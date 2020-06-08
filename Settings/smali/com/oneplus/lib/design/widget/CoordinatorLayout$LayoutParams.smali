.class public Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public anchorGravity:I

.field public dodgeInsetEdges:I

.field public gravity:I

.field public insetEdge:I

.field public keyline:I

.field mAnchorDirectChild:Landroid/view/View;

.field mAnchorId:I

.field mAnchorView:Landroid/view/View;

.field mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

.field mBehaviorResolved:Z

.field private mDidAcceptNestedScroll:Z

.field private mDidBlockInteraction:Z

.field private mDidChangeAfterNestedScroll:Z

.field mInsetOffsetX:I

.field mInsetOffsetY:I

.field final mLastChildRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    iput p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    iput p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    iput p2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    iput p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    iput p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    iput v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout_Layout_android_layout_gravity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    const/4 v1, 0x5

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    iput p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    iput p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    iput p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    iput p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    iput p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    iput p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    iput p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    iput p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    iput p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    iput p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    iput v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    iput p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    iput p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method acceptNestedScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    return-void
.end method

.method didBlockInteraction()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    return p0
.end method

.method public getAnchorId()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    return p0
.end method

.method getChangedAfterNestedScroll()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    return p0
.end method

.method isBlockingInteractionBelow(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->blocksInteractionBelow(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    return p1
.end method

.method isNestedScrollAccepted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    return p0
.end method

.method resetChangedAfterNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    return-void
.end method

.method resetNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    return-void
.end method

.method resetTouchBehaviorTracking()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    return-void
.end method

.method setChangedAfterNestedScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    return-void
.end method
