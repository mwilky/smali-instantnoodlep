.class Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;
.super Ljava/lang/Object;
.source "OPEditTextPreferenceForWifiTetherName.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-static {p1}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$100(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, -0x2

    const/4 v0, 0x0

    const-string v1, "oneplus__broadcat_wifi_no_show_dialog"

    invoke-static {p1, v1, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-eqz p2, :cond_2

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-static {p2}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$100(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-static {p2}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$100(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0271

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f1210eb

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x104000a

    iget-object v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    iget-object v1, v1, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    iget-object p0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    const v0, 0x7f0a0357

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-static {p0, p2}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$202(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_2
    return-void
.end method
