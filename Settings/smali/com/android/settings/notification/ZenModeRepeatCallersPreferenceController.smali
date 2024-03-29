.class public Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeRepeatCallersPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mBackend:Lcom/android/settings/notification/ZenModeBackend;

.field private final mRepeatCallersThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V
    .locals 1

    const-string v0, "zen_mode_repeat_callers"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput p3, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mRepeatCallersThreshold:I

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/ZenModeBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "zen_mode_repeat_callers"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget p0, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mRepeatCallersThreshold:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const p0, 0x7f121af5

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "zen_mode_repeat_callers"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-boolean p2, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "onPrefChange allowRepeatCallers="

    const-string v0, "PrefControllerMixin"

    invoke-static {p2, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline43(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0xab

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    iget-object p0, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/16 p2, 0x10

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/notification/ZenModeBackend;->saveSoundPolicy(IZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->getZenMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityCallSenders()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    return-void
.end method
