.class public Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PreventRingingSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mSwitch:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController$SettingObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController$SettingObserver;-><init>(Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;Landroidx/preference/Preference;)V

    new-instance v0, Lcom/android/settings/gestures/-$$Lambda$PreventRingingSwitchPreferenceController$tkwvFAD7BhbhXsBPnVpa8l9DK84;

    invoke-direct {v0, p0}, Lcom/android/settings/gestures/-$$Lambda$PreventRingingSwitchPreferenceController$tkwvFAD7BhbhXsBPnVpa8l9DK84;-><init>(Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f0a06ea

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "gesture_prevent_ringing_switch"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11100fa

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$displayPreference$0$PreventRingingSwitchPreferenceController(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "volume_hush_gesture"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    xor-int/2addr p1, v1

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "volume_hush_gesture"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    move p1, v0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "volume_hush_gesture"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->setChecked(Z)V

    return-void
.end method
