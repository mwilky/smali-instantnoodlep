.class Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;
.super Ljava/lang/Object;
.source "OPEditTextPreferenceForWifiTetherName.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTextWatcher"
.end annotation


# instance fields
.field num:I

.field final synthetic this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;


# direct methods
.method synthetic constructor <init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-virtual {v0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-static {v1}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$400(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-virtual {v1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-static {v2}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$400(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;->isTextValid(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    iput p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->num:I

    iget p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->num:I

    const/16 v1, 0x20

    if-le p1, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-static {p0}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$300(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    instance-of p1, p0, Landroid/text/Spannable;

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$302(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
