.class public Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;
.super Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
.source "SmartBatteryAction.java"


# instance fields
.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mSettingsActivity:Lcom/android/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public handlePositiveAction(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mContext:Landroid/content/Context;

    const/16 v2, 0x554

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;->mFragment:Landroidx/fragment/app/Fragment;

    instance-of v0, p0, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class p1, Lcom/android/settings/fuelgauge/SmartBatterySettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const p1, 0x7f12152a

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
