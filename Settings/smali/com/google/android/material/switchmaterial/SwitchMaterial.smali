.class public Lcom/google/android/material/switchmaterial/SwitchMaterial;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "SwitchMaterial.java"


# static fields
.field private static final ENABLED_CHECKED_STATES:[[I


# instance fields
.field private final elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

.field private materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

.field private materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    :array_2
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_3
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f04049c

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04049c

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const v0, 0x7f13064b

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/internal/ThemeEnforcement;->createThemedContext(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance p1, Lcom/google/android/material/elevation/ElevationOverlayProvider;

    invoke-direct {p1, v0}, Lcom/google/android/material/elevation/ElevationOverlayProvider;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    sget-object v2, Lcom/google/android/material/R$styleable;->SwitchMaterial:[I

    const/4 p1, 0x0

    new-array v5, p1, [I

    const v4, 0x7f13064b

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$styleable;->SwitchMaterial_useMaterialThemeColors:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method private getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const v0, 0x7f0400e7

    invoke-static {p0, v0}, Lcom/google/android/material/R$style;->getColor(Landroid/view/View;I)I

    move-result v0

    const v1, 0x7f0400d3

    invoke-static {p0, v1}, Lcom/google/android/material/R$style;->getColor(Landroid/view/View;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070319

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    int-to-float v2, v2

    invoke-virtual {v3, v0, v2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->layerOverlayIfNeeded(IF)I

    move-result v2

    sget-object v3, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    array-length v3, v3

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v5}, Lcom/google/android/material/R$style;->layer(IIF)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v4, 0x2

    const v5, 0x3ec28f5c    # 0.38f

    invoke-static {v0, v1, v5}, Lcom/google/android/material/R$style;->layer(IIF)I

    move-result v0

    aput v0, v3, v4

    const/4 v0, 0x3

    aput v2, v3, v0

    new-instance v0, Landroid/content/res/ColorStateList;

    sget-object v1, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    invoke-direct {v0, v1, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method private getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    array-length v0, v0

    new-array v0, v0, [I

    const v1, 0x7f0400e7

    invoke-static {p0, v1}, Lcom/google/android/material/R$style;->getColor(Landroid/view/View;I)I

    move-result v1

    const v2, 0x7f0400d3

    invoke-static {p0, v2}, Lcom/google/android/material/R$style;->getColor(Landroid/view/View;I)I

    move-result v2

    const v3, 0x7f0400de

    invoke-static {p0, v3}, Lcom/google/android/material/R$style;->getColor(Landroid/view/View;I)I

    move-result v3

    const/4 v4, 0x0

    const v5, 0x3f0a3d71    # 0.54f

    invoke-static {v1, v2, v5}, Lcom/google/android/material/R$style;->layer(IIF)I

    move-result v5

    aput v5, v0, v4

    const/4 v4, 0x1

    const v5, 0x3ea3d70a    # 0.32f

    invoke-static {v1, v3, v5}, Lcom/google/android/material/R$style;->layer(IIF)I

    move-result v5

    aput v5, v0, v4

    const/4 v4, 0x2

    const v5, 0x3df5c28f    # 0.12f

    invoke-static {v1, v2, v5}, Lcom/google/android/material/R$style;->layer(IIF)I

    move-result v2

    aput v2, v0, v4

    const/4 v2, 0x3

    invoke-static {v1, v3, v5}, Lcom/google/android/material/R$style;->layer(IIF)I

    move-result v1

    aput v1, v0, v2

    new-instance v1, Landroid/content/res/ColorStateList;

    sget-object v2, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

    return-object p0
.end method


# virtual methods
.method public setUseMaterialThemeColors(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method
