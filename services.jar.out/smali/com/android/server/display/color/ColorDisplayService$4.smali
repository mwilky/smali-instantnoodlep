.class Lcom/android/server/display/color/ColorDisplayService$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/color/ColorDisplayService;->applyTintForTrueTone(Lcom/android/server/display/color/TintController;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCancelled:Z

.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;

.field final synthetic val$tintController:Lcom/android/server/display/color/TintController;

.field final synthetic val$to:I

.field final synthetic val$trueToneActivated:Z


# direct methods
.method constructor <init>(Lcom/android/server/display/color/ColorDisplayService;ILcom/android/server/display/color/TintController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iput p2, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$to:I

    iput-object p3, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/TintController;

    iput-boolean p4, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$trueToneActivated:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->mIsCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->mIsCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$to:I

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2300(Lcom/android/server/display/color/ColorDisplayService;I)V

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2402(Lcom/android/server/display/color/ColorDisplayService;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/TintController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/TintController;->setAnimator(Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2500(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$trueToneActivated:Z

    if-eq v3, v0, :cond_3

    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$4;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v4, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2600(Lcom/android/server/display/color/ColorDisplayService;I)V

    :cond_3
    return-void
.end method
