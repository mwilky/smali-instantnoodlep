.class Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;

.field final synthetic val$child:Lcom/oneplus/lib/design/widget/AppBarLayout;

.field final synthetic val$coordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;->this$0:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;

    iput-object p2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;->val$coordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    iput-object p3, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;->val$child:Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;->this$0:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;->val$coordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;->val$child:Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p0, p1}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    return-void
.end method
