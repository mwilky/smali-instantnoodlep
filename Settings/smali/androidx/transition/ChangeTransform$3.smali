.class Landroidx/transition/ChangeTransform$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeTransform.java"


# instance fields
.field private mIsCanceled:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroidx/transition/ChangeTransform;

.field final synthetic val$finalEndMatrix:Landroid/graphics/Matrix;

.field final synthetic val$handleParentChange:Z

.field final synthetic val$pathAnimatorMatrix:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

.field final synthetic val$transforms:Landroidx/transition/ChangeTransform$Transforms;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$Transforms;Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/ChangeTransform$3;->this$0:Landroidx/transition/ChangeTransform;

    iput-boolean p2, p0, Landroidx/transition/ChangeTransform$3;->val$handleParentChange:Z

    iput-object p3, p0, Landroidx/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    iput-object p4, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    iput-object p5, p0, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    iput-object p6, p0, Landroidx/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/ChangeTransform$3;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean p1, p0, Landroidx/transition/ChangeTransform$3;->mIsCanceled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/transition/ChangeTransform$3;->val$handleParentChange:Z

    const v1, 0x7f0a0762

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->this$0:Landroidx/transition/ChangeTransform;

    iget-boolean p1, p1, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    iget-object v2, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    iget-object v1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroidx/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    const v1, 0x7f0a053e

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Landroidx/transition/ViewUtils;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    iget-object p0, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroidx/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-virtual {p1}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v0, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    iget-object v0, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    const v1, 0x7f0a0762

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    iget-object p0, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroidx/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-static {p0}, Landroidx/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    return-void
.end method