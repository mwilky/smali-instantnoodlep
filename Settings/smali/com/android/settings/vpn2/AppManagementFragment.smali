.class public Lcom/android/settings/vpn2/AppManagementFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppManagementFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/AppManagementFragment$CannotConnectFragment;
    }
.end annotation


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mConnectivityService:Landroid/net/IConnectivityManager;

.field private final mForgetVpnDialogFragmentListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mPreferenceForget:Lcom/android/settingslib/RestrictedPreference;

.field private mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mPreferenceVersion:Landroidx/preference/Preference;

.field private final mUserId:I

.field private mVpnLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    new-instance v0, Lcom/android/settings/vpn2/AppManagementFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/AppManagementFragment$1;-><init>(Lcom/android/settings/vpn2/AppManagementFragment;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mForgetVpnDialogFragmentListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn2/AppManagementFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isVpnAlwaysOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/vpn2/AppManagementFragment;ZZ)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    invoke-virtual {v0, v1, p0, p2, v2}, Landroid/net/ConnectivityManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method static appHasVpnPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 5

    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x2f

    aput v4, v2, v3

    invoke-virtual {p0, v0, p1, v2}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method private isVpnAlwaysOn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget p0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-virtual {v1, p0}, Landroid/net/ConnectivityManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private onAlwaysOnVpnClick(ZZ)Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mConnectivityService:Landroid/net/IConnectivityManager;

    iget v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v5, v1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "AppManagementFragment"

    const-string v3, "Failure to look up active VPN"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v0

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/vpn2/VpnUtils;->isAnyLockdownActive(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v5, v7, p2}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->shouldShow(ZZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-static/range {v4 .. v9}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->show(Landroidx/fragment/app/Fragment;ZZZZLandroid/os/Bundle;)V

    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/AppManagementFragment;->setAlwaysOnVpnByUI(ZZ)Z

    move-result p0

    return p0
.end method

.method private setAlwaysOnVpnByUI(ZZ)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateRestrictedViews()V

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v1, v3, p2, v2}, Landroid/net/ConnectivityManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z

    move-result p2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isVpnAlwaysOn()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnLabel:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/settings/vpn2/AppManagementFragment$CannotConnectFragment;->show(Lcom/android/settings/vpn2/AppManagementFragment;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateUI()V

    :goto_1
    return p2
.end method

.method public static show(Landroid/content/Context;Lcom/android/settings/vpn2/AppPreference;I)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/vpn2/AppManagementFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    new-instance p2, Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/android/settings/vpn2/ManageablePreference;->getUserId()I

    move-result p1

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private updateRestrictedViews()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    const-string v2, "no_config_vpn"

    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/android/settingslib/RestrictedPreference;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->isAlwaysOnVpnPackageSupportedForUser(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    const v0, 0x7f12182e

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    const v0, 0x7f121830

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateUI()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isVpnAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/vpn2/VpnUtils;->isAnyLockdownActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateRestrictedViews()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public onConfirmLockdown(Landroid/os/Bundle;ZZ)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/settings/vpn2/AppManagementFragment;->setAlwaysOnVpnByUI(ZZ)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f160113

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string p1, "connectivity"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mConnectivityService:Landroid/net/IConnectivityManager;

    const-string p1, "version"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceVersion:Landroidx/preference/Preference;

    const-string p1, "always_on_vpn"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string p1, "lockdown_vpn"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string p1, "forget_vpn"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/android/settingslib/RestrictedPreference;

    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x77b1353c

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const v2, -0x6bce99fe

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "lockdown_vpn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v1, "always_on_vpn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    const-string p0, "unknown key is clicked: "

    invoke-static {p0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppManagementFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/AppManagementFragment;->onAlwaysOnVpnClick(ZZ)Z

    move-result p0

    return p0

    :cond_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/AppManagementFragment;->onAlwaysOnVpnClick(ZZ)Z

    move-result p0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 8

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, -0x233fe45e

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "forget_vpn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string p0, "unknown key is clicked: "

    const-string v0, "AppManagementFragment"

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline41(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateRestrictedViews()V

    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mForgetVpnDialogFragmentListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    iget-object v4, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnLabel:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/settings/vpn2/AppDialogFragment;->show(Landroidx/fragment/app/Fragment;Lcom/android/settings/vpn2/AppDialogFragment$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    const/4 v1, 0x1

    :goto_2
    return v1
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AppManagementFragment"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, "empty bundle"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_0
    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "empty package name"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnLabel:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_2

    const-string v0, "package does not include an application"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v4}, Lcom/android/settings/vpn2/AppManagementFragment;->appHasVpnPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "package didn\'t register VPN profile"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "package not found"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceVersion:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f12186a

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateUI()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_2
    return-void
.end method
