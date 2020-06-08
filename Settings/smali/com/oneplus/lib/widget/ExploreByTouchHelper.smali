.class public abstract Lcom/oneplus/lib/widget/ExploreByTouchHelper;
.super Landroid/view/View$AccessibilityDelegate;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String;

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFocusedVirtualViewId:I

.field private mHoveredVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

.field private mTempArray:Lcom/oneplus/lib/widget/IntArray;

.field private mTempGlobalRect:[I

.field private mTempParentRect:Landroid/graphics/Rect;

.field private mTempScreenRect:Landroid/graphics/Rect;

.field private mTempVisibleRect:Landroid/graphics/Rect;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    iput v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "View may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/ExploreByTouchHelper;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_f

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    iget-object v3, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    sget-object v6, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    sget-object v6, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v4}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    sget-object v6, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v6

    and-int/lit8 v7, v6, 0x40

    if-nez v7, :cond_d

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, v6, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget v6, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    if-ne v6, p1, :cond_2

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_2
    instance-of v6, p1, Landroid/view/View;

    if-eqz v6, :cond_6

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-lez v6, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    if-nez p1, :cond_8

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    :cond_8
    iget-object p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_a

    :cond_9
    :goto_3
    move p1, v0

    goto :goto_4

    :cond_a
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    :goto_4
    if-eqz p1, :cond_b

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    :cond_b
    iget-object p0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p0, v2, v0

    aget p1, v2, v5

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v3, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    goto :goto_8

    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    iget-object p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    iget-object p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result p1

    iget-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempArray:Lcom/oneplus/lib/widget/IntArray;

    if-nez v1, :cond_10

    new-instance v1, Lcom/oneplus/lib/widget/IntArray;

    invoke-direct {v1}, Lcom/oneplus/lib/widget/IntArray;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempArray:Lcom/oneplus/lib/widget/IntArray;

    goto :goto_5

    :cond_10
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/IntArray;->clear()V

    :goto_5
    iget-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempArray:Lcom/oneplus/lib/widget/IntArray;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Lcom/oneplus/lib/widget/IntArray;)V

    if-lez p1, :cond_12

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/IntArray;->size()I

    move-result p1

    if-gtz p1, :cond_11

    goto :goto_6

    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Views cannot have both real and virtual children"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    :goto_6
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/IntArray;->size()I

    move-result p1

    :goto_7
    if-ge v0, p1, :cond_13

    iget-object v2, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_13
    :goto_8
    return-object v4
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    sget-object v0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p2, p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    return-object p2

    :cond_2
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object p1
.end method

.method private isAccessibilityFocused(I)Z
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private performAction(IILandroid/os/Bundle;)Z
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x80

    const/16 v1, 0x40

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result p0

    goto :goto_2

    :cond_0
    const/high16 p3, 0x10000

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iput v3, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    iget-object p2, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, p1, p3}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    move-result p2

    if-nez p2, :cond_5

    iget p2, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    if-eq p2, v3, :cond_4

    invoke-virtual {p0, p2, p3}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    :cond_4
    iput p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    iget-object p2, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    const p2, 0x8000

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    :goto_0
    move p0, v2

    goto :goto_2

    :cond_5
    :goto_1
    move p0, v4

    :goto_2
    return p0

    :cond_6
    iget-object p0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p0, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    const/16 v5, 0x100

    const/16 v6, 0x80

    if-eq v0, v2, :cond_4

    const/16 v2, 0x9

    if-eq v0, v2, :cond_4

    const/16 p1, 0xa

    if-eq v0, p1, :cond_1

    return v1

    :cond_1
    iget p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    if-eq p1, v4, :cond_3

    iget p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-ne p1, v4, :cond_2

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    invoke-virtual {p0, v4, v6}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    invoke-virtual {p0, p1, v5}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    :goto_0
    return v3

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result p1

    iget v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-ne v0, p1, :cond_5

    goto :goto_1

    :cond_5
    iput p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    invoke-virtual {p0, p1, v6}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    invoke-virtual {p0, v0, v5}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    :goto_1
    if-eq p1, v4, :cond_6

    move v1, v3

    :cond_6
    :goto_2
    return v1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    if-nez p1, :cond_0

    new-instance p1, Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/oneplus/lib/widget/ExploreByTouchHelper;Lcom/oneplus/lib/widget/ExploreByTouchHelper$1;)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    return-object p0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Lcom/oneplus/lib/widget/IntArray;)V
.end method

.method public invalidateRoot()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x800

    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected abstract onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
.end method

.method public sendEventForVirtualView(II)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-interface {v1, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method
