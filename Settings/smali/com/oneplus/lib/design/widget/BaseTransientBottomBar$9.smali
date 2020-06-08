.class Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    iput p2, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;->val$event:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    iget p0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;->val$event:I

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->onViewHidden(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    invoke-static {p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->access$000(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;

    move-result-object p0

    const/4 p1, 0x0

    const/16 v0, 0xb4

    invoke-interface {p0, p1, v0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;->animateContentOut(II)V

    return-void
.end method
