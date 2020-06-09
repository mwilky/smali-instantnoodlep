.class public Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceController.java"

# interfaces
.implements Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;
.implements Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;
    }
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x32

.field protected static final TAG:Ljava/lang/String; = "DisplayWhiteBalanceController"


# instance fields
.field private mAmbientColorTemperature:F

.field private mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

.field private mAmbientColorTemperatureOverride:F

.field private mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

.field private mAmbientToDisplayColorTemperatureSplineForNightMode:Landroid/util/Spline$LinearSpline;

.field private mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

.field private mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

.field private mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

.field private mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field private mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

.field private mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

.field private mEnabled:Z

.field private mLastAmbientColorTemperature:F

.field private mLastValidEnvironmentColorTemperature:F

.field protected mLoggingEnabled:Z

.field private final mLowLightAmbientBrightnessThreshold:F

.field private final mLowLightAmbientColorTemperature:F

.field private mPendingAmbientColorTemperature:F

.field private mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;


# direct methods
.method public constructor <init>(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;FF[F[F)V
    .locals 23

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->validateArguments(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    iput-boolean v2, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    move-object/from16 v4, p1

    iput-object v4, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    move-object/from16 v5, p2

    iput-object v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    move-object/from16 v6, p3

    iput-object v6, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    move-object/from16 v7, p4

    iput-object v7, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    move-object/from16 v8, p5

    iput-object v8, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    move/from16 v9, p6

    iput v9, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessThreshold:F

    move/from16 v10, p7

    iput v10, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    const/high16 v11, -0x40800000    # -1.0f

    iput v11, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    iput v11, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    iput v11, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    new-instance v0, Lcom/android/server/display/utils/History;

    const/16 v12, 0x32

    invoke-direct {v0, v12}, Lcom/android/server/display/utils/History;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    iput v11, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    :try_start_0
    new-instance v0, Landroid/util/Spline$LinearSpline;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    :try_start_1
    invoke-direct {v0, v12, v13}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    :goto_0
    iput-object v3, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    :goto_1
    iput v11, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastValidEnvironmentColorTemperature:F

    const/16 v0, 0x8

    :try_start_2
    new-array v11, v0, [F

    const/high16 v14, 0x452f0000    # 2800.0f

    aput v14, v11, v2

    const/high16 v14, 0x45610000    # 3600.0f

    const/4 v15, 0x1

    aput v14, v11, v15

    const/high16 v16, 0x457a0000    # 4000.0f

    const/16 v17, 0x2

    aput v16, v11, v17

    const v16, 0x458ca000    # 4500.0f

    const/16 v18, 0x3

    aput v16, v11, v18

    const v16, 0x459c4000    # 5000.0f

    const/16 v19, 0x4

    aput v16, v11, v19

    const v16, 0x45bea000    # 6100.0f

    const/16 v20, 0x5

    aput v16, v11, v20

    const v16, 0x45d16000    # 6700.0f

    const/16 v21, 0x6

    aput v16, v11, v21

    const v16, 0x45dac000    # 7000.0f

    const/16 v22, 0x7

    aput v16, v11, v22

    new-array v0, v0, [F

    const v16, 0x455e2000    # 3554.0f

    aput v16, v0, v2

    aput v14, v0, v15

    const v2, 0x4564c000    # 3660.0f

    aput v2, v0, v17

    const v2, 0x456a3000    # 3747.0f

    aput v2, v0, v18

    const v2, 0x4571e000    # 3870.0f

    aput v2, v0, v19

    const v2, 0x457ef000    # 4079.0f

    aput v2, v0, v20

    const v2, 0x45824000    # 4168.0f

    aput v2, v0, v21

    const v2, 0x45872800    # 4325.0f

    aput v2, v0, v22

    new-instance v2, Landroid/util/Spline$LinearSpline;

    invoke-direct {v2, v11, v0}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object v2, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSplineForNightMode:Landroid/util/Spline$LinearSpline;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    iput-object v3, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSplineForNightMode:Landroid/util/Spline$LinearSpline;

    :goto_2
    const-class v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    return-void
.end method

.method private disable()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "DisplayWhiteBalanceController"

    const-string v2, "disabling"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setEnabled(Z)Z

    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/AmbientFilter;->clear()V

    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setEnabled(Z)Z

    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/AmbientFilter;->clear()V

    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->clear()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->resetDisplayWhiteBalanceColorTemperature()Z

    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastValidEnvironmentColorTemperature:F

    const/4 v0, 0x1

    return v0
.end method

.method private enable()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "DisplayWhiteBalanceController"

    const-string v1, "enabling"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setEnabled(Z)Z

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setEnabled(Z)Z

    return v0
.end method

.method private validateArguments(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/whitebalance/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;)V
    .locals 1

    const-string v0, "brightnessSensor must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "brightnessFilter must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "colorTemperatureSensor must not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "colorTemperatureFilter must not be null"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "throttler cannot be null"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "DisplayWhiteBalanceController"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->dump(Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowLightAmbientBrightnessThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowLightAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperatureHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperatureOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientToDisplayColorTemperatureSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientToDisplayColorTemperatureSplineForNightMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSplineForNightMode:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastValidEnvironmentColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastValidEnvironmentColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onAmbientBrightnessChanged(F)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->addValue(JF)Z

    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateAmbientColorTemperature()V

    return-void
.end method

.method public onAmbientColorTemperatureChanged(F)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->addValue(JF)Z

    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateAmbientColorTemperature()V

    return-void
.end method

.method public setAmbientColorTemperatureOverride(F)Z
    .locals 1

    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    const/4 v0, 0x1

    return v0
.end method

.method public setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    const/4 v0, 0x1

    return v0
.end method

.method public setEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->enable()Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->disable()Z

    move-result v0

    return v0
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setLoggingEnabled(Z)Z

    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->setLoggingEnabled(Z)Z

    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setLoggingEnabled(Z)Z

    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->setLoggingEnabled(Z)Z

    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->setLoggingEnabled(Z)Z

    const/4 v0, 0x1

    return v0
.end method

.method public updateAmbientColorTemperature()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/whitebalance/AmbientFilter;->getEstimate(J)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/display/whitebalance/AmbientFilter;->getEstimate(J)F

    move-result v3

    iget v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessThreshold:F

    cmpg-float v4, v3, v4

    const/4 v5, 0x0

    if-gez v4, :cond_0

    iget v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastValidEnvironmentColorTemperature:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastValidEnvironmentColorTemperature:F

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastValidEnvironmentColorTemperature:F

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v4, :cond_3

    cmpl-float v4, v2, v6

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v4}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->isNightDisplayActivated()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSplineForNightMode:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v4, v2}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v4

    const v7, 0x40268a72    # 2.6022f

    mul-float/2addr v7, v4

    const v8, 0x45814666

    sub-float v2, v7, v8

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v4, v2}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v2

    :cond_3
    :goto_1
    iget v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessThreshold:F

    cmpg-float v4, v3, v4

    const-string v7, " => "

    const-string v8, "DisplayWhiteBalanceController"

    if-gez v4, :cond_5

    iget v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastValidEnvironmentColorTemperature:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "low light ambient brightness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessThreshold:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", falling back to fixed ambient color temperature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    :cond_5
    iget v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "override ambient color temperature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    :cond_7
    cmpl-float v4, v2, v6

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v4, v2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->throttle(F)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_8
    iget-boolean v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pending ambient color temperature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    iget-object v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-eqz v4, :cond_a

    invoke-interface {v4}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;->updateWhiteBalance()V

    :cond_a
    return-void

    :cond_b
    :goto_2
    return-void
.end method

.method public updateDisplayColorTemperature()V
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    :cond_0
    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    :cond_1
    cmpl-float v1, v0, v2

    if-nez v1, :cond_2

    return-void

    :cond_2
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ambient color temperature: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DisplayWhiteBalanceController"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v1, v2}, Lcom/android/server/display/utils/History;->add(F)V

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setDisplayWhiteBalanceColorTemperature(I)Z

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    iput v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    return-void
.end method
