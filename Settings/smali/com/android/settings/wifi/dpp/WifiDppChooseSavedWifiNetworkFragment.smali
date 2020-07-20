.class public Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;
.super Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.source "WifiDppChooseSavedWifiNetworkFragment.java"


# instance fields
.field private mButtonLeft:Landroid/widget/Button;

.field private mButtonRight:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x63b

    return p0
.end method

.method public synthetic lambda$onViewCreated$0$WifiDppChooseSavedWifiNetworkFragment(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_SCANNER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_GENERATOR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    :goto_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const p1, 0x7f0a07d2

    const-string v1, "wifi_network_list_fragment"

    invoke-virtual {p0, p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0d0386

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0803b1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderIconImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f121935

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f121936

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->mButtonLeft:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->mButtonLeft:Landroid/widget/Button;

    const v1, 0x7f1203f6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->mButtonLeft:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppChooseSavedWifiNetworkFragment$4kdXtMX58Ci8jOnJQniYhPCjh0o;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppChooseSavedWifiNetworkFragment$4kdXtMX58Ci8jOnJQniYhPCjh0o;-><init>(Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->mButtonRight:Landroid/widget/Button;

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->mButtonRight:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mTitleSummaryContainer:Landroid/view/View;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method
