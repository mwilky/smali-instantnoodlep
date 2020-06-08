.class public Lcom/oneplus/settings/OPPowerMenuPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPPowerMenuPreferenceController.java"

# interfaces
.implements Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final QUICK_TURN_ON_VOICE_ASSISTANT_URI:Landroid/net/Uri;


# instance fields
.field final mKEY:Ljava/lang/String;

.field private mPreference:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;

.field private mSettingObserver:Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "quick_turn_on_voice_assistant"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->QUICK_TURN_ON_VOICE_ASSISTANT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mKEY:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->QUICK_TURN_ON_VOICE_ASSISTANT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPPowerMenuPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPPowerMenuPreferenceController;)Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mPreference:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mPreference:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;

    iget-object p1, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mPreference:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->setOnRadioButtonClickListener(Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;)V

    new-instance p1, Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;-><init>(Lcom/oneplus/settings/OPPowerMenuPreferenceController;)V

    iput-object p1, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mSettingObserver:Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mKEY:Ljava/lang/String;

    return-object p0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mSettingObserver:Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public onRadioButtonClick(Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mPreference:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "quick_turn_on_voice_assistant"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mSettingObserver:Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mPreference:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "quick_turn_on_voice_assistant"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->setChecked(Z)V

    return-void
.end method
