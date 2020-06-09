.class public Lcom/android/server/wm/OpScreenModeService;
.super Lcom/oneplus/android/screenmode/IOpScreenMode$Stub;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpScreenModeService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/OpScreenModeService$sis;,
        Lcom/android/server/wm/OpScreenModeService$zta;,
        Lcom/android/server/wm/OpScreenModeService$you;,
        Lcom/android/server/wm/OpScreenModeService$tsu;
    }
.end annotation


# static fields
.field private static final CONFIG_NAME_SCREEN_MODE:Ljava/lang/String; = "ScreenMode"

.field static final DEBUG:Z

.field static final DPI_FHD:[I

.field private static final GAME_SPEED_PROP_ENABLE:Ljava/lang/String; = "persist.sys.gamespeed.enable"

.field private static final KEEP_RATE_DELAY:I

.field private static final RECORD_MODE_DELAY:I

.field private static final RECORD_MODE_DELAY_SHORT:I

.field public static final REFRESH_RATE_AUTO:I = 0x2

.field public static final REFRESH_RATE_FULLSPEED:I = 0x0

.field public static final REFRESH_RATE_SAVEPOWER:I = 0x1

.field private static final RESOLUTION_2K:I = 0x0

.field private static final RESOLUTION_AUTO:I = 0x2

.field private static final RESOLUTION_FHD:I = 0x1

.field static final TAG:Ljava/lang/String; = "ScreenModeService"

.field static final WIDTH_2K:I = 0x5a0

.field static final WIDTH_FHD:I = 0x438

.field private static mDelayTimeForGameSpeed:I

.field private static mGameLaunchSpeed:Z

.field public static sIsResolution2K:Z

.field public static sIsResolutionAuto:Z

.field private static sPkgReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private final defaultDensity:I

.field private final deviceName:Ljava/lang/String;

.field mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mContext:Landroid/content/Context;

.field mCtsRatePackage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentAppToken:Lcom/android/server/wm/AppWindowToken;

.field public mCurrentModeId:I

.field mDefaultMode:Lcom/android/server/wm/OpScreenModeService$zta;

.field mDirectMode:I

.field mDisplay:Landroid/view/Display;

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mFixedRatePackage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mForcedRateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHighFrameGamePkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mHighResolution:I

.field private mIirsChipEnable:Z

.field private mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

.field private mModeRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/OpScreenModeService$zta;",
            ">;"
        }
    .end annotation
.end field

.field mModeRecords:[Lcom/android/server/wm/OpScreenModeService$zta;

.field mOpIrisWindowInfo:Lcom/oneplus/iris/OpIrisWindowInfo;

.field private mParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/OpScreenModeService$zta;",
            ">;"
        }
    .end annotation
.end field

.field mResolotionSettings:I

.field private mScreenModeConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

.field mScreenRateSettings:I

.field mService:Lcom/android/server/wm/WindowManagerService;

.field mServiceReady:Z

.field mSettingsObserver:Lcom/android/server/wm/OpScreenModeService$tsu;

.field mTgpaFrameRate:I

.field mTgpaFrameRatePackage:Ljava/lang/String;

