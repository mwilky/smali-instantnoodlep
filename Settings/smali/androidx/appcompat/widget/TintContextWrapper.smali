.class public Landroidx/appcompat/widget/TintContextWrapper;
.super Landroid/content/ContextWrapper;
.source "TintContextWrapper.java"


# static fields
.field private static final CACHE_LOCK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/TintContextWrapper;->CACHE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public static wrap(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    instance-of v0, p0, Landroidx/appcompat/widget/TintContextWrapper;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/widget/TintResources;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/widget/VectorEnabledTintResources;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Landroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    :cond_1
    :goto_0
    return-object p0
.end method
