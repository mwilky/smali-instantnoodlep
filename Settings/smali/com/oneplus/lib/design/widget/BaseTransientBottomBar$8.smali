.class Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->animateViewIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviousAnimatedIntValue:I

.field final synthetic this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

.field final synthetic val$viewHeight:I


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    iput p2, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;->val$viewHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;->val$viewHeight:I

    iput p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;->mPreviousAnimatedIntValue:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;->mPreviousAnimatedIntValue:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Lcom/oneplus/support/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_0
    iput p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;->mPreviousAnimatedIntValue:I

    return-void
.end method
