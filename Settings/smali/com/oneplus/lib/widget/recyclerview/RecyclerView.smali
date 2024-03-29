.class public Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/ScrollingView;
.implements Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewCacheExtension;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;
    }
.end annotation


# static fields
.field private static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessibilityDelegate:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

.field private mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

.field mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

.field private mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

.field private mClipToPadding:Z

.field private mDataSetHasChangedAfterLayout:Z

.field private mEatRequestLayout:Z

.field private mEatenAccessibilityChangeFlags:I

.field private mFirstLayoutComplete:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mIsAttached:Z

.field mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field private final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

.field private mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field private mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

.field private mPostedAnimatorRunner:Z

.field final mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private final mScrollConsumed:[I

.field private mScrollFactor:F

.field private mScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private final mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

.field final mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field private final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    aput-object v2, v1, v0

    sput-object v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$3;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$3;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mObserver:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    invoke-direct {v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollFactor:F

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-direct {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsChanged:Z

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimatorListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPostedAnimatorRunner:Z

    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMinMaxLayoutPositions:[I

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollConsumed:[I

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mNestedOffsets:[I

    new-instance v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$2;

    invoke-direct {v3, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$2;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iput-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setScrollContainer(Z)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMinFlingVelocity:I

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMaxFlingVelocity:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v4

    if-ne v4, v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimatorListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->setListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->initAdapterManager()V

    new-instance v4, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    new-instance v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-direct {v5, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    invoke-direct {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;-><init>(Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;)V

    iput-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    invoke-direct {v4, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setAccessibilityDelegateCompat(Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;)V

    if-eqz p2, :cond_5

    sget-object v4, Lcom/oneplus/commonctrl/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const-string v4, ": Could not instantiate the LayoutManager: "

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-class v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v8}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v0

    aput-object p2, v8, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v2

    const/4 p1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v8, p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v8

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_2
    new-array p3, v0, [Ljava/lang/Class;

    invoke-virtual {v6, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-virtual {p0, p1}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Error creating LayoutManager "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ": Class is not a LayoutManager "

    invoke-static {p2, p3, v0, v5}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline11(Landroid/util/AttributeSet;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ": Cannot access non-public constructor "

    invoke-static {p2, p3, v0, v5}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline11(Landroid/util/AttributeSet;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3, v4, v5}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline11(Landroid/util/AttributeSet;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3, v4, v5}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline11(Landroid/util/AttributeSet;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_6
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ": Unable to find LayoutManager "

    invoke-static {p2, p3, v0, v5}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline11(Landroid/util/AttributeSet;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    :goto_4
    new-instance p1, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mFirstLayoutComplete:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    return p0
.end method

.method static synthetic access$2200()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onEnterLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$2600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->supportsChangeAnimations()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onExitLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$2900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutRequestEaten:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    return-void
.end method

.method static synthetic access$3100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$3900()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAccessibilityDelegate:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0

    return-void
.end method

.method static synthetic access$4400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    return p0
.end method

.method static synthetic access$4500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->defaultOnMeasure(II)V

    return-void
.end method

.method static synthetic access$4700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getAdapterPositionFor(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPostedAnimatorRunner:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->eatRequestLayout()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->unscrapView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resumeRequestLayout(Z)V

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    return-void
.end method

.method private addAnimatingView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 5

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->unscrapView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result p1

    const/4 v3, -0x1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {p0, v0, v3, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->addView(Landroid/view/View;IZ)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    iget-object p1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mBucket:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->set(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->onEnteredHiddenState(Landroid/view/View;)V

    :goto_1
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view is not a child, cannot hide "

    invoke-static {p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private animateDisappearance(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;)V
    .locals 8

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addAnimatingView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget v4, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    iget v5, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-ne v4, v6, :cond_0

    if-eq v5, v7, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v7

    invoke-virtual {v1, v6, v7, v0, v2}, Landroid/view/View;->layout(IIII)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget-object v3, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postAnimationRunner()V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget-object p1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateRemove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postAnimationRunner()V

    :cond_2
    :goto_0
    return-void
.end method

.method private cancelTouch()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resetTouch()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method private considerReleasingGlowsOnScroll(II)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_4
    return-void
.end method

.method private defaultOnMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMinimumWidth()I

    move-result p1

    :cond_0
    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMinimumHeight()I

    move-result p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method private dispatchChildAttached(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onViewAttachedToWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dispatchChildDetached(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getAdapterPositionFor(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 6

    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_8

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v4, :cond_6

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v4, p1, :cond_2

    iget p1, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    :cond_2
    if-ge v4, p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    :cond_3
    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_7

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, p1, :cond_7

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v3

    if-le v4, p1, :cond_5

    move p1, v1

    goto :goto_2

    :cond_5
    sub-int/2addr p1, v3

    goto :goto_1

    :cond_6
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, p1, :cond_7

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    return p1

    :cond_9
    :goto_3
    return v1
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    return-object p0
.end method

.method private getScrollFactor()F
    .locals 4

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollFactor:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollFactor:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollFactor:F

    return p0
.end method

.method private onEnterLayoutOrScroll()V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    return-void
.end method

.method private onExitLayoutOrScroll()V
    .locals 3

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatenAccessibilityChangeFlags:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatenAccessibilityChangeFlags:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private postAnimationRunner()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPostedAnimatorRunner:Z

    :cond_0
    return-void
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->markKnownViewsInvalid()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onItemsChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->preProcess()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->consumeUpdatesInOnePass()V

    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_4

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->supportsChangeAnimations()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_5

    if-nez v0, :cond_5

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->access$1900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move v4, v2

    goto :goto_3

    :cond_7
    move v4, v1

    :goto_3
    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1802(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result p0

    if-eqz p0, :cond_8

    move p0, v2

    goto :goto_4

    :cond_8
    move p0, v1

    :goto_4
    if-eqz p0, :cond_9

    move v1, v2

    :cond_9
    invoke-static {v3, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1602(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    return-void
.end method

.method private resetTouch()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->stopNestedScroll()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_5
    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->stop()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->stopSmoothScroller()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method private supportsChangeAnimations()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->getSupportsChangeAnimations()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->ensureLeftGlow()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->ensureRightGlow()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->ensureTopGlow()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    :cond_2
    if-lez p2, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->ensureBottomGlow()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_5
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onAddFocusables(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    return-void
.end method

.method public addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    :cond_1
    if-gez p2, :cond_2

    iget-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->isComputingLayout()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    check-cast p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->checkLayoutParams(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method clearOldPositions()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->clearOldPositions()V

    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeVerticalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method dispatchLayout()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    const-string v2, "RecyclerView"

    if-nez v1, :cond_0

    const-string v0, "No adapter attached; skipping layout"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    const-string v0, "No layout manager attached; skipping layout"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->eatRequestLayout()V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onEnterLayoutOrScroll()V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsChanged:Z

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->supportsChangeAnimations()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-direct {v2}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;-><init>()V

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    iput-object v2, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsChanged:Z

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1702(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    iput v4, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMinMaxLayoutPositions:[I

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    aput v1, v2, v1

    aput v1, v2, v5

    goto :goto_3

    :cond_3
    const v6, 0x7fffffff

    const/high16 v7, -0x80000000

    move v8, v7

    move v7, v6

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_7

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v9, v6}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v9

    if-ge v9, v7, :cond_5

    move v7, v9

    :cond_5
    if-le v9, v8, :cond_6

    move v8, v9

    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    aput v7, v2, v1

    aput v8, v2, v5

    :goto_3
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->clear()V

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->clear()V

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v2

    move v4, v1

    :goto_4
    if-ge v4, v2, :cond_a

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v6, v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_5

    :cond_8
    iget-object v7, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v13, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    new-instance v14, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v12

    move-object v7, v14

    move-object v8, v6

    invoke-direct/range {v7 .. v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v13, v6, v14}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->saveOldPositions()V

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v2

    move v4, v1

    :goto_6
    if-ge v4, v2, :cond_c

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v6, v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isChanged()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChangedHolderKey(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)J

    move-result-wide v7

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7, v6}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v7, v6}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v2

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v4, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-direct {v2}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;-><init>()V

    move v4, v1

    :goto_7
    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_11

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v6, v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_a

    :cond_d
    move v7, v1

    :goto_8
    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v8, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    iget v9, v8, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    if-ge v7, v9, :cond_f

    invoke-virtual {v8, v7}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v8, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v8, v6, :cond_e

    move v7, v5

    goto :goto_9

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_f
    move v7, v1

    :goto_9
    if-nez v7, :cond_10

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->clearOldPositions()V

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->consumePostponedUpdates()V

    goto :goto_c

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->clearOldPositions()V

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->consumeUpdatesInOnePass()V

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v2

    move v4, v1

    :goto_b
    if-ge v4, v2, :cond_14

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v6, v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isChanged()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChangedHolderKey(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)J

    move-result-wide v7

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7, v6}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v7, v6}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_14
    move-object v2, v3

    :goto_c
    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1202(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1702(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v4, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    iput-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v6, :cond_15

    move v6, v5

    goto :goto_d

    :cond_15
    move v6, v1

    :goto_d
    invoke-static {v4, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1802(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    if-eqz v4, :cond_16

    new-instance v4, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-direct {v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;-><init>()V

    goto :goto_e

    :cond_16
    move-object v4, v3

    :goto_e
    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v6

    move v7, v1

    :goto_f
    if-ge v7, v6, :cond_19

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v8, v7}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-eqz v9, :cond_17

    goto :goto_10

    :cond_17
    iget-object v9, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChangedHolderKey(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)J

    move-result-wide v10

    if-eqz v4, :cond_18

    iget-object v12, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v12, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_18

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9, v8}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_18
    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v15, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    new-instance v14, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v16

    move-object v9, v14

    move-object v10, v8

    move-object v3, v14

    move/from16 v14, v16

    invoke-direct/range {v9 .. v14}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v15, v8, v3}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto :goto_f

    :cond_19
    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :cond_1a
    :goto_11
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_20

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v9

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v8, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v8, v9}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-nez v10, :cond_1b

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v10, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v10, v9}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    invoke-virtual {v2, v7}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1c

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v8, v7, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    goto :goto_11

    :cond_1c
    if-eqz v8, :cond_1d

    invoke-direct {v0, v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->animateDisappearance(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;)V

    goto :goto_11

    :cond_1d
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    iget-object v7, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v0, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addAnimatingView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v8

    if-nez v8, :cond_1f

    if-ne v10, v12, :cond_1e

    if-eq v11, v13, :cond_1f

    :cond_1e
    invoke-virtual {v9, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v12

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v14, v13

    invoke-virtual {v7, v12, v13, v8, v14}, Landroid/view/View;->layout(IIII)V

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    invoke-virtual/range {v8 .. v13}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postAnimationRunner()V

    goto :goto_11

    :cond_1f
    invoke-virtual {v9, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    invoke-virtual {v7, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateRemove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postAnimationRunner()V

    goto/16 :goto_11

    :cond_20
    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    sub-int/2addr v3, v5

    :goto_12
    if-ltz v3, :cond_22

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v6, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v6, v3}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v7, v6}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v6, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v6, v3}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v7, v3}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    iget-object v7, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v8, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v8, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->unscrapView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    invoke-direct {v0, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->animateDisappearance(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;)V

    :cond_21
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    :cond_22
    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    if-lez v3, :cond_29

    sub-int/2addr v3, v5

    :goto_13
    if-ltz v3, :cond_29

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v6, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v6, v3}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v6, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v6, v3}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    if-gtz v7, :cond_23

    move v7, v5

    goto :goto_14

    :cond_23
    move v7, v1

    :goto_14
    if-nez v7, :cond_24

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v7, v8}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    :cond_24
    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v7, v3}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    if-eqz v2, :cond_25

    iget-object v7, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v7}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    goto :goto_15

    :cond_25
    const/4 v7, 0x0

    :goto_15
    iget v11, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    iget v12, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    iget-object v6, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v7, :cond_27

    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ne v6, v11, :cond_26

    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-eq v6, v12, :cond_27

    :cond_26
    invoke-virtual {v8, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget v9, v7, Landroid/graphics/Rect;->left:I

    iget v10, v7, Landroid/graphics/Rect;->top:I

    move-object v7, v6

    invoke-virtual/range {v7 .. v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postAnimationRunner()V

    goto :goto_16

    :cond_27
    invoke-virtual {v8, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    invoke-virtual {v6, v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateAdd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postAnimationRunner()V

    :cond_28
    :goto_16
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    :cond_29
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    move v3, v1

    :goto_17
    if-ge v3, v2, :cond_2c

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v6, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v6, v3}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v6, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v6, v3}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v7, v8}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    if-eqz v7, :cond_2b

    if-eqz v6, :cond_2b

    iget v9, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    iget v10, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    if-ne v9, v10, :cond_2a

    iget v9, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    iget v10, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    if-eq v9, v10, :cond_2b

    :cond_2a
    invoke-virtual {v8, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget v10, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    iget v11, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    iget v12, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    iget v6, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    move-object v7, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postAnimationRunner()V

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2c
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    if-eqz v2, :cond_2d

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    goto :goto_18

    :cond_2d
    move v2, v1

    :goto_18
    sub-int/2addr v2, v5

    :goto_19
    if-ltz v2, :cond_32

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v3, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_1c

    :cond_2e
    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->access$2000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_31

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->access$2000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v9, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    invoke-direct {v0, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addAnimatingView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iput-object v10, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v3, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->unscrapView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object v3, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v11

    iget-object v3, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v12

    if-eqz v10, :cond_30

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_1a

    :cond_2f
    iget-object v3, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v6, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v10, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iput-object v9, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move v13, v3

    move v14, v6

    goto :goto_1b

    :cond_30
    :goto_1a
    move v13, v11

    move v14, v12

    :goto_1b
    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    invoke-virtual/range {v8 .. v14}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateChange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postAnimationRunner()V

    :cond_31
    :goto_1c
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_19

    :cond_32
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resumeRequestLayout(Z)V

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    invoke-static {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$2102(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1802(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1602(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onExitLayoutOrScroll()V

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-static {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->access$1902(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)Z

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->access$2000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_33

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->access$2000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_33
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v3, v2, v1

    aget v2, v2, v5

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v4

    if-nez v4, :cond_34

    if-nez v3, :cond_38

    if-eqz v2, :cond_37

    goto :goto_1f

    :cond_34
    move v6, v1

    :goto_1d
    if-ge v6, v4, :cond_37

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v7, v6}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v8

    if-eqz v8, :cond_35

    goto :goto_1e

    :cond_35
    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-lt v7, v3, :cond_38

    if-le v7, v2, :cond_36

    goto :goto_1f

    :cond_36
    :goto_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_37
    move v5, v1

    :cond_38
    :goto_1f
    if-eqz v5, :cond_39

    invoke-virtual {v0, v1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchOnScrolled(II)V

    :cond_39
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p0

    return p0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onScrollStateChanged(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onScrolled(II)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;->onScrolled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;->onScrolled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v3, p1, p0, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_5

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    move v4, v1

    :goto_4
    or-int/2addr v3, v4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    goto :goto_5

    :cond_7
    move v5, v1

    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_8

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_6

    :cond_8
    move v4, v1

    :goto_6
    or-int/2addr v3, v4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v5

    int-to-float v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_7
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_b

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v1, v2

    :cond_b
    or-int/2addr v1, v3

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_8

    :cond_c
    move v1, v3

    :goto_8
    if-nez v1, :cond_d

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_d

    move v1, v2

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_e
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method eatRequestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatRequestLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatRequestLayout:Z

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutRequestEaten:Z

    :cond_0
    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureLeftGlow()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureRightGlow()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method findViewHolderForPosition(IZ)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_0
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public fling(II)Z
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "RecyclerView"

    const-string p1, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_3

    :cond_2
    move p1, v1

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_5

    :cond_4
    move p2, v1

    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v1

    :cond_6
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    :goto_0
    move v0, v5

    :goto_1
    invoke-virtual {p0, v3, v4, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchNestedFling(FFZ)Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->fling(II)V

    return v5

    :cond_9
    return v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->eatRequestLayout()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resumeRequestLayout(Z)V

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView has no LayoutManager"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RecyclerView has no LayoutManager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RecyclerView has no LayoutManager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    return-object p0
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getBaseline()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result p0

    return p0
.end method

.method getChangedHolderKey(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)J
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-wide p0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemId:J

    goto :goto_0

    :cond_0
    iget p0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    int-to-long p0, p0

    :goto_0
    return-wide p0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p0

    return p0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public getCompatAccessibilityDelegate()Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAccessibilityDelegate:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    return-object p0
.end method

.method public getItemAnimator()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    return-object p0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_0

    iget-object p0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object p0

    :cond_0
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v5, v6, p1, p0, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v7, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    return-object v1
.end method

.method public getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    return-object p0
.end method

.method public getMaxFlingVelocity()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMaxFlingVelocity:I

    return p0
.end method

.method public getMinFlingVelocity()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMinFlingVelocity:I

    return p0
.end method

.method public getRecycledViewPool()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getRecycledViewPool()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    move-result-object p0

    return-object p0
.end method

.method public getScrollState()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    return p0
.end method

.method public hasNestedScrollingParent()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result p0

    return p0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mFirstLayoutComplete:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method initAdapterManager()V
    .locals 2

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;-><init>(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    return-void
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method isAccessibilityEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAttachedToWindow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIsAttached:Z

    return p0
.end method

.method public isComputingLayout()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result p0

    return p0
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_0

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iput-boolean v3, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    if-eqz v2, :cond_1

    iput-boolean v3, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->markItemDecorInsetsDirty()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    :cond_4
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_0

    invoke-virtual {v4, p2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    if-lt v5, p1, :cond_2

    invoke-virtual {v4, p2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ge p1, p2, :cond_0

    move v3, p1

    move v4, p2

    move v5, v1

    goto :goto_0

    :cond_0
    move v4, p1

    move v3, p2

    move v5, v2

    :goto_0
    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v0, :cond_4

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v8, v7}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v8

    if-eqz v8, :cond_3

    iget v9, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-lt v9, v3, :cond_3

    if-le v9, v4, :cond_1

    goto :goto_3

    :cond_1
    if-ne v9, p1, :cond_2

    sub-int v9, p2, p1

    invoke-virtual {v8, v9, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v5, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :goto_2
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v8, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    if-ge p1, p2, :cond_5

    move v2, p2

    move v3, v1

    move v1, p1

    goto :goto_4

    :cond_5
    move v1, p2

    move v3, v2

    move v2, p1

    :goto_4
    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v6

    :goto_5
    if-ge v5, v4, :cond_9

    iget-object v7, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v7, :cond_8

    iget v8, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-lt v8, v1, :cond_8

    if-le v8, v2, :cond_6

    goto :goto_6

    :cond_6
    if-ne v8, p1, :cond_7

    sub-int v8, p2, p1

    invoke-virtual {v7, v8, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_6

    :cond_7
    invoke-virtual {v7, v3, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 8

    add-int v0, p1, p2

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v1, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    const/4 v6, 0x1

    if-lt v5, v0, :cond_0

    neg-int v3, p2

    invoke-virtual {v4, v3, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v3, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    goto :goto_1

    :cond_0
    if-lt v5, p1, :cond_1

    add-int/lit8 v5, p1, -0x1

    neg-int v7, p2

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v4, v7, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    iput v5, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v3, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v2, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_5

    iget-object v4, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    if-lt v5, v0, :cond_4

    neg-int v5, p2

    invoke-virtual {v4, v5, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    if-lt v5, p1, :cond_3

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIsAttached:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mFirstLayoutComplete:Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPostedAnimatorRunner:Z

    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mFirstLayoutComplete:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->stopScroll()V

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIsAttached:Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    cmpl-float v4, v0, v2

    if-nez v4, :cond_4

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getScrollFactor()F

    move-result v2

    mul-float/2addr v3, v2

    float-to-int v3, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v3, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_5
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    :cond_2
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_4

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-interface {v6, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eq v0, v2, :cond_3

    iput-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    move v0, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->cancelTouch()V

    return v5

    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_7

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_7
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    const/4 v7, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    if-eqz v4, :cond_13

    if-eq v4, v5, :cond_12

    if-eq v4, v7, :cond_b

    if-eq v4, v2, :cond_a

    const/4 v0, 0x5

    if-eq v4, v0, :cond_9

    const/4 v0, 0x6

    if-eq v4, v0, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    :cond_9
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchX:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_6

    :cond_a
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->cancelTouch()V

    goto/16 :goto_6

    :cond_b
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_c

    const-string p1, "Error processing scroll; pointer index for id "

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    if-eq v2, v5, :cond_18

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchX:I

    sub-int/2addr v4, v2

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchY:I

    sub-int/2addr p1, v2

    const/4 v2, -0x1

    if-eqz v0, :cond_e

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    if-le v0, v6, :cond_e

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchX:I

    if-gez v4, :cond_d

    move v4, v2

    goto :goto_2

    :cond_d
    move v4, v5

    :goto_2
    mul-int/2addr v6, v4

    add-int/2addr v6, v0

    iput v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    move v0, v5

    goto :goto_3

    :cond_e
    move v0, v1

    :goto_3
    if-eqz v3, :cond_10

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    if-le v3, v4, :cond_10

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchY:I

    if-gez p1, :cond_f

    goto :goto_4

    :cond_f
    move v2, v5

    :goto_4
    mul-int/2addr v4, v2

    add-int/2addr v4, v0

    iput v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    move v0, v5

    :cond_10
    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-interface {p1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_11
    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setScrollState(I)V

    goto :goto_6

    :cond_12
    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->stopNestedScroll()V

    goto :goto_6

    :cond_13
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v2, :cond_14

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIgnoreMotionEventTillDown:Z

    :cond_14
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float/2addr v2, v8

    float-to-int v2, v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchY:I

    iget p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    if-ne p1, v7, :cond_15

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setScrollState(I)V

    :cond_15
    if-eqz v0, :cond_16

    move p1, v5

    goto :goto_5

    :cond_16
    move p1, v1

    :goto_5
    if-eqz v3, :cond_17

    or-int/lit8 p1, p1, 0x2

    :cond_17
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->startNestedScroll(I)Z

    :cond_18
    :goto_6
    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    if-ne p0, v5, :cond_19

    move v1, v5

    :cond_19
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->eatRequestLayout()V

    const-string p1, "RV OnLayout"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchLayout()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resumeRequestLayout(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mFirstLayoutComplete:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->eatRequestLayout()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1702(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->consumeUpdatesInOnePass()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1702(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resumeRequestLayout(Z)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->defaultOnMeasure(II)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->doMeasure(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;II)V

    :goto_2
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1702(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    check-cast p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;->access$1500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    iput-object p0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    iput-object p0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    :goto_0
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidateGlows()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    const/4 v5, 0x0

    if-nez v0, :cond_1

    iput-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    goto :goto_0

    :cond_1
    invoke-interface {v2, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;->onTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)V

    if-eq v0, v3, :cond_2

    if-ne v0, v4, :cond_4

    :cond_2
    iput-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    goto :goto_2

    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_6

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-interface {v5, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_5

    iput-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    :cond_4
    :goto_2
    move v0, v4

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_3
    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->cancelTouch()V

    return v4

    :cond_7
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_9

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    if-nez v6, :cond_a

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mNestedOffsets:[I

    aput v1, v8, v4

    aput v1, v8, v1

    :cond_a
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mNestedOffsets:[I

    aget v9, v8, v1

    int-to-float v9, v9

    aget v8, v8, v4

    int-to-float v8, v8

    invoke-virtual {v5, v9, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v8, 0x3f000000    # 0.5f

    if-eqz v6, :cond_1f

    if-eq v6, v4, :cond_19

    const/4 v9, 0x2

    if-eq v6, v9, :cond_e

    if-eq v6, v3, :cond_d

    const/4 v0, 0x5

    if-eq v6, v0, :cond_c

    const/4 v0, 0x6

    if-eq v6, v0, :cond_b

    goto/16 :goto_c

    :cond_b
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_c

    :cond_c
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchX:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_c

    :cond_d
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->cancelTouch()V

    goto/16 :goto_c

    :cond_e
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-gez v3, :cond_f

    const-string p1, "Error processing scroll; pointer index for id "

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    sub-int/2addr v3, v6

    iget v7, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    sub-int/2addr v7, p1

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollConsumed:[I

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    invoke-virtual {p0, v3, v7, v8, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollConsumed:[I

    aget v9, v8, v1

    sub-int/2addr v3, v9

    aget v8, v8, v4

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    aget v9, v8, v1

    int-to-float v9, v9

    aget v8, v8, v4

    int-to-float v8, v8

    invoke-virtual {v5, v9, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mNestedOffsets:[I

    aget v9, v8, v1

    iget-object v10, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    aget v11, v10, v1

    add-int/2addr v9, v11

    aput v9, v8, v1

    aget v9, v8, v4

    aget v10, v10, v4

    add-int/2addr v9, v10

    aput v9, v8, v4

    :cond_10
    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    if-eq v8, v4, :cond_16

    if-eqz v0, :cond_12

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    if-le v8, v9, :cond_12

    if-lez v3, :cond_11

    sub-int/2addr v3, v9

    goto :goto_4

    :cond_11
    add-int/2addr v3, v9

    :goto_4
    move v8, v4

    goto :goto_5

    :cond_12
    move v8, v1

    :goto_5
    if-eqz v2, :cond_14

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    if-le v9, v10, :cond_14

    if-lez v7, :cond_13

    sub-int/2addr v7, v10

    goto :goto_6

    :cond_13
    add-int/2addr v7, v10

    :goto_6
    move v8, v4

    :cond_14
    if-eqz v8, :cond_16

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_15

    invoke-interface {v8, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_15
    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setScrollState(I)V

    :cond_16
    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollState:I

    if-ne v8, v4, :cond_22

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    aget v9, v8, v1

    sub-int/2addr v6, v9

    iput v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    aget v6, v8, v4

    sub-int/2addr p1, v6

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    if-eqz v0, :cond_17

    goto :goto_7

    :cond_17
    move v3, v1

    :goto_7
    if-eqz v2, :cond_18

    goto :goto_8

    :cond_18
    move v7, v1

    :goto_8
    invoke-virtual {p0, v3, v7, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_c

    :cond_19
    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v5}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 p1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_9

    :cond_1a
    move v0, p1

    :goto_9
    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_a

    :cond_1b
    move v2, p1

    :goto_a
    cmpl-float v3, v0, p1

    if-nez v3, :cond_1c

    cmpl-float p1, v2, p1

    if-eqz p1, :cond_1d

    :cond_1c
    float-to-int p1, v0

    float-to-int v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->fling(II)Z

    move-result p1

    if-nez p1, :cond_1e

    :cond_1d
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setScrollState(I)V

    :cond_1e
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resetTouch()V

    move v1, v4

    goto :goto_c

    :cond_1f
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mInitialTouchY:I

    if-eqz v0, :cond_20

    move p1, v4

    goto :goto_b

    :cond_20
    move p1, v1

    :goto_b
    if-eqz v2, :cond_21

    or-int/lit8 p1, p1, 0x2

    :cond_21
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->startNestedScroll(I)Z

    :cond_22
    :goto_c
    if-nez v1, :cond_23

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v5}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_23
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    return v4

    :cond_24
    :goto_d
    return v1
.end method

.method rebindUpdatedViewHolders()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemViewType(I)I

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemViewType:I

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isChanged()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->supportsChangeAnimations()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v2, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->bindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    goto :goto_4

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-static {p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onRequestChildFocus(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mFirstLayoutComplete:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-interface {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatRequestLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutRequestEaten:Z

    :goto_0
    return-void
.end method

.method resumeRequestLayout(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatRequestLayout:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchLayout()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatRequestLayout:Z

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutRequestEaten:Z

    :cond_1
    return-void
.end method

.method saveOldPositions()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOldPosition:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p0, "RecyclerView"

    const-string p1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_5
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    const/4 v10, 0x0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->eatRequestLayout()V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onEnterLayoutOrScroll()V

    const-string v0, "RV Scroll"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-eqz v7, :cond_0

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v2, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, v7, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    sub-int v1, v7, v0

    goto :goto_0

    :cond_0
    move v0, v10

    move v1, v0

    :goto_0
    if-eqz v8, :cond_1

    iget-object v2, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v3, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v4, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v2, v8, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v2

    sub-int v3, v8, v2

    goto :goto_1

    :cond_1
    move v2, v10

    move v3, v2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->supportsChangeAnimations()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v4

    move v5, v10

    :goto_2
    if-ge v5, v4, :cond_4

    iget-object v11, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v11, v5}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v12

    if-eqz v12, :cond_3

    iget-object v12, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v12, :cond_3

    iget-object v12, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v12, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    if-ne v13, v14, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v14

    if-eq v11, v14, :cond_3

    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v13

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v15, v11

    invoke-virtual {v12, v13, v11, v14, v15}, Landroid/view/View;->layout(IIII)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onExitLayoutOrScroll()V

    invoke-virtual {v6, v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resumeRequestLayout(Z)V

    move v13, v0

    move v11, v1

    move v14, v2

    move v12, v3

    goto :goto_3

    :cond_5
    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_3
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_6
    iget-object v5, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v11

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iget v0, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    iget-object v2, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    aget v3, v2, v10

    sub-int/2addr v0, v3

    iput v0, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchX:I

    iget v0, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    aget v3, v2, v1

    sub-int/2addr v0, v3

    iput v0, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLastTouchY:I

    if-eqz v9, :cond_7

    aget v0, v2, v10

    int-to-float v0, v0

    aget v2, v2, v1

    int-to-float v2, v2

    invoke-virtual {v9, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_7
    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mNestedOffsets:[I

    aget v2, v0, v10

    iget-object v3, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollOffset:[I

    aget v4, v3, v10

    add-int/2addr v2, v4

    aput v2, v0, v10

    aget v2, v0, v1

    aget v3, v3, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    goto/16 :goto_7

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    if-eqz v9, :cond_e

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v2, v11

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v4, v12

    const/4 v5, 0x0

    cmpg-float v9, v2, v5

    const/high16 v11, 0x3f800000    # 1.0f

    if-gez v9, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->ensureLeftGlow()V

    iget-object v9, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v12, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v12, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v3, v15

    sub-float v3, v11, v3

    invoke-virtual {v9, v12, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_4

    :cond_9
    cmpl-float v9, v2, v5

    if-lez v9, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->ensureRightGlow()V

    iget-object v9, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v2, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v3, v15

    invoke-virtual {v9, v12, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :goto_4
    move v3, v1

    goto :goto_5

    :cond_a
    move v3, v10

    :goto_5
    cmpg-float v9, v4, v5

    if-gez v9, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->ensureTopGlow()V

    iget-object v3, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v9, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v9, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v0, v11

    invoke-virtual {v3, v9, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_6

    :cond_b
    cmpl-float v9, v4, v5

    if-lez v9, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->ensureBottomGlow()V

    iget-object v3, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v4, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v0, v12

    sub-float/2addr v11, v0

    invoke-virtual {v3, v9, v11}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :goto_6
    move v3, v1

    :cond_c
    if-nez v3, :cond_d

    cmpl-float v0, v2, v5

    if-nez v0, :cond_d

    cmpl-float v0, v4, v5

    if-eqz v0, :cond_e

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_e
    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_f
    :goto_7
    if-nez v13, :cond_10

    if-eqz v14, :cond_11

    :cond_10
    invoke-virtual {v6, v13, v14}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchOnScrolled(II)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_12
    if-nez v13, :cond_14

    if-eqz v14, :cond_13

    goto :goto_8

    :cond_13
    move v1, v10

    :cond_14
    :goto_8
    return v1
.end method

.method public scrollTo(II)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "RecyclerView does not support scrolling to an absolute position."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setAccessibilityDelegateCompat(Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAccessibilityDelegate:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAccessibilityDelegate:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setLayoutFrozen(Z)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mObserver:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->clear()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->reset()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mObserver:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->registerAdapterDataObserver(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;)V

    :cond_3
    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onAdapterChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    :cond_4
    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->clear()V

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getRecycledViewPool()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->onAdapterChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Z)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->markKnownViewsInvalid()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildDrawingOrderCallback(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidateGlows()V

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mClipToPadding:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    return-void
.end method

.method public setItemAnimator(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimations()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->setListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimatorListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->setListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->setViewCacheSize(I)V

    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 8

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-eq p1, v0, :cond_2

    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    if-nez p1, :cond_1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    iget-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIgnoreMotionEventTillDown:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->stopScroll()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIsAttached:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->setRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->clear()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mBucket:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Bucket;->reset()V

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->onLeftHiddenState(Landroid/view/View;)V

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-nez v0, :cond_5

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->setRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iget-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mIsAttached:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "LayoutManager "

    const-string v1, " is already attached to a RecyclerView: "

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline26(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnScrollListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    return-void
.end method

.method public setRecycledViewPool(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->setRecycledViewPool(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method public setRecyclerListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;)V
    .locals 0

    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RecyclerView"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mTouchSlop:I

    :goto_1
    return-void
.end method

.method public setViewCacheExtension(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewCacheExtension;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->setViewCacheExtension(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewCacheExtension;)V

    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->isComputingLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    move p1, v1

    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public smoothScrollBy(II)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p0, "RecyclerView"

    const-string p1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayoutFrozen:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move p1, v1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    move p2, v1

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    :cond_5
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p0

    return p0
.end method

.method public stopNestedScroll()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopScroll()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setScrollState(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->stop()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->stopSmoothScroller()V

    :cond_0
    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    add-int/2addr p2, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_2

    if-ge v5, p2, :cond_2

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v4, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->supportsChangeAnimations()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object p3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    if-lt v1, p1, :cond_4

    if-ge v1, p2, :cond_4

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_2

    :cond_6
    return-void
.end method
