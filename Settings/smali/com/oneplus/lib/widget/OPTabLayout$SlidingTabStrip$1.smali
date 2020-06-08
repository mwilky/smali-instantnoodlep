.class Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;
.super Ljava/lang/Object;
.source "OPTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I

.field final synthetic val$targetLeft:I

.field final synthetic val$targetRight:I


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->this$1:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->val$startLeft:I

    iput p3, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->val$targetLeft:I

    iput p4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->val$startRight:I

    iput p5, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->val$targetRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->this$1:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->val$startLeft:I

    iget v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->val$targetLeft:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->val$startRight:I

    iget p0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->val$targetRight:I

    sub-int/2addr p0, v1

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p0, v1

    invoke-static {v0, v2, p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->access$1700(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;II)V

    return-void
.end method
