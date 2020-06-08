.class public final Lcom/oneplus/lib/design/widget/ThemeEnforcement;
.super Ljava/lang/Object;
.source "ThemeEnforcement.java"


# static fields
.field private static final MATERIAL_CHECK_ATTRS:[I

.field private static final ONEPLUS_CHECK_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f0400e2

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->ONEPLUS_CHECK_ATTRS:[I

    new-array v0, v0, [I

    const v1, 0x7f0400e5

    aput v1, v0, v2

    sput-object v0, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    return-void
.end method

.method private static checkTheme(Landroid/content/Context;[ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The style on this component requires your app theme to be "

    const-string v0, " (or a descendant)."

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline18(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lcom/oneplus/lib/app/appcompat/TintTypedArray;
    .locals 8

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->ThemeEnforcement:[I

    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_0

    sget-object v0, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    const-string v3, "Theme.MaterialComponents"

    invoke-static {p0, v0, v3}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->ONEPLUS_CHECK_ATTRS:[I

    const-string v3, "Oneplus.Theme"

    invoke-static {p0, v0, v3}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->ThemeEnforcement:[I

    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4

    :cond_1
    const/4 v3, -0x1

    if-eqz p5, :cond_5

    array-length v4, p5

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    array-length v5, p5

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_4

    aget v7, p5, v6

    invoke-virtual {v4, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-ne v7, v3, :cond_3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_5
    :goto_1
    sget p5, Lcom/oneplus/commonctrl/R$styleable;->ThemeEnforcement_android_textAppearance:I

    invoke-virtual {v0, p5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p5

    if-eq p5, v3, :cond_6

    :goto_2
    move v1, v2

    :cond_6
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_7

    :goto_4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
