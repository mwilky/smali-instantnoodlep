.class Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TranslationAnimationCreator.java"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# instance fields
.field private final mMovingView:Landroid/view/View;

.field private mPausedX:F

.field private mPausedY:F

.field private final mStartX:I

.field private final mStartY:I

.field private final mTerminalX:F

.field private final mTerminalY:F

.field private mTransitionPosition:[I

.field private final mViewInHierarchy:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iput-object p2, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p3, p1

    iput p3, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p4, p1

    iput p4, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    iput p5, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    iput p6, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    const p2, 0x7f0a075d

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    :cond_0
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    const/4 v0, 0x0

    iget v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p1, v0

    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    const/4 v0, 0x1

    iget v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p1, v0

    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    const v0, 0x7f0a075d

    iget-object p0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget p0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget p0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2

    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method
