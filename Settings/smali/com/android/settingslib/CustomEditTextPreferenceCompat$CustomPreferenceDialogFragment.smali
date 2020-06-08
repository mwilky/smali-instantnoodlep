.class public Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;
.super Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
.source "CustomEditTextPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/CustomEditTextPreferenceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPreferenceDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method private getCustomizablePreference()Lcom/android/settingslib/CustomEditTextPreferenceCompat;
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    return-object p0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    invoke-direct {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->onDialogClosed(Z)V

    invoke-direct {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->access$000(Lcom/android/settingslib/CustomEditTextPreferenceCompat;Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;)V

    invoke-direct {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
