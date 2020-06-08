.class public Lcom/android/settings/notification/RedactNotificationPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "RedactNotificationPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field static final KEY_LOCKSCREEN_REDACT:Ljava/lang/String; = "lock_screen_redact"

.field static final KEY_LOCKSCREEN_WORK_PROFILE_REDACT:Ljava/lang/String; = "lock_screen_work_redact"

.field private static final TAG:Ljava/lang/String; = "LockScreenNotifPref"


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mKm:Landroid/app/KeyguardManager;

.field private final mProfileUserId:I

.field private final mSettingKey:Ljava/lang/String;

.field private mSettingObserver:Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;

.field private mSwitch:Landroidx/preference/SwitchPreference;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mSettingKey:Ljava/lang/String;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mUm:Landroid/os/UserManager;

    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-class p2, Landroid/app/KeyguardManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mKm:Landroid/app/KeyguardManager;

    iget-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mProfileUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/RedactNotificationPreferenceController;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->getLockscreenNotificationsEnabled(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/RedactNotificationPreferenceController;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->adminAllowsNotifications(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/RedactNotificationPreferenceController;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->adminAllowsUnredactedNotifications(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/RedactNotificationPreferenceController;)Landroidx/preference/SwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mSwitch:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method private adminAllowsNotifications(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private adminAllowsUnredactedNotifications(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getAllowPrivateNotifications(I)Z
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "lock_screen_allow_private_notifications"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled(I)Z
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "lock_screen_show_notifications"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mSettingKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mSwitch:Landroidx/preference/SwitchPreference;

    iget-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mSwitch:Landroidx/preference/SwitchPreference;

    if-nez p1, :cond_0

    const-string p1, "Preference not found: "

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mSettingKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockScreenNotifPref"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p1, Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;-><init>(Lcom/android/settings/notification/RedactNotificationPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_screen_work_redact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mProfileUserId:I

    const/16 v3, -0x2710

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->hasMultiAppProfiles(Landroid/os/UserManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "lock_screen_redact"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mProfileUserId:I

    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/settings/security/SecurityFeatureProviderImpl;

    invoke-virtual {v3, v4}, Lcom/android/settings/security/SecurityFeatureProviderImpl;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->getLockscreenNotificationsEnabled(I)Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_6

    invoke-direct {p0, v0}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->adminAllowsNotifications(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v0}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->adminAllowsUnredactedNotifications(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mKm:Landroid/app/KeyguardManager;

    iget p0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mProfileUserId:I

    invoke-virtual {v0, p0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p0

    if-eqz p0, :cond_5

    return v3

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    return v3
.end method

.method public isChecked()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_screen_redact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mProfileUserId:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->getAllowPrivateNotifications(I)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_screen_redact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mProfileUserId:I

    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "lock_screen_allow_private_notifications"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 p0, 0x1

    return p0
.end method
