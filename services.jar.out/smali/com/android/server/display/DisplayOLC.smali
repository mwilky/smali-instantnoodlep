.class final Lcom/android/server/display/DisplayOLC;
.super Ljava/lang/Object;
.source "DisplayOLC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayOLC$BrightnessConfigUpdater;
    }
.end annotation


# static fields
.field public static HBM_THRESHOLD_DELTA:[I = null

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final PROJ_NAME:Ljava/lang/String; = "DisplayOLC"

.field private static final TAG:Ljava/lang/String; = "DisplayOLC"

.field private static mOpMinBrightnessLevel:I


# instance fields
.field private mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mContext:Landroid/content/Context;

.field private mMaxBrightnessLevel:I

.field private mOnlineConfigHandler:Landroid/os/Handler;

.field private mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

.field private mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mOpMinBrightnessNit:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/display/DisplayOLC;->HBM_THRESHOLD_DELTA:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x2710
        0x4e20
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/BrightnessMappingStrategy;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessNit:F

    iput-object p1, p0, Lcom/android/server/display/DisplayOLC;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/DisplayOLC;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iput p3, p0, Lcom/android/server/display/DisplayOLC;->mMaxBrightnessLevel:I

    invoke-direct {p0}, Lcom/android/server/display/DisplayOLC;->initOnlineConfig()Z

    iget-object v0, p0, Lcom/android/server/display/DisplayOLC;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessNit:F

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/display/DisplayOLC;->mMaxBrightnessLevel:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:I

    :cond_0
    sget v0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:I

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOpMinBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessNit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayOLC"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/DisplayOLC;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayOLC;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayOLC;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayOLC;->parseOnlineConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private handleConfigChangeEvent(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 11

    const-string v0, "DisplayOLC"

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "LoadingSwitch"

    const-string v4, "HBMThresholdDelta"

    const-string v5, "UseCurveGenAlgo"

    const-string v6, "MiniBrightness"

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    :try_start_1
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v8

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v10

    goto :goto_0

    :sswitch_2
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v7

    goto :goto_0

    :sswitch_3
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v9

    :goto_0
    if-eqz v1, :cond_7

    if-eq v1, v10, :cond_5

    if-eq v1, v7, :cond_3

    if-eq v1, v8, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadingSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/display/DisplayOLC;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "loading_switch"

    if-eqz v1, :cond_2

    move v9, v10

    :cond_2
    invoke-static {v2, v3, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UseCurveGenAlgo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/display/DisplayOLC;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "use_curve_gen_algo"

    if-eqz v1, :cond_4

    move v9, v10

    :cond_4
    invoke-static {v2, v3, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_6

    sget-object v3, Lcom/android/server/display/DisplayOLC;->HBM_THRESHOLD_DELTA:[I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HBM_THRESHOLD_DELTA["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/display/DisplayOLC;->HBM_THRESHOLD_DELTA:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    goto :goto_2

    :cond_7
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessNit:F

    iget-object v1, p0, Lcom/android/server/display/DisplayOLC;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v2, p0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessNit:F

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v1

    iget v2, p0, Lcom/android/server/display/DisplayOLC;->mMaxBrightnessLevel:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:I

    sget v1, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:I

    if-ltz v1, :cond_8

    sget v9, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:I

    :cond_8
    sput v9, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mOpMinBrightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessNit:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig]  Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3ef647d8 -> :sswitch_3
        -0xf572f25 -> :sswitch_2
        0xed85780 -> :sswitch_1
        0x4c19d770 -> :sswitch_0
    .end sparse-switch
.end method

.method private initOnlineConfig()Z
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/display/DisplayOLC;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/display/DisplayOLC$BrightnessConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayOLC$BrightnessConfigUpdater;-><init>(Lcom/android/server/display/DisplayOLC;)V

    const-string v4, "DisplayOLC"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    if-nez v0, :cond_0

    const-string v0, "OLC Observer is null"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Brightness_OLC"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/display/DisplayOLC$1;

    iget-object v1, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayOLC$1;-><init>(Lcom/android/server/display/DisplayOLC;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    const-string v0, "OLC init DONE!"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public static limitTarget(I)I
    .locals 2

    if-nez p0, :cond_0

    return p0

    :cond_0
    sget v0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:I

    if-le v0, p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOBE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayOLC"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:I

    return v0

    :cond_1
    return p0
.end method

.method private parseOnlineConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 5

    const-string v0, "DisplayOLC"

    if-nez p1, :cond_0

    const-string v1, "OLC is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OLC:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/server/display/DisplayOLC;->handleConfigChangeEvent(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig]  Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :goto_3
    return-void
.end method
