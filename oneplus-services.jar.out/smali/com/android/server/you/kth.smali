.class Lcom/android/server/you/kth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/you/wtn;->you(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final BX:I = 0x28

.field static final CX:I = 0x96

.field static final DX:F = 300.0f

.field static final EX:I = 0x0

.field static final FX:I = 0x1

.field static final SWIPE_DOWN:I = 0x4

.field static final SWIPE_LEFT:I = 0x2

.field static final SWIPE_RIGHT:I = 0x3


# instance fields
.field AX:I

.field private EP:I

.field private FP:I

.field private GP:F

.field private HP:F

.field final synthetic this$0:Lcom/android/server/you/wtn;


# direct methods
.method constructor <init>(Lcom/android/server/you/wtn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/you/kth;->AX:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object p1, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p1}, Lcom/android/server/you/wtn;->wtn(Lcom/android/server/you/wtn;)Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v2, :cond_c

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_c

    const/4 v6, 0x5

    if-eq v0, v6, :cond_c

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v6, p0, Lcom/android/server/you/kth;->GP:F

    sub-float/2addr v0, v6

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v6, p0, Lcom/android/server/you/kth;->HP:F

    sub-float/2addr p2, v6

    float-to-int p2, p2

    iget v6, p0, Lcom/android/server/you/kth;->AX:I

    const/16 v7, -0x28

    const/16 v8, 0x28

    if-nez v6, :cond_4

    if-le v0, v8, :cond_1

    iput v4, p0, Lcom/android/server/you/kth;->AX:I

    goto :goto_1

    :cond_1
    if-ge v0, v7, :cond_2

    iput v5, p0, Lcom/android/server/you/kth;->AX:I

    goto :goto_1

    :cond_2
    if-ge p2, v7, :cond_3

    iput v2, p0, Lcom/android/server/you/kth;->AX:I

    goto :goto_1

    :cond_3
    if-le p2, v8, :cond_b

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/server/you/kth;->AX:I

    goto :goto_1

    :cond_4
    const/high16 v9, 0x43960000    # 300.0f

    if-ne v6, v2, :cond_7

    if-le p2, v7, :cond_5

    move p2, v1

    :cond_5
    iget v0, p0, Lcom/android/server/you/kth;->FP:I

    add-int/2addr v0, p2

    if-gez p2, :cond_6

    move v1, v8

    :cond_6
    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    goto :goto_0

    :cond_7
    if-eq v6, v5, :cond_8

    if-ne v6, v4, :cond_a

    :cond_8
    iget p2, p0, Lcom/android/server/you/kth;->EP:I

    add-int/2addr p2, v0

    iget v1, p0, Lcom/android/server/you/kth;->AX:I

    if-ne v1, v5, :cond_9

    move v7, v8

    :cond_9
    add-int/2addr p2, v7

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    :goto_0
    int-to-float p2, p2

    div-float/2addr p2, v9

    sub-float/2addr v3, p2

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    :cond_a
    iget-object p2, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p2}, Lcom/android/server/you/wtn;->dma(Lcom/android/server/you/wtn;)Landroid/view/WindowManager;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p0}, Lcom/android/server/you/wtn;->igw(Lcom/android/server/you/wtn;)Landroid/view/View;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    :goto_1
    return v2

    :cond_c
    iget v0, p0, Lcom/android/server/you/kth;->AX:I

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v6, p0, Lcom/android/server/you/kth;->GP:F

    sub-float/2addr v0, v6

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v6, p0, Lcom/android/server/you/kth;->HP:F

    sub-float/2addr p2, v6

    float-to-int p2, p2

    iget v6, p0, Lcom/android/server/you/kth;->AX:I

    const/16 v7, 0x96

    if-ne v6, v2, :cond_f

    if-lez p2, :cond_d

    move p2, v1

    :cond_d
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-gt p2, v7, :cond_e

    goto :goto_2

    :cond_e
    iget-object p2, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p2}, Lcom/android/server/you/wtn;->sis(Lcom/android/server/you/wtn;)Lcom/android/server/you/wtn$you;

    move-result-object p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p2}, Lcom/android/server/you/wtn;->sis(Lcom/android/server/you/wtn;)Lcom/android/server/you/wtn$you;

    move-result-object p2

    invoke-interface {p2, v5}, Lcom/android/server/you/wtn$you;->zta(I)V

    goto :goto_4

    :cond_f
    if-eq v6, v5, :cond_10

    if-ne v6, v4, :cond_13

    :cond_10
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-gt p2, v7, :cond_11

    :goto_2
    move p2, v2

    goto :goto_5

    :cond_11
    iget-object p2, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p2}, Lcom/android/server/you/wtn;->sis(Lcom/android/server/you/wtn;)Lcom/android/server/you/wtn$you;

    move-result-object p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p2}, Lcom/android/server/you/wtn;->sis(Lcom/android/server/you/wtn;)Lcom/android/server/you/wtn$you;

    move-result-object p2

    if-lez v0, :cond_12

    goto :goto_3

    :cond_12
    move v4, v2

    :goto_3
    invoke-interface {p2, v4}, Lcom/android/server/you/wtn$you;->zta(I)V

    :cond_13
    :goto_4
    move p2, v1

    :goto_5
    if-eqz p2, :cond_15

    iget p2, p0, Lcom/android/server/you/kth;->AX:I

    if-ne p2, v2, :cond_14

    iget p2, p0, Lcom/android/server/you/kth;->EP:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p2, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    new-array v0, v5, [I

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v4, v0, v1

    iget v1, p0, Lcom/android/server/you/kth;->FP:I

    aput v1, v0, v2

    goto :goto_6

    :cond_14
    iget p2, p0, Lcom/android/server/you/kth;->FP:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    new-array v0, v5, [I

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v4, v0, v1

    iget v1, p0, Lcom/android/server/you/kth;->EP:I

    aput v1, v0, v2

    :goto_6
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/you/wtn;->zta(Lcom/android/server/you/wtn;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget p2, p0, Lcom/android/server/you/kth;->AX:I

    iget-object v0, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {v0}, Lcom/android/server/you/wtn;->gck(Lcom/android/server/you/wtn;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/you/cno;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/you/cno;-><init>(Lcom/android/server/you/kth;ILandroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p2}, Lcom/android/server/you/wtn;->gck(Lcom/android/server/you/wtn;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0xe1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p2}, Lcom/android/server/you/wtn;->gck(Lcom/android/server/you/wtn;)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    :cond_15
    iget-object p2, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p2}, Lcom/android/server/you/wtn;->dma(Lcom/android/server/you/wtn;)Landroid/view/WindowManager;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p0}, Lcom/android/server/you/wtn;->igw(Lcom/android/server/you/wtn;)Landroid/view/View;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_16
    iget-object p1, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p1}, Lcom/android/server/you/wtn;->sis(Lcom/android/server/you/wtn;)Lcom/android/server/you/wtn$you;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p0, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p0}, Lcom/android/server/you/wtn;->sis(Lcom/android/server/you/wtn;)Lcom/android/server/you/wtn$you;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/server/you/wtn$you;->kth(I)V

    :cond_17
    :goto_7
    return v2

    :cond_18
    iget-object v0, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {v0}, Lcom/android/server/you/wtn;->gck(Lcom/android/server/you/wtn;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {v0}, Lcom/android/server/you/wtn;->gck(Lcom/android/server/you/wtn;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {v0}, Lcom/android/server/you/wtn;->gck(Lcom/android/server/you/wtn;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_19
    iget-object v0, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-virtual {v0, p1}, Lcom/android/server/you/wtn;->zta(Landroid/view/WindowManager$LayoutParams;)V

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/android/server/you/kth;->EP:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/android/server/you/kth;->FP:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/you/kth;->GP:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lcom/android/server/you/kth;->HP:F

    iput v1, p0, Lcom/android/server/you/kth;->AX:I

    iget-object p2, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p2}, Lcom/android/server/you/wtn;->dma(Lcom/android/server/you/wtn;)Landroid/view/WindowManager;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p0}, Lcom/android/server/you/wtn;->igw(Lcom/android/server/you/wtn;)Landroid/view/View;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v2
.end method
