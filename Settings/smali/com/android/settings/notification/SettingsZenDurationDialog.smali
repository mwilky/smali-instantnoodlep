.class public Lcom/android/settings/notification/SettingsZenDurationDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SettingsZenDurationDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x53d

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    new-instance p1, Lcom/android/settingslib/notification/ZenDurationDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settingslib/notification/ZenDurationDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/settingslib/notification/ZenDurationDialog;->createDialog()Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method
