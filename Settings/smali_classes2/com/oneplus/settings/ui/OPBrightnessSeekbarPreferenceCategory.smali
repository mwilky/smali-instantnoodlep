.class public Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;
.super Lcom/oneplus/settings/ui/OPSeekbarPreferenceCategory;
.source "OPBrightnessSeekbarPreferenceCategory.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;
    }
.end annotation


# instance fields
.field private isManuallyTouchingSeekbar:Z

.field private mBrightness:I

.field private mCallback:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

.field private mContext:Landroid/content/Context;

.field private mDefaultBacklight:I

.field private mDefaultBacklightForVr:I

.field private mIsSupportIrisSmooth:Z

.field private mMaximumBacklight:I

.field private mMaximumBacklightForVr:I

.field private mMinimumBacklight:I

.field private mMinimumBacklightForVr:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private max:I

.field private min:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPSeekbarPreferenceCategory;-><init>(Landroid/content/Context;)V

    const-string v0, "OP_FEATURE_PIXELWORKS_BRIGHTNESS_SMOOTH"

    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mIsSupportIrisSmooth:Z

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/ui/OPSeekbarPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "OP_FEATURE_PIXELWORKS_BRIGHTNESS_SMOOTH"

    invoke-static {p2}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mIsSupportIrisSmooth:Z

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/settings/ui/OPSeekbarPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "OP_FEATURE_PIXELWORKS_BRIGHTNESS_SMOOTH"

    invoke-static {p2}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mIsSupportIrisSmooth:Z

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMinimumBacklight:I

    invoke-virtual {p1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMaximumBacklight:I

    invoke-virtual {p1}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mDefaultBacklight:I

    invoke-virtual {p1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessForVrSetting()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMinimumBacklightForVr:I

    invoke-virtual {p1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessForVrSetting()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMaximumBacklightForVr:I

    invoke-virtual {p1}, Landroid/os/PowerManager;->getDefaultScreenBrightnessForVrSetting()I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mDefaultBacklightForVr:I

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->isInVrMode()Z

    move-result p1

    const/4 v0, -0x2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mDefaultBacklightForVr:I

    const-string v3, "screen_brightness_for_vr"

    invoke-static {v1, v3, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mDefaultBacklight:I

    const-string v3, "screen_brightness"

    invoke-static {v1, v3, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMinimumBacklightForVr:I

    iput p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->min:I

    iget p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMaximumBacklightForVr:I

    iput p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->max:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMinimumBacklight:I

    iput p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->min:I

    iget p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMaximumBacklight:I

    iput p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->max:I

    :goto_1
    iget-boolean p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mIsSupportIrisSmooth:Z

    if-eqz p1, :cond_2

    mul-int/lit8 v0, v0, 0x64

    :cond_2
    iget p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->min:I

    iget v1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->max:I

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGamma(III)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    return-void
.end method

.method public static synthetic lambda$TLKzjtXAQpNW-kURZY9-YtOX--k(Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public getBrightness()I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    return p0
.end method

.method isInVrMode()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->safeGetVrManager()Landroid/service/vr/IVrManager;

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

    const-string v0, "OPBrightnessSeekbarPreferenceCategory"

    const-string v1, "Failed to check vr mode!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0522

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    sget v1, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    const-string p1, "seekbar progress arg1 : "

    const-string p3, " mSeekBar.getProgress : "

    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline24(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPBrightnessSeekbarPreferenceCategory"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->isManuallyTouchingSeekbar:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;->onOPBrightValueChanged(II)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string p1, "OPBrightnessSeekbarPreferenceCategory"

    const-string v0, "start tracking seekbar"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->isManuallyTouchingSeekbar:Z

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;->onOPBrightValueStartTrackingTouch(I)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string p1, "stop tracking seekbar "

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPBrightnessSeekbarPreferenceCategory"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->isManuallyTouchingSeekbar:Z

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;->saveBrightnessDataBase(I)V

    :cond_0
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

.method public setBrightness(I)V
    .locals 2

    :try_start_0
    iput p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    const-string p1, "OPBrightnessSeekbarPreferenceCategory"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekbar brightness after set : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/oneplus/settings/ui/-$$Lambda$OPBrightnessSeekbarPreferenceCategory$TLKzjtXAQpNW-kURZY9-YtOX--k;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPBrightnessSeekbarPreferenceCategory$TLKzjtXAQpNW-kURZY9-YtOX--k;-><init>(Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCallback(Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    return-void
.end method
