.class public Lcom/oneplus/settings/OPThemeSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPThemeSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$OnOPThemePresetDialogClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOPThemeIconPreference:Lcom/oneplus/settings/ui/OPThemeIconPreference;

.field private mOPThemePreference:Lcom/oneplus/settings/ui/OPThemePreference;

.field private mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

.field private mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/OPThemeSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/OPThemeSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPThemeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$showWarningDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private updateThemeSummary(I)V
    .locals 2

    const v0, 0x7f121076

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/OPThemeSettings;->mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/settings/OPThemeSettings;->mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    const p1, 0x7f121077

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportAVGTheme()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/oneplus/settings/OPThemeSettings;->mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    const p1, 0x7f1211b6

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportSwTheme()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/oneplus/settings/OPThemeSettings;->mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    const p1, 0x7f1211ad

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/oneplus/settings/OPThemeSettings;->mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    const p1, 0x7f121074

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/oneplus/settings/OPThemeSettings;->mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    const p1, 0x7f121075

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/oneplus/settings/OPThemeSettings;->mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPThemeSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNotificationLight()Z

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x7f1600cb

    return p0

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportCustomeTheme()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f1600ca

    return p0

    :cond_1
    const p0, 0x7f1600c9

    return p0
.end method

.method public synthetic lambda$showWarningDialog$0$OPThemeSettings(I)V
    .locals 5

    const-string v0, "oem_special_theme"

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/OPThemeSettings;->mAm:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->killProcess(Landroid/app/ActivityManager;Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "op_customization_theme_style"

    invoke-static {v1, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "status"

    const-string v3, "pre_theme"

    if-ne p1, v2, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableDarkThemes(Landroid/content/Context;)V

    const-string v0, "dark"

    invoke-static {v3, v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableLightThemes(Landroid/content/Context;)V

    const-string v0, "simple"

    invoke-static {v3, v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableMclThemes(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "mcl"

    invoke-static {v3, v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableColorfulThemes(Landroid/content/Context;)V

    const-string v0, "color"

    invoke-static {v3, v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "oneplus_theme_preset"

    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "OPThemeSettings"

    const-string v2, "could not persist screen timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPThemeSettings;->updateThemeSummary(I)V

    return-void
.end method

.method public synthetic lambda$showWarningDialog$1$OPThemeSettings(ILandroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iget-object p3, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    const-class v0, Lcom/oneplus/settings/OPThemeService;

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p3, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object p2, p0, Lcom/oneplus/settings/OPThemeSettings;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/oneplus/settings/-$$Lambda$OPThemeSettings$C6kQtaLLIAgYempaPUo6K7qFVBw;

    invoke-direct {p3, p0, p1}, Lcom/oneplus/settings/-$$Lambda$OPThemeSettings$C6kQtaLLIAgYempaPUo6K7qFVBw;-><init>(Lcom/oneplus/settings/OPThemeSettings;I)V

    const-wide/16 p0, 0x64

    invoke-virtual {p2, p3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    const-string p1, "activity"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/oneplus/settings/OPThemeSettings;->mAm:Landroid/app/ActivityManager;

    const-string p1, "oneplus_theme_preset"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPThemeSettings;->mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    iget-object p1, p0, Lcom/oneplus/settings/OPThemeSettings;->mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    invoke-virtual {p1, p0}, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->setOnOPThemePresetDialogClickListener(Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$OnOPThemePresetDialogClickListener;)V

    const-string p1, "oneplus_theme_custom_key"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPThemeIconPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPThemeSettings;->mOPThemeIconPreference:Lcom/oneplus/settings/ui/OPThemeIconPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    iget-object p1, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "op_customization_theme_style"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPThemeSettings;->updateThemeSummary(I)V

    const-string p1, "oneplus_theme_system_key"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPThemePreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPThemeSettings;->mOPThemePreference:Lcom/oneplus/settings/ui/OPThemePreference;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/OPThemeSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onDialogClickListener(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPThemeSettings;->showWarningDialog(I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "oneplus_theme_preset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPThemeSettings;->showWarningDialog(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mOPThemeIconPreference:Lcom/oneplus/settings/ui/OPThemeIconPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPThemeIconPreference;->refreshUI()V

    iget-object p0, p0, Lcom/oneplus/settings/OPThemeSettings;->mOPThemePreference:Lcom/oneplus/settings/ui/OPThemePreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPThemePreference;->refreshUI()V

    return-void
.end method

.method public showWarningDialog(I)V
    .locals 2

    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121062

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const v1, 0x7f121061

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    new-instance v1, Lcom/oneplus/settings/-$$Lambda$OPThemeSettings$AsO1ozfnDsTk_lbezIGWSfxxNGo;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/-$$Lambda$OPThemeSettings$AsO1ozfnDsTk_lbezIGWSfxxNGo;-><init>(Lcom/oneplus/settings/OPThemeSettings;I)V

    const p1, 0x7f1201c1

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    sget-object p1, Lcom/oneplus/settings/-$$Lambda$OPThemeSettings$QEX9kLB0ud0tfjfKljyzvaEhAzU;->INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPThemeSettings$QEX9kLB0ud0tfjfKljyzvaEhAzU;

    const v1, 0x7f1203f6

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPThemeSettings;->mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    iget-object p0, p0, Lcom/oneplus/settings/OPThemeSettings;->mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
