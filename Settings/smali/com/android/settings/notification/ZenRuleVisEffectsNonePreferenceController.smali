.class public Lcom/android/settings/notification/ZenRuleVisEffectsNonePreferenceController;
.super Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.source "ZenRuleVisEffectsNonePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mPreference:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsNonePreferenceController;->mPreference:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;

    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsNonePreferenceController;->mPreference:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenRuleVisEffectsNonePreferenceController$uzKR6s-BFeCxxA-DiIl1Oy_CGU4;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$ZenRuleVisEffectsNonePreferenceController$uzKR6s-BFeCxxA-DiIl1Oy_CGU4;-><init>(Lcom/android/settings/notification/ZenRuleVisEffectsNonePreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->setOnRadioButtonClickListener(Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;)V

    return-void
.end method

.method public bridge synthetic isAvailable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$displayPreference$0$ZenRuleVisEffectsNonePreferenceController(Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;)V
    .locals 4

    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x643

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x575

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->hideAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/notification/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method

.method public onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/ZenModeBackend;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsNonePreferenceController;->mPreference:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;

    iget-object p0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->shouldHideAllVisualEffects()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method
