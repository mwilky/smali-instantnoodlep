.class public final Lcom/oneplus/android/server/display/gwm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/display/gwm$zta;
    }
.end annotation


# static fields
.field private static final COLOR_MATRIX_EVALUATOR:Lcom/oneplus/android/server/display/gwm$zta;

.field public static final DALTONIZER_CORRECT_DEUTERANOMALY:I = 0xc

.field private static final DEFAULT_NIGHT_BRIGHTNESS:I = 0xf

.field private static final DEFAULT_NIGHT_COLORTEMPERA:I = 0x2e

.field public static final Koa:I = 0x15d

.field public static final LEVEL_COLOR_MATRIX_GRAYSCALE:I = 0xc8

.field public static final LEVEL_COLOR_MATRIX_INVERT_COLOR:I = 0x12c

.field public static final LEVEL_COLOR_MATRIX_ONEPLUS_COLOR:I = 0x15e

.field public static final LEVEL_COLOR_MATRIX_SATURATION:I = 0x96

.field public static final Loa:I = 0x15f

.field private static final MATRIX_GRAYSCALE:[F

.field private static final MATRIX_INVERT_COLOR:[F

.field private static Moa:I = 0x0

.field private static Noa:F = 0.0f

.field private static final Ooa:I = 0x3e

.field private static final Poa:I = -0x1

.field private static final Qoa:[F

.field private static Roa:[F = null

.field private static Soa:[F = null

.field private static final TAG:Ljava/lang/String; = "OpColorTintManager"

.field private static final TRANSITION_DURATION:J = 0xbb8L

.field private static Toa:[F

.field public static final Uoa:[F

.field public static final Voa:[F

.field private static Woa:[F

.field private static final Xoa:[F

.field public static mCurrentUser:I


# instance fields
.field private Goa:Z

.field private Hoa:Z

.field private Ioa:Z

.field private Joa:Z

.field private final Mna:Lcom/oneplus/android/server/display/ugm;

.field private final mContext:Landroid/content/Context;

.field private mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

.field private mScreenOff:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oneplus/android/server/display/gwm$zta;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/android/server/display/gwm$zta;-><init>(Lcom/oneplus/android/server/display/bvj;)V

    sput-object v0, Lcom/oneplus/android/server/display/gwm;->COLOR_MATRIX_EVALUATOR:Lcom/oneplus/android/server/display/gwm$zta;

    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->Qoa:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->Soa:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->Toa:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->Uoa:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_5

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->Voa:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_6

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->MATRIX_GRAYSCALE:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_7

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->MATRIX_INVERT_COLOR:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_8

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->Woa:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_9

    sput-object v0, Lcom/oneplus/android/server/display/gwm;->Xoa:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f04e3bd    # 0.5191f
        0x3e531f0a
        0x3e390d02
        0x0
        0x3ec353f8    # 0.3815f
        0x3f242bae
        0x3ea11b46
        0x0
        0x3dcb923a    # 0.0994f
        0x3dbf8f7d
        0x3ea8aa69
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e4fe7e1
        0x3e3d5b88
        0x0
        0x3f371759    # 0.7152f
        0x3f2eda23
        0x3f1f40b3
        0x0
        0x3d93dd98    # 0.0722f
        0x3d8d362e
        0x3d809d0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3ecdd2f2    # 0.402f
        -0x40e6e979    # -0.598f
        -0x40e6a7f0    # -0.599f
        0x0
        -0x4069ba5e    # -1.174f
        -0x41cdd2f2    # -0.174f
        -0x4069999a    # -1.175f
        0x0
        -0x4196872b    # -0.228f
        -0x4196872b    # -0.228f
        0x3f45a1cb    # 0.772f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f6b851f    # 0.92f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/gwm;->Goa:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/gwm;->Hoa:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/gwm;->Ioa:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/gwm;->Joa:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/gwm;->mScreenOff:Z

    iput-object p1, p0, Lcom/oneplus/android/server/display/gwm;->mContext:Landroid/content/Context;

    sput p2, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    new-instance p2, Lcom/oneplus/android/server/display/ugm;

    invoke-direct {p2, p1}, Lcom/oneplus/android/server/display/ugm;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    new-instance p2, Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-direct {p2, p1}, Lcom/oneplus/android/server/display/OpColorModeManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    return-void
.end method

.method private Gb(Z)V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/gwm;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    const-string v1, "temp_disable_inversion"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private Zu()V
    .locals 7

    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->bv()I

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/gwm;->Moa:I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->av()F

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/gwm;->Noa:F

    sget v0, Lcom/oneplus/android/server/display/gwm;->Moa:I

    sget v1, Lcom/oneplus/android/server/display/gwm;->Noa:F

    invoke-static {v0, v1}, Lcom/oneplus/android/server/display/zgw;->zta(IF)[F

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/display/gwm;->Soa:[F

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->X(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->R(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Soa:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    :cond_0
    return-void
.end method

.method private _u()I
    .locals 3

    iget-object p0, p0, Lcom/oneplus/android/server/display/gwm;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    const-string v1, "oem_screen_better_value"

    const/16 v2, 0x3e

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x0

    add-int/lit8 p0, p0, 0x64

    const/16 v0, 0x32

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x10

    goto :goto_0

    :cond_0
    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, 0xa

    :cond_1
    :goto_0
    return p0
.end method

.method private av()F
    .locals 3

    iget-object p0, p0, Lcom/oneplus/android/server/display/gwm;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    const-string v1, "oem_nightmode_brightness_progress"

    const/16 v2, 0xf

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x0

    add-int/lit8 p0, p0, 0x64

    int-to-float p0, p0

    const v0, 0x3a83126f    # 0.001f

    mul-float/2addr p0, v0

    const v0, 0x3f666666    # 0.9f

    add-float/2addr p0, v0

    return p0
.end method

.method private bv()I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x10f

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const/16 v3, 0x2e

    const-string v4, "oem_nightmode_progress_status"

    if-nez v1, :cond_1

    new-array v0, v0, [I

    const/16 v1, 0x10e

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/gwm;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-static {p0, v4, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    sub-int/2addr v2, p0

    add-int/lit8 v2, v2, 0x3c

    return v2

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/gwm;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-static {p0, v4, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3efae148    # 0.49f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    sub-int/2addr v2, p0

    add-int/lit8 v2, v2, 0x49

    return v2
.end method

.method private cv()Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x10f

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_2

    new-array v1, v0, [I

    const/16 v3, 0x10e

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/gwm;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    const-string v3, "screen_color_mode_settings_value"

    invoke-static {p0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    :goto_1
    return v2
.end method

.method static synthetic you(Lcom/oneplus/android/server/display/gwm;)Lcom/oneplus/android/server/display/ugm;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/display/color/DisplayTransformManager;IZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [F

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    if-eqz p2, :cond_0

    sput-object p3, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    :cond_0
    return-void
.end method

.method static synthetic you([F)[F
    .locals 0

    sput-object p0, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/display/color/DisplayTransformManager;IZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [F

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    if-eqz p2, :cond_0

    sput-object p3, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    :cond_0
    return-void
.end method

.method private zta([F[FZIZ)V
    .locals 7

    const-string v0, "OpColorTintManager"

    const-string v1, "start applyTint"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    invoke-virtual {v0}, Lcom/oneplus/android/server/display/wtn;->cancelAnimator()V

    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz p3, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3, p4, p2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    if-eqz p5, :cond_0

    sput-object p2, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    :cond_0
    return-void

    :cond_1
    iget-object p3, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    sget-object v0, Lcom/oneplus/android/server/display/gwm;->COLOR_MATRIX_EVALUATOR:Lcom/oneplus/android/server/display/gwm$zta;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/oneplus/android/server/display/wtn;->setAnimator(Landroid/animation/ValueAnimator;)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/wtn;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/wtn;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/wtn;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p3, Lcom/oneplus/android/server/display/you;

    invoke-direct {p3, v3, p4, p5}, Lcom/oneplus/android/server/display/you;-><init>(Lcom/android/server/display/color/DisplayTransformManager;IZ)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/wtn;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p3, Lcom/oneplus/android/server/display/bvj;

    move-object v1, p3

    move-object v2, p0

    move v4, p4

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/android/server/display/bvj;-><init>(Lcom/oneplus/android/server/display/gwm;Lcom/android/server/display/color/DisplayTransformManager;I[FZ)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/wtn;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private zta([F[FZIZJ)V
    .locals 7

    const-string v0, "OpColorTintManager"

    const-string v1, "start applyTintforDcNight"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    invoke-virtual {v0}, Lcom/oneplus/android/server/display/wtn;->cancelAnimator()V

    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz p3, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3, p4, p2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    if-eqz p5, :cond_0

    sput-object p2, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    :cond_0
    return-void

    :cond_1
    iget-object p3, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    sget-object v0, Lcom/oneplus/android/server/display/gwm;->COLOR_MATRIX_EVALUATOR:Lcom/oneplus/android/server/display/gwm$zta;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/oneplus/android/server/display/wtn;->setAnimator(Landroid/animation/ValueAnimator;)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/wtn;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p6, p7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/wtn;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/wtn;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p3, Lcom/oneplus/android/server/display/zta;

    invoke-direct {p3, v3, p4, p5}, Lcom/oneplus/android/server/display/zta;-><init>(Lcom/android/server/display/color/DisplayTransformManager;IZ)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/wtn;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p3, Lcom/oneplus/android/server/display/ibl;

    move-object v1, p3

    move-object v2, p0

    move v4, p4

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/android/server/display/ibl;-><init>(Lcom/oneplus/android/server/display/gwm;Lcom/android/server/display/color/DisplayTransformManager;I[FZ)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/wtn;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public Af()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/gwm;->Joa:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/gwm;->setCustomColorTemperature()V

    :cond_0
    return-void
.end method

.method public B(Z)V
    .locals 12

    const-string p1, "OpColorTintManager"

    const-string v0, "resetEnhancementCCT"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/gwm;->Joa:Z

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->X(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->R(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->W(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->cv()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Toa:[F

    const/4 v3, 0x0

    const/16 v4, 0x15e

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    goto :goto_0

    :cond_1
    sget-object v7, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    sget-object v8, Lcom/oneplus/android/server/display/gwm;->Qoa:[F

    const/4 v9, 0x0

    const/16 v10, 0x15e

    const/4 v11, 0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "oneplus scene mode on, do not sresetEnhancementCCT"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Bf()V
    .locals 6

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Qoa:[F

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15e

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    return-void
.end method

.method public Cf()V
    .locals 7

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/gwm;->Joa:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->X(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->R(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->W(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Woa:[F

    const/4 v4, 0x1

    const/16 v5, 0x15e

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public Df()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->Zu()V

    return-void
.end method

.method public G(Z)V
    .locals 8

    const-string v0, "OpColorTintManager"

    const-string v1, "colorReadModeSwitch"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    sget-object v4, Lcom/oneplus/android/server/display/gwm;->Uoa:[F

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    goto :goto_2

    :cond_0
    iget-boolean p1, p0, Lcom/oneplus/android/server/display/gwm;->Joa:Z

    if-eqz p1, :cond_1

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Woa:[F

    :goto_0
    sget-object v1, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    const/4 v3, 0x0

    const/16 v4, 0x15e

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->cv()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/oneplus/android/server/display/gwm;->Toa:[F

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/oneplus/android/server/display/gwm;->Qoa:[F

    :goto_1
    move-object v2, p1

    goto :goto_0

    :goto_2
    return-void
.end method

.method public H(Z)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decreaseGreenAtLowBacklightAndBlackMode, decreaseGreen = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpColorTintManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class p0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz p0, :cond_1

    const/16 v0, 0x15d

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oneplus/android/server/display/gwm;->Xoa:[F

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oneplus/android/server/display/gwm;->Qoa:[F

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_1
    return-void
.end method

.method public I(Z)V
    .locals 9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nightModeSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpColorTintManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->bv()I

    move-result v2

    sput v2, Lcom/oneplus/android/server/display/gwm;->Moa:I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->av()F

    move-result v2

    sput v2, Lcom/oneplus/android/server/display/gwm;->Noa:F

    sget v2, Lcom/oneplus/android/server/display/gwm;->Moa:I

    sget v3, Lcom/oneplus/android/server/display/gwm;->Noa:F

    invoke-static {v2, v3}, Lcom/oneplus/android/server/display/zgw;->zta(IF)[F

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Soa:[F

    iget-object v2, p0, Lcom/oneplus/android/server/display/gwm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget v3, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    const/4 v4, 0x0

    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/android/server/display/gwm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget v5, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    const-string v6, "oneplus_dc_dimming_value"

    invoke-static {v3, v6, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v4, v5

    :cond_0
    const/16 v3, 0x23

    if-eqz p1, :cond_2

    if-eqz v4, :cond_1

    if-ge v2, v3, :cond_1

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Soa:[F

    const/4 v3, 0x0

    const/16 v4, 0x15e

    const/4 v5, 0x1

    const-wide/16 v6, 0x3e8

    move-object v0, p0

    :goto_0
    invoke-direct/range {v0 .. v7}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZJ)V

    goto :goto_4

    :cond_1
    sget-object v1, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Soa:[F

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/android/server/display/gwm;->Joa:Z

    if-eqz v1, :cond_3

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Woa:[F

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    :goto_1
    const/4 v3, 0x0

    const/16 v4, 0x15e

    const/4 v5, 0x1

    move-object v0, p0

    :goto_2
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    goto :goto_4

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->cv()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->Toa:[F

    goto :goto_3

    :cond_4
    sget-object v1, Lcom/oneplus/android/server/display/gwm;->Qoa:[F

    :goto_3
    move-object v5, v1

    if-eqz v4, :cond_5

    if-ge v2, v3, :cond_5

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    const/4 v3, 0x0

    const/16 v4, 0x15e

    const/4 v6, 0x1

    const-wide/16 v7, 0x3e8

    move-object v0, p0

    move-object v2, v5

    move v5, v6

    move-wide v6, v7

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    const/4 v3, 0x0

    const/16 v4, 0x15e

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, v5

    move v5, v6

    goto :goto_2

    :goto_4
    return-void
.end method

.method public J(Z)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readingModeSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorTintManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    sget-object v4, Lcom/oneplus/android/server/display/gwm;->Voa:[F

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    goto :goto_2

    :cond_0
    iget-boolean p1, p0, Lcom/oneplus/android/server/display/gwm;->Joa:Z

    if-eqz p1, :cond_1

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Woa:[F

    :goto_0
    sget-object v1, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    const/4 v3, 0x0

    const/16 v4, 0x15e

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->cv()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/oneplus/android/server/display/gwm;->Toa:[F

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/oneplus/android/server/display/gwm;->Qoa:[F

    :goto_1
    move-object v2, p1

    goto :goto_0

    :goto_2
    return-void
.end method

.method public K(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    const/4 v2, 0x0

    const-string v3, "accessibility_display_inversion_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/16 v0, 0x12c

    const-string v3, "temp_disable_inversion"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/wtn;->cancelAnimator()V

    const-class p1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->MATRIX_INVERT_COLOR:[F

    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/gwm;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget p1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-static {p0, v3, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_1
    const-class p1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/display/gwm;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget v0, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-static {p1, v3, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/display/gwm;->mScreenOff:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public L(I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enhanceVividAndNaturalCCT cct = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorTintManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/gwm;->Joa:Z

    invoke-static {p1}, Lcom/oneplus/android/server/display/zgw;->ca(I)[F

    move-result-object p1

    sput-object p1, Lcom/oneplus/android/server/display/gwm;->Woa:[F

    iget-object p1, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v0, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->X(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v0, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->R(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v0, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->W(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    sget-object v4, Lcom/oneplus/android/server/display/gwm;->Woa:[F

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "oneplus scene mode on, do not enhanceVividAndNaturalCCT"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public L(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/gwm;->mScreenOff:Z

    return-void
.end method

.method public lf()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/gwm;->Joa:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->_u()I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/android/server/display/zgw;->ca(I)[F

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/display/gwm;->Woa:[F

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->X(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->R(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->W(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Woa:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "OpColorTintManager"

    const-string v0, "oneplus scene mode on, do not enhanceCoustomModeCCT"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recoverOneplusColorMatrix()V
    .locals 6

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15e

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    return-void
.end method

.method public rf()V
    .locals 7

    const-string v0, "OpColorTintManager"

    const-string v1, "changeColorRead2Night"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->bv()I

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/gwm;->Moa:I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->av()F

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/gwm;->Noa:F

    sget v0, Lcom/oneplus/android/server/display/gwm;->Moa:I

    sget v1, Lcom/oneplus/android/server/display/gwm;->Noa:F

    invoke-static {v0, v1}, Lcom/oneplus/android/server/display/zgw;->zta(IF)[F

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/display/gwm;->Soa:[F

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Soa:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    return-void
.end method

.method public setCustomColorTemperature()V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    const-string v2, "oem_screen_better_value"

    const/16 v3, 0x3e

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, 0x64

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "colorTempearture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpColorTintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/oneplus/android/server/display/zgw;->ca(I)[F

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/display/gwm;->Toa:[F

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->X(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->R(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->W(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    sget-object v5, Lcom/oneplus/android/server/display/gwm;->Toa:[F

    const/4 v6, 0x0

    const/16 v7, 0x15e

    const/4 v8, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "oneplus scene mode on, do not set CustomColorTemperature"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setNightBrightness()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->Zu()V

    return-void
.end method

.method public sf()V
    .locals 8

    const-string v0, "OpColorTintManager"

    const-string v1, "changeColorRead2Read"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    sget-object v4, Lcom/oneplus/android/server/display/gwm;->Voa:[F

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    return-void
.end method

.method public tf()V
    .locals 7

    const-string v0, "OpColorTintManager"

    const-string v1, "changeNight2ColorRead"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->bv()I

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/gwm;->Moa:I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->av()F

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/gwm;->Noa:F

    sget v0, Lcom/oneplus/android/server/display/gwm;->Moa:I

    sget v1, Lcom/oneplus/android/server/display/gwm;->Noa:F

    invoke-static {v0, v1}, Lcom/oneplus/android/server/display/zgw;->zta(IF)[F

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/display/gwm;->Soa:[F

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Uoa:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    return-void
.end method

.method public uf()V
    .locals 7

    const-string v0, "OpColorTintManager"

    const-string v1, "changeNight2Reading"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->bv()I

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/gwm;->Moa:I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->av()F

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/gwm;->Noa:F

    sget v0, Lcom/oneplus/android/server/display/gwm;->Moa:I

    sget v1, Lcom/oneplus/android/server/display/gwm;->Noa:F

    invoke-static {v0, v1}, Lcom/oneplus/android/server/display/zgw;->zta(IF)[F

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/display/gwm;->Soa:[F

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Voa:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    return-void
.end method

.method public userSwitch(I)V
    .locals 0

    sput p1, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    return-void
.end method

.method public vf()V
    .locals 8

    const-string v0, "OpColorTintManager"

    const-string v1, "changeRead2ColorRead"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    sget-object v4, Lcom/oneplus/android/server/display/gwm;->Uoa:[F

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    return-void
.end method

.method public wf()V
    .locals 7

    const-string v0, "OpColorTintManager"

    const-string v1, "changeReading2Night"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->bv()I

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/gwm;->Moa:I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->av()F

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/gwm;->Noa:F

    sget v0, Lcom/oneplus/android/server/display/gwm;->Moa:I

    sget v1, Lcom/oneplus/android/server/display/gwm;->Noa:F

    invoke-static {v0, v1}, Lcom/oneplus/android/server/display/zgw;->zta(IF)[F

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/display/gwm;->Soa:[F

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Soa:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/android/server/display/gwm;->zta([F[FZIZ)V

    return-void
.end method

.method public xf()V
    .locals 6

    const-string v0, "OpColorTintManager"

    const-string v1, "disableColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    invoke-virtual {v1}, Lcom/oneplus/android/server/display/wtn;->cancelAnimator()V

    const-class v1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz v1, :cond_0

    const/16 v2, 0x15e

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Qoa:[F

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Qoa:[F

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    :cond_0
    iget-object v2, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v3, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v2, v3}, Lcom/oneplus/android/server/display/OpColorModeManager;->U(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const-string v2, "Enter Fingerprint, Grayscale is on, turn off it"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    const/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_1
    iput-boolean v4, p0, Lcom/oneplus/android/server/display/gwm;->Ioa:Z

    :cond_2
    iget-object v2, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v5, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v2, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->V(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Enter Fingerprint, Inversion is on, turn off it"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/oneplus/android/server/display/gwm;->Gb(Z)V

    if-eqz v1, :cond_3

    const/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_3
    iput-boolean v4, p0, Lcom/oneplus/android/server/display/gwm;->Goa:Z

    :cond_4
    iget-object v2, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v5, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v2, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->T(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Enter Fingerprint, Daltonizer is on, turn off it"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(I)V

    const/16 v0, 0xc8

    invoke-virtual {v1, v0, v3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_5
    iput-boolean v4, p0, Lcom/oneplus/android/server/display/gwm;->Hoa:Z

    :cond_6
    return-void
.end method

.method public yf()V
    .locals 6

    const-string v0, "OpColorTintManager"

    const-string v1, "enterGoogleMatrixMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/android/server/display/gwm;->Mna:Lcom/oneplus/android/server/display/ugm;

    invoke-virtual {v1}, Lcom/oneplus/android/server/display/wtn;->cancelAnimator()V

    const-class v1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz v1, :cond_0

    const/16 v2, 0x15e

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Qoa:[F

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Qoa:[F

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/android/server/display/gwm;->Ioa:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v2, "mTempDisableGrayscale is true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oneplus/android/server/display/gwm;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v4, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    invoke-virtual {v2, v4}, Lcom/oneplus/android/server/display/OpColorModeManager;->U(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x96

    sget-object v4, Lcom/oneplus/android/server/display/gwm;->MATRIX_GRAYSCALE:[F

    invoke-virtual {v1, v2, v4}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    const-string v4, "GoogleMatrixMode"

    invoke-static {v4, v2, v3}, Lcom/oneplus/server/sis;->notifyModeChange(Ljava/lang/String;II)V

    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/android/server/display/gwm;->Ioa:Z

    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/android/server/display/gwm;->Goa:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/android/server/display/gwm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget v4, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    const-string v5, "accessibility_display_inversion_enabled"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    :cond_3
    iget-boolean v2, p0, Lcom/oneplus/android/server/display/gwm;->mScreenOff:Z

    if-nez v2, :cond_5

    const-string v2, "mTempDisableInversion is true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/oneplus/android/server/display/gwm;->Gb(Z)V

    if-eqz v1, :cond_4

    const/16 v2, 0x12c

    sget-object v4, Lcom/oneplus/android/server/display/gwm;->MATRIX_INVERT_COLOR:[F

    invoke-virtual {v1, v2, v4}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_4
    iput-boolean v3, p0, Lcom/oneplus/android/server/display/gwm;->Goa:Z

    :cond_5
    iget-boolean v2, p0, Lcom/oneplus/android/server/display/gwm;->Hoa:Z

    if-eqz v2, :cond_7

    const-string v2, "mTempDisableDaltonizer is true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/display/gwm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v2, 0xc

    sget v4, Lcom/oneplus/android/server/display/gwm;->mCurrentUser:I

    const-string v5, "accessibility_display_daltonizer"

    invoke-static {v0, v5, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(I)V

    if-nez v0, :cond_6

    const/16 v0, 0xc8

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->MATRIX_GRAYSCALE:[F

    invoke-virtual {v1, v0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_6
    iput-boolean v3, p0, Lcom/oneplus/android/server/display/gwm;->Hoa:Z

    :cond_7
    invoke-direct {p0}, Lcom/oneplus/android/server/display/gwm;->cv()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/oneplus/android/server/display/gwm;->Toa:[F

    goto :goto_1

    :cond_8
    sget-object p0, Lcom/oneplus/android/server/display/gwm;->Qoa:[F

    :goto_1
    sput-object p0, Lcom/oneplus/android/server/display/gwm;->Roa:[F

    return-void
.end method

.method public zf()V
    .locals 2

    const-string v0, "OpColorTintManager"

    const-string v1, "exitGoogleMatrixMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/gwm;->recoverOneplusColorMatrix()V

    return-void
.end method
