.class public Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "CustomDialogPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/CustomDialogPreferenceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPreferenceDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method private getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreferenceCompat;
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/CustomDialogPreferenceCompat;

    return-object p0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreferenceCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreferenceCompat;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreferenceCompat;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->access$100(Lcom/android/settingslib/CustomDialogPreferenceCompat;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onDialogClosed(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreferenceCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreferenceCompat;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->access$000(Lcom/android/settingslib/CustomDialogPreferenceCompat;Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;)V

    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreferenceCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
