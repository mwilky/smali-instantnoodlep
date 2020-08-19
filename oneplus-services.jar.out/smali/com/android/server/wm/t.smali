.class public Lcom/android/server/wm/t;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/t$zta;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OpScreenDecor"

.field static final WIDTH_FHD:I = 0x438

.field private static final jia:Z

.field private static final kia:I = 0x1

.field private static final lia:I = 0x2

.field static final mia:F = 0.7f


# instance fields
.field private Yha:Z

.field private Zha:Z

.field private _ha:Landroid/view/View;

.field private aia:Landroid/widget/ImageView;

.field private bia:Landroid/graphics/Bitmap;

.field private cia:Landroid/graphics/Bitmap;

.field private dia:Landroid/graphics/Bitmap;

.field private eia:Landroid/graphics/Bitmap;

.field private fia:Landroid/graphics/drawable/BitmapDrawable;

.field public gia:Z

.field hia:I

.field public iia:I

.field private mContext:Landroid/content/Context;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHandler:Lcom/android/server/wm/t$zta;

.field private mRotation:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.screenshot_rounded_corners"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/t;->jia:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/t;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/t;->mRotation:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/t;->Yha:Z

    iput-boolean v0, p0, Lcom/android/server/wm/t;->Zha:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/t;->aia:Landroid/widget/ImageView;

    iput-boolean v0, p0, Lcom/android/server/wm/t;->gia:Z

    iput-object p1, p0, Lcom/android/server/wm/t;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/server/wm/t;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/server/wm/t;->mWindowManager:Landroid/view/WindowManager;

    iget-object p1, p0, Lcom/android/server/wm/t;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/wm/t;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance p1, Lcom/android/server/wm/t$zta;

    invoke-direct {p1, p0}, Lcom/android/server/wm/t$zta;-><init>(Lcom/android/server/wm/t;)V

    iput-object p1, p0, Lcom/android/server/wm/t;->mHandler:Lcom/android/server/wm/t$zta;

    invoke-direct {p0}, Lcom/android/server/wm/t;->setup()V

    iget-object p1, p0, Lcom/android/server/wm/t;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v0, Lcom/android/server/wm/r;

    invoke-direct {v0, p0}, Lcom/android/server/wm/r;-><init>(Lcom/android/server/wm/t;)V

    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method private At()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/t;->Bt()V

    iget-object v0, p0, Lcom/android/server/wm/t;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/wm/t;->_ha:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/server/wm/t;->zt()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private Bt()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/t;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/t;->mRotation:I

    iget-object v0, p0, Lcom/android/server/wm/t;->fia:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/server/wm/t;->bia:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    iget v0, p0, Lcom/android/server/wm/t;->mRotation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/t;->fia:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/server/wm/t;->cia:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/t;->fia:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/server/wm/t;->dia:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/t;->fia:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/server/wm/t;->eia:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/t;->fia:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/server/wm/t;->bia:Landroid/graphics/Bitmap;

    goto :goto_0

    :goto_1
    sget-boolean v0, Lcom/android/server/wm/t;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateExpandViews rotation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/t;->mRotation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpScreenDecor"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/t;->aia:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/wm/t;->fia:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/server/wm/t;->aia:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v0, p0, Lcom/android/server/wm/t;->aia:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    iget-object v0, p0, Lcom/android/server/wm/t;->_ha:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/server/wm/t;->gia:Z

    if-eqz v2, :cond_4

    iget-boolean p0, p0, Lcom/android/server/wm/t;->Zha:Z

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private sc(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private setup()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/t;->Te()V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/server/wm/t;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/t;->bia:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/server/wm/t;->fia:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/android/server/wm/t;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x50b0070

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/t;->_ha:Landroid/view/View;

    iget-object v0, p0, Lcom/android/server/wm/t;->_ha:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object v0, p0, Lcom/android/server/wm/t;->_ha:Landroid/view/View;

    const v1, 0x5080107

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/wm/t;->aia:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/server/wm/t;->_ha:Landroid/view/View;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/server/wm/t;->_ha:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/android/server/wm/t;->Bt()V

    iget-object v0, p0, Lcom/android/server/wm/t;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/wm/t;->_ha:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/server/wm/t;->zt()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/server/wm/t;->_ha:Landroid/view/View;

    new-instance v1, Lcom/android/server/wm/s;

    invoke-direct {v1, p0}, Lcom/android/server/wm/s;-><init>(Lcom/android/server/wm/t;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/wm/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/t;->yt()V

    return-void
.end method

.method private xt()Landroid/graphics/Bitmap;
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/t;->mContext:Landroid/content/Context;

    const v1, 0x507026f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v11, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v2, p0, Lcom/android/server/wm/t;->hia:I

    int-to-float v2, v2

    const/high16 v3, 0x44870000    # 1080.0f

    div-float/2addr v2, v3

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v9, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    move-object v4, v1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v2, 0x43870000    # 270.0f

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/t;->zta(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/server/wm/t;->hia:I

    iget v5, p0, Lcom/android/server/wm/t;->iia:I

    add-int/2addr v5, v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/android/server/wm/t;->hia:I

    iget v8, p0, Lcom/android/server/wm/t;->iia:I

    invoke-direct {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v6, p0, Lcom/android/server/wm/t;->iia:I

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v6, p0, Lcom/android/server/wm/t;->hia:I

    sub-int/2addr v6, v3

    int-to-float v3, v6

    iget p0, p0, Lcom/android/server/wm/t;->iia:I

    int-to-float p0, p0

    invoke-virtual {v5, v2, v3, p0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-boolean p0, Lcom/android/server/wm/t;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expandBitmap width "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cornerBitmap width "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " left width "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "OpScreenDecor"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v4
.end method

.method static synthetic you(Lcom/android/server/wm/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/t;->At()V

    return-void
.end method

.method private yt()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/t;->gia:Z

    iget-boolean v1, p0, Lcom/android/server/wm/t;->Zha:Z

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/t;->Zha:Z

    iget-object p0, p0, Lcom/android/server/wm/t;->_ha:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/t;->gia:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/t;->Zha:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/server/wm/t;->Zha:Z

    iget-object p0, p0, Lcom/android/server/wm/t;->_ha:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private zt()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7f6

    const v4, 0x20800138

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x50

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    sget-boolean v0, Lcom/android/server/wm/t;->jia:Z

    if-nez v0, :cond_0

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    const-string v0, "ScreenDecorOverlayExpand"

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/android/server/wm/t;->mRotation:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x33

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x55

    :goto_1
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v0, p0, Lcom/android/server/wm/t;->mRotation:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/t;->sc(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, -0x2

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p0, -0x1

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_3
    return-object v6
.end method

.method private zta(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    neg-float p0, p2

    invoke-virtual {v5, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/wm/t;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/t;->_ha:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected F(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    :goto_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/t;->_ha:Landroid/view/View;

    const v0, 0x5080107

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method Te()V
    .locals 5

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/t;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/t;->sc(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/t;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v4, :cond_2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    neg-int v4, v4

    :goto_0
    move v2, v4

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_4

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    neg-int v0, v0

    :goto_1
    move v2, v0

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/t;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050211

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_5
    iget v0, p0, Lcom/android/server/wm/t;->hia:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/android/server/wm/t;->iia:I

    if-eq v0, v2, :cond_7

    :cond_6
    iput v3, p0, Lcom/android/server/wm/t;->hia:I

    iput v2, p0, Lcom/android/server/wm/t;->iia:I

    invoke-direct {p0}, Lcom/android/server/wm/t;->xt()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/t;->bia:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/server/wm/t;->bia:Landroid/graphics/Bitmap;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/t;->zta(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/t;->cia:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/server/wm/t;->bia:Landroid/graphics/Bitmap;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/t;->zta(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/t;->dia:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/server/wm/t;->bia:Landroid/graphics/Bitmap;

    const/high16 v1, 0x43870000    # 270.0f

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/t;->zta(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/t;->eia:Landroid/graphics/Bitmap;

    :cond_7
    return-void
.end method

.method protected onConfigurationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/t;->_ha:Landroid/view/View;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/t;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpScreenDecor"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/t;->Te()V

    iget-object v0, p0, Lcom/android/server/wm/t;->mHandler:Lcom/android/server/wm/t$zta;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/wm/t;->mHandler:Lcom/android/server/wm/t$zta;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method protected updateOrientation()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/t;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    sget-boolean v1, Lcom/android/server/wm/t;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOrientation newRotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/t;->mRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpScreenDecor"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/android/server/wm/t;->mRotation:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/android/server/wm/t;->mRotation:I

    iget-boolean v0, p0, Lcom/android/server/wm/t;->Yha:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/t;->_ha:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/t;->mHandler:Lcom/android/server/wm/t$zta;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/wm/t;->mHandler:Lcom/android/server/wm/t$zta;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public w(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/t;->Yha:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/t;->gia:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/t;->gia:Z

    iget-object p1, p0, Lcom/android/server/wm/t;->mHandler:Lcom/android/server/wm/t$zta;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/wm/t;->mHandler:Lcom/android/server/wm/t$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method
