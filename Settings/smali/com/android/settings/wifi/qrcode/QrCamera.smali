.class public Lcom/android/settings/wifi/qrcode/QrCamera;
.super Landroid/os/Handler;
.source "QrCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;,
        Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;
    }
.end annotation


# static fields
.field private static FORMATS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static HINTS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/util/List<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field private static MAX_RATIO_DIFF:D = 0.1


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraOrientation:I

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreviewSize:Landroid/util/Size;

.field private mReader:Lcom/google/zxing/MultiFormatReader;

.field private mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/qrcode/QrCamera;->HINTS:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/qrcode/QrCamera;->FORMATS:Ljava/util/List;

    sget-object v0, Lcom/android/settings/wifi/qrcode/QrCamera;->FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/wifi/qrcode/QrCamera;->HINTS:Ljava/util/Map;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    sget-object v2, Lcom/android/settings/wifi/qrcode/QrCamera;->FORMATS:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    new-instance p1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {p1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    sget-object p1, Lcom/android/settings/wifi/qrcode/QrCamera;->HINTS:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/qrcode/QrCamera;)Landroid/hardware/Camera;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/qrcode/QrCamera;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCameraOrientation:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/qrcode/QrCamera;)V
    .locals 13

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    invoke-interface {v1}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->getViewSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-double v4, v1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v1

    new-instance v3, Landroid/util/Size;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v7

    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    iget v10, v6, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v9, v10

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v11

    mul-int/2addr v11, v10

    if-le v9, v11, :cond_0

    sub-double v9, v4, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    div-double/2addr v9, v1

    const-wide v11, 0x3fb999999999999aL    # 0.1

    cmpl-double v9, v9, v11

    if-gtz v9, :cond_1

    sub-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    div-double/2addr v7, v1

    cmpg-double v7, v7, v11

    if-gtz v7, :cond_0

    :cond_1
    new-instance v3, Landroid/util/Size;

    iget v4, v6, Landroid/hardware/Camera$Size;->width:I

    iget v5, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iget v4, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v6

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v4

    goto :goto_0

    :cond_2
    iput-object v3, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v8

    cmpl-double v10, v8, v2

    if-nez v10, :cond_4

    new-instance v8, Landroid/util/Size;

    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v8, v9, v7}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sub-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sget-wide v10, Lcom/android/settings/wifi/qrcode/QrCamera;->MAX_RATIO_DIFF:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    new-instance v8, Landroid/util/Size;

    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v8, v9, v7}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    const-string v1, "QrCamera"

    const-string v2, "No proper picture size, return default picture size"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    new-instance v1, Landroid/util/Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_3

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    move-object v4, v5

    :cond_7
    const v0, 0x7fffffff

    const/4 v2, 0x0

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v6, v5

    sub-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v0, :cond_8

    move-object v2, v4

    move v0, v5

    goto :goto_2

    :cond_9
    move-object v1, v2

    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->setTransformationMatrix(Landroid/util/Size;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/qrcode/QrCamera;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x10e

    goto :goto_0

    :cond_2
    const/16 v1, 0xb4

    goto :goto_0

    :cond_3
    const/16 v1, 0x5a

    :cond_4
    :goto_0
    iget v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCameraOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x5dc

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    move v1, v2

    :goto_2
    return v1
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/qrcode/QrCamera;[B)Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    iget v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCameraOrientation:I

    invoke-interface {v0, v1, v2}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->getFramePosition(Landroid/util/Size;I)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-direct {v1, p1, v2, p0}, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;-><init>([BII)V

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, p0, p1, v2, v0}, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;->crop(IIII)Lcom/google/zxing/LuminanceSource;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    return-object p0
.end method

.method private getRatio(DD)D
    .locals 0

    cmpg-double p0, p1, p3

    if-gez p0, :cond_0

    div-double/2addr p1, p3

    goto :goto_0

    :cond_0
    div-double p1, p3, p1

    :goto_0
    return-wide p1
.end method

.method private setTransformationMatrix(Landroid/util/Size;)V
    .locals 6

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    :goto_2
    int-to-double v1, p1

    int-to-double v3, v0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-le p1, v0, :cond_3

    div-float p1, v2, v1

    move v5, v2

    move v2, p1

    move p1, v5

    goto :goto_3

    :cond_3
    div-float p1, v2, v1

    :goto_3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    invoke-interface {p0, v0}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method protected decodeImage(Lcom/google/zxing/BinaryBitmap;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw p1

    :catch_0
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleSuccessfulResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p0, "Unexpected Message: "

    invoke-static {p0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "QrCamera"

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline44(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public isDecodeTaskAlive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public releaseCamera()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    :cond_1
    return-void
.end method

.method public start(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;-><init>(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/graphics/SurfaceTexture;Lcom/android/settings/wifi/qrcode/QrCamera$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_1
    return-void
.end method
