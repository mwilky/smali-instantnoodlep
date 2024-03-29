.class public Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "WifiCallingDisclaimerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAgreeButton:Landroid/widget/Button;

.field private mDisagreeButton:Landroid/widget/Button;

.field private mDisclaimerItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/calling/DisclaimerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollToBottom:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mDisclaimerItemList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mScrollToBottom:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mAgreeButton:Landroid/widget/Button;

    iget-boolean p0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mScrollToBottom:Z

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method finish(I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x69

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mAgreeButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mDisclaimerItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/calling/DisclaimerItem;

    invoke-virtual {v0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->onAgreed()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->finish(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mDisagreeButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->finish(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "EXTRA_SUB_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/settings/wifi/calling/LocationPolicyDisclaimer;

    invoke-direct {v3, v1, v0}, Lcom/android/settings/wifi/calling/LocationPolicyDisclaimer;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/wifi/calling/EmergencyCallLimitationDisclaimer;

    invoke-direct {v3, v1, v0}, Lcom/android/settings/wifi/calling/EmergencyCallLimitationDisclaimer;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/calling/DisclaimerItem;

    invoke-virtual {v1}, Lcom/android/settings/wifi/calling/DisclaimerItem;->shouldShow()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mDisclaimerItemList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mDisclaimerItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->finish(I)V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mScrollToBottom:Z

    const-string v1, "state_is_scroll_to_bottom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mScrollToBottom:Z

    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d0377

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a007c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mAgreeButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mAgreeButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a020a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mDisagreeButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mDisagreeButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a020c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p3, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mDisclaimerItemList:Ljava/util/List;

    invoke-direct {p3, v0}, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p3, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p3, v0, v1}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p3, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment$1;

    invoke-direct {p3, p0}, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment$1;-><init>(Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-object p1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mAgreeButton:Landroid/widget/Button;

    iget-boolean p0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mScrollToBottom:Z

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean p0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mScrollToBottom:Z

    const-string v0, "state_is_scroll_to_bottom"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
