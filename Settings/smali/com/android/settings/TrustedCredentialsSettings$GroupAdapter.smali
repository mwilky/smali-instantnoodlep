.class Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$1;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    new-instance p3, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, p0, v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->load()V

    return-void
.end method


# virtual methods
.method public checkGroupExpandableAndStartWarningActivity(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(IZ)Z

    move-result p0

    return p0
.end method

.method public checkGroupExpandableAndStartWarningActivity(IZ)Z
    .locals 3

    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->access$1200(Lcom/android/settings/TrustedCredentialsSettings;I)Z

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    return-object p0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object p0

    return-object p0
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p0, p2

    return-wide p0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p4, :cond_0

    new-instance p4, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;-><init>(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0356

    invoke-virtual {v0, v1, p5, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0767

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p4, v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1402(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0a0768

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p4, v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1502(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0a0766

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-static {p4, v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1602(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/Switch;)Landroid/widget/Switch;

    invoke-static {p4}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1600(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    move-object v2, p5

    move-object p5, p4

    move-object p4, v2

    :goto_0
    invoke-static {p4}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1400(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$1700(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p4}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1500(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$1800(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$1900(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p4}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1600(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object p2

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$2000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-static {p4}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1600(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object p0

    new-instance v0, Landroid/os/UserHandle;

    iget v1, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v1, "no_config_credentials"

    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-static {p4}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1600(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/widget/Switch;->setVisibility(I)V

    invoke-static {p4}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1600(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-object p5
.end method

.method public getChildrenCount(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getGroupCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public getGroupId(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p3, :cond_0

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    invoke-static {p2, p4}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    const p2, 0x1020016

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserInfoByGroup(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f120415

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const p0, 0x7f120414

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const/4 p0, 0x6

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextAlignment(I)V

    return-object p3
.end method

.method public getUserInfoByGroup(I)Landroid/content/pm/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public load()V
    .locals 1

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;-><init>(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p0, p3, p4}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/TrustedCredentialsSettings;->access$1000(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->removeOrInstallCert(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(IZ)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0
.end method

.method public remove(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->remove(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method
