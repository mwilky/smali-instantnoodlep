.class public abstract Landroidx/leanback/widget/Parallax;
.super Ljava/lang/Object;
.source "Parallax.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PropertyT:",
        "Landroid/util/Property;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/widget/ParallaxEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatValues:[F

.field final mProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TPropertyT;>;"
        }
    .end annotation
.end field

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/leanback/widget/Parallax;->mValues:[I

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/leanback/widget/Parallax;->mFloatValues:[F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final getFloatPropertyValue(I)F
    .locals 0

    iget-object p0, p0, Landroidx/leanback/widget/Parallax;->mFloatValues:[F

    aget p0, p0, p1

    return p0
.end method

.method public updateValues()V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    iget-object v2, p0, Landroidx/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/ParallaxEffect;

    iget-object v3, v2, Landroidx/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v3, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/Parallax;->getFloatPropertyValue(I)F

    move-result v3

    move v6, v3

    move v3, v5

    :goto_1
    iget-object v7, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/Parallax;->getFloatPropertyValue(I)F

    move-result v7

    cmpg-float v8, v7, v6

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-ltz v8, :cond_4

    const v8, -0x800001

    cmpl-float v6, v6, v8

    if-nez v6, :cond_3

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v6, v7, v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v2, v10, [Ljava/lang/Object;

    add-int/lit8 v6, v3, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v0

    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object p0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Property;

    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v9

    const-string p0, "Parallax Property[%d]\"%s\" is UNKNOWN_BEFORE and Property[%d]\"%s\" is UNKNOWN_AFTER"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v6, v7

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v0

    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object p0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Property;

    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v9

    const-string p0, "Parallax Property[%d]\"%s\" is smaller than Property[%d]\"%s\""

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v7, v3

    move-object v6, v4

    move v3, v0

    move v4, v3

    :goto_4
    iget-object v8, v2, Landroidx/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_9

    iget-object v8, v2, Landroidx/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/leanback/widget/ParallaxTarget;

    invoke-virtual {v8}, Landroidx/leanback/widget/ParallaxTarget;->isDirectMapping()Z

    move-result v9

    if-eqz v9, :cond_7

    if-nez v6, :cond_6

    invoke-virtual {v2, p0}, Landroidx/leanback/widget/ParallaxEffect;->calculateDirectValue(Landroidx/leanback/widget/Parallax;)Ljava/lang/Number;

    move-result-object v6

    :cond_6
    invoke-virtual {v8, v6}, Landroidx/leanback/widget/ParallaxTarget;->directUpdate(Ljava/lang/Number;)V

    goto :goto_5

    :cond_7
    if-nez v4, :cond_8

    invoke-virtual {v2, p0}, Landroidx/leanback/widget/ParallaxEffect;->calculateFraction(Landroidx/leanback/widget/Parallax;)F

    move-result v7

    move v4, v5

    :cond_8
    invoke-virtual {v8, v7}, Landroidx/leanback/widget/ParallaxTarget;->update(F)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method
