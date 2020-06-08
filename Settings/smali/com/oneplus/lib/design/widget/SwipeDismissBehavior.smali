.class public Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;
.super Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;,
        Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field mAlphaEndSwipeDistance:F

.field mAlphaStartSwipeDistance:F

.field private final mDragCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

.field mDragDismissThreshold:F

.field private mInterceptingEvents:Z

.field mListener:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;

.field private mSensitivity:F

.field private mSensitivitySet:Z

.field mSwipeDirection:I

.field mViewDragHelper:Lcom/oneplus/lib/util/ViewDragHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mSensitivity:F

    const/4 v1, 0x2

    iput v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mDragDismissThreshold:F

    iput v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mAlphaStartSwipeDistance:F

    iput v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mAlphaEndSwipeDistance:F

    new-instance v0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;-><init>(Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mDragCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    return-void
.end method

.method static clamp(FFF)F
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public onInterceptTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mInterceptingEvents:Z

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    if-eq v1, p2, :cond_0

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mInterceptingEvents:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mInterceptingEvents:Z

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mInterceptingEvents:Z

    :goto_0
    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mViewDragHelper:Lcom/oneplus/lib/util/ViewDragHelper;

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mSensitivitySet:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mSensitivity:F

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mDragCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-static {p1, p2, v0}, Lcom/oneplus/lib/util/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/oneplus/lib/util/ViewDragHelper$Callback;)Lcom/oneplus/lib/util/ViewDragHelper;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mDragCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-static {p1, p2}, Lcom/oneplus/lib/util/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/oneplus/lib/util/ViewDragHelper$Callback;)Lcom/oneplus/lib/util/ViewDragHelper;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mViewDragHelper:Lcom/oneplus/lib/util/ViewDragHelper;

    :cond_3
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mViewDragHelper:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/util/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    return v2
.end method

.method public onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mViewDragHelper:Lcom/oneplus/lib/util/ViewDragHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/util/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
