.class public abstract Lcom/android/settings/biometrics/BiometricErrorDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BiometricErrorDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOkButtonTextResId()I
.end method

.method public abstract getTitleResId()I
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "setup_for_back_fingerprint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1303cb

    goto :goto_0

    :cond_0
    const p1, 0x7f1303ca

    :goto_0
    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "error_msg"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;->getTitleResId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setCancelable(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;->getOkButtonTextResId()I

    move-result v2

    new-instance v3, Lcom/android/settings/biometrics/BiometricErrorDialog$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/biometrics/BiometricErrorDialog$1;-><init>(Lcom/android/settings/biometrics/BiometricErrorDialog;I)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setOnlyDarkTheme(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method
