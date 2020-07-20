.class public Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeVisEffectsCustomPreferenceController.java"


# static fields
.field private static final ZENMODEVISEFFECT:[Ljava/lang/String;

.field private static final ZENMODEVISEFFECT_VALUE:[I


# instance fields
.field private mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "zen_effect_intent"

    const-string v1, "zen_effect_light"

    const-string v2, "zen_effect_peek"

    const-string v3, "zen_effect_status"

    const-string v4, "zen_effect_badge"

    const-string v5, "zen_effect_ambient"

    const-string v6, "zen_effect_list"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->ZENMODEVISEFFECT:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->ZENMODEVISEFFECT_VALUE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private launchCustomSettings()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->select()V

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v0, 0x7f121b37

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x578

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method protected areCustomOptionsSelected()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v0

    iget-object p0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-nez v0, :cond_1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iget-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$hYHNs4-TKsGpjPSCluD3oYAyplI;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$hYHNs4-TKsGpjPSCluD3oYAyplI;-><init>(Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setOnGearClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;)V

    iget-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$anmhCczZGnQRUAoXVehKNMc66b4;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$anmhCczZGnQRUAoXVehKNMc66b4;-><init>(Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setOnRadioButtonClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$displayPreference$0$ZenModeVisEffectsCustomPreferenceController(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->launchCustomSettings()V

    return-void
.end method

.method public synthetic lambda$displayPreference$1$ZenModeVisEffectsCustomPreferenceController(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 5

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_0
    sget-object v2, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->ZENMODEVISEFFECT:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->ZENMODEVISEFFECT:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    move v1, p1

    :goto_1
    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz v1, :cond_4

    move v0, p1

    :goto_3
    sget-object v1, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->ZENMODEVISEFFECT:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->ZENMODEVISEFFECT:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_4

    :cond_3
    move v1, p1

    :goto_4
    iget-object v2, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    sget-object v4, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->ZENMODEVISEFFECT_VALUE:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4, v1}, Lcom/android/settings/notification/ZenModeBackend;->saveVisualEffectsPolicy(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->launchCustomSettings()V

    :cond_5
    return-void
.end method

.method protected select()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x577

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->areCustomOptionsSelected()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setChecked(Z)V

    return-void
.end method
