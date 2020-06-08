.class public Lcom/oneplus/settings/notification/OPRingPattern;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPRingPattern.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final mSettingsObserver:Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;

.field private mVibrateWhenRinging:Landroidx/preference/TwoStatePreference;

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/notification/OPRingPattern$2;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPRingPattern$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPRingPattern;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;-><init>(Lcom/oneplus/settings/notification/OPRingPattern;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mSettingsObserver:Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/notification/OPRingPattern;)Landroid/content/ContentResolver;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/notification/OPRingPattern;)Landroid/content/ContentResolver;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/notification/OPRingPattern;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->updateVibrateWhenRinging()V

    return-void
.end method

.method private updateVibrateWhenRinging()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "vibrate_when_ringing"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4c

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1600bb

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVoiceCapable:Z

    const-string p1, "vibrate_when_ringing"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroidx/preference/TwoStatePreference;

    iget-object p1, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroidx/preference/TwoStatePreference;

    if-nez p1, :cond_0

    const-string p1, "OPRingPattern"

    const-string v0, "Preference not found: vibrate_when_ringing"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVoiceCapable:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroidx/preference/TwoStatePreference;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->updateVibrateWhenRinging()V

    iget-object p1, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroidx/preference/TwoStatePreference;

    new-instance v0, Lcom/oneplus/settings/notification/OPRingPattern$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPRingPattern$1;-><init>(Lcom/oneplus/settings/notification/OPRingPattern;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mSettingsObserver:Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->register(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mSettingsObserver:Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->register(Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "vibrate_when_ringing"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
