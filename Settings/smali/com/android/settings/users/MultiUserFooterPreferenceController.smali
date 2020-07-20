.class public Lcom/android/settings/users/MultiUserFooterPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MultiUserFooterPreferenceController.java"


# instance fields
.field private mFooterMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

.field final mUserCaps:Lcom/android/settings/users/UserCapabilities;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "dummy_key"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, p0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method public setFooterMixin(Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;)Lcom/android/settings/users/MultiUserFooterPreferenceController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mFooterMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/settings/users/UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mFooterMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1}, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/oneplus/settings/widget/OPFooterPreference;

    move-result-object p1

    const v0, 0x7f12180a

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
