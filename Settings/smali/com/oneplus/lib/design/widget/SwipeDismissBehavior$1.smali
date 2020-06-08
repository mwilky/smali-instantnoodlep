.class Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;
.super Lcom/oneplus/lib/util/ViewDragHelper$Callback;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mOriginalCapturedViewLeft:I

.field final synthetic this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mActivePointerId:I

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget v1, v1, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    if-nez v1, :cond_2

    if-eqz p3, :cond_1

    iget p3, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    iget p0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    goto :goto_2

    :cond_1
    iget p3, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    :goto_1
    add-int/2addr p0, p3

    goto :goto_2

    :cond_2
    if-ne v1, v0, :cond_4

    if-eqz p3, :cond_3

    iget p3, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_1

    :cond_3
    iget p3, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    iget p0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    goto :goto_2

    :cond_4
    iget p3, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p3, v0

    iget p0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p0, p1

    :goto_2
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    return p0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mListener:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$4;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$4;->onDragStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1

    iget p3, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget-object p5, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget p5, p5, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mAlphaStartSwipeDistance:F

    mul-float/2addr p4, p5

    add-float/2addr p4, p3

    iget p3, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget p0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mAlphaEndSwipeDistance:F

    mul-float/2addr p5, p0

    add-float/2addr p5, p3

    int-to-float p0, p2

    cmpg-float p2, p0, p4

    const/high16 p3, 0x3f800000    # 1.0f

    if-gtz p2, :cond_0

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    cmpl-float p2, p0, p5

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    sub-float/2addr p0, p4

    sub-float/2addr p5, p4

    div-float/2addr p0, p5

    sub-float p0, p3, p0

    invoke-static {v0, p0, p3}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 7

    const/4 p3, -0x1

    iput p3, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget v5, v5, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    if-nez v5, :cond_4

    if-eqz v4, :cond_2

    cmpg-float p2, p2, v0

    if-gez p2, :cond_3

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    :goto_1
    move p2, v2

    goto :goto_3

    :cond_3
    move p2, v3

    goto :goto_3

    :cond_4
    if-ne v5, v2, :cond_3

    if-eqz v4, :cond_5

    if-lez v1, :cond_3

    goto :goto_2

    :cond_5
    cmpg-float p2, p2, v0

    if-gez p2, :cond_3

    :goto_2
    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget v1, v1, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mDragDismissThreshold:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lt p2, v0, :cond_3

    goto :goto_1

    :goto_3
    if-eqz p2, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    if-ge p2, v0, :cond_7

    sub-int/2addr v0, p3

    goto :goto_4

    :cond_7
    add-int/2addr v0, p3

    goto :goto_4

    :cond_8
    iget v0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    move v2, v3

    :goto_4
    iget-object p2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget-object p2, p2, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mViewDragHelper:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2, v0, p3}, Lcom/oneplus/lib/util/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result p2

    if-eqz p2, :cond_9

    new-instance p2, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    invoke-direct {p2, p0, p1, v2}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$SettleRunnable;-><init>(Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_9
    if-eqz v2, :cond_a

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->mListener:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;

    if-eqz p0, :cond_a

    check-cast p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$4;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$4;->onDismiss(Landroid/view/View;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1

    iget p2, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->mActivePointerId:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