.field mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wm/OpScreenModeService;->DPI_FHD:[I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/OpScreenModeService;->sIsResolutionAuto:Z

    sput-boolean v0, Lcom/android/server/wm/OpScreenModeService;->sIsResolution2K:Z

    const-string v1, "persist.vendor.screenmode.delay"

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/wm/OpScreenModeService;->RECORD_MODE_DELAY:I

    const-string v1, "persist.vendor.screenmode.shortdelay"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/wm/OpScreenModeService;->RECORD_MODE_DELAY_SHORT:I

    const-string v1, "persist.vendor.screenmode.keepdelay"

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/wm/OpScreenModeService;->KEEP_RATE_DELAY:I

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/wm/OpScreenModeService;->sPkgReceiver:Landroid/content/BroadcastReceiver;

    const/16 v1, 0x3a98

    sput v1, Lcom/android/server/wm/OpScreenModeService;->mDelayTimeForGameSpeed:I

    const-string v1, "persist.sys.gamespeed.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpScreenModeService;->mGameLaunchSpeed:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x17c
        0x1a4
        0x1e0
        0x1f4
        0x21c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/android/screenmode/IOpScreenMode$Stub;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mForcedRateList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mFixedRatePackage:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mCtsRatePackage:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mParamsMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mModeRecordMap:Ljava/util/HashMap;

    const-string v0, ""

    const-string v1, "vendor.product.device"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/OpScreenModeService;->deviceName:Ljava/lang/String;

    const-string v1, "ro.sf.lcd_density"

    const/16 v2, 0x1e0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/OpScreenModeService;->defaultDensity:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/OpScreenModeService;->mServiceReady:Z

    iput v1, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/wm/OpScreenModeService;->mHighResolution:I

    iput v1, p0, Lcom/android/server/wm/OpScreenModeService;->mDirectMode:I

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mTgpaFrameRatePackage:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/wm/OpScreenModeService;->mTgpaFrameRate:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    new-array v2, v2, [I

    const/16 v3, 0x10c

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/OpScreenModeService;->mIirsChipEnable:Z

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mHighFrameGamePkgs:Ljava/util/ArrayList;

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenModeService"

    const-string v1, "construct called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/backlight/OpBacklightManager;->getInstance()Lcom/android/server/backlight/OpBacklightManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/backlight/OpBacklightManager;->zta(Lcom/android/server/wm/OpScreenModeService;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/OpScreenModeService;)Lcom/android/server/wm/OpScreenModeService$sis;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/OpScreenModeService;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->deviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/OpScreenModeService;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/OpScreenModeService;->defaultDensity:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/wm/OpScreenModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpScreenModeService;->updateOnlineConfig()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/OpScreenModeService;Lcom/android/server/wm/AppWindowToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->updateRefreshRate(Lcom/android/server/wm/AppWindowToken;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/OpScreenModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->handleUpdateScenario(I)V

    return-void
.end method

.method private handleUpdateScenario(I)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUpdateScenario refreshRate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenModeService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "op_gamut_game_mode"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private invokeGameSpeedLogic(Lcom/android/server/wm/AppWindowToken;II)I
    .locals 2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    iget-object p2, p1, Lcom/android/server/wm/AppWindowToken;->mPackageName:Ljava/lang/String;

    if-eqz p2, :cond_3

    sget p2, Lcom/android/server/wm/OpScreenModeService;->RECORD_MODE_DELAY:I

    if-ne p3, p2, :cond_3

    sget-boolean p2, Lcom/android/server/wm/OpScreenModeService;->mGameLaunchSpeed:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/OpScreenModeService;->mHighFrameGamePkgs:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mHighFrameGamePkgs:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget p3, Lcom/android/server/wm/OpScreenModeService;->mDelayTimeForGameSpeed:I

    :cond_1
    sget p0, Lcom/android/server/wm/OpScreenModeService;->mDelayTimeForGameSpeed:I

    if-ne p3, p0, :cond_2

    const-string p0, "ScreenModeService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRefreshRate delay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpScreenModeService;->mDelayTimeForGameSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ms for token {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit p2

    return p3

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return p3
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolvePerfConfigFromJSON ScreenMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenModeService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mFixedRatePackage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mForcedRateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mHighFrameGamePkgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/server/wm/OpScreenModeService;->initCtsRateList()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fixmode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "pkg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mode"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v6, p0, Lcom/android/server/wm/OpScreenModeService;->mFixedRatePackage:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    :try_start_1
    iget-object v7, p0, Lcom/android/server/wm/OpScreenModeService;->mFixedRatePackage:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_2
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "forcemode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/OpScreenModeService;->mForcedRateList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v5, p0, Lcom/android/server/wm/OpScreenModeService;->mForcedRateList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_3
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "frame_game_speed_pkg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/OpScreenModeService;->mHighFrameGamePkgs:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v5, p0, Lcom/android/server/wm/OpScreenModeService;->mHighFrameGamePkgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catchall_2
    move-exception p0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0

    :cond_4
    const-string v2, "ScreenModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After update mHighFrameGamePkgs # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/OpScreenModeService;->mHighFrameGamePkgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "frame_game_mode_speed_enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/OpScreenModeService;->updateEnable(Z)V

    goto :goto_5

    :cond_6
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "frame_game_mode_speed_delay"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/android/server/wm/OpScreenModeService;->mDelayTimeForGameSpeed:I

    const-string v2, "ScreenModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After update mDelayTimeForGameSpeed # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/wm/OpScreenModeService;->mDelayTimeForGameSpeed:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    const-string p0, "ScreenModeService"

    const-string p1, "[OnlineConfig] ScreenMode config updated complete"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] ScreenMode config Exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] ScreenMode config JSONException:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_6
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenModeService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void
.end method

