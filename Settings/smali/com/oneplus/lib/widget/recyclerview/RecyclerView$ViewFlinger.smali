.class Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2200()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2200()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method postOnAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v4

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    iget v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v8, v5, v8

    iget v9, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v9, v7, v9

    iput v5, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingX:I

    iput v7, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingY:I

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v10

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->eatRequestLayout()V

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    const-string v10, "RV Scroll"

    invoke-static {v10}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-eqz v8, :cond_0

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v10

    iget-object v11, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v12, v11, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v11, v11, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v10, v8, v12, v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v10

    sub-int v11, v8, v10

    goto :goto_0

    :cond_0
    move v10, v1

    move v11, v10

    :goto_0
    if-eqz v9, :cond_1

    iget-object v12, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v12

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v14, v13, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v13, v13, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v12, v9, v14, v13}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v12

    sub-int v13, v9, v12

    goto :goto_1

    :cond_1
    move v12, v1

    move v13, v12

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v14}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v14, v14, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v14}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v14

    move v15, v1

    :goto_2
    if-ge v15, v14, :cond_5

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v15}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v6, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v6, :cond_3

    iget-object v6, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v17, v10

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    if-ne v1, v10, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    if-eq v2, v10, :cond_4

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v19, v11

    add-int v11, v18, v2

    invoke-virtual {v6, v1, v2, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    :cond_3
    move/from16 v17, v10

    :cond_4
    move/from16 v19, v11

    :goto_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v17

    move/from16 v11, v19

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    move/from16 v17, v10

    move/from16 v19, v11

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resumeRequestLayout(Z)V

    if-nez v4, :cond_6

    move/from16 v2, v17

    move/from16 v1, v19

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    throw v1

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->invalidate()V

    :cond_8
    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v6

    const/4 v10, 0x2

    if-eq v6, v10, :cond_9

    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v6, v8, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    :cond_9
    if-nez v1, :cond_a

    if-eqz v13, :cond_12

    :cond_a
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v6

    float-to-int v6, v6

    if-eq v1, v5, :cond_c

    if-gez v1, :cond_b

    neg-int v11, v6

    goto :goto_5

    :cond_b
    if-lez v1, :cond_c

    move v11, v6

    goto :goto_5

    :cond_c
    const/4 v11, 0x0

    :goto_5
    if-eq v13, v7, :cond_e

    if-gez v13, :cond_d

    neg-int v6, v6

    goto :goto_6

    :cond_d
    if-lez v13, :cond_e

    goto :goto_6

    :cond_e
    const/4 v6, 0x0

    :goto_6
    iget-object v14, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v14

    if-eq v14, v10, :cond_f

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v10, v11, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->absorbGlows(II)V

    :cond_f
    if-nez v11, :cond_10

    if-eq v1, v5, :cond_10

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    if-nez v1, :cond_12

    :cond_10
    if-nez v6, :cond_11

    if-eq v13, v7, :cond_11

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_12
    if-nez v2, :cond_13

    if-eqz v12, :cond_14

    :cond_13
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, v2, v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchOnScrolled(II)V

    :cond_14
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_15
    if-eqz v9, :cond_16

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_16

    if-ne v12, v9, :cond_16

    const/4 v1, 0x1

    goto :goto_7

    :cond_16
    const/4 v1, 0x0

    :goto_7
    if-eqz v8, :cond_17

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_17

    if-ne v2, v8, :cond_17

    const/4 v2, 0x1

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    :goto_8
    if-nez v8, :cond_18

    if-eqz v9, :cond_1a

    :cond_18
    if-nez v2, :cond_1a

    if-eqz v1, :cond_19

    goto :goto_9

    :cond_19
    const/16 v16, 0x0

    goto :goto_a

    :cond_1a
    :goto_9
    const/16 v16, 0x1

    :goto_a
    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1c

    if-nez v16, :cond_1b

    goto :goto_b

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    const/4 v2, 0x0

    goto :goto_c

    :cond_1c
    :goto_b
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    goto :goto_c

    :cond_1d
    move v2, v1

    :goto_c
    if-nez v4, :cond_1f

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    :cond_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    throw v0
.end method

.method public smoothScrollBy(II)V
    .locals 12

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v2, v4

    mul-int v4, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v5, v4

    int-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v3, :cond_1

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    :goto_1
    div-int/lit8 v6, v5, 0x2

    int-to-float v4, v4

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v4, v7

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v6, v6

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v4, v8

    float-to-double v8, v4

    const-wide v10, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v8, v10

    double-to-float v4, v8

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v4, v8

    mul-float/2addr v4, v6

    add-float/2addr v4, v6

    if-lez v2, :cond_2

    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v2

    div-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    int-to-float v0, v0

    div-float/2addr v0, v5

    add-float/2addr v0, v7

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_3
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1

    invoke-static {}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2200()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    iput-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    :cond_0
    iget-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v0, 0x2

    invoke-static {p4, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    const/4 p4, 0x0

    iput p4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput p4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method
