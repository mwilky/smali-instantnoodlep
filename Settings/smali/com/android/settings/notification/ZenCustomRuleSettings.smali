.class public Lcom/android/settings/notification/ZenCustomRuleSettings;
.super Lcom/android/settings/notification/ZenCustomRuleSettingsBase;
.source "ZenCustomRuleSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "zen_custom_rule_setting_default"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "zen_custom_rule_setting"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const p0, 0x7f1207f6

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x644

    return p0
.end method

.method getPreferenceCategoryKey()Ljava/lang/String;
    .locals 0

    const-string p0, "zen_custom_rule_category"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f16012d

    return p0
.end method

.method public bridge synthetic onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->onResume()V

    return-void
.end method

.method public bridge synthetic onZenModeConfigChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->onZenModeConfigChanged()V

    return-void
.end method

.method public bridge synthetic updatePreferences()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->updatePreferences()V

    return-void
.end method
