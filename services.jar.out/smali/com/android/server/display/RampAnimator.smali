.class final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final A:F = 0.17883277f

.field private static final ADJUST_VALUE:I = 0x1068

.field public static final ANIMATOR_REASON_19811_60HZ:I = 0x1b

.field public static final ANIMATOR_REASON_19821_DC_RAMP:I = 0x8

.field public static final ANIMATOR_REASON_AOD:I = 0x11

.field public static final ANIMATOR_REASON_APP:I = 0x6

.field public static final ANIMATOR_REASON_AUTOADJ:I = 0x5

.field public static final ANIMATOR_REASON_AUTOADJ_DIM:I = 0xc

.field public static final ANIMATOR_REASON_AUTOON:I = 0x7

.field public static final ANIMATOR_REASON_BOOST_OFF:I = 0xb

.field public static final ANIMATOR_REASON_BOOST_ON:I = 0x10

.field public static final ANIMATOR_REASON_DOZE:I = 0x15

.field public static final ANIMATOR_REASON_FACELIGHT:I = 0xe

.field public static final ANIMATOR_REASON_FACELIGHT_DISABLE:I = 0xf

.field public static final ANIMATOR_REASON_HDR:I = 0x14

.field public static final ANIMATOR_REASON_LOW_POWER:I = 0x13

.field public static final ANIMATOR_REASON_MAMUAL:I = 0x19

.field public static final ANIMATOR_REASON_MAX:I = 0x18

.field public static final ANIMATOR_REASON_OPTMP:I = 0x4

.field public static final ANIMATOR_REASON_OVERRIDE:I = 0x17

.field public static final ANIMATOR_REASON_OVERRIDE_OFF:I = 0x1a

.field public static final ANIMATOR_REASON_QUICK:I = 0x12

.field public static final ANIMATOR_REASON_QUICKER:I = 0x32

.field public static final ANIMATOR_REASON_RAMP_SKIP:I = 0x9

.field public static final ANIMATOR_REASON_RATE_FAST:I = 0xd

.field public static final ANIMATOR_REASON_SCREEN_DIM:I = 0x2

.field public static final ANIMATOR_REASON_SCREEN_OFF:I = 0x0

.field public static final ANIMATOR_REASON_SCREEN_ON:I = 0x1

.field public static final ANIMATOR_REASON_STATE_ON:I = 0xa

.field public static final ANIMATOR_REASON_TMP:I = 0x3

.field public static final ANIMATOR_REASON_VR:I = 0x16

.field private static final B:F = 0.28466892f

.field private static final C:F = 0.5599107f

.field private static DEBUG:Z = false

.field private static final DURATION_OF_SAVING_BRIGHTNESS_MS:I = 0x3de

.field private static final GAMMA_SPACE_MAX:I = 0x3ff

.field private static final INIT_RAMP_RATE:I = -0x2

.field private static final INVALID_RAMP_RATE:I = -0x1

.field private static final MARK_FOR_TEMPERARY_SETTING:I = 0x2710

.field private static final R:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "RampAnimator"


# instance fields
.field private HZ:I

.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private mAnimatorReason:I

.field private mAutoMaticDelta:I

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mContext:Landroid/content/Context;

.field private mCurrentPutValueT4095:I

.field private mCurrentSettingValue:I

.field private mCurrentValue:I

.field private mDelayMs:I

.field private mDelta:I

.field private mDimLimit:I

.field public mEnableDelay:Z

.field private mExitHBMMode:Z

.field private mFirstTime:Z

.field private mIsIrisChip:Z

.field private mIsSoftIris:Z

.field private mLastFrameTimeNanos:J

.field private mLastTime:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private mMaxBrightness:I

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mOriginalRateForBoost:I

.field private mOriginalRateForHbm:I

.field private mPreRate:I

.field private mPreSettingValue:I

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mRateBackup:I

.field private mScreenOffTime:J

.field private mStageEnable:I

