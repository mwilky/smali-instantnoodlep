.class public Lcom/oneplus/settings/OPCustomShapeSettings;
.super Lcom/oneplus/settings/OPQuitConfirmFragment;
.source "OPCustomShapeSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oneplus/settings/OnBackPressListener;


# instance fields
.field private mOPCustomShapePreference:Lcom/oneplus/settings/ui/OPCustomShapePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPCustomShapeSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f160091

    return p0
.end method

.method public synthetic lambda$onCreateOptionsMenu$0$OPCustomShapeSettings(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lcom/oneplus/settings/OPCustomShapeSettings;->mOPCustomShapePreference:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-virtual {p1}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->saveSelectedShape()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0
.end method

.method protected needShowWarningDialog()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPCustomShapeSettings;->mOPCustomShapePreference:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->needShowWarningDialog()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCancelPressed()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->setOnBackPressListener(Lcom/oneplus/settings/OnBackPressListener;)V

    const-string p1, "op_custom_shape_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPCustomShapePreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPCustomShapeSettings;->mOPCustomShapePreference:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p2, 0x7f120d6a

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const p2, 0x7f0804dd

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    new-instance p2, Lcom/oneplus/settings/-$$Lambda$OPCustomShapeSettings$l4zZR58YULUS7ku1tTyh9d6nmFE;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/-$$Lambda$OPCustomShapeSettings$l4zZR58YULUS7ku1tTyh9d6nmFE;-><init>(Lcom/oneplus/settings/OPCustomShapeSettings;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    return-void
.end method
