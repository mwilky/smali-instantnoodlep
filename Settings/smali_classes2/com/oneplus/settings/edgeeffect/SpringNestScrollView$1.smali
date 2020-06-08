.class Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SpringNestScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->access$000(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;)F

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;

    invoke-virtual {p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->setDampedScrollShift(F)V

    return-void
.end method
