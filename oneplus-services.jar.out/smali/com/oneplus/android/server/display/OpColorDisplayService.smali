.class public final Lcom/oneplus/android/server/display/OpColorDisplayService;
.super Lcom/oneplus/display/IOneplusColorDisplay$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/display/OpColorDisplayService$zta;,
        Lcom/oneplus/android/server/display/OpColorDisplayService$you;
    }
.end annotation


# static fields
.field private static final ADVANCE_DISPLAYP3:I = 0x4

.field private static final ADVANCE_SRGB:I = 0x3

.field private static final ADVANCE_WIDE:I = 0x2

.field private static final CUSTOM_DISPLAYP3_MODE:I = 0x2

.field private static final CUSTOM_MODE:I = 0x3

.field private static final CUSTOM_NTSC_MODE:I = 0x0

.field private static final CUSTOM_SRGB_MODE:I = 0x1

.field private static final DEFAULT_MODE:I = 0x1

.field private static final DISABLE_COLOR_FAST:I = 0x0

.field private static final FACTORY_MODE:I = 0x14

.field private static final IS_SUPPORT_DECR_BL_CJ:Z

.field private static final LAUNCHER:Ljava/lang/String; = "net.oneplus.launcher"

.field private static final MSG_COLORREAD2NIGHT:I = 0xd

.field private static final MSG_COLORREAD2READ:I = 0xf

.field private static final MSG_COLORREAD_SWITCH:I = 0x11

.field private static final MSG_CUSTOM_COLOR_TEMPERATURE:I = 0xc

.field private static final MSG_DCENABLE:I = 0x8

.field private static final MSG_DISABLECOLOR:I = 0x4

.field private static final MSG_DISABLE_LIGHT_SENSOR:I = 0x13

.field private static final MSG_ENHANCE_CUSTOM_CCT:I = 0x18

.field private static final MSG_ENHANCE_VIVD_NATURAL_CCT:I = 0x19

.field private static final MSG_ENTER_DOOGLE_MATRIX_MODE:I = 0x15

.field private static final MSG_EXIT_DOOGLE_MATRIX_MODE:I = 0x16

.field private static final MSG_FINGERPRINT_OFF:I = 0x1a

.field private static final MSG_NIGHT2COLOREEAD:I = 0xe

.field private static final MSG_NIGHT2READING:I = 0x2

.field private static final MSG_NIGHTBRIGHTNESS:I = 0xa

.field private static final MSG_NIGHTSTRENGTH:I = 0x9

.field private static final MSG_NIGHT_SWITCH:I = 0x0

.field private static final MSG_NOTIFY_UNLOCK_SUCCESS:I = 0x1c

.field private static final MSG_READ2COLORREAD:I = 0x10

.field private static final MSG_READING2NIGHT:I = 0x3

.field private static final MSG_READING_SWITCH:I = 0x1

.field private static final MSG_RECOVER_ONEPLUS_MATRIX:I = 0xb

.field private static final MSG_RESET_ENHANCE_CCT:I = 0x17

.field private static final MSG_RESUME_COLOR_MODE:I = 0x1b

.field private static final MSG_REVERTSTATUS:I = 0x5

.field private static final MSG_SCREEN_OFF:I = 0x7

.field private static final MSG_SCREEN_ON:I = 0x6

.field private static final MSG_SETUP:I = 0x12

.field private static final MSG_UPDATE_AUTO_AD_STATUS:I = 0x14

.field private static final NATIVE:I = 0x7

.field private static final NATURAL_MODE:I = 0xa

.field private static final NATURE:I = 0x1

.field private static final OEM_BLACK_MODE_DEFAULT_VALUE:I = 0x0

.field private static final OEM_LOW_BACKLIGHT_DEFAULT_VALUE:I = 0x0

.field private static final OP_DC_ENABLE:I = 0x16

.field private static final OP_DISPLAY_HALSRGB_COLOR_MODE:I = 0x12

.field private static final OP_DISPLAY_P3_COLOR_MODE:I = 0x10

.field private static final OP_DISPLAY_WIDE_COLOR_MODE:I = 0x11

