.class final Landroidx/mediarouter/app/MediaRouteDialogHelper;
.super Ljava/lang/Object;
.source "MediaRouteDialogHelper.java"


# direct methods
.method public static getDialogWidth(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v1, :cond_1

    const v1, 0x7f0702c7

    goto :goto_1

    :cond_1
    const v1, 0x7f0702c6

    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget p0, v2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    invoke-virtual {v2, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p0

    :goto_2
    float-to-int p0, p0

    return p0

    :cond_2
    const/4 v1, 0x6

    if-ne p0, v1, :cond_3

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, p0

    int-to-float p0, p0

    invoke-virtual {v2, v0, p0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p0

    goto :goto_2

    :cond_3
    const/4 p0, -0x2

    return p0
.end method

.method public static getDialogWidthForDynamicGroup(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p0}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getDialogWidth(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getItemsRemoved(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method
