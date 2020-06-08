.class public Lcom/oneplus/lib/util/AnimatorUtils;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"


# static fields
.field public static final FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field public static final FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field public static final FastOutLinearInInterpolatorSine:Landroid/view/animation/Interpolator;

.field public static final FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public static final GRID_ITEM_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field public static final LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/oneplus/support/core/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v0}, Lcom/oneplus/support/core/view/animation/FastOutLinearInInterpolator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Lcom/oneplus/support/core/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Lcom/oneplus/support/core/view/animation/LinearOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v4, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f19999a    # 0.6f

    invoke-direct {v0, v2, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolatorSine:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->GRID_ITEM_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-void
.end method
