.class public Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "RenameMobileNetworkDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;,
        Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;
    }
.end annotation


# instance fields
.field private mColorSpinner:Landroid/widget/Spinner;

.field private mColors:[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

.field private mNameView:Landroid/widget/EditText;

.field private mSubId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "subscription_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method protected getColorSpinnerView()Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColorSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x66a

    return p0
.end method

.method protected getNameView()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mNameView:Landroid/widget/EditText;

    return-object p0
.end method

.method protected getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 0

    const-class p0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method protected getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 0

    const-class p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public synthetic lambda$onCreateDialog$0$RenameMobileNetworkDialogFragment(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mNameView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubId:I

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;II)I

    iget-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColors:[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    iget-object v0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColorSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    aget-object p2, p2, v0

    invoke-static {p2}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->access$000(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;)I

    move-result p2

    iget p0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubId:I

    invoke-virtual {p1, p2, p0}, Landroid/telephony/SubscriptionManager;->setIconTint(II)I

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "subscription_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubId:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10700c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const v1, 0x7f03004d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0700c0

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0700c1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    array-length v3, v0

    new-array v9, v3, [Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    const/4 v3, 0x0

    move v10, v3

    :goto_0
    array-length v3, v9

    if-ge v10, v3, :cond_0

    new-instance v11, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    aget-object v4, v1, v10

    aget v5, v0, v10

    const/4 v8, 0x0

    move-object v3, v11

    move v6, v2

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;-><init>(Ljava/lang/String;IIILcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$1;)V

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    iput-object v9, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColors:[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0098

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->populateView(Landroid/view/View;)V

    const v1, 0x7f120aa9

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120aab

    new-instance v1, Lcom/android/settings/network/telephony/-$$Lambda$RenameMobileNetworkDialogFragment$32uZAtr_w5Fn719afgZJG1yBu8g;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/-$$Lambda$RenameMobileNetworkDialogFragment$32uZAtr_w5Fn719afgZJG1yBu8g;-><init>(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p0, 0x1040000

    invoke-virtual {p1, p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method protected populateView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a044c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mNameView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "got null SubscriptionInfo for mSubId:"

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RenameMobileNetwork"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mNameView:Landroid/widget/EditText;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    const v1, 0x7f0a0178

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColorSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0097

    iget-object v4, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColors:[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;-><init>(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;Landroid/content/Context;I[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;)V

    iget-object v2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColorSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColors:[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->access$000(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;)I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColorSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const v2, 0x7f0a050e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubId:I

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a047d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v1, 0x8

    :cond_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0a047e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v0, p0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
