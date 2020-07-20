.class public Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;
.source "ZenAutomaticRuleSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mId:Ljava/lang/String;

.field private mRule:Landroid/app/AutomaticZenRule;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_automatic_rule_switch"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "zen_automatic_rule_switch"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a06ea

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    const v1, 0x7f121b34

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    :try_start_0
    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenAutomaticRuleSwitchPreferenceController$z1Eo6cA7cobXNC3xg5YLhTyqCQI;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$ZenAutomaticRuleSwitchPreferenceController$z1Eo6cA7cobXNC3xg5YLhTyqCQI;-><init>(Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p0, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "zen_automatic_rule_switch"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mId:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$displayPreference$0$ZenAutomaticRuleSwitchPreferenceController(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/notification/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return v1
.end method

.method public onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    iput-object p2, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mId:Ljava/lang/String;

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result p1

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, p2}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object p2, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, p2, p0}, Lcom/android/settings/notification/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    return-void
.end method