.field private static final OP_MCA_ENABLE:I = 0x22

.field private static final OP_NATIVE_CUSTOMER_P3_MODE:I = 0x15

.field private static final OP_NATIVE_CUSTOMER_SRGB_MODE:I = 0x14

.field private static final OP_NATIVE_LOADING_EFFECT_MODE:I = 0x13

.field private static final OP_NOTIFY_HDR_STATUS:I = 0x17

.field private static final PANEL_NAME:Ljava/lang/String; = "ID: ED 27 01"

.field private static final PANEL_SERIAL_NUMBER_PATH:Ljava/lang/String; = "sys/class/drm/card0-DSI-1/panel_serial_number"

.field private static final PIXEL_COLOR_CALIBRATION_LOADING_OFF:I = 0x15

.field private static final PIXEL_COLOR_CALIBRATION_LOADING_ON:I = 0x16

.field private static final PUBG:Ljava/lang/String; = "com.tencent.ig"

.field private static final RESUME_COLOR:I = 0x2

.field private static final SCREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/display/IOneplusColorDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHARPNESS0:I = 0xa

.field private static final SHARPNESS70:I = 0x9

.field private static final SUPPORT_CUSTOM_FINGERPRINT:Z

.field private static final SURFACE_COMPOSER_INTERFACE_KEY:Ljava/lang/String; = "android.ui.ISurfaceComposer"

.field private static final SURFACE_FLINGER:Ljava/lang/String; = "SurfaceFlinger"

.field private static final SURFACE_FLINGER_TRANSACTION_FINGERPRINT_STATUS:I = 0x40d

.field private static final TAG:Ljava/lang/String; = "OpColorDisplayService"

.field private static final UPDATE_BRIGHTNESS:I = 0x40c

.field private static final VIVD:I


# instance fields
.field private exittime:Z

.field private firstunlock:Z

.field private isIrisClose:Z

.field private isTheSpecificPlane:Z

.field private lowBacklightStatus:Z

.field private mAssertiveDisplayManager:Lcom/oneplus/android/server/display/rtg;

.field private final mCDHHandler:Lcom/oneplus/android/server/display/OpColorDisplayService$zta;

.field private mColorDisplayThread:Landroid/os/HandlerThread;

.field private mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

.field private mColorReadModeState:Z

.field private mColorTintManager:Lcom/oneplus/android/server/display/gwm;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentMCAStatus:Z

.field private mCurrentUser:I

.field private mDisableColorState:I

.field private final mDisplayToken:Landroid/os/IBinder;

.field private mDtm:Lcom/android/server/display/color/DisplayTransformManager;

.field private mExitFingerPrintModeReason:Z

.field private mFingerprintMode:Z

.field private mFingerprintStatus:Z

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFrontPackageListener:Lcom/android/server/OnePlusUtil$zta$you;

.field private mGlobaAmbientLux:F

.field private final mHandler:Landroid/os/Handler;

.field private mHasFingerprint:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mNightModeState:Z

.field private mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

.field private mOpWm:Landroid/view/IOpWindowManager;

.field private mSurfaceFlinger:Landroid/os/IBinder;

.field private mTempDisableSmoothSoftIris:Z

.field private mVivdAndNaturalCCT:I

.field private mWBReadModeState:Z

