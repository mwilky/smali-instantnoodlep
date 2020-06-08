.class final Landroidx/leanback/widget/PagingIndicator$2;
.super Landroid/util/Property;
.source "PagingIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/PagingIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroidx/leanback/widget/PagingIndicator$Dot;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/leanback/widget/PagingIndicator$Dot;

    iget p0, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/leanback/widget/PagingIndicator$Dot;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    iput p0, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget-object p2, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget v0, p2, Landroidx/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    mul-float/2addr p0, v0

    iput p0, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    return-void
.end method
