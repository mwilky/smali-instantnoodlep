.class public Landroidx/leanback/widget/PagingIndicator$Dot;
.super Ljava/lang/Object;
.source "PagingIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/PagingIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Dot"
.end annotation


# instance fields
.field mAlpha:F

.field mArrowImageRadius:F

.field mCenterX:F

.field mDiameter:F

.field mDirection:F

.field mFgColor:I

.field mLayoutDirection:F

.field mRadius:F

.field mTranslationX:F

.field final synthetic this$0:Landroidx/leanback/widget/PagingIndicator;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/PagingIndicator;)V
    .locals 1

    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mDirection:F

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget-boolean v0, v0, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    iput p1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mLayoutDirection:F

    return-void
.end method


# virtual methods
.method public adjustAlpha()V
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget v1, v1, Landroidx/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget v2, v2, Landroidx/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget-object v3, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget v3, v3, Landroidx/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mFgColor:I

    return-void
.end method

.method deselect()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    iput v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget v2, v1, Landroidx/leanback/widget/PagingIndicator;->mDotDiameter:I

    int-to-float v2, v2

    iput v2, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    iget v2, v1, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    int-to-float v2, v2

    iput v2, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget v2, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget v1, v1, Landroidx/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    mul-float/2addr v2, v1

    iput v2, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    iput v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator$Dot;->adjustAlpha()V

    return-void
.end method