.field private oemBlackModeStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x105

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/android/server/display/OpColorDisplayService;->IS_SUPPORT_DECR_BL_CJ:Z

    new-array v0, v0, [I

    const/16 v1, 0x50

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_CUSTOM_FINGERPRINT:Z

    new-instance v0, Lcom/oneplus/android/server/display/ssp;

    invoke-direct {v0}, Lcom/oneplus/android/server/display/ssp;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SCREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHasFingerprint:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    iput v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mDisableColorState:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mGlobaAmbientLux:F

    iput v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mVivdAndNaturalCCT:I

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->oemBlackModeStatus:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->lowBacklightStatus:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->isTheSpecificPlane:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentMCAStatus:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFingerprintMode:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mTempDisableSmoothSoftIris:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFingerprintStatus:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mExitFingerPrintModeReason:Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->exittime:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->isIrisClose:Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->firstunlock:Z

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/android/server/display/ywr;

    invoke-direct {v0, p1}, Lcom/oneplus/android/server/display/ywr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ColorDisplayThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorDisplayThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorDisplayThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorDisplayThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;-><init>(Lcom/oneplus/android/server/display/OpColorDisplayService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCDHHandler:Lcom/oneplus/android/server/display/OpColorDisplayService$zta;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorDisplayThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-direct {v0, p1}, Lcom/oneplus/android/server/display/OpColorModeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    new-instance v0, Lcom/oneplus/android/server/display/gwm;

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-direct {v0, v1, v2}, Lcom/oneplus/android/server/display/gwm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    new-instance v0, Lcom/oneplus/android/server/display/rtg;

    invoke-direct {v0, p1}, Lcom/oneplus/android/server/display/rtg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mAssertiveDisplayManager:Lcom/oneplus/android/server/display/rtg;

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/ywr;->zta(Lcom/oneplus/android/server/display/gwm;)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/ywr;->zta(Lcom/oneplus/android/server/display/OpColorModeManager;)V

    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mDisplayToken:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->revertStatus(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->lowBacklightStatus:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    return-object p0
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->IS_SUPPORT_DECR_BL_CJ:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mVivdAndNaturalCCT:I

    return p0
.end method

.method static synthetic access$1302(Lcom/oneplus/android/server/display/OpColorDisplayService;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mVivdAndNaturalCCT:I

    return p1
.end method

.method static synthetic access$1400(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/oneplus/android/server/display/OpColorDisplayService;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mDisableColorState:I

    return p0
.end method

.method static synthetic access$1700(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->processScreenOn(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->dcStatusChange()V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->nightStrengthChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->nightBrightnessChanged()V

    return-void
.end method

.method static synthetic access$2100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->setUp()V

    return-void
.end method

.method static synthetic access$2300(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/rtg;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mAssertiveDisplayManager:Lcom/oneplus/android/server/display/rtg;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/oneplus/android/server/display/OpColorDisplayService;)F
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mGlobaAmbientLux:F

    return p0
.end method

.method static synthetic access$2500(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyIrisFingerprintStatus(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyResumeColorMode()V

    return-void
.end method

.method static synthetic access$2700(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->setUnlockSuccessStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/ywr;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->isTheSpecificPlane:Z

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->getOemBlackModeStatus()Z

    move-result p0

    return p0
.end method

.method static synthetic access$702(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->oemBlackModeStatus:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyDecreaseGreenAtLowBacklightAndBlackMode()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->getLowBacklightStatus()Z

    move-result p0

    return p0
.end method

.method private dcStatusChange()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    const/4 v2, 0x0

    const-string v3, "oneplus_dc_dimming_value"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "persist.vendor.dc.enable"

    if-eqz v0, :cond_1

    const-string v4, "1"

    goto :goto_1

    :cond_1
    const-string v4, "0"

    :goto_1
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v1, [I

    const/16 v3, 0x110

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "OpColorDisplayService"

    const-string v3, "Update Screen Brightness."

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    const-string v4, "screen_brightness"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-ge v1, v2, :cond_3

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->updateScreenBrighness()V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

    invoke-virtual {v1, v0}, Lcom/oneplus/android/server/display/ywr;->D(Z)V

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->setMCAStatus()V

    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "ONEPLUS COLOR DISPLAY MANAGER dumpsys (oneplus_color_display)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/ywr;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static getDefault()Lcom/oneplus/display/IOneplusColorDisplay;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SCREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/display/IOneplusColorDisplay;

    return-object v0
.end method

.method private getDisplayInfo()V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "sys/class/drm/card0-DSI-1/panel_serial_number"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->readStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readFileByLines lcdInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpColorDisplayService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ID: ED 27 01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->isTheSpecificPlane:Z

    :cond_1
    return-void
.end method

.method private getLowBacklightStatus()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "colour_cast"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private getOemBlackModeStatus()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "oem_black_mode"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private getSurfaceFlinger()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mSurfaceFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mSurfaceFlinger:Landroid/os/IBinder;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mSurfaceFlinger:Landroid/os/IBinder;

    return-object p0
.end method

.method private nightBrightnessChanged()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/gwm;->setNightBrightness()V

    return-void
.end method

.method private nightStrengthChanged()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/gwm;->Bf()V

    return-void
.end method

.method private notifyDecreaseGreenAtLowBacklightAndBlackMode()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oemBlackModeStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->oemBlackModeStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "lowBacklightStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->lowBacklightStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->oemBlackModeStatus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->lowBacklightStatus:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/gwm;->I(Z)V

    return-void
.end method

.method private notifyIrisFingerprintStatus(Z)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyIrisFingerprintStatus fingerprint_status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->isIrisClose:Z

    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->getSurfaceFlinger()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->getSurfaceFlinger()Landroid/os/IBinder;

    move-result-object v4

    const/16 v5, 0x40d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v6, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    iget-object v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "fod_mode"

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iget v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-static {v4, v5, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to notifyIrisFingerprintStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    const-string v0, "Failed to notifyIrisFingerprintStatus."

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v3, "Failed to notifyIrisFingerprintStatus"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_5

    :goto_4
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_2
    :goto_5
    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFingerprintMode:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->setMCAStatus()V

    return-void
.end method

.method private notifyResumeColorMode()V
    .locals 5

    const-string v0, "OpColorDisplayService"

    const-string v1, "notifyResumeColorMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->Q(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    const-string v2, "error, should not be this value"

    packed-switch v1, :pswitch_data_0

    const-string p0, "no one match"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p0, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v4}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p0, v3}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processScreenOn(Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processScreenOn   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/HandlerThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Lcom/oneplus/android/server/display/gwm;->M(Z)V

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "mKeyguardManager is null!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKeyguard =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.fingerprint"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    const-string v4, "fingerprint"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_1
    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    new-array v3, v2, [I

    const/16 v5, 0x50

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHasFingerprint:Z

    goto :goto_3

    :cond_3
    const-string v0, "mFpm == null"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasFingerprint = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHasFingerprint:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHasFingerprint:Z

    if-nez v0, :cond_7

    const-string v0, "ColorDisable"

    invoke-static {v0}, Lcom/oneplus/server/sis;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v0, 0x2

    const-string v1, "FingerPrintMode"

    invoke-static {v1, v0, v4}, Lcom/oneplus/server/sis;->notifyModeChange(Ljava/lang/String;II)V

    :cond_4
    new-array v0, v2, [I

    const/16 v1, 0x10d

    aput v1, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_5

    new-array v0, v2, [I

    const/16 v1, 0x10c

    aput v1, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct {p0, v4}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyIrisFingerprintStatus(Z)V

    :cond_6
    invoke-direct {p0, v4}, Lcom/oneplus/android/server/display/OpColorDisplayService;->revertStatus(Z)V

    goto :goto_4

    :cond_7
    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->firstunlock:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {v0, p1}, Lcom/oneplus/android/server/display/gwm;->L(Z)V

    :cond_9
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/ywr;->G(Z)V

    return-void
.end method

.method private readStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string p0, "readFileByLines io close exception :"

    const-string v0, "OpColorDisplayService"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception v1

    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readFileByLines io exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_1
    :goto_3
    return-object p1

    :goto_4
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_5
    throw p1
.end method

.method private revertStatus(Z)V
    .locals 11

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mTempDisableSmoothSoftIris:Z

    const/16 v1, 0x14

    const/16 v2, 0x10c

    const/16 v3, 0x10d

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v6, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v6}, Lcom/oneplus/android/server/display/OpColorModeManager;->Q(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    new-array v0, v5, [I

    aput v3, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v5, [I

    aput v2, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, v4}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyIrisFingerprintStatus(Z)V

    iput-boolean v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mTempDisableSmoothSoftIris:Z

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v6, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v6}, Lcom/oneplus/android/server/display/OpColorModeManager;->Q(I)I

    move-result v0

    const/16 v6, 0xea

    const/16 v7, 0x13

    if-eq v0, v5, :cond_11

    const/4 v8, 0x3

    const/16 v9, 0xa

    const/16 v10, 0x11

    if-eq v0, v8, :cond_9

    if-eq v0, v9, :cond_8

    packed-switch v0, :pswitch_data_0

    const-string p1, "OpColorDisplayService"

    const-string v0, "no one match"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :pswitch_0
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v10, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/gwm;->zf()V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v7, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    goto/16 :goto_7

    :pswitch_1
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v10, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/gwm;->zf()V

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v7, v4}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    goto/16 :goto_7

    :pswitch_2
    new-array p1, v5, [I

    aput v3, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-nez p1, :cond_6

    new-array p1, v5, [I

    aput v2, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    invoke-direct {p0, v5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyIrisFingerprintStatus(Z)V

    iput-boolean v5, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mTempDisableSmoothSoftIris:Z

    :cond_7
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v10, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/gwm;->zf()V

    new-array p1, v5, [I

    aput v9, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v0, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    if-eqz p1, :cond_5

    new-array p1, v5, [I

    aput v6, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {p1, v5}, Lcom/oneplus/android/server/display/gwm;->C(Z)V

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)I

    move-result p1

    const/4 v0, 0x2

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v10, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    new-array p1, v5, [I

    aput v3, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-nez p1, :cond_a

    new-array p1, v5, [I

    aput v2, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_a
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v7, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v6, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {p1, v6}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)I

    move-result p1

    if-ne p1, v5, :cond_d

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v8}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v1, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    new-array p1, v5, [I

    aput v3, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-nez p1, :cond_c

    new-array p1, v5, [I

    aput v2, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v7, v4}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    goto :goto_5

    :cond_d
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {p1, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)I

    move-result p1

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/16 v0, 0x15

    invoke-virtual {p1, v0, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    new-array p1, v5, [I

    aput v3, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-nez p1, :cond_c

    new-array p1, v5, [I

    aput v2, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_4

    :cond_e
    :goto_5
    new-array p1, v5, [I

    aput v3, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-nez p1, :cond_10

    new-array p1, v5, [I

    aput v2, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_6

    :cond_f
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/gwm;->yf()V

    :cond_10
    :goto_6
    new-array p1, v5, [I

    aput v9, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_12

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v0, v4}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    if-eqz p1, :cond_3

    new-array p1, v5, [I

    aput v6, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {p1, v5}, Lcom/oneplus/android/server/display/gwm;->C(Z)V

    goto/16 :goto_0

    :cond_12
    :goto_7
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, p0}, Lcom/oneplus/android/server/display/OpColorModeManager;->Q(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oneplus/android/server/display/ywr;->O(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setMCAStatus()V
    .locals 4

    const-string v0, "vendor.boot.project_name"

    const-string v1, "Oneplus"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "19811"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "persist.vendor.dc.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFingerprintMode:Z

    if-eqz v0, :cond_1

    :cond_0
    move v3, v1

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentMCAStatus:Z

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/16 v1, 0x22

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    iput-boolean v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentMCAStatus:Z

    :cond_2
    return-void
.end method

.method private setUnlockSuccessStatus()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mExitFingerPrintModeReason:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->exittime:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->exittime:Z

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyIrisFingerprintStatus(Z)V

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->revertStatus(Z)V

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mExitFingerPrintModeReason:Z

    const-string p0, "OpColorDisplayService"

    const-string v0, "KeyguardDone is finish by  set ExitFingerPrintModeByUnlockSuccess"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setUp()V
    .locals 4

    const-string v0, "OpColorDisplayService"

    const-string v1, "setUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/android/server/display/gwm;

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-direct {v0, v1, v2}, Lcom/oneplus/android/server/display/gwm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oem_black_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->oemBlackModeStatus:Z

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "colour_cast"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->lowBacklightStatus:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->getDisplayInfo()V

    new-array v0, v2, [I

    const/16 v3, 0x10d

    aput v3, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v2, [I

    const/16 v3, 0x10c

    aput v3, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0, v1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyIrisFingerprintStatus(Z)V

    :cond_3
    invoke-direct {p0, v1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->revertStatus(Z)V

    iget v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->U(I)Z

    move-result v0

    const-string v3, "accessibility_display_grayscale_enabled"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-static {v0, v3, v1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-static {v0, v3, v2, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_5
    :goto_2
    return-void
.end method

.method private updateScreenBrighness()V
    .locals 5

    const-string v0, "OpColorDisplayService"

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->getSurfaceFlinger()Landroid/os/IBinder;

    move-result-object p0

    const/16 v2, 0x40c

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {p0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to communicate with SurfaceFlinger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_1
    const-string p0, "Failed to set screen brightness using Iris."

    goto :goto_0

    :catch_2
    const-string p0, "Failed to update screen brightness."

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public adjustLightColorGamut(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/ywr;->adjustLightColorGamut(I)V

    return-void
.end method

.method public disableColor(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisableColor state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mDisableColorState:I

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public disablelightSensor()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "disablelightSensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    const-string p3, "OpColorDisplayService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enterGoogleMatrix()V
    .locals 1

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public exitGoogleMatrix()V
    .locals 1

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public notifyBlackListLayer(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/ywr;->notifyBlackListLayer(Z)V

    return-void
.end method

.method public notifyCameraStatus(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCameraStatus activeCamera = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/ywr;->notifyCameraStatus(Z)V

    return-void
.end method

.method public notifyQSExpanded(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fingerprintStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFingerprintStatus:Z

    const/4 p1, 0x1

    new-array v0, p1, [I

    const/4 v1, 0x0

    const/16 v2, 0x10d

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_0

    new-array p1, p1, [I

    const/16 v0, 0x10c

    aput v0, p1, v1

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFingerprintStatus:Z

    if-nez p1, :cond_1

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    :cond_1
    return-void
.end method

.method public notifySFColorModeChange(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/ywr;->notifySFColorModeChange(I)V

    return-void
.end method

.method public notifySetUp(I)V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "notifySetUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public notifyVideoModeChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/ywr;->notifyVideoModeChange(Z)V

    return-void
.end method

.method public onDCEnable()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "onDCEnable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/oneplus/android/server/display/bio;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/display/bio;-><init>(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "oneplus_colordisplay_service"

    invoke-static {v0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class p1, Lcom/oneplus/android/server/display/OpColorDisplayService$you;

    new-instance v0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/display/OpColorDisplayService$you;-><init>(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public recoverOneplusColorMatrix()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "recoverOneplusColorMatrix"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public resetStatus(I)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10c

    const/16 v2, 0x10d

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_0

    const-string v0, "no one match"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    new-array v6, v4, [I

    aput v2, v6, v5

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v4, [I

    aput v0, v2, v5

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpWm:Landroid/view/IOpWindowManager;

    if-nez v0, :cond_2

    const-string v0, "oneplus_windowmanagerservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IOpWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOpWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpWm:Landroid/view/IOpWindowManager;

    :cond_2
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    const-string v2, "fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_3
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Landroid/os/HandlerThread;->sleep(J)V

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpWm:Landroid/view/IOpWindowManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOpWm.isKeyguardDone() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpWm:Landroid/view/IOpWindowManager;

    invoke-interface {v2}, Landroid/view/IOpWindowManager;->isKeyguardDone()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mFpm.isEnrolling() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpWm:Landroid/view/IOpWindowManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpWm:Landroid/view/IOpWindowManager;

    invoke-interface {v0}, Landroid/view/IOpWindowManager;->isKeyguardDone()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-nez v0, :cond_5

    iput-boolean v5, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->exittime:Z

    invoke-direct {p0, v5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyIrisFingerprintStatus(Z)V

    iput-boolean v5, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mExitFingerPrintModeReason:Z

    goto :goto_0

    :cond_5
    const-string v0, "KeyguardDone is not finish"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while checking system app: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    invoke-direct {p0, v5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->revertStatus(Z)V

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {v0}, Lcom/oneplus/android/server/display/gwm;->Af()V

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->isTheSpecificPlane:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyDecreaseGreenAtLowBacklightAndBlackMode()V

    goto :goto_3

    :cond_7
    iget-boolean v6, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->isIrisClose:Z

    if-nez v6, :cond_8

    const/16 v6, 0x320

    invoke-static {v5, v6}, Lcom/android/server/wm/OpScreenModeServiceInjector;->setRateDirectly(II)V

    const-wide/16 v6, 0x14

    :try_start_1
    invoke-static {v6, v7}, Landroid/os/HandlerThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while wait 50ms to make sure frame switch complete"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    new-array v1, v4, [I

    aput v2, v1, v5

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_9

    new-array v1, v4, [I

    aput v0, v1, v5

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-direct {p0, v4}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyIrisFingerprintStatus(Z)V

    :cond_a
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {v0}, Lcom/oneplus/android/server/display/gwm;->vf()V

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    new-array v0, v4, [I

    const/16 v1, 0xa

    aput v1, v0, v5

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const/16 v1, 0x13

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v0, v1, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    :goto_2
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {v0, v5}, Lcom/oneplus/android/server/display/gwm;->I(Z)V

    iput-boolean v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->exittime:Z

    :cond_c
    :goto_3
    if-eq p1, v3, :cond_d

    goto :goto_4

    :cond_d
    move v4, v5

    :goto_4
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

    invoke-virtual {p0, v4}, Lcom/oneplus/android/server/display/ywr;->E(Z)V

    return-void
.end method

.method public resumeColorMode()V
    .locals 1

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public screenColorModeChange()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "screenColorModeChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public screenStateChange(I)V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "screenStateChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public sendMsg(I)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCDHHandler:Lcom/oneplus/android/server/display/OpColorDisplayService$zta;

    if-eqz p1, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCDHHandler:Lcom/oneplus/android/server/display/OpColorDisplayService$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setActiveModesId(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveModesId modeId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    return-void
.end method

.method public setColorBalance2GrayColor()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "ColorBalance2GrayColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setColorBalance2PaperColor()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setColorBalance2PaperColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setColorBalanceActivated(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorBalance activated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setColorGamutMode(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setColorGamutMode scenario = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " immediate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/android/server/display/ywr;->ibl(IZ)V

    return-void
.end method

.method public setColorTemperature()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setColorTemperature"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setCustomColorTemperature()V
    .locals 4

    const-string v0, "OpColorDisplayService"

    const-string v1, "setCustomColorTemperature"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x10d

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v0, v0, [I

    const/16 v1, 0x10c

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setExitFingerPrintModeWay(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->firstunlock:Z

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mExitFingerPrintModeReason:Z

    const/16 p1, 0x1c

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mExitFingerPrintModeReason = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mExitFingerPrintModeReason:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpColorDisplayService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setGrayColor2ColorBalance()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "GrayColor2ColorBalance"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setGrayColor2PaperColor()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setGrayColor2PaperColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setGrayColorActivated(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GrayColor  activated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setMediaCodecState(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMediaCodecState on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/ywr;->F(Z)V

    return-void
.end method

.method public setNightBrightness()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setNightBrightness"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setPaperColor2ColorBalance()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setPaperColor2ColorBalance"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setPaperColor2GrayColor()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setPaperColor2GrayColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setPaperColorActivated(Z)V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setPaperColorActivated"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public systemReady()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/display/cno;

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/android/server/display/cno;-><init>(Lcom/oneplus/android/server/display/OpColorDisplayService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_color_mode_settings_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "screen_color_mode_advanced_settings_value"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "oem_screen_better_value"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "op_gamut_game_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "oem_black_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "colour_cast"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "hdr_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    iget v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/ywr;

    invoke-virtual {v1, v0}, Lcom/oneplus/android/server/display/ywr;->O(I)V

    new-instance v0, Lcom/oneplus/android/server/display/kth;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/display/kth;-><init>(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFrontPackageListener:Lcom/android/server/OnePlusUtil$zta$you;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFrontPackageListener:Lcom/android/server/OnePlusUtil$zta$you;

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->setMCAStatus()V

    const-string p0, "OpColorDisplayService"

    const-string v0, "system ready"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateAutoAssertiveDisplayStatus(F)V
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mGlobaAmbientLux:F

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method
