.class public Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;
.super Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.source "ZenRuleVisEffectPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field protected mEffect:I

.field private final mMetricsCategory:I

.field protected mParentSuppressedEffects:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput p4, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mEffect:I

    iput p5, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mMetricsCategory:I

    iput-object p6, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mParentSuppressedEffects:[I

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mEffect:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110090

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mMetricsCategory:I

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x642

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x643

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object p2, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    iget v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mEffect:I

    xor-int/2addr p1, v4

    invoke-virtual {v0, v1, p1}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object p2, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, p2, p0}, Lcom/android/settings/notification/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return v4
.end method

.method public onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenModeBackend;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mEffect:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mParentSuppressedEffects:[I

    if-eqz v3, :cond_3

    array-length v4, v3

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_4

    aget v7, v3, v5

    iget-object v8, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v8}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v8

    invoke-virtual {v8, v7, v1}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v7

    if-nez v7, :cond_2

    move v6, v1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v6, v2

    :cond_4
    if-eqz v6, :cond_5

    move-object v0, p1

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    check-cast p1, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    goto :goto_1

    :cond_5
    move-object p0, p1

    check-cast p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_6
    :goto_1
    return-void
.end method
