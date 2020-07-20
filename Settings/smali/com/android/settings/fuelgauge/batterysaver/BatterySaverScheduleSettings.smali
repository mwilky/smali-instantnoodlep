.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "BatterySaverScheduleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;
    }
.end annotation


# static fields
.field private static final LOW_POWER_MODE_TRIGGER_LEVEL_URI:Landroid/net/Uri;


# instance fields
.field mContext:Landroid/content/Context;

.field public mRadioButtonController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;

.field private mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

.field final mSeekBarSeContentObserver:Landroid/database/ContentObserver;

.field final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "low_power_trigger_level"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->LOW_POWER_MODE_TRIGGER_LEVEL_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    new-instance v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$1;-><init>(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$2;-><init>(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSeekBarSeContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->LOW_POWER_MODE_TRIGGER_LEVEL_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;)Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    return-object p0
.end method


# virtual methods
.method protected addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->updateSeekBar()V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->addToScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    check-cast p3, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;

    invoke-virtual {p3}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setAppendixVisibility(I)V

    :cond_0
    return-void
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x104013b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;

    const v3, 0x7f12027e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "key_battery_saver_no_schedule"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;

    const v2, 0x7f120281

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f120282

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v6, "key_battery_saver_routine"

    invoke-direct {p0, v2, v3, v6, v5}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->revertScheduleToNoneIfNeeded(Landroid/content/Context;)V

    :goto_0
    new-instance p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;

    const v2, 0x7f12027f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "key_battery_saver_percentage"

    invoke-direct {p0, v0, v4, v2, v5}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mRadioButtonController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->getDefaultKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f160025

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    new-instance v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mRadioButtonController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSeekBarSeContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_warning_acknowledged"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_trigger_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSeekBarSeContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setDividerHeight(I)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mRadioButtonController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->setDefaultKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
