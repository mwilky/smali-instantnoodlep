.class public Lcom/android/settings/widget/RestrictedAppPreference;
.super Lcom/android/settings/widget/AppPreference;
.source "RestrictedAppPreference.java"


# instance fields
.field private mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field private userRestriction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d02c7

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    new-instance p1, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iput-object p2, p0, Lcom/android/settings/widget/RestrictedAppPreference;->userRestriction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetDisabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->userRestriction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-object p0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->userRestriction:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    return-void
.end method

.method public isDisabledByAdmin()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/widget/AppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a05ea

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/widget/RestrictedAppPreference;->isDisabledByAdmin()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public performClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/widget/RestrictedAppPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
