.class public Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BatteryManagerPreferenceController.java"


# static fields
.field private static final KEY_BATTERY_MANAGER:Ljava/lang/String; = "smart_battery_manager"

.field private static final ON:I = 0x1


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "smart_battery_manager"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0, v1}, Landroidx/transition/R$id;->getRestrictedAppsList(Landroid/app/AppOpsManager;Landroid/os/UserManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    check-cast v1, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->isSmartBatterySupported()Z

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "adaptive_battery_management_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->updateSummary(Landroidx/preference/Preference;ZI)V

    return-void
.end method

.method updateSummary(Landroidx/preference/Preference;ZI)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p3, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f10000a

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, p2, p3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    instance-of p0, p1, Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const p0, 0x7f120274

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    instance-of p0, p1, Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const p0, 0x7f120273

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    instance-of p0, p1, Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method
