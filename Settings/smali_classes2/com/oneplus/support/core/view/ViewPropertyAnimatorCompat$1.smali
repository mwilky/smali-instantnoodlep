.class Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->setListenerInternal(Landroid/view/View;Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    iput-object p3, p0, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    iget-object p0, p0, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {p1, p0}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    iget-object p0, p0, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {p1, p0}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    iget-object p0, p0, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {p1, p0}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    return-void
.end method
