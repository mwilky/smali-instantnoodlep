.class Landroidx/leanback/widget/ShadowHelperApi21;
.super Ljava/lang/Object;
.source "ShadowHelperApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/ShadowHelperApi21$ShadowImpl;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/leanback/widget/ShadowHelperApi21$1;

    invoke-direct {v0}, Landroidx/leanback/widget/ShadowHelperApi21$1;-><init>()V

    return-void
.end method

.method public static setShadowFocusLevel(Ljava/lang/Object;F)V
    .locals 2

    check-cast p0, Landroidx/leanback/widget/ShadowHelperApi21$ShadowImpl;

    iget-object v0, p0, Landroidx/leanback/widget/ShadowHelperApi21$ShadowImpl;->mShadowContainer:Landroid/view/View;

    iget v1, p0, Landroidx/leanback/widget/ShadowHelperApi21$ShadowImpl;->mNormalZ:F

    iget p0, p0, Landroidx/leanback/widget/ShadowHelperApi21$ShadowImpl;->mFocusedZ:F

    sub-float/2addr p0, v1

    mul-float/2addr p0, p1

    add-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setZ(F)V

    return-void
.end method
