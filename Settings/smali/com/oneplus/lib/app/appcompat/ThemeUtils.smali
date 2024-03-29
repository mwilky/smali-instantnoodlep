.class public Lcom/oneplus/lib/app/appcompat/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field static final CHECKED_STATE_SET:[I

.field static final DISABLED_STATE_SET:[I

.field static final EMPTY_STATE_SET:[I

.field static final FOCUSED_STATE_SET:[I

.field static final PRESSED_STATE_SET:[I

.field private static final TEMP_ARRAY:[I

.field private static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->DISABLED_STATE_SET:[I

    new-array v1, v0, [I

    const v3, 0x101009c

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->FOCUSED_STATE_SET:[I

    new-array v1, v0, [I

    const v3, 0x10102fe

    aput v3, v1, v2

    new-array v1, v0, [I

    const v3, 0x10100a7

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->PRESSED_STATE_SET:[I

    new-array v1, v0, [I

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->CHECKED_STATE_SET:[I

    new-array v1, v0, [I

    const v3, 0x10100a1

    aput v3, v1, v2

    new-array v1, v2, [I

    sput-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->EMPTY_STATE_SET:[I

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->TEMP_ARRAY:[I

    return-void
.end method

.method public static getDisabledThemeAttrColor(Landroid/content/Context;I)I
    .locals 4

    invoke-static {p0, p1}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->DISABLED_STATE_SET:[I

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sget-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    invoke-static {p0, p1}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/lib/util/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method

.method public static getThemeAttrColor(Landroid/content/Context;I)I
    .locals 2

    sget-object v0, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->TEMP_ARRAY:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v1, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getColor(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    throw p1
.end method

.method public static getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    sget-object v0, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->TEMP_ARRAY:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    throw p1
.end method
