.class public Lcom/android/settings/wifi/AddNetworkFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "AddNetworkFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiConfigUiBase;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final CANCEL_BUTTON_ID:I = 0x102001a

.field static final SUBMIT_BUTTON_ID:I = 0x1020019


# instance fields
.field private mCancelBtn:Landroid/widget/Button;

.field private mSubmitBtn:Landroid/widget/Button;

.field private mUIController:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchSubmit()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/wifi/AddNetworkFragment;->handleSubmitAction()V

    return-void
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x614

    return p0
.end method

.method public getMode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mSubmitBtn:Landroid/widget/Button;

    return-object p0
.end method

.method handleCancelAction()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method handleSubmitAction()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mUIController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v2, "wifi_config_key"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    const-string p2, "wifi_configuration"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "wifi_config_key"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a069c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :sswitch_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getEnrolleeQrCodeScannerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/AddNetworkFragment;->handleCancelAction()V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/AddNetworkFragment;->handleSubmitAction()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_3
        0x102001a -> :sswitch_2
        0x7f0a0543 -> :sswitch_1
        0x7f0a069d -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    const v0, 0x7f0d037a

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a006b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010031

    aput v2, v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v1, 0xff00ff

    invoke-virtual {v0, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    const p2, 0x102001b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    if-eqz p2, :cond_0

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    const p2, 0x1020019

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mSubmitBtn:Landroid/widget/Button;

    const p2, 0x102001a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mCancelBtn:Landroid/widget/Button;

    const p2, 0x7f0a069d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    const p3, 0x7f0a0543

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mSubmitBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/android/settings/wifi/WifiConfigController;

    const/4 p3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/AddNetworkFragment;->getMode()I

    move-result v0

    invoke-direct {p2, p0, p1, p3, v0}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingslib/wifi/AccessPoint;I)V

    iput-object p2, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mUIController:Lcom/android/settings/wifi/WifiConfigController;

    return-object p1
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mUIController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->updatePassword()V

    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mSubmitBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
