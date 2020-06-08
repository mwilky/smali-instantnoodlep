.class Lcom/oneplus/lib/widget/OPEditText$1;
.super Ljava/lang/Object;
.source "OPEditText.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/OPEditText;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/OPEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPEditText$1;->this$0:Lcom/oneplus/lib/widget/OPEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEditText$1;->this$0:Lcom/oneplus/lib/widget/OPEditText;

    iget-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mHightlightColorAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getHighlightColor()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    int-to-float v1, v1

    const/4 v4, 0x0

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-static {v4, v2, p1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {v1, v2, p1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v4, v1, v0

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mHightlightColorAnimator:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mHightlightColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mHightlightColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/lib/widget/OPEditText$2;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/OPEditText$2;-><init>(Lcom/oneplus/lib/widget/OPEditText;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEditText;->mHightlightColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return v0
.end method
