.class public Lcom/android/settings/vpn2/LegacyVpnPreference;
.super Lcom/android/settings/vpn2/ManageablePreference;
.source "LegacyVpnPreference.java"


# instance fields
.field private mProfile:Lcom/android/internal/net/VpnProfile;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/vpn2/ManageablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0803a2

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->setIconSize(I)V

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/preference/Preference;)I
    .locals 2

    instance-of v0, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    iget v0, p1, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    iget v1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    iget-object p1, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v1, p1, Lcom/android/internal/net/VpnProfile;->type:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0

    :cond_1
    instance-of v0, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/settings/vpn2/AppPreference;

    iget p0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/vpn2/ManageablePreference;->getState()I

    move-result p0

    if-ne p0, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0

    :cond_3
    invoke-super {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/LegacyVpnPreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a064e

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->performClick()V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/widget/GearPreference;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public setProfile(Lcom/android/internal/net/VpnProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    :cond_1
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    :cond_2
    iput-object p1, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    return-void
.end method
