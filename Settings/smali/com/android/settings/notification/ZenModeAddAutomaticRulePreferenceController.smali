.class public Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;
.super Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;
.source "ZenModeAddAutomaticRulePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$RuleSelectionListener;
    }
.end annotation


# instance fields
.field private final mZenServiceListing:Lcom/android/settings/utils/ZenServiceListing;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/utils/ZenServiceListing;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_mode_add_automatic_rule"

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p3, p0, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;->mZenServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "zen_mode_add_automatic_rule"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "zen_mode_add_automatic_rule"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    new-instance v1, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$RuleSelectionListener;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$RuleSelectionListener;-><init>(Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;)V

    iget-object p0, p0, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;->mZenServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-static {p1, v0, v1, p0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->show(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/ZenRuleSelectionDialog$PositiveClickListener;Lcom/android/settings/utils/ZenServiceListing;)V

    const/4 p0, 0x1

    return p0
.end method
