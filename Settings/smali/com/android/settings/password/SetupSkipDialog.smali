.class public Lcom/android/settings/password/SetupSkipDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SetupSkipDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ZZZZZ)Lcom/android/settings/password/SetupSkipDialog;
    .locals 3

    new-instance v0, Lcom/android/settings/password/SetupSkipDialog;

    invoke-direct {v0}, Lcom/android/settings/password/SetupSkipDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "frp_supported"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "lock_type_pattern"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "lock_type_alphanumeric"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "for_fingerprint"

    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "for_face"

    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x23d

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->onCreateDialogBuilder()Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onCreateDialogBuilder()Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "for_face"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "for_fingerprint"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setOnlyLightTheme(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const v2, 0x7f121523

    invoke-virtual {v1, v2, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const v2, 0x7f1207bd

    invoke-virtual {v1, v2, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const p0, 0x7f120995

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const-string p0, "frp_supported"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f120994

    goto :goto_0

    :cond_1
    const p0, 0x7f120993

    :goto_0
    invoke-virtual {v1, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    return-object v1

    :cond_2
    :goto_1
    const-string v2, "lock_type_pattern"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v0, 0x7f1209a9

    goto :goto_2

    :cond_3
    const-string v2, "lock_type_alphanumeric"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f1209a8

    goto :goto_2

    :cond_4
    const v0, 0x7f1209aa

    :goto_2
    new-instance v2, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setOnlyLightTheme(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const v3, 0x7f121526

    invoke-virtual {v2, v3, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const v3, 0x7f1203f7

    invoke-virtual {v2, v3, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    if-eqz v1, :cond_5

    const p0, 0x7f12071c

    goto :goto_3

    :cond_5
    const p0, 0x7f120754

    :goto_3
    invoke-virtual {v2, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    return-object v2
.end method

.method public show(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string v0, "skip_dialog"

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
