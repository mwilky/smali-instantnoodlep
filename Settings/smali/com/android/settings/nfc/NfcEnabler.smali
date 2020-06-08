.class public Lcom/android/settings/nfc/NfcEnabler;
.super Lcom/android/settings/nfc/BaseNfcEnabler;
.source "NfcEnabler.java"


# instance fields
.field private isUsvMode:Z

.field private final mPreference:Landroidx/preference/SwitchPreference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private tapAndPayPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/SwitchPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/BaseNfcEnabler;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/nfc/NfcEnabler;->isUsvMode:Z

    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/SwitchPreference;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/BaseNfcEnabler;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/nfc/NfcEnabler;->isUsvMode:Z

    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method protected handleNfcStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    const-string v1, "default_payment_app"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->tapAndPayPreference:Landroidx/preference/Preference;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-boolean p1, p0, Lcom/android/settings/nfc/NfcEnabler;->isUsvMode:Z

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/settings/nfc/NfcEnabler;->tapAndPayPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-boolean p1, p0, Lcom/android/settings/nfc/NfcEnabler;->isUsvMode:Z

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/settings/nfc/NfcEnabler;->tapAndPayPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method isToggleable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcPreferenceController;->isToggleableInAirplaneMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcPreferenceController;->shouldTurnOffNFCInAirplaneMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v2, "airplane_mode_on"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1
.end method
