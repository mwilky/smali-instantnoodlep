.class public Lcom/android/settings/RemoteBugreportActivity;
.super Landroid/app/Activity;
.source "RemoteBugreportActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.app.extra.bugreport_notification_type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121498

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/RemoteBugreportActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/RemoteBugreportActivity$2;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x104000a

    new-instance v1, Lcom/android/settings/RemoteBugreportActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/RemoteBugreportActivity$1;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "Incorrect dialog type, no dialog shown. Received: "

    const-string v0, "RemoteBugreportActivity"

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline32(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121495

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    if-ne p1, v0, :cond_3

    const p1, 0x7f121493

    goto :goto_1

    :cond_3
    const p1, 0x7f121494

    :goto_1
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/android/settings/RemoteBugreportActivity$5;

    invoke-direct {p1, p0}, Lcom/android/settings/RemoteBugreportActivity$5;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f1205bb

    new-instance v0, Lcom/android/settings/RemoteBugreportActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/RemoteBugreportActivity$4;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f121492

    new-instance v0, Lcom/android/settings/RemoteBugreportActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/RemoteBugreportActivity$3;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_2
    return-void
.end method