.field private mTargetValue:I

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/RampAnimator;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mRateBackup:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mAutoMaticDelta:I

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mDelta:I

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mOriginalRateForHbm:I

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mOriginalRateForBoost:I

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mMaxBrightness:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/display/RampAnimator;->mLastTime:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/display/RampAnimator;->mScreenOffTime:J

    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mEnableDelay:Z

    const/16 v2, 0xbb8

    iput v2, p0, Lcom/android/server/display/RampAnimator;->mDelayMs:I

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatorReason:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mExitHBMMode:Z

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mStageEnable:I

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mPreSettingValue:I

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mPreRate:I

    new-array v3, v2, [I

    const/16 v4, 0x10f

    aput v4, v3, v1

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mIsSoftIris:Z

    new-array v2, v2, [I

    const/16 v3, 0x10e

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mIsIrisChip:Z

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentPutValueT4095:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mDimLimit:I

    iput v0, p0, Lcom/android/server/display/RampAnimator;->HZ:I

    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/RampAnimator;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatorReason:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/display/RampAnimator;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/RampAnimator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mIsSoftIris:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mOriginalRateForBoost:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/RampAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mOriginalRateForBoost:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mDimLimit:I

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/RampAnimator;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mStageEnable:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/RampAnimator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mIsIrisChip:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRateBackup:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/display/RampAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mRateBackup:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/display/RampAnimator;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/android/server/display/RampAnimator;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/server/display/RampAnimator;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->useScreenShotAlgo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/RampAnimator;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mDelayMs:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/display/RampAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mDelayMs:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/display/RampAnimator;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/RampAnimator;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/android/server/display/RampAnimator;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->getOriginalScreenBrightnessSetting()I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mPreSettingValue:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/display/RampAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mPreSettingValue:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/server/display/RampAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/display/RampAnimator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mExitHBMMode:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/display/RampAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mExitHBMMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/display/RampAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/display/RampAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->HZ:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/display/RampAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->HZ:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mMaxBrightness:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAutoMaticDelta:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mDelta:I

    return v0
.end method

.method private calculateRampRate(II)I
    .locals 6

    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    const v3, 0x447fc000    # 1023.0f

    invoke-static {v2, v3, v1}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_0

    div-float v3, v1, v3

    invoke-static {v3}, Landroid/util/MathUtils;->sq(F)F

    move-result v3

    goto :goto_0

    :cond_0
    const v3, 0x3f0f564f

    sub-float v3, v1, v3

    const v4, 0x3e371ff0

    div-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/MathUtils;->exp(F)F

    move-result v3

    const v4, 0x3e91c020

    add-float/2addr v3, v4

    :goto_0
    const v4, 0x45834000    # 4200.0f

    const/high16 v5, 0x41400000    # 12.0f

    div-float v5, v3, v5

    invoke-static {v2, v4, v5}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/16 v4, 0xf0

    const/16 v5, 0x1e

    if-ge v2, v5, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    if-le v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    move v2, v4

    const/16 v4, 0x3c

    if-gt p1, v4, :cond_3

    if-gt p2, v4, :cond_3

    const/16 v2, 0x32

    :cond_3
    return v2
.end method

.method private cancelAnimationCallback()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2

    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private static clampAbsoluteBrightness255(I)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private static clampAbsoluteBrightness4095(I)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xfff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private getDcEnable()Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "persist.vendor.dc.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private getOriginalScreenBrightnessSetting()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/16 v2, 0x64

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getRateByBrightness(I)I
    .locals 5

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    sub-int v1, p1, v0

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mMaxBrightness:I

    div-int/lit8 v4, v3, 0x8

    if-ge v1, v4, :cond_0

    mul-int/lit8 v2, v1, 0x2

    goto :goto_0

    :cond_0
    div-int/lit8 v4, v3, 0x4

    if-ge v1, v4, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    div-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_2

    div-int/lit8 v3, v1, 0x3

    mul-int/lit8 v2, v3, 0x2

    goto :goto_0

    :cond_2
    div-int/lit8 v2, v1, 0x2

    goto :goto_0

    :cond_3
    neg-int v1, v1

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mMaxBrightness:I

    div-int/lit8 v4, v3, 0x8

    if-ge v1, v4, :cond_4

    mul-int/lit8 v2, v1, 0x2

    goto :goto_0

    :cond_4
    div-int/lit8 v4, v3, 0x4

    if-ge v1, v4, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    div-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_6

    div-int/lit8 v3, v1, 0x3

    mul-int/lit8 v2, v3, 0x2

    goto :goto_0

    :cond_6
    iget-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mIsSoftIris:Z

    if-eqz v3, :cond_7

    div-int/lit8 v2, v1, 0x3

    goto :goto_0

    :cond_7
    div-int/lit8 v2, v1, 0x2

    :goto_0
    return v2
.end method

.method private getScreenBrightnessSetting()I
    .locals 4

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->getOriginalScreenBrightnessSetting()I

    move-result v0

    sget-boolean v1, Lcom/android/server/display/RampAnimator;->DEBUG:Z

    const-string v2, "RampAnimator"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScreenBrightnessSetting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->clampAbsoluteBrightness255(I)I

    move-result v0

    mul-int/lit16 v1, v0, 0xfff

    div-int/lit16 v1, v1, 0xff

    sget-boolean v0, Lcom/android/server/display/RampAnimator;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#2 getScreenBrightnessSetting "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private isOnePlus7Projects()Z
    .locals 2

    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "18821"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18825"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18827"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18831"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18857"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private postAnimationCallback()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method private useScreenShotAlgo()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->getDcEnable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->isOnePlus7Projects()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public animateTo(I)Z
    .locals 2

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/RampAnimator;->calculateRampRate(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v1

    return v1
.end method

.method public animateTo(II)Z
    .locals 5

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatorReason:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mPreSettingValue:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->getOriginalScreenBrightnessSetting()I

    move-result v0

    iget-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mAutoMaticDelta:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mAnimatorReason:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mPreSettingValue:I

    if-eq v3, v1, :cond_1

    if-ne v0, v3, :cond_3

    :cond_1
    sget-boolean v3, Lcom/android/server/display/RampAnimator;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#3 BIRGITHESS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mTargetValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RampAnimator"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v3, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Lcom/android/server/display/RampAnimator;->putScreenBrightnessSetting(II)I

    :cond_3
    iput v1, p0, Lcom/android/server/display/RampAnimator;->mPreSettingValue:I

    iput v2, p0, Lcom/android/server/display/RampAnimator;->mAutoMaticDelta:I

    :goto_0
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentSettingValue:I

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mMaxBrightness:I

    const/4 v4, 0x1

    if-le v0, v3, :cond_4

    if-lt p1, v3, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mExitHBMMode:Z

    if-eqz v0, :cond_6

    :cond_5
    move v0, v4

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mExitHBMMode:Z

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mIsSoftIris:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mIsIrisChip:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-le p1, v0, :cond_7

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRateBackup:I

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mRateBackup:I

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v0, :cond_11

    if-gtz p2, :cond_8

    goto :goto_4

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mIsSoftIris:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mIsIrisChip:Z

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    if-gt p2, v0, :cond_b

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt p1, v0, :cond_a

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-le v0, v3, :cond_b

    :cond_a
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v0, v3, :cond_e

    if-gt v3, p1, :cond_e

    :cond_b
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRateBackup:I

    if-ne v0, v1, :cond_c

    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    goto :goto_3

    :cond_c
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRateBackup:I

    goto :goto_3

    :cond_d
    :goto_2
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    :cond_e
    :goto_3
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-eq v0, p1, :cond_f

    move v2, v4

    :cond_f
    move v0, v2

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez v1, :cond_10

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v1, :cond_10

    iput-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    :cond_10
    return v0

    :cond_11
    :goto_4
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v0, :cond_12

    goto :goto_5

    :cond_12
    return v2

    :cond_13
    :goto_5
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    iput v2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mRateBackup:I

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v0, :cond_14

    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    :cond_14
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mExitHBMMode:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    const/16 v1, 0x7d0

    invoke-interface {v0, v4, v1}, Lcom/android/server/display/RampAnimator$Listener;->setDimmingSpeed(II)V

    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mExitHBMMode:Z

    :cond_15
    return v4
.end method

.method public animateTo(III)Z
    .locals 12

    invoke-static {p1}, Lcom/android/server/display/DisplayOLC;->limitTarget(I)I

    move-result p1

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    const/4 v1, 0x1

    const-string v2, "RampAnimator"

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mPreRate:I

    if-gt p2, v0, :cond_0

    const-string/jumbo v0, "same target!"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x6

    if-ne p3, v0, :cond_1

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-nez v3, :cond_1

    const-string/jumbo v0, "screen off!"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget v3, p0, Lcom/android/server/display/RampAnimator;->mAnimatorReason:I

    const/16 v4, 0x13

    const/16 v5, 0xc

    const/4 v6, 0x2

    if-eq v3, v5, :cond_2

    if-eq v3, v6, :cond_2

    if-ne v3, v4, :cond_3

    :cond_2
    if-ne p3, v0, :cond_3

    const-string v0, "DIM,ignore!"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget v3, p0, Lcom/android/server/display/RampAnimator;->mAnimatorReason:I

    if-eq v3, v5, :cond_4

    if-ne v3, v6, :cond_5

    :cond_4
    if-eq p3, v6, :cond_1f

    if-ne p3, v5, :cond_5

    goto/16 :goto_3

    :cond_5
    iget-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    const/4 v7, -0x1

    const/16 v8, 0x14

    const/4 v9, 0x5

    if-eqz v3, :cond_6

    if-ne p3, v9, :cond_6

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mAnimatorReason:I

    if-eq v3, v7, :cond_6

    if-eq v3, v9, :cond_6

    if-eq v3, v5, :cond_6

    if-eq v3, v6, :cond_6

    if-eq v3, v8, :cond_6

    if-eq v3, v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reason:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mAnimatorReason:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mAnimatorReason:I

    if-ne v1, v8, :cond_7

    if-ne p3, v9, :cond_7

    const/16 p3, 0x12

    :cond_7
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mAnimatorReason:I

    if-eq v1, v5, :cond_8

    if-ne v1, v6, :cond_9

    :cond_8
    if-eq p3, v6, :cond_9

    if-eq p3, v5, :cond_9

    const/16 p3, 0x32

    :cond_9
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-le p1, v1, :cond_a

    sub-int v1, p1, v1

    goto :goto_0

    :cond_a
    sub-int/2addr v1, p1

    :goto_0
    iput v1, p0, Lcom/android/server/display/RampAnimator;->mDelta:I

    if-eq p3, v6, :cond_19

    const/16 v1, 0x10

    if-eq p3, v1, :cond_18

    const/16 v1, 0x17

    if-eq p3, v1, :cond_17

    const/16 v1, 0x32

    const/4 v3, 0x4

    if-eq p3, v1, :cond_16

    if-eq p3, v3, :cond_15

    if-eq p3, v9, :cond_14

    const/4 v1, 0x7

    if-eq p3, v1, :cond_13

    const/16 v1, 0x8

    if-eq p3, v1, :cond_12

    const/16 v1, 0x9

    if-eq p3, v1, :cond_f

    const/16 v1, 0xb

    if-eq p3, v1, :cond_e

    if-eq p3, v5, :cond_19

    const/16 v1, 0x1a

    if-eq p3, v1, :cond_d

    const/16 v1, 0x1b

    if-eq p3, v1, :cond_c

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/display/RampAnimator;->getRateByBrightness(I)I

    move-result v0

    div-int/lit8 p2, v0, 0x2

    goto/16 :goto_2

    :pswitch_1
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mAnimatorReason:I

    if-ne v1, v4, :cond_b

    invoke-direct {p0, p1}, Lcom/android/server/display/RampAnimator;->getRateByBrightness(I)I

    move-result v1

    div-int/lit8 p2, v1, 0x6

    goto/16 :goto_2

    :cond_b
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mDelta:I

    div-int/lit8 p2, v0, 0x5

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/display/RampAnimator;->getRateByBrightness(I)I

    move-result p2

    goto/16 :goto_2

    :cond_c
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mDelta:I

    mul-int/lit8 p2, v0, 0x2

    goto/16 :goto_2

    :cond_d
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mDelta:I

    div-int/lit8 p2, v0, 0x3

    goto/16 :goto_2

    :cond_e
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mDelta:I

    div-int/lit8 p2, v0, 0x3

    goto/16 :goto_2

    :cond_f
    if-eqz p2, :cond_1a

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mDelta:I

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mMaxBrightness:I

    div-int/lit8 v4, v1, 0x4

    if-ge v0, v4, :cond_10

    iget p2, p0, Lcom/android/server/display/RampAnimator;->mDelta:I

    goto :goto_1

    :cond_10
    div-int/lit8 v4, v1, 0x2

    if-ge v0, v4, :cond_11

    div-int/2addr v1, v3

    move p2, v1

    goto :goto_1

    :cond_11
    div-int/2addr v1, v6

    move p2, v1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SK:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/display/RampAnimator;->getRateByBrightness(I)I

    move-result v0

    div-int/lit8 p2, v0, 0x2

    goto :goto_2

    :cond_13
    invoke-direct {p0, p1}, Lcom/android/server/display/RampAnimator;->getRateByBrightness(I)I

    move-result p2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastTime:J

    goto :goto_2

    :cond_14
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/RampAnimator;->calculateRampRate(II)I

    move-result p2

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mAutoMaticDelta:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastTime:J

    goto :goto_2

    :cond_15
    invoke-direct {p0, p1}, Lcom/android/server/display/RampAnimator;->getRateByBrightness(I)I

    move-result p2

    goto :goto_2

    :cond_16
    if-eqz p1, :cond_1a

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mDelta:I

    mul-int/lit8 p2, v0, 0x4

    goto :goto_2

    :cond_17
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-ge v0, p1, :cond_1a

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mDelta:I

    mul-int/lit8 p2, v0, 0x2

    goto :goto_2

    :cond_18
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatorReason:I

    if-ne v0, v1, :cond_1a

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mDelta:I

    div-int/lit8 p2, v0, 0x5

    goto :goto_2

    :cond_19
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mDelta:I

    div-int/lit8 p2, v0, 0x3

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mDimLimit:I

    nop

    :cond_1a
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "H:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/RampAnimator;->HZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " T:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", rate = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mPreRate:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " reason:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mAnimating:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " cu:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p3, p0, Lcom/android/server/display/RampAnimator;->mAnimatorReason:I

    iput p2, p0, Lcom/android/server/display/RampAnimator;->mPreRate:I

    const-wide/16 v4, 0x0

    if-nez p1, :cond_1b

    iget-wide v8, p0, Lcom/android/server/display/RampAnimator;->mScreenOffTime:J

    cmp-long v0, v8, v4

    if-nez v0, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/display/RampAnimator;->mScreenOffTime:J

    :cond_1b
    iget-wide v8, p0, Lcom/android/server/display/RampAnimator;->mScreenOffTime:J

    cmp-long v0, v8, v4

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/display/RampAnimator;->mScreenOffTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    cmp-long v0, v8, v10

    if-gez v0, :cond_1d

    sget-boolean v0, Lcom/android/server/display/RampAnimator;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#2 animateTo: target = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mPreRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAnimating:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 p2, 0x0

    :cond_1d
    iput-wide v4, p0, Lcom/android/server/display/RampAnimator;->mScreenOffTime:J

    :cond_1e
    iput v7, p0, Lcom/android/server/display/RampAnimator;->HZ:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v0

    return v0

    :cond_1f
    :goto_3
    const-string v0, "already DIM!"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Screen Brightness Ramp Animator Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTargetValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRateBackup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mRateBackup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnableDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mEnableDelay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAnimatorReason()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatorReason:I

    return v0
.end method

.method public getBrightnessValue()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method public getCurrentPutValueT4095()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentPutValueT4095:I

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method public putScreenBrightnessSetting(II)I
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mIsSoftIris:Z

    const/4 v1, -0x2

    const-string/jumbo v2, "screen_brightness"

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mIsIrisChip:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return p1

    :cond_1
    :goto_0
    const/16 v0, 0xfff

    const/16 v3, 0xff

    if-le p1, v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->getOriginalScreenBrightnessSetting()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    return v3

    :cond_3
    move v4, p1

    mul-int/lit16 v5, p1, 0xff

    div-int/2addr v5, v0

    iget-object p1, p0, Lcom/android/server/display/RampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v5, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    mul-int/lit16 p1, v5, 0xfff

    div-int/2addr p1, v3

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentPutValueT4095:I

    sget-boolean p1, Lcom/android/server/display/RampAnimator;->DEBUG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "putScreenBrightnessSetting:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cur:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " target:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rate:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " reason:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RampAnimator"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v5
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-void
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/RampAnimator;->DEBUG:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sput-boolean p1, Lcom/android/server/display/RampAnimator;->DEBUG:Z

    const/4 v0, 0x1

    return v0
.end method

.method public setMax(I)V
    .locals 2

    sget-boolean v0, Lcom/android/server/display/RampAnimator;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMax:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RampAnimator"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mMaxBrightness:I

    return-void
.end method

.method public setStageEnable(I)V
    .locals 2

    sget-boolean v0, Lcom/android/server/display/RampAnimator;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStageEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RampAnimator"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mStageEnable:I

    return-void
.end method
