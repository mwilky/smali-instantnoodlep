.class public Lcom/oneplus/settings/carcharger/OPCarChargerSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPCarChargerSettings.java"


# static fields
.field static final KEY_FOOTER_PREF:Ljava/lang/String; = "footer_preference"


# instance fields
.field mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;

    const-string v1, "car_charger_auto_turn_on"

    invoke-direct {v0, p1, v1}, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;

    const-string v1, "car_charger_auto_turn_on_dnd"

    invoke-direct {v0, p1, v1}, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/oneplus/settings/carcharger/OPCarChargerAutoOpenSpecifiedAppPreferenceController;

    invoke-direct {v0, p1}, Lcom/oneplus/settings/carcharger/OPCarChargerAutoOpenSpecifiedAppPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPCarChargerSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f16008c

    return p0
.end method

.method initPreferencesFromPreferenceScreen()V
    .locals 1

    const-string v0, "footer_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/widget/OPFooterPreference;

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/carcharger/OPCarChargerSettings;->updateFooterPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerSettings;->initPreferencesFromPreferenceScreen()V

    return-void
.end method

.method updateFooterPreference(Landroidx/preference/Preference;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120c8f

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f120c8e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
