.class public abstract Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeRuleSettingsBase.java"


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mActionButtons:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

.field protected mContext:Landroid/content/Context;

.field protected mCustomBehaviorPreference:Landroidx/preference/Preference;

.field protected mDisableListeners:Z

.field protected mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

.field protected mId:Ljava/lang/String;

.field protected mRule:Landroid/app/AutomaticZenRule;

.field protected mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private refreshRuleOrFinish()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    sget-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "mRule="

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->toastAndFinish()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private toastAndFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f121af1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private updateControls()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updateControlsInternal()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updateHeader()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mCustomBehaviorPreference:Landroidx/preference/Preference;

    const v1, 0x7f121aaa

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mCustomBehaviorPreference:Landroidx/preference/Preference;

    const v1, 0x7f121aa9

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const p0, 0x7f1207de

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-boolean v1, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    const-string v2, "ZenModeSettings"

    if-eqz v1, :cond_0

    const-string v1, "onCreate getIntent()="

    invoke-static {v1, v0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    const-string p1, "No intent"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->toastAndFinish()V

    return-void

    :cond_1
    const-string v1, "android.service.notification.extra.RULE_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string p1, "rule id is null"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->toastAndFinish()V

    return-void

    :cond_2
    sget-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "mId="

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline45(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "zen_custom_setting"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mCustomBehaviorPreference:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mCustomBehaviorPreference:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase$1;-><init>(Lcom/android/settings/notification/ZenModeRuleSettingsBase;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->onCreateInternal()V

    return-void
.end method

.method protected abstract onCreateInternal()V
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updateControls()V

    :cond_1
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updateControls()V

    :cond_0
    return-void
.end method

.method protected abstract setRule(Landroid/app/AutomaticZenRule;)Z
.end method

.method protected abstract updateControlsInternal()V
.end method

.method protected updateHeader()V
    .locals 4

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettingsBase;->updatePreference(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettingsBase;->updatePreference(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mActionButtons:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mActionButtons:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mActionButtons:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->updatePreference(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method protected updateRule(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/notification/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method
