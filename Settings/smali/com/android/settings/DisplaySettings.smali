.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Lcom/oneplus/settings/ui/ColorPickerPreference$CustomColorClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DisplaySettings$SummaryProvider;,
        Lcom/android/settings/DisplaySettings$BrightnessObserver;,
        Lcom/android/settings/DisplaySettings$DarkModeRunnable;,
        Lcom/android/settings/DisplaySettings$DefaultHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static isSupportReadingMode:Z


# instance fields
.field private mAccessibilityDisplayDaltonizerAndInversionContentObserver:Landroid/database/ContentObserver;

.field private mAdvancedSettingsPreference:Landroidx/preference/Preference;

.field private mAutoBrightnessPreference:Landroidx/preference/SwitchPreference;

.field private mAutomatic:Z

.field private mAutomaticAvailable:Z

.field private mBlackColors:[Ljava/lang/String;

.field private mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

.field private mBrightnessObserver:Lcom/android/settings/DisplaySettings$BrightnessObserver;

.field private mCameraDoubleTapPowerGesturePreference:Landroidx/preference/SwitchPreference;

.field private mCameraGesturePreference:Landroidx/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mCurrentTempColor:Ljava/lang/String;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDoze801Preference:Landroidx/preference/Preference;

.field private mDozePreference:Landroidx/preference/Preference;

.field private mFontSizePref:Landroidx/preference/Preference;

.field private mGraphicsDynamicOptimization:Landroidx/preference/Preference;

.field private mGraphicsEnhancementEngine:Landroidx/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mIsSupportIrisSmooth:Z

.field private mLastSliderChangeTimeMillis:J

.field private mLedSettingsPreference:Landroidx/preference/Preference;

.field private mLockWallPaperPreference:Landroidx/preference/Preference;

.field private mMaximumBacklight:I

.field private mMaximumBacklightForVr:I

.field private mMinimumBacklight:I

.field private mMinimumBacklightForVr:I

.field private mMotionGraphicsCompensation:Landroidx/preference/Preference;

.field private mNetworkNameDisplayedPreference:Landroidx/preference/SwitchPreference;

.field private mNightModePreference:Landroidx/preference/Preference;

.field private mNotifyLightEnable:I

.field private mNotifyLightPreference:Landroidx/preference/SwitchPreference;

.field private mReadingModePreference:Landroidx/preference/Preference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenBrightnessRootPreference:Landroidx/preference/PreferenceCategory;

.field private mScreenSaverPreference:Landroidx/preference/Preference;

.field private mScreenTimeoutPreference:Lcom/android/settings/display/TimeoutListPreference;

.field private mSliderAnimator:Landroid/animation/ValueAnimator;

.field private mTapToWakePreference:Landroidx/preference/SwitchPreference;

.field private mToggleLockScreenRotationPreference:Landroidx/preference/SwitchPreference;

.field private mTrueColorMode:Landroidx/preference/SwitchPreference;

.field private mVideoEnhancerPreference:Landroidx/preference/Preference;

.field private mWhiteColors:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/settings/DisplaySettings;->DEBUG:Z

    new-instance v0, Lcom/android/settings/DisplaySettings$5;

    invoke-direct {v0}, Lcom/android/settings/DisplaySettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/DisplaySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/DisplaySettings$6;

    invoke-direct {v0}, Lcom/android/settings/DisplaySettings$6;-><init>()V

    sput-object v0, Lcom/android/settings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroidx/preference/SwitchPreference;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/DisplaySettings;->mLastSliderChangeTimeMillis:J

    const-string v0, "OP_FEATURE_PIXELWORKS_BRIGHTNESS_SMOOTH"

    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mIsSupportIrisSmooth:Z

    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$2;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccessibilityDisplayDaltonizerAndInversionContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$DarkModeRunnable;-><init>(Lcom/android/settings/DisplaySettings;)V

    new-instance v0, Lcom/android/settings/DisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$4;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/DisplaySettings;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_white_mode_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_black_mode_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oneplus_accent_color"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "#"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->setCustomAccentColor()V

    const-string p0, "persist.sys.theme.accentcolor"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/DisplaySettings;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    return-void
.end method

.method static synthetic access$1200(Landroid/content/res/Resources;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic access$1300(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/DisplaySettings;->isSupportReadingMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/DisplaySettings;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/DisplaySettings;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mReadingModePreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/DisplaySettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/DisplaySettings;->mIsSupportIrisSmooth:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/settings/DisplaySettings;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/DisplaySettings;->mLastSliderChangeTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/settings/DisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateLockScreenRotation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/DisplaySettings;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string v3, "screen_brightness_mode"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/DisplaySettings;->mAutomatic:Z

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroidx/preference/SwitchPreference;

    iget-boolean p0, p0, Lcom/android/settings/DisplaySettings;->mAutomatic:Z

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/DisplaySettings;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "DisplaySettings"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "animateSliderTo: cancel anim."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->isInVrMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklightForVr:I

    const-string v3, "screen_brightness_for_vr"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings;->mIsSupportIrisSmooth:Z

    if-eqz v2, :cond_1

    mul-int/lit8 v0, v0, 0x64

    :cond_1
    iget v2, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklightForVr:I

    iget v3, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklightForVr:I

    invoke-static {v0, v2, v3}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGamma(III)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:I

    const-string v3, "screen_brightness"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings;->mIsSupportIrisSmooth:Z

    if-eqz v2, :cond_3

    mul-int/lit8 v0, v0, 0x64

    :cond_3
    iget v2, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:I

    iget v3, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklight:I

    invoke-static {v0, v2, v3}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGamma(III)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "screen_brightness_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-virtual {v5}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->getBrightness()I

    move-result v5

    aput v5, v4, v3

    const/4 v3, 0x1

    aput v0, v4, v3

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animateSliderTo: animating from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->getBrightness()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/settings/-$$Lambda$DisplaySettings$qOh46548JQf3cUmLta2I9UEyRo4;

    invoke-direct {v2, p0}, Lcom/android/settings/-$$Lambda$DisplaySettings$qOh46548JQf3cUmLta2I9UEyRo4;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-virtual {v1}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->getBrightness()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0xbb8

    sget v1, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings;->mIsSupportIrisSmooth:Z

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    goto :goto_1

    :cond_4
    move-wide v0, v2

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(I)V

    :goto_2
    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/display/TimeoutListPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/display/TimeoutListPreference;

    return-object p0
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "debug.doze.component"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040177

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private setCustomAccentColor()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_white_custom_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "#FF0000"

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    const/16 v3, 0xb

    aput-object v0, v1, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_black_custom_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    :cond_1
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    aput-object v0, p0, v3

    return-void
.end method

.method private updateLockScreenRotation()V
    .locals 1

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mToggleLockScreenRotationPreference:Landroidx/preference/SwitchPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "font_scale"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f03007d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03007e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroidx/preference/Preference;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/dream/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oem_acc_breath_light"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightEnable:I

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mLedSettingsPreference:Landroidx/preference/Preference;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightEnable:I

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_brightness_mode"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "show_network_name_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "double_tap_to_wake"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "camera_gesture_disabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_a
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "camera_double_tap_power_gesture_disabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_5

    :cond_b
    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_c
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mVideoEnhancerPreference:Landroidx/preference/Preference;

    const v3, 0x7f121649

    const v4, 0x7f121648

    if-eqz v0, :cond_e

    const-string v0, "persist.sys.oem.vendor.media.vpp.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mVideoEnhancerPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_6

    :cond_d
    move v0, v4

    :goto_6
    invoke-virtual {v5, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mGraphicsDynamicOptimization:Landroidx/preference/Preference;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "op_iris_video_sdr2hdr_status"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mGraphicsDynamicOptimization:Landroidx/preference/Preference;

    if-ne v0, v2, :cond_f

    move v0, v3

    goto :goto_7

    :cond_f
    move v0, v4

    :goto_7
    invoke-virtual {v5, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_10
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMotionGraphicsCompensation:Landroidx/preference/Preference;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "op_iris_video_memc_status"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mMotionGraphicsCompensation:Landroidx/preference/Preference;

    if-ne v0, v2, :cond_11

    goto :goto_8

    :cond_11
    move v3, v4

    :goto_8
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_12
    return-void
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/display/TimeoutListPreference;

    invoke-virtual {v0}, Lcom/android/settings/RestrictedListPreference;->isDisabledByAdmin()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120623

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v1, :cond_6

    array-length v4, v1

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_5

    aget-object v6, v3, v4

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-ltz v6, :cond_4

    move v5, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1213ba

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aget-object v1, v1, v5

    aput-object v1, p2, v2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const p0, 0x7f1207f5

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2e

    return p0
.end method

.method isInVrMode()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->safeGetVrManager()Landroid/service/vr/IVrManager;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "DisplaySettings"

    const-string v1, "Failed to check vr mode!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$updateSlider$0$DisplaySettings(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x64

    if-ne v0, p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "current_temp_color"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mCurrentTempColor:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn()Z

    move-result p1

    const/16 p2, 0xb

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mCurrentTempColor:Ljava/lang/String;

    aput-object p0, p1, p2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mCurrentTempColor:Ljava/lang/String;

    aput-object p0, p1, p2

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/DisplaySettings$DefaultHandler;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/android/settings/DisplaySettings$DefaultHandler;-><init>(Lcom/android/settings/DisplaySettings;Landroid/content/Context;)V

    const v2, 0x7f160053

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v2, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0xc

    new-array v4, v3, [Ljava/lang/String;

    const v5, 0x7f0603e2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0603e6

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const v5, 0x7f0603ed

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const v5, 0x7f0603e8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const v5, 0x7f0603e0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x4

    aput-object v5, v4, v10

    const v5, 0x7f0603f1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x5

    aput-object v5, v4, v11

    const v5, 0x7f0603fd

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x6

    aput-object v5, v4, v12

    const v5, 0x7f0603e4

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x7

    aput-object v5, v4, v13

    const v5, 0x7f0603ef

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v14, 0x8

    aput-object v5, v4, v14

    const v5, 0x7f0603dc

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x9

    aput-object v5, v4, v15

    const v5, 0x7f0603eb

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0xa

    aput-object v5, v4, v16

    const v5, 0x7f0603e9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xb

    aput-object v17, v4, v18

    iput-object v4, v0, Lcom/android/settings/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    const v4, 0x7f0603e1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0603e5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const v4, 0x7f0603ec

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const v4, 0x7f0603e7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const v4, 0x7f0603df

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    const v4, 0x7f0603f0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    const v4, 0x7f0603fc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v12

    const v4, 0x7f0603e3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v13

    const v4, 0x7f0603ee

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    const v4, 0x7f0603db

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v15

    const v4, 0x7f0603ea

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v16

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v18

    iput-object v3, v0, Lcom/android/settings/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    :goto_0
    const-string v2, "screen_brightness"

    invoke-virtual {v0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    iput-object v2, v0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroidx/preference/PreferenceCategory;

    const-string v2, "display_system"

    invoke-virtual {v0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    const-string v2, "header_category_custom"

    invoke-virtual {v0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    const-string v2, "screensaver"

    invoke-virtual {v0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroidx/preference/Preference;

    iget-object v2, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroidx/preference/Preference;

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroidx/preference/Preference;

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    const-string v2, "screen_timeout"

    invoke-virtual {v0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/display/TimeoutListPreference;

    iput-object v2, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/display/TimeoutListPreference;

    const-string v2, "font_size"

    invoke-virtual {v0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroidx/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    const-string v2, "auto_brightness"

    invoke-virtual {v0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, v0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroidx/preference/SwitchPreference;

    iget-object v2, v0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "doze"

    invoke-virtual {v0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroidx/preference/Preference;

    const-string v2, "doze_801"

    invoke-virtual {v0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/DisplaySettings;->mDoze801Preference:Landroidx/preference/Preference;

    iget-object v2, v0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, v0, Lcom/android/settings/DisplaySettings;->mDoze801Preference:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroidx/preference/Preference;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/android/settings/DisplaySettings;->mDoze801Preference:Landroidx/preference/Preference;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    const-string v2, "OP_FEATURE_ALWAYS_ON_DISPLAY"

    invoke-static {v2}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroidx/preference/Preference;

    if-eqz v2, :cond_6

    const v3, 0x7f120df7

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/android/settings/DisplaySettings;->mDoze801Preference:Landroidx/preference/Preference;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    iget-object v2, v0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroidx/preference/Preference;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_6
    :goto_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    const-string v1, "vr_display_pref"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/DropDownPreference;

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/android/settings/DisplaySettings;->mHandler:Landroid/os/Handler;

    const-string v1, "toggle_lock_screen_rotation_preference"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, v0, Lcom/android/settings/DisplaySettings;->mToggleLockScreenRotationPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_acc_breath_light"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/settings/DisplaySettings;->mNotifyLightEnable:I

    const-string v1, "notify_light_enable"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, v0, Lcom/android/settings/DisplaySettings;->mNotifyLightPreference:Landroidx/preference/SwitchPreference;

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mNotifyLightPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mNotifyLightPreference:Landroidx/preference/SwitchPreference;

    iget v2, v0, Lcom/android/settings/DisplaySettings;->mNotifyLightEnable:I

    if-nez v2, :cond_8

    move v2, v6

    goto :goto_2

    :cond_8
    move v2, v7

    :goto_2
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string v1, "lockguard_wallpaper_settings"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/DisplaySettings;->mLockWallPaperPreference:Landroidx/preference/Preference;

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mLockWallPaperPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mLockWallPaperPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v3

    iput v3, v0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:I

    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v3

    iput v3, v0, Lcom/android/settings/DisplaySettings;->mMaximumBacklight:I

    invoke-virtual {v1}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessForVrSetting()I

    move-result v3

    iput v3, v0, Lcom/android/settings/DisplaySettings;->mMinimumBacklightForVr:I

    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessForVrSetting()I

    move-result v3

    iput v3, v0, Lcom/android/settings/DisplaySettings;->mMaximumBacklightForVr:I

    invoke-virtual {v1}, Landroid/os/PowerManager;->getDefaultScreenBrightnessForVrSetting()I

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, v0, Lcom/android/settings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110027

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/DisplaySettings;->mAutomaticAvailable:Z

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.autobrightctl.animation.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    const-string v1, "manual_brightness_displays"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iput-object v1, v0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setCallback(Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;)V

    new-instance v1, Lcom/android/settings/DisplaySettings$BrightnessObserver;

    iget-object v2, v0, Lcom/android/settings/DisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/DisplaySettings$BrightnessObserver;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/settings/DisplaySettings;->mBrightnessObserver:Lcom/android/settings/DisplaySettings$BrightnessObserver;

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mBrightnessObserver:Lcom/android/settings/DisplaySettings$BrightnessObserver;

    invoke-virtual {v1}, Lcom/android/settings/DisplaySettings$BrightnessObserver;->startObserving()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->setCustomAccentColor()V

    const-string v1, "led_settings"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/DisplaySettings;->mLedSettingsPreference:Landroidx/preference/Preference;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "OP_FEATURE_CUSTOM_BLINK_LIGHT"

    invoke-static {v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mNotifyLightPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mLedSettingsPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_a
    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.read_mode.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/DisplaySettings;->isSupportReadingMode:Z

    const-string v1, "oneplus_night_mode"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroidx/preference/Preference;

    const-string v1, "oneplus_reading_mode"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/DisplaySettings;->mReadingModePreference:Landroidx/preference/Preference;

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mReadingModePreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_b

    sget-boolean v2, Lcom/android/settings/DisplaySettings;->isSupportReadingMode:Z

    if-nez v2, :cond_b

    iget-object v2, v0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_b
    const-string v1, "video_enhancer"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/DisplaySettings;->mVideoEnhancerPreference:Landroidx/preference/Preference;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportVideoEnhancer()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mVideoEnhancerPreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_c
    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "status_bar_custom"

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_e
    const-string v1, "op_true_color_mode"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, v0, Lcom/android/settings/DisplaySettings;->mTrueColorMode:Landroidx/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_white_balance_enabled"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, v0, Lcom/android/settings/DisplaySettings;->mTrueColorMode:Landroidx/preference/SwitchPreference;

    if-ne v1, v7, :cond_f

    move v1, v7

    goto :goto_3

    :cond_f
    move v1, v6

    :goto_3
    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mTrueColorMode:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/ColorDisplayManager;

    invoke-static {v1}, Landroid/hardware/display/ColorDisplayManager;->isDisplayWhiteBalanceAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mTrueColorMode:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_10
    const-string v1, "graphics_dynamic_optimization"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/DisplaySettings;->mGraphicsDynamicOptimization:Landroidx/preference/Preference;

    const-string v1, "motion_graphics_compensation"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/DisplaySettings;->mMotionGraphicsCompensation:Landroidx/preference/Preference;

    const-string v1, "graphics_enhancement_engine"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/DisplaySettings;->mGraphicsEnhancementEngine:Landroidx/preference/Preference;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMotionGraphicsCompensation()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mGraphicsEnhancementEngine:Landroidx/preference/Preference;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_11
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMotionGraphicsCompensation()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mVideoEnhancerPreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_12
    const-string v1, "op_advanced_settings"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/DisplaySettings;->mAdvancedSettingsPreference:Landroidx/preference/Preference;

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMultiScreenResolution(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenRefreshRate()Z

    move-result v2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenDisplayAdaption()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportAppsDisplayInFullscreen()Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    move v6, v7

    :cond_14
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mAdvancedSettingsPreference:Landroidx/preference/Preference;

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const v2, 0x7f121157

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_15
    if-eqz v1, :cond_17

    if-eqz v2, :cond_17

    if-eqz v6, :cond_17

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportHolePunchFrontCam()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mAdvancedSettingsPreference:Landroidx/preference/Preference;

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const v2, 0x7f121158

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_16
    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mAdvancedSettingsPreference:Landroidx/preference/Preference;

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const v2, 0x7f121153

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_17
    if-eqz v2, :cond_19

    if-eqz v6, :cond_19

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportHolePunchFrontCam()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mAdvancedSettingsPreference:Landroidx/preference/Preference;

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const v2, 0x7f121159

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_18
    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mAdvancedSettingsPreference:Landroidx/preference/Preference;

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const v2, 0x7f121154

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_19
    if-eqz v1, :cond_1a

    if-eqz v2, :cond_1a

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mAdvancedSettingsPreference:Landroidx/preference/Preference;

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const v2, 0x7f121155

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_1a
    if-eqz v6, :cond_1b

    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mAdvancedSettingsPreference:Landroidx/preference/Preference;

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const v2, 0x7f121156

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1b
    :goto_4
    return-void
.end method

.method public onCustomColorClick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.ONEPLUS_COLOR_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oneplus_white_custom_accent_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurrentTempColor:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oneplus_black_custom_accent_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurrentTempColor:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurrentTempColor:Ljava/lang/String;

    const-string v2, "current_color"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessObserver:Lcom/android/settings/DisplaySettings$BrightnessObserver;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$000(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onOPBrightValueChanged(II)V
    .locals 6

    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->isInVrMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklightForVr:I

    iget v0, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklightForVr:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:I

    iget v0, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklight:I

    :goto_0
    invoke-static {p2, p1, v0}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinear(III)I

    move-result p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/DisplaySettings;->mLastSliderChangeTimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    const-string v4, "DisplaySettings"

    if-gtz p2, :cond_3

    sget-boolean p1, Lcom/android/settings/DisplaySettings;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "Slider.onChanged denoise init."

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-wide v0, p0, Lcom/android/settings/DisplaySettings;->mLastSliderChangeTimeMillis:J

    return-void

    :cond_3
    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long p2, v0, v2

    if-gez p2, :cond_5

    sget-boolean p0, Lcom/android/settings/DisplaySettings;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "Slider.onChanged denoise consecutive change."

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    iget-boolean p2, p0, Lcom/android/settings/DisplaySettings;->mIsSupportIrisSmooth:Z

    if-eqz p2, :cond_6

    div-int/lit8 p1, p1, 0x64

    :cond_6
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    return-void
.end method

.method public onOPBrightValueStartTrackingTouch(I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, p0}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "op_true_color_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_white_balance_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForTrueColor()V

    goto :goto_0

    :cond_0
    const-string v1, "screen_timeout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DisplaySettings"

    const-string v3, "could not persist screen timeout setting"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAutoBrightness()V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_network_name_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_4

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tap_to_wake"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroidx/preference/SwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_5

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    xor-int/2addr v1, v2

    const-string v4, "camera_gesture_disabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_6

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    xor-int/2addr v1, v2

    const-string v4, "camera_double_tap_power_gesture_disabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightPreference:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "oem_acc_breath_light"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "notification_light_pulse"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "battery_led_low_power"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "battery_led_charging"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mLedSettingsPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_7
    return v2

    :cond_8
    const-string p0, "video_enhancer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p2, "true"

    goto :goto_1

    :cond_9
    const-string p2, "false"

    :goto_1
    const-string v0, "persist.sys.oem.vendor.media.vpp.enable"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_a

    const-string p1, "1"

    goto :goto_2

    :cond_a
    const-string p1, "0"

    :goto_2
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return v2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doze_801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lockguard_wallpaper_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SET_WALLPAPER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "net.oneplus.launcher"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oneplus.aod"

    const-string v1, "com.oneplus.settings.SettingsActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mToggleLockScreenRotationPreference:Landroidx/preference/SwitchPreference;

    if-ne v0, p1, :cond_0

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/display/TimeoutListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/display/TimeoutListPreference;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v5

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/display/TimeoutListPreference;

    invoke-virtual {v2, v5, v6, v4}, Lcom/android/settings/display/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_screen_timeout"

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/display/TimeoutListPreference;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/settings/display/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_1
    const-string v0, "no_set_wallpaper"

    const-string v1, "wallpaper"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedPreference;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v3, v0, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateLockScreenRotation()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0xc

    const-string v3, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_inversion_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_6

    move v3, v1

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_grayscale_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_7

    move v4, v1

    goto :goto_3

    :cond_7
    move v4, v2

    :goto_3
    if-nez v0, :cond_8

    if-nez v3, :cond_8

    if-eqz v4, :cond_c

    :cond_8
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroidx/preference/Preference;

    if-eqz v5, :cond_a

    if-nez v0, :cond_9

    if-nez v3, :cond_9

    if-nez v4, :cond_9

    move v6, v1

    goto :goto_4

    :cond_9
    move v6, v2

    :goto_4
    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_a
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mReadingModePreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_c

    if-nez v0, :cond_b

    if-nez v3, :cond_b

    if-nez v4, :cond_b

    goto :goto_5

    :cond_b
    move v1, v2

    :goto_5
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_c
    return-void
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAccessibilityDisplayDaltonizerAndInversionContentObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_inversion_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAccessibilityDisplayDaltonizerAndInversionContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_grayscale_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mAccessibilityDisplayDaltonizerAndInversionContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mAccessibilityDisplayDaltonizerAndInversionContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method safeGetVrManager()Landroid/service/vr/IVrManager;
    .locals 0

    const-string p0, "vrmanager"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p0

    return-object p0
.end method

.method public saveBrightnessDataBase(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->isInVrMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklightForVr:I

    iget v1, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklightForVr:I

    const-string v2, "screen_brightness_for_vr"

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:I

    iget v1, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklight:I

    const-string v2, "screen_brightness"

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinear(III)I

    move-result p1

    new-instance v0, Lcom/android/settings/DisplaySettings$3;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/settings/DisplaySettings$3;-><init>(Lcom/android/settings/DisplaySettings;ILjava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
