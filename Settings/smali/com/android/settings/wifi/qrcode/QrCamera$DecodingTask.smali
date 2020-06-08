.class Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;
.super Landroid/os/AsyncTask;
.source "QrCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/qrcode/QrCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mImage:Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field final synthetic this$0:Lcom/android/settings/wifi/qrcode/QrCamera;


# direct methods
.method synthetic constructor <init>(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/graphics/SurfaceTexture;Lcom/android/settings/wifi/qrcode/QrCamera$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->mSurface:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "Error to init Camera"

    const-string v5, "QrCamera"

    const/4 v6, 0x0

    if-ge v3, v0, :cond_1

    :try_start_0
    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v7, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v7, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$102(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$100(Lcom/android/settings/wifi/qrcode/QrCamera;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    iget v0, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-static {p1, v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$402(Lcom/android/settings/wifi/qrcode/QrCamera;I)I

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$100(Lcom/android/settings/wifi/qrcode/QrCamera;)Landroid/hardware/Camera;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Cannot find available back camera."

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleCameraFailure()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$500(Lcom/android/settings/wifi/qrcode/QrCamera;)V

    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->getViewSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$600(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/util/Size;)V

    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$700(Lcom/android/settings/wifi/qrcode/QrCamera;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p1, v6}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$102(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleCameraFailure()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    goto :goto_3

    :catch_0
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p1, v6}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$102(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleCameraFailure()V

    :goto_2
    move p1, v2

    :goto_3
    if-nez p1, :cond_4

    goto :goto_5

    :cond_4
    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$100(Lcom/android/settings/wifi/qrcode/QrCamera;)Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/qrcode/-$$Lambda$QrCamera$DecodingTask$z3W4798YHT2G6UOmMeFtFLtAmTw;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/qrcode/-$$Lambda$QrCamera$DecodingTask$z3W4798YHT2G6UOmMeFtFLtAmTw;-><init>(Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :try_start_1
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v0

    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->mImage:Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    invoke-direct {v2, v3}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_2
    .catch Lcom/google/zxing/ReaderException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_4

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw p1

    :catch_1
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    move-object v0, v6

    :goto_4
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_5
    return-object v6
.end method

.method public synthetic lambda$doInBackground$0$QrCamera$DecodingTask(Ljava/util/concurrent/Semaphore;[BLandroid/hardware/Camera;)V
    .locals 0

    iget-object p3, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p3, p2}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$800(Lcom/android/settings/wifi/qrcode/QrCamera;[B)Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->mImage:Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleSuccessfulResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
