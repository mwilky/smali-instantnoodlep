.class public Lcom/android/settings/fuelgauge/RestrictedAppDetails;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "RestrictedAppDetails.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;


# static fields
.field static final EXTRA_APP_INFO_LIST:Ljava/lang/String; = "app_info_list"


# instance fields
.field mAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private final mFooterPreferenceMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

.field mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mRestrictedAppListGroup:Landroidx/preference/PreferenceGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;-><init>(Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mFooterPreferenceMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    return-void
.end method

.method public static startRestrictedAppDetails(Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/core/InstrumentedPreferenceFragment;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app_info_list"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/fuelgauge/RestrictedAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const v0, 0x7f12135c

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method createDialogFragment(Lcom/android/settings/fuelgauge/batterytip/AppInfo;Z)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-direct {p2, v0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;-><init>(ILcom/android/settings/fuelgauge/batterytip/AppInfo;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    invoke-direct {p2, v0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;-><init>(ILcom/android/settings/fuelgauge/batterytip/AppInfo;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getMetricsCategory()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->newInstance(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;I)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const p0, 0x7f1207fe

    return p0
.end method

.method getKeyFromAppInfo(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "RestrictedAppDetails"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x505

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1600e8

    return p0
.end method

.method public synthetic lambda$refreshUi$0$RestrictedAppDetails(Lcom/android/settings/fuelgauge/batterytip/AppInfo;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->createDialogFragment(Lcom/android/settings/fuelgauge/batterytip/AppInfo;Z)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p3, "RestrictedAppDetails"

    invoke-virtual {p1, p0, p3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return p2
.end method

.method public onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 2

    instance-of v0, p1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->getRestrictAppList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;->getUnrestrictAppInfo()Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mRestrictedAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getKeyFromAppInfo(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/CheckBoxPreference;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mFooterPreferenceMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v0}, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/oneplus/settings/widget/OPFooterPreference;

    move-result-object v0

    const v1, 0x7f12135a

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const-string v0, "restrict_app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mRestrictedAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "app_info_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mAppInfos:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->refreshUi()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method refreshUi()V
    .locals 14

    iget-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mRestrictedAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->queryActionTime(I)Landroid/util/SparseLongArray;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mAppInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_1

    new-instance v7, Lcom/android/settings/widget/AppCheckBoxPreference;

    invoke-direct {v7, v0}, Lcom/android/settings/widget/AppCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mAppInfos:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    :try_start_0
    iget-object v9, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, v8, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    iget v11, v8, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-virtual {v9, v10, v2, v11}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v11, v8, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    iget-object v12, v8, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/android/settings/fuelgauge/BatteryUtils;->isForceAppStandbyEnabled(ILjava/lang/String;)Z

    move-result v10

    invoke-virtual {v7, v10}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v10, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v11, v8, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    iget v12, v8, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-static {v9, v10, v11, v12}, Lcom/android/settings/Utils;->getBadgedIcon(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v8}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getKeyFromAppInfo(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v9, Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$MZDHCZr815Ypqhp0_O82pYAJpvs;

    invoke-direct {v9, p0, v8}, Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$MZDHCZr815Ypqhp0_O82pYAJpvs;-><init>(Lcom/android/settings/fuelgauge/RestrictedAppDetails;Lcom/android/settings/fuelgauge/batterytip/AppInfo;)V

    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget v9, v8, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    const-wide/16 v10, -0x1

    invoke-virtual {v1, v9, v10, v11}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v12

    cmp-long v9, v12, v10

    if-eqz v9, :cond_0

    const v9, 0x7f12135b

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    sub-long v11, v3, v12

    long-to-double v11, v11

    invoke-static {v0, v11, v12, v2}, Lcom/android/settingslib/RestrictedLockUtils;->formatRelativeTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-virtual {p0, v9, v10}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v7}, Landroidx/preference/TwoStatePreference;->getSummaryOn()Ljava/lang/CharSequence;

    iget-object v9, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mRestrictedAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v9, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v7, "Can\'t find package: "

    invoke-static {v7}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v8, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "RestrictedAppDetails"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method
