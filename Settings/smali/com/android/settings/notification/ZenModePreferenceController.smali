.class public Lcom/android/settings/notification/ZenModePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ZenModePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private mSettingObserver:Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;

.field private mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    invoke-direct {p2, p1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    new-instance v0, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;-><init>(Lcom/android/settings/notification/ZenModePreferenceController;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getSoundSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
