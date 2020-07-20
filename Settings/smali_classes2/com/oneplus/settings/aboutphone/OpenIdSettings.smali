.class public Lcom/oneplus/settings/aboutphone/OpenIdSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OpenIdSettings.java"


# instance fields
.field private mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

.field private mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$showWarningDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OpenIdSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1600af

    return p0
.end method

.method public synthetic lambda$onCreate$0$OpenIdSettings(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->showWarningDialog()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$OpenIdSettings(Lcom/oneplus/lib/widget/button/OPButton;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "oneplus_openid_toggle"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string p2, "oaid"

    const-string v0, "status"

    invoke-static {p2, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$showWarningDialog$2$OpenIdSettings(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p1, "OUID"

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->clearOpenId(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1211c6

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    invoke-static {v0, p0, p1}, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->getOpenId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "reset_openid_button_container"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "get_opendi_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreferenceMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v1}, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/oneplus/settings/widget/OPFooterPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1211c6

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const-string v6, "OUID"

    invoke-static {v4, v5, v6}, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->getOpenId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const v1, 0x7f0a05e6

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    const-string v4, "oneplus_openid_toggle"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    new-instance v3, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$AuO0aFRPrmiDP9aUKus-1jWVCZ0;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$AuO0aFRPrmiDP9aUKus-1jWVCZ0;-><init>(Lcom/oneplus/settings/aboutphone/OpenIdSettings;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    new-instance v1, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$VoUIxXsGiBlRFuuczVjeWZcsPQ0;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$VoUIxXsGiBlRFuuczVjeWZcsPQ0;-><init>(Lcom/oneplus/settings/aboutphone/OpenIdSettings;Lcom/oneplus/lib/widget/button/OPButton;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public showWarningDialog()V
    .locals 3

    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1211c5

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const v1, 0x7f1211c4

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    new-instance v1, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$gH9zyX_fqtkhjBj1gsjo4pbq_5Y;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$gH9zyX_fqtkhjBj1gsjo4pbq_5Y;-><init>(Lcom/oneplus/settings/aboutphone/OpenIdSettings;)V

    const v2, 0x7f1211c3

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    sget-object v1, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$zxn4_303Ql923k6ogE0guN_EXMA;->INSTANCE:Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$zxn4_303Ql923k6ogE0guN_EXMA;

    const v2, 0x7f1203f6

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
