.class public Lcom/oneplus/settings/packageuninstaller/ErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "ErrorDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.android.packageinstaller.arg.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.android.packageinstaller.arg.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Landroid/app/DialogFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    invoke-virtual {p1}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->dispatchAborted()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