.method private setPropValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p0, ""

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |newValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |curValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenModeService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "failed to set system property"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateDynamicVsync(I)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/server/DynamicVsyncManager;->Rwa:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mModeRecordMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpScreenModeService$zta;

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/oneplus/server/DynamicVsyncManager;->getInstance()Lcom/oneplus/server/DynamicVsyncManager;

    move-result-object p1

    iget p0, p0, Lcom/android/server/wm/OpScreenModeService$zta;->zha:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/oneplus/server/DynamicVsyncManager;->ca(Z)V

    :cond_1
    return-void
.end method

.method private updateEnable(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeService;->mGameLaunchSpeed:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sput-boolean p1, Lcom/android/server/wm/OpScreenModeService;->mGameLaunchSpeed:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.gamespeed.enable"

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/OpScreenModeService;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateOnlineConfig()V
    .locals 3

    const-string v0, "ScreenModeService"

    const-string v1, "update ScreenMode OnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    const-string v2, "ScreenMode"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpScreenModeService;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private updateRefreshRate(Lcom/android/server/wm/AppWindowToken;)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isAnimating()Z

    move-result v0

    const-string v1, "ScreenModeService"

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/server/wm/AppWindowToken;->mTmpRefreshRate:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "delay update refresh rate due to window animating."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mCurrentAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, p1, Lcom/android/server/wm/AppWindowToken;->mTmpRefreshRate:I

    iput v0, p1, Lcom/android/server/wm/AppWindowToken;->mRefreshRate:I

    iget v0, p1, Lcom/android/server/wm/AppWindowToken;->mTmpRequestRate:I

    iput v0, p1, Lcom/android/server/wm/AppWindowToken;->mRequestRate:I

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRefreshRate token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " rate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/AppWindowToken;->mRefreshRate:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    :cond_3
    return-void
.end method


# virtual methods
.method adjustDensityForResolution(III)I
    .locals 2

    iget v0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/OpScreenModeService;->getModeRecord(II)Lcom/android/server/wm/OpScreenModeService$zta;

    move-result-object p2

    iget v0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    invoke-virtual {p0, v0, p3}, Lcom/android/server/wm/OpScreenModeService;->getModeRecord(II)Lcom/android/server/wm/OpScreenModeService$zta;

    move-result-object p0

    if-eqz p2, :cond_4

    if-eqz p0, :cond_4

    iget-object p3, p2, Lcom/android/server/wm/OpScreenModeService$zta;->mode:Landroid/view/Display$Mode;

    invoke-virtual {p3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p3

    iget-object p2, p2, Lcom/android/server/wm/OpScreenModeService$zta;->Bha:[I

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$zta;->mode:Landroid/view/Display$Mode;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$zta;->Bha:[I

    array-length v1, p2

    if-eqz v1, :cond_4

    array-length v1, p0

    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    if-eqz v0, :cond_4

    const/4 p3, 0x0

    :goto_0
    array-length v0, p2

    const-string v1, "ScreenModeService"

    if-ge p3, v0, :cond_2

    aget v0, p2, p3

    if-ne p1, v0, :cond_1

    sget-boolean p2, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adjustDensityForUser from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p0, p3

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    aget p0, p0, p3

    return p0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not match, adjustDensityForUser to default "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p0, p2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    aget p0, p0, p2

    return p0

    :cond_4
    return p1
.end method

.method public adjustDensityForUser(II)I
    .locals 3

    if-nez p2, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService;->mDefaultMode:Lcom/android/server/wm/OpScreenModeService$zta;

    iget v1, v1, Lcom/android/server/wm/OpScreenModeService$zta;->Aha:I

    const-string v2, "oneplus_screen_resolution_backup"

    invoke-static {v0, v2, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustDensityForUser oldResolution "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mResolotionSettings "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenModeService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/OpScreenModeService;->adjustDensityForResolution(III)I

    move-result p0

    return p0
.end method

.method public doScreenRotation()V
    .locals 0

    sget-boolean p0, Lcom/oneplus/server/DynamicVsyncManager;->FEATURE_EXTREME_ENABLE:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/server/DynamicVsyncManager;->getInstance()Lcom/oneplus/server/DynamicVsyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/server/DynamicVsyncManager;->doScreenRotation()V

    :cond_0
    return-void
.end method

.method getAppToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAppToken "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenModeService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method getModeRecord(II)Lcom/android/server/wm/OpScreenModeService$zta;
    .locals 2

    iget v0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/OpScreenModeService;->getModeRecordIgnoreSetting(II)Lcom/android/server/wm/OpScreenModeService$zta;

    move-result-object p0

    return-object p0
.end method

.method getModeRecordIgnoreSetting(II)Lcom/android/server/wm/OpScreenModeService$zta;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/android/server/wm/OpScreenModeService;->mHighResolution:I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mParamsMap:Ljava/util/HashMap;

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/OpScreenModeService$zta;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mDefaultMode:Lcom/android/server/wm/OpScreenModeService$zta;

    return-object p0
.end method

.method getPackageRate(ILcom/android/server/wm/AppWindowToken;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mFixedRatePackage:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/android/server/wm/AppWindowToken;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mFixedRatePackage:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/android/server/wm/AppWindowToken;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    return p1

    :cond_0
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mForcedRateList:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/server/wm/AppWindowToken;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mForcedRateList:Ljava/util/ArrayList;

    iget-object p1, p2, Lcom/android/server/wm/AppWindowToken;->mActivityName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    iput-boolean p0, p2, Lcom/android/server/wm/AppWindowToken;->mFixedRate:Z

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    return p1
.end method

.method public getPreferredModeId(Lcom/android/server/wm/WindowState;I)I
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/wm/OpScreenModeService;->mServiceReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->updateIrisWindowInfo(Lcom/android/server/wm/WindowState;)V

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x902

    const-string v3, "getPreferredModeId w "

    const-string v4, "ScreenModeService"

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean p2, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " full speed when OPFingerprintVDpressed showing"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/OpScreenModeService;->getModeRecordIgnoreSetting(II)Lcom/android/server/wm/OpScreenModeService$zta;

    move-result-object p0

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$zta;->mode:Landroid/view/Display$Mode;

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    return p0

    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " full speed when keyguard showing"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mIsFingerprintEnabled:Z

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_6

    :cond_5
    :goto_2
    iget p1, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/OpScreenModeService;->getModeRecord(II)Lcom/android/server/wm/OpScreenModeService$zta;

    move-result-object p0

    goto :goto_1

    :cond_6
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v1, v0, Lcom/android/server/wm/AppWindowToken;->mRefreshRate:I

    iget v2, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_9

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mFixedRate:Z

    if-nez v0, :cond_9

    if-eqz p2, :cond_9

    sget-boolean p0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " use candidate mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return p2

    :cond_9
    sget-boolean p2, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " rate "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    :goto_3
    return v1
.end method

.method public getRawRefreshRate(Ljava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/OpScreenModeService;->mServiceReady:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget p0, p0, Lcom/android/server/wm/AppWindowToken;->mRawRefreshRate:I

    return p0

    :cond_1
    const/16 p0, -0x63

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
    .locals 5

    iput-object p2, p0, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    new-instance p1, Lcom/android/server/wm/OpScreenModeService$tsu;

    invoke-direct {p1, p0}, Lcom/android/server/wm/OpScreenModeService$tsu;-><init>(Lcom/android/server/wm/OpScreenModeService;)V

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mSettingsObserver:Lcom/android/server/wm/OpScreenModeService$tsu;

    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    const-string p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mDisplay:Landroid/view/Display;

    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [Lcom/android/server/wm/OpScreenModeService$zta;

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mModeRecords:[Lcom/android/server/wm/OpScreenModeService$zta;

    move v0, p2

    :goto_0
    array-length v1, p1

    const-string v2, "ScreenModeService"

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService;->mModeRecords:[Lcom/android/server/wm/OpScreenModeService$zta;

    new-instance v3, Lcom/android/server/wm/OpScreenModeService$zta;

    aget-object v4, p1, v0

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/OpScreenModeService$zta;-><init>(Lcom/android/server/wm/OpScreenModeService;Landroid/view/Display$Mode;)V

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService;->mModeRecords:[Lcom/android/server/wm/OpScreenModeService$zta;

    aget-object v3, v1, v0

    iget v3, v3, Lcom/android/server/wm/OpScreenModeService$zta;->zha:I

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/server/wm/OpScreenModeService$zta;->Aha:I

    iget-object v4, p0, Lcom/android/server/wm/OpScreenModeService;->mParamsMap:Ljava/util/HashMap;

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/OpScreenModeService;->mModeRecords:[Lcom/android/server/wm/OpScreenModeService$zta;

    aget-object v3, v3, v0

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService;->mModeRecordMap:Ljava/util/HashMap;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/OpScreenModeService;->mModeRecords:[Lcom/android/server/wm/OpScreenModeService$zta;

    aget-object v4, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modeId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/server/wm/OpScreenModeService$zta;

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/OpScreenModeService$zta;-><init>(Lcom/android/server/wm/OpScreenModeService;Landroid/view/Display$Mode;)V

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mDefaultMode:Lcom/android/server/wm/OpScreenModeService$zta;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "default modeId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mDefaultMode:Lcom/android/server/wm/OpScreenModeService$zta;

    iget-object v0, v0, Lcom/android/server/wm/OpScreenModeService$zta;->mode:Landroid/view/Display$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x2

    const-string v1, "oneplus_screen_refresh_rate"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    iget p1, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mDefaultMode:Lcom/android/server/wm/OpScreenModeService$zta;

    iget v0, v0, Lcom/android/server/wm/OpScreenModeService$zta;->Aha:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/OpScreenModeService;->getModeRecord(II)Lcom/android/server/wm/OpScreenModeService$zta;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/OpScreenModeService$zta;->mode:Landroid/view/Display$Mode;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/OpScreenModeService;->mCurrentModeId:I

    new-instance p1, Lcom/android/server/wm/OpScreenModeService$sis;

    invoke-direct {p1, p0}, Lcom/android/server/wm/OpScreenModeService$sis;-><init>(Lcom/android/server/wm/OpScreenModeService;)V

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    invoke-virtual {p0}, Lcom/android/server/wm/OpScreenModeService;->setResolution()V

    const/4 p1, 0x1

    new-array p1, p1, [I

    iget v0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    iget v1, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/OpScreenModeService;->getModeRecord(II)Lcom/android/server/wm/OpScreenModeService$zta;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/OpScreenModeService$zta;->mode:Landroid/view/Display$Mode;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v0

    aput v0, p1, p2

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerInternal;->setAllowedDisplayModes([II)V

    invoke-virtual {p0}, Lcom/android/server/wm/OpScreenModeService;->updateTgpaFrameRate()V

    invoke-virtual {p0}, Lcom/android/server/wm/OpScreenModeService;->initCtsRateList()V

    invoke-virtual {p0}, Lcom/android/server/wm/OpScreenModeService;->initReceiver()V

    invoke-virtual {p0}, Lcom/android/server/wm/OpScreenModeService;->initOnlineConfig()V

    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mOpIrisWindowInfo:Lcom/oneplus/iris/OpIrisWindowInfo;

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mOpIrisWindowInfo:Lcom/oneplus/iris/OpIrisWindowInfo;

    invoke-virtual {p0}, Lcom/android/server/wm/OpScreenModeService;->publish()V

    return-void
.end method

.method initCtsRateList()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mFixedRatePackage:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.view.cts/.DisplayRefreshRateCtsActivity"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mCtsRatePackage:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OpScreenModeService;->initLocalRateList(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/OpScreenModeService;->initLocalRateList(I)V

    return-void
.end method

.method initLocalRateList(I)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const v1, 0x5020027

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const v1, 0x5020028

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    :goto_1
    :try_start_0
    array-length v2, v1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/OpScreenModeService;->mFixedRatePackage:Ljava/util/HashMap;

    aget-object v3, v1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "ScreenModeService"

    const-string v0, "initLocalRateList put mFixedRatePackage fail: "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method

.method initOnlineConfig()V
    .locals 4

    const-string v0, "ScreenModeService"

    const-string v1, "init ScreenMode OnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/wm/OpScreenModeService$sis;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpScreenModeService$sis;-><init>(Lcom/android/server/wm/OpScreenModeService;)V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    new-instance v1, Lcom/android/server/wm/kth;

    invoke-direct {v1, p0}, Lcom/android/server/wm/kth;-><init>(Lcom/android/server/wm/OpScreenModeService;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method initReceiver()V
    .locals 2

    sget-object v0, Lcom/android/server/wm/OpScreenModeService;->sPkgReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/p;

    invoke-direct {v0, p0}, Lcom/android/server/wm/p;-><init>(Lcom/android/server/wm/OpScreenModeService;)V

    sput-object v0, Lcom/android/server/wm/OpScreenModeService;->sPkgReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/wm/OpScreenModeService;->sPkgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method isCtsActivity(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mCtsRatePackage:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/server/wm/AppWindowToken;->mActivityName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSetDensityForUser(II)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetDensityForUser density "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenModeService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public publish()V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenModeService"

    const-string v1, "publish"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/android/screenmode/IOpScreenMode$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "opscreenmode"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/OpScreenModeService;->mServiceReady:Z

    return-void
.end method

.method public synthetic s()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    new-instance v3, Lcom/android/server/wm/OpScreenModeService$you;

    invoke-direct {v3, p0}, Lcom/android/server/wm/OpScreenModeService$you;-><init>(Lcom/android/server/wm/OpScreenModeService;)V

    const-string v4, "ScreenMode"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method setIrisWindowInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mOpIrisWindowInfo:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget v1, p0, Lcom/android/server/wm/OpScreenModeService;->mCurrentModeId:I

    iput v1, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->modeId:I

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIrisWindowInfo activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService;->mOpIrisWindowInfo:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, v1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fullScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService;->mOpIrisWindowInfo:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-boolean v1, v1, Lcom/oneplus/iris/OpIrisWindowInfo;->fullScreenContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService;->mOpIrisWindowInfo:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget v1, v1, Lcom/oneplus/iris/OpIrisWindowInfo;->modeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " aboveWindowCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mOpIrisWindowInfo:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget p0, p0, Lcom/oneplus/iris/OpIrisWindowInfo;->aboveWindowCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenModeService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setRateDirectly(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/OpScreenModeService;->mServiceReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-ltz p2, :cond_2

    sget v0, Lcom/android/server/wm/OpScreenModeService;->KEEP_RATE_DELAY:I

    if-lez v0, :cond_2

    if-nez p2, :cond_1

    move p2, v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public setRefreshRate(Landroid/os/IBinder;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/OpScreenModeService;->mServiceReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->getAppToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iput v0, p1, Lcom/android/server/wm/AppWindowToken;->mTmpRequestRate:I

    iput v0, p1, Lcom/android/server/wm/AppWindowToken;->mRawRefreshRate:I

    :cond_2
    if-ne v0, v1, :cond_3

    iget p2, p1, Lcom/android/server/wm/AppWindowToken;->mTmpRefreshRate:I

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/OpScreenModeService;->setRefreshRate(Lcom/android/server/wm/AppWindowToken;I)V

    invoke-static {}, Lcom/android/server/backlight/OpBacklightManager;->getInstance()Lcom/android/server/backlight/OpBacklightManager;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/wm/AppWindowToken;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backlight/OpBacklightManager;->sis(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public setRefreshRate(Lcom/android/server/wm/AppWindowToken;I)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/OpScreenModeService;->mServiceReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRefreshRate token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " rate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tmpRate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScreenModeService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/OpScreenModeService;->getPackageRate(ILcom/android/server/wm/AppWindowToken;)I

    move-result v1

    iput v1, p1, Lcom/android/server/wm/AppWindowToken;->mTmpRefreshRate:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->isCtsActivity(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->updateRefreshRate(Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService;->mModeRecordMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/server/wm/OpScreenModeService;->mCurrentModeId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/OpScreenModeService$zta;

    iget v1, v1, Lcom/android/server/wm/OpScreenModeService$zta;->zha:I

    iput v1, p1, Lcom/android/server/wm/AppWindowToken;->mRefreshRate:I

    iget v1, p1, Lcom/android/server/wm/AppWindowToken;->mTmpRefreshRate:I

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    sget v1, Lcom/android/server/wm/OpScreenModeService;->RECORD_MODE_DELAY:I

    goto :goto_2

    :cond_4
    :goto_1
    sget v1, Lcom/android/server/wm/OpScreenModeService;->RECORD_MODE_DELAY_SHORT:I

    :goto_2
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/wm/OpScreenModeService;->invokeGameSpeedLogic(Lcom/android/server/wm/AppWindowToken;II)I

    move-result p2

    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    :goto_3
    return-void
.end method

.method setResolution()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "oneplus_screen_resolution_adjust"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v2, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/android/server/wm/OpScreenModeService;->mHighResolution:I

    iput v2, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    :goto_0
    iget v2, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    iget v3, p0, Lcom/android/server/wm/OpScreenModeService;->mHighResolution:I

    const-string v4, "persist.sys.resolution_change"

    if-eq v2, v3, :cond_1

    const-string v2, "1"

    goto :goto_1

    :cond_1
    const-string v2, "0"

    :goto_1
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    sput-boolean v4, Lcom/android/server/wm/OpScreenModeService;->sIsResolution2K:Z

    if-eq v0, v1, :cond_5

    sget-boolean v1, Lcom/android/server/wm/OpScreenModeService;->sIsResolution2K:Z

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :cond_5
    :goto_3
    sget-boolean v1, Lcom/android/server/wm/OpScreenModeService;->sIsResolutionAuto:Z

    if-eq v2, v1, :cond_6

    iget p0, p0, Lcom/android/server/wm/OpScreenModeService;->mHighResolution:I

    if-nez p0, :cond_6

    sput-boolean v2, Lcom/android/server/wm/OpScreenModeService;->sIsResolutionAuto:Z

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current resolution settings:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenModeService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateGlobalModeId(I)I
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/wm/OpScreenModeService;->mServiceReady:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->updateDynamicVsync(I)V

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/OpScreenModeService;->setIrisWindowInfo()V

    const/4 v0, 0x0

    const-string v1, "ScreenModeService"

    if-eqz p1, :cond_a

    iget-object v2, p0, Lcom/android/server/wm/OpScreenModeService;->mModeRecordMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OpScreenModeService$zta;

    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/server/wm/OpScreenModeService$zta;->Aha:I

    iget v4, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    if-eq v3, v4, :cond_2

    sget-boolean p1, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request resolution "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/wm/OpScreenModeService$zta;->Aha:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not equal with setting "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget p1, v2, Lcom/android/server/wm/OpScreenModeService$zta;->zha:I

    iget v2, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/OpScreenModeService;->getModeRecord(II)Lcom/android/server/wm/OpScreenModeService$zta;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/OpScreenModeService$zta;->mode:Landroid/view/Display$Mode;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    :cond_2
    iget v2, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-boolean p1, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "during recent animation keep high refresh rate"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget p1, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/OpScreenModeService;->getModeRecord(II)Lcom/android/server/wm/OpScreenModeService$zta;

    move-result-object p1

    :goto_0
    iget-object p1, p1, Lcom/android/server/wm/OpScreenModeService$zta;->mode:Landroid/view/Display$Mode;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/android/server/wm/OpScreenModeService;->mTgpaFrameRate:I

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wm/OpScreenModeService;->mTgpaFrameRatePackage:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/OpScreenModeService;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget p1, p0, Lcom/android/server/wm/OpScreenModeService;->mTgpaFrameRate:I

    const/16 v2, 0x3c

    if-le p1, v2, :cond_5

    move p1, v0

    goto :goto_1

    :cond_5
    const/4 p1, 0x1

    :goto_1
    sget-boolean v2, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use tgpa refresh rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/OpScreenModeService;->mTgpaFrameRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v2, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/OpScreenModeService;->getModeRecord(II)Lcom/android/server/wm/OpScreenModeService$zta;

    move-result-object p1

    goto :goto_0

    :cond_7
    :goto_2
    iget-boolean v2, p0, Lcom/android/server/wm/OpScreenModeService;->mIirsChipEnable:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wm/OpScreenModeService;->mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    if-nez v2, :cond_8

    sget-object v2, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_IRIS_SERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v2}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/iris/IOneplusIrisManager;

    iput-object v2, p0, Lcom/android/server/wm/OpScreenModeService;->mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/OpScreenModeService;->mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    if-eqz v2, :cond_9

    invoke-interface {v2, p1}, Lcom/oneplus/iris/IOneplusIrisManager;->getPreferedModeId(I)I

    move-result p1

    :cond_9
    iput p1, p0, Lcom/android/server/wm/OpScreenModeService;->mCurrentModeId:I

    :cond_a
    iget v2, p0, Lcom/android/server/wm/OpScreenModeService;->mDirectMode:I

    const-string v3, "updateGlobalModeId modeId "

    if-eqz v2, :cond_e

    iget v4, p0, Lcom/android/server/wm/OpScreenModeService;->mCurrentModeId:I

    if-eq v4, v2, :cond_c

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mDirectMode "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/OpScreenModeService;->mDirectMode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget p1, p0, Lcom/android/server/wm/OpScreenModeService;->mDirectMode:I

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->updateDynamicVsync(I)V

    iget p0, p0, Lcom/android/server/wm/OpScreenModeService;->mDirectMode:I

    return p0

    :cond_c
    sget-boolean v2, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz v2, :cond_d

    const-string v2, "setRateDirectly end"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iput v0, p0, Lcom/android/server/wm/OpScreenModeService;->mDirectMode:I

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_e
    sget-boolean v0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mCurrentModeId "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/OpScreenModeService;->mCurrentModeId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget p1, p0, Lcom/android/server/wm/OpScreenModeService;->mCurrentModeId:I

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->updateDynamicVsync(I)V

    iget p0, p0, Lcom/android/server/wm/OpScreenModeService;->mCurrentModeId:I

    return p0
.end method

.method updateIrisWindowInfo(Lcom/android/server/wm/WindowState;)V
    .locals 6

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_1

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mOpIrisWindowInfo:Lcom/oneplus/iris/OpIrisWindowInfo;

    iput-boolean v2, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->matchDisplaySize:Z

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mPackageName:Ljava/lang/String;

    iput-object v5, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mActivityName:Ljava/lang/String;

    iput-object v5, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    iget v4, v4, Lcom/android/server/wm/AppWindowToken;->mRequestRate:I

    if-ne v4, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iput-boolean v4, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->fullScreenContent:Z

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIrisWindowInfo activity="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " bounds="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " rate="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v3, v3, Lcom/android/server/wm/AppWindowToken;->mRequestRate:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " aboveWindowCount="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpScreenModeService;->mOpIrisWindowInfo:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget v3, v3, Lcom/oneplus/iris/OpIrisWindowInfo;->aboveWindowCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ScreenModeService"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mOpIrisWindowInfo:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-boolean v0, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->matchDisplaySize:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-le v0, v3, :cond_2

    const/16 v3, 0xbb7

    if-ge v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, "GestureButtonRegion"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, "ScreenDecorOverlayBottom"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, "ScreenDecorOverlay"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "ScreenDecorOverlayExpand"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mOpIrisWindowInfo:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget p1, p0, Lcom/oneplus/iris/OpIrisWindowInfo;->aboveWindowCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/oneplus/iris/OpIrisWindowInfo;->aboveWindowCount:I

    iput-boolean v1, p0, Lcom/oneplus/iris/OpIrisWindowInfo;->fullScreenWindow:Z

    :cond_2
    return-void
.end method

.method public updateScenario(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/OpScreenModeService;->mServiceReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mScreenModeHandler:Lcom/android/server/wm/OpScreenModeService$sis;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method updateTgpaFrameRate()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "tgpa_frame_rate"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-lez v1, :cond_4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/server/wm/OpScreenModeService;->mTgpaFrameRate:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mTgpaFrameRatePackage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iput v1, p0, Lcom/android/server/wm/OpScreenModeService;->mTgpaFrameRate:I

    iput-object v3, p0, Lcom/android/server/wm/OpScreenModeService;->mTgpaFrameRatePackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTgpaFrameRate package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService;->mTgpaFrameRatePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpScreenModeService;->mTgpaFrameRate:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenModeService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method
