.class Lcom/oneplus/settings/edgeeffect/SpringListView2$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SpringListView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/edgeeffect/SpringListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/oneplus/settings/edgeeffect/SpringListView2;",
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

    check-cast p1, Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$000(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setDampedScrollShift(F)V

    return-void
.end method
