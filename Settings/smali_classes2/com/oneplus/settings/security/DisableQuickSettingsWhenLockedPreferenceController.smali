.class public Lcom/oneplus/settings/security/DisableQuickSettingsWhenLockedPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DisableQuickSettingsWhenLockedPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/oneplus/settings/security/DisableQuickSettingsWhenLockedPreferenceController;->mUserId:I

    iput-object p3, p0, Lcom/oneplus/settings/security/DisableQuickSettingsWhenLockedPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "disable_quick_settings_when_locked"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/security/DisableQuickSettingsWhenLockedPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/oneplus/settings/security/DisableQuickSettingsWhenLockedPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/security/DisableQuickSettingsWhenLockedPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/oneplus/settings/security/DisableQuickSettingsWhenLockedPreferenceController;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x80000

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "oneplus_disable_qs_when_locked"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "oneplus_disable_qs_when_locked"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    check-cast p1, Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
