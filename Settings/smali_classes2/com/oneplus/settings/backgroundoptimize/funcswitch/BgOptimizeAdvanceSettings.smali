.class public Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BgOptimizeAdvanceSettings.java"


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field private mSleepStandBySwitchPreference:Landroidx/preference/SwitchPreference;

.field private mSmartatteryBySwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BgOptimizeAdvanceSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f160027

    return p0
.end method

.method public synthetic lambda$initData$0$BgOptimizeAdvanceSettings(ILandroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    check-cast v1, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->isSmartBatterySupported()Z

    const-string v1, "adaptive_battery_management_enabled"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f10000a

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, p3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const p0, 0x7f12026d

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setSummary(I)V

    instance-of p0, p2, Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz p0, :cond_2

    check-cast p2, Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p2, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const p0, 0x7f12026c

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setSummary(I)V

    instance-of p0, p2, Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz p0, :cond_2

    check-cast p2, Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mUserManager:Landroid/os/UserManager;

    iget-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1, v0}, Landroidx/transition/R$id;->getRestrictedAppsList(Landroid/app/AppOpsManager;Landroid/os/UserManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    check-cast v0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->isSmartBatterySupported()Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "adaptive_battery_management_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "smart_battery_manager"

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSmartatteryBySwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSmartatteryBySwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSmartatteryBySwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    new-instance v3, Lcom/oneplus/settings/backgroundoptimize/funcswitch/-$$Lambda$BgOptimizeAdvanceSettings$m6K78XVJyX1S38ETA3FWrGbZqv8;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/-$$Lambda$BgOptimizeAdvanceSettings$m6K78XVJyX1S38ETA3FWrGbZqv8;-><init>(Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;I)V

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string p1, "sleep_standby"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSleepStandBySwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string v3, "optimal_power_save_mode_enabled"

    invoke-static {p1, v3, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSleepStandby()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSleepStandBySwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    iget-object p0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSleepStandBySwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_4

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sleep_standby"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSleepStandBySwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, -0x2

    const-string v2, "optimal_power_save_mode_enabled"

    invoke-static {p0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
