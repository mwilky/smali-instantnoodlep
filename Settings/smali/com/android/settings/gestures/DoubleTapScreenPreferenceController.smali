.class public Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "DoubleTapScreenPreferenceController.java"


# static fields
.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_double_tap_screen_video"


# instance fields
.field private final OFF:I

.field private final ON:I

.field private final SECURE_KEY:Ljava/lang/String;

.field private mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->ON:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->OFF:I

    const-string p1, "doze_pulse_on_double_tap"

    iput-object p1, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->SECURE_KEY:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mUserId:I

    return-void
.end method

.method private getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method public static isSuggestionComplete(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 1

    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->isSuggestionComplete(Landroid/hardware/display/AmbientDisplayConfiguration;Landroid/content/SharedPreferences;)Z

    move-result p0

    return p0
.end method

.method static isSuggestionComplete(Landroid/hardware/display/AmbientDisplayConfiguration;Landroid/content/SharedPreferences;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapSensorAvailable()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "pref_double_tap_screen_suggestion_complete"

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapSensorAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 0

    const-string p0, "gesture_double_tap_screen_video"

    return-object p0
.end method

.method public isChecked()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapGestureEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isSliceable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "gesture_double_tap_screen"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "doze_pulse_on_double_tap"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method
