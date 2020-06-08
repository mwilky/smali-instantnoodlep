.class public Lcom/android/settings/widget/MasterSwitchController;
.super Lcom/android/settings/widget/SwitchWidgetController;
.source "MasterSwitchController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mPreference:Lcom/android/settings/widget/MasterSwitchPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/MasterSwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/SwitchWidgetController;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/MasterSwitchPreference;->isChecked()Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/SwitchWidgetController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    if-eqz p0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;->onSwitchToggled(Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setSwitchEnabled(Z)V

    return-void
.end method

.method public startListening()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public stopListening()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public updateTitle(Z)V
    .locals 0

    return-void
.end method
