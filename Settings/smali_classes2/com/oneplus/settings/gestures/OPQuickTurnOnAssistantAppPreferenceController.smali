.class public Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPQuickTurnOnAssistantAppPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final ASK_ALEXA_VALUE:I = 0x2

.field private static final CAMERA_VALUE:I = 0x0

.field private static final KEY_DOUBLE_TAP_POWER_GESTURE:Ljava/lang/String; = "double_tap_power_gesture"

.field private static final ONEPLUS_EMERGENCY_TAP_POWER_GESTURE_FIVE_TIMES:I = 0x5

.field private static final ONEPLUS_EMERGENCY_TAP_POWER_GESTURE_NO_TIMES:I = -0x1

.field private static final ONEPLUS_EMERGENCY_TAP_POWER_GESTURE_THREE_TIMES:I = 0x3

.field private static final WALLET_VALUE:I = 0x1


# instance fields
.field private mSwitch:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "double_tap_power_gesture"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private updateSwitchSummary()V
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "emergency_affordance_needed"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x1

    const-string v5, "oneplus_emergency_tap_power_gesture_times"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    const/4 v3, 0x5

    :cond_2
    :goto_1
    if-ne v3, v5, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

    const v0, 0x7f120d46

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "op_app_double_tap_power_gesture"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "camera_double_tap_power_gesture_disabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

    const v0, 0x7f120d26

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

    const v0, 0x7f120d24

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_5
    if-ne v0, v2, :cond_6

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

    const v0, 0x7f120d25

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

    const v0, 0x7f120d21

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "double_tap_power_gesture"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "double_tap_power_gesture"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "double_tap_power_gesture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p1, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x270f

    invoke-static {p0, p1, v0}, Lcom/oneplus/settings/utils/OPUtils;->startFragment(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->updateSwitchSummary()V

    :cond_1
    return-void
.end method
