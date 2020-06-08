.class public abstract Lcom/oneplus/settings/OPQuitConfirmFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPQuitConfirmFragment.java"


# instance fields
.field public mOnBackPressListener:Lcom/oneplus/settings/OnBackPressListener;

.field private mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPQuitConfirmFragment;)Lcom/oneplus/lib/app/OPAlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPQuitConfirmFragment;->mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    return-object p0
.end method


# virtual methods
.method protected abstract needShowWarningDialog()Z
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->performBackEvent()V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->performBackEvent()V

    const/4 p0, 0x1

    return p0
.end method

.method public performBackEvent()V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->needShowWarningDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120cd3

    const v1, 0x7f120a68

    const v2, 0x7f1203ef

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/settings/OPQuitConfirmFragment;->showWarningDialog(III)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_0
    return-void
.end method

.method public setOnBackPressListener(Lcom/oneplus/settings/OnBackPressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPQuitConfirmFragment;->mOnBackPressListener:Lcom/oneplus/settings/OnBackPressListener;

    return-void
.end method

.method public showWarningDialog(III)V
    .locals 2

    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    new-instance p1, Lcom/oneplus/settings/OPQuitConfirmFragment$2;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/OPQuitConfirmFragment$2;-><init>(Lcom/oneplus/settings/OPQuitConfirmFragment;)V

    invoke-virtual {v0, p2, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    new-instance p1, Lcom/oneplus/settings/OPQuitConfirmFragment$1;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/OPQuitConfirmFragment$1;-><init>(Lcom/oneplus/settings/OPQuitConfirmFragment;)V

    invoke-virtual {v0, p3, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPQuitConfirmFragment;->mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    iget-object p0, p0, Lcom/oneplus/settings/OPQuitConfirmFragment;->mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
