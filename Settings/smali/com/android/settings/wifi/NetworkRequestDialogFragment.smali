.class public Lcom/android/settings/wifi/NetworkRequestDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "NetworkRequestDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;,
        Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;
    }
.end annotation


# static fields
.field static final EXTRA_APP_NAME:Ljava/lang/String; = "com.android.settings.wifi.extra.APP_NAME"


# instance fields
.field private mAccessPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

.field private mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

.field private final mHandler:Landroid/os/Handler;

.field private mIsSpecifiedSsid:Z

.field private mShowLimitedItem:Z

.field private mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

.field private mWaitingConnectCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mShowLimitedItem:Z

    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$1;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mShowLimitedItem:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateConnectButton(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mWaitingConnectCallback:Z

    return p0
.end method

.method private renewAccessPointList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->updateKeys(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getAccessPointList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private updateConnectButton(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mIsSpecifiedSsid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method getAccessPointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mAccessPointList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mAccessPointList:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mAccessPointList:Ljava/util/List;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x55d

    return p0
.end method

.method public synthetic lambda$onCreateDialog$0$NetworkRequestDialogFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$1$NetworkRequestDialogFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p0, p1, p4}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$2$NetworkRequestDialogFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mShowLimitedItem:Z

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->renewAccessPointList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->notifyAdapterRefresh()V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$3$NetworkRequestDialogFragment(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$4$NetworkRequestDialogFragment(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p2, -0x3

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$lw_Wq0DVP57qlwDOANi5I6KnyZc;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$lw_Wq0DVP57qlwDOANi5I6KnyZc;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/widget/Button;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mIsSpecifiedSsid:Z

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$0xtgygmRc24XN-Ja1peqRK-MyB4;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$0xtgygmRc24XN-Ja1peqRK-MyB4;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method notifyAdapterRefresh()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onAbort()V
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;->ABORT:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->stopScanningAndPopErrorDialog(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->reject()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getAccessPointList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_7

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_6

    new-instance p2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v6, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget-boolean v6, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v6, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p1

    const/16 v6, 0xa

    const/16 v7, 0x22

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    iput-boolean v0, p2, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    iput-boolean v0, p2, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    goto :goto_1

    :pswitch_2
    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v4}, Ljava/util/BitSet;->set(I)V

    if-ne p1, v2, :cond_3

    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v6}, Ljava/util/BitSet;->set(I)V

    iput-boolean v0, p2, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v5}, Ljava/util/BitSet;->set(I)V

    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    throw v8

    :pswitch_4
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    throw v8

    :pswitch_5
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    invoke-interface {p1, p2}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->select(Landroid/net/wifi/WifiConfiguration;)V

    iput-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mWaitingConnectCallback:Z

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateConnectButton(Z)V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0131

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a045a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "com.android.settings.wifi.extra.APP_NAME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    const v4, 0x7f120b0b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "com.android.settings.wifi.extra.REQUEST_IS_FOR_SINGLE_NETWORK"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mIsSpecifiedSsid:Z

    :cond_1
    const v2, 0x7f0a0459

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v2, Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

    const v3, 0x7f0d027c

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getAccessPointList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

    invoke-virtual {v2, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f1203f6

    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$WCubGJZUXXghSB4GzGNKVjh70wc;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$WCubGJZUXXghSB4GzGNKVjh70wc;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    invoke-virtual {v2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f120b0a

    invoke-virtual {v2, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-boolean p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mIsSpecifiedSsid:Z

    if-eqz p1, :cond_2

    const p1, 0x7f1218f8

    invoke-virtual {v2, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_2
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$kMx9q9fSHpeKkR6QNAI-Ppkj7yk;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$kMx9q9fSHpeKkR6QNAI-Ppkj7yk;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, v6}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$UV4qHMWtNsPcyOJ7P5yQ_CDRxBs;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$UV4qHMWtNsPcyOJ7P5yQ_CDRxBs;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    :cond_0
    return-void
.end method

.method public onMatch(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->renewAccessPointList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->notifyAdapterRefresh()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->unregisterNetworkRequestMatchCallback(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->onPause()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/net/wifi/WifiManager;->registerNetworkRequestMatchCallback(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;Landroid/os/Handler;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->onResume()V

    return-void
.end method

.method public onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    return-void
.end method

.method public onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mWaitingConnectCallback:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateConnectButton(Z)V

    return-void
.end method

.method public onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    const p1, 0x7f120b08

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected stopScanningAndPopErrorDialog(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->newInstance()Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DIALOG_ERROR_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p1, Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
