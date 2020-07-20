.class public Lcom/android/settingslib/display/DisplayDensityUtils;
.super Ljava/lang/Object;
.source "DisplayDensityUtils.java"


# static fields
.field private static final SUMMARIES_LARGER:[I

.field private static final SUMMARIES_SMALLER:[I


# instance fields
.field private final mCurrentIndex:I

.field private final mDefaultDensity:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f1213d1

    aput v2, v0, v1

    sput-object v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    return-void

    :array_0
    .array-data 4
        0x7f1213d0
        0x7f1213d2
        0x7f1213cf
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "vendor.product.device"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/16 v0, 0x1e0

    const-string v1, "vendor.display.lcd_density"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v3, v1

    :goto_0
    if-gtz v3, :cond_0

    iput v2, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    iput v1, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit16 v5, v5, 0xa0

    div-int/lit16 v5, v5, 0x140

    const/high16 v6, 0x3fc00000    # 1.5f

    int-to-float v5, v5

    int-to-float v7, v3

    div-float/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    sget-object v5, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    array-length v5, v5

    sget-object v6, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    array-length v6, v6

    add-int/lit8 v7, v6, 0x1

    add-int/2addr v7, v5

    new-array v7, v7, [Ljava/lang/String;

    array-length v8, v7

    new-array v8, v8, [I

    if-lez v6, :cond_4

    move v10, v1

    move v1, v2

    move v9, v1

    :goto_1
    if-ge v1, v6, :cond_3

    invoke-virtual {p0}, Lcom/android/settingslib/display/DisplayDensityUtils;->useOld1080Dpi()Z

    move-result v11

    if-eqz v11, :cond_1

    sub-int v11, v6, v1

    mul-int/lit8 v11, v11, 0x28

    rsub-int v11, v11, 0x1a4

    goto :goto_2

    :cond_1
    sub-int v11, v6, v1

    mul-int/lit8 v11, v11, 0x32

    rsub-int v11, v11, 0x190

    :goto_2
    if-ne p1, v11, :cond_2

    move v10, v9

    :cond_2
    sget-object v12, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    aget v12, v12, v1

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v9

    aput v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v10

    goto :goto_3

    :cond_4
    move v9, v2

    :goto_3
    if-ne p1, v3, :cond_5

    move v1, v9

    :cond_5
    aput v3, v8, v9

    const v6, 0x7f1213ce

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x1

    if-lez v5, :cond_e

    move v10, v1

    move v1, v2

    :goto_4
    if-ge v1, v5, :cond_d

    invoke-virtual {p0}, Lcom/android/settingslib/display/DisplayDensityUtils;->useOld1080Dpi()Z

    move-result v11

    const/4 v12, 0x2

    if-eqz v11, :cond_8

    if-nez v1, :cond_6

    move v11, v0

    goto :goto_5

    :cond_6
    if-ne v1, v6, :cond_7

    const/16 v11, 0x1f4

    goto :goto_5

    :cond_7
    if-ne v1, v12, :cond_b

    const/16 v11, 0x21c

    goto :goto_5

    :cond_8
    if-nez v1, :cond_9

    const/16 v11, 0x1c2

    goto :goto_5

    :cond_9
    if-ne v1, v6, :cond_a

    const/16 v11, 0x1d1

    goto :goto_5

    :cond_a
    if-ne v1, v12, :cond_b

    const/16 v11, 0x1ea

    goto :goto_5

    :cond_b
    move v11, v2

    :goto_5
    if-ne p1, v11, :cond_c

    move v10, v9

    :cond_c
    aput v11, v8, v9

    sget-object v11, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    aget v11, v11, v1

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_d
    move v1, v10

    :cond_e
    if-ltz v1, :cond_f

    goto :goto_6

    :cond_f
    array-length v0, v8

    add-int/2addr v0, v6

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    aput p1, v1, v9

    invoke-static {v7, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const v1, 0x7f1213cd

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-virtual {v4, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v9

    move v1, v9

    :goto_6
    iput v3, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    iput v1, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return-void
.end method

.method public static clearForcedDisplayDensity(I)V
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v1, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;-><init>(II)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$clearForcedDisplayDensity$0(II)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "DisplayDensityUtils"

    const-string p1, "Unable to clear forced display density setting"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$setForcedDisplayDensity$1(III)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "DisplayDensityUtils"

    const-string p1, "Unable to save forced display density setting"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setForcedDisplayDensity(II)V
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v1, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$jbnNZEy3zYf8rJTNV5wQSa3Z5eQ;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$jbnNZEy3zYf8rJTNV5wQSa3Z5eQ;-><init>(III)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return p0
.end method

.method public getDefaultDensity()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    return p0
.end method

.method public useOld1080Dpi()Z
    .locals 1

    const-string p0, "ro.sf.lcd_density"

    const-string v0, "480"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "400"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
