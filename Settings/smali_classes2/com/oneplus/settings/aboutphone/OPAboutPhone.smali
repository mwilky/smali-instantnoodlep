.class public Lcom/oneplus/settings/aboutphone/OPAboutPhone;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPAboutPhone.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/oneplus/settings/aboutphone/Contract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/aboutphone/OPAboutPhone$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAdapter:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

.field private mContext:Landroid/content/Context;

.field private mCurrentClickView:Landroid/view/View;

.field private mDevHitToast:Landroid/widget/Toast;

.field private mPresenter:Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/oneplus/settings/aboutphone/-$$Lambda$OPAboutPhone$RKK-fwpKlUC1qzXgjTLs813iYKo;->INSTANCE:Lcom/oneplus/settings/aboutphone/-$$Lambda$OPAboutPhone$RKK-fwpKlUC1qzXgjTLs813iYKo;

    sput-object v0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$3;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone$3;-><init>()V

    sput-object v0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/settings/aboutphone/OPAboutPhone;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mCurrentClickView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mPresenter:Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic lambda$static$0(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 0

    new-instance p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$SummaryProvider;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/aboutphone/OPAboutPhone$SummaryProvider;-><init>(Lcom/android/settings/dashboard/SummaryLoader;)V

    return-object p0
.end method


# virtual methods
.method public cancelToast()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mDevHitToast:Landroid/widget/Toast;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method public displayHardWarePreference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "hardware_view"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPLayoutPreference;

    const v1, 0x7f0a055e

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPLayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setPhoneImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    invoke-virtual {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->done()Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setCameraMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setCpuMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    invoke-virtual {v0, p4}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setScreenMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "GB RAM + "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->showROMStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ROM"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setStorageMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    invoke-virtual {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->done()Landroid/view/View;

    return-void
.end method

.method public displaySoftWarePreference(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mAdapter:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mAdapter:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mAdapter:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mAdapter:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    new-instance v0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;-><init>(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)V

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->setOnItemClickListener(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$OnItemClickListener;)V

    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPAboutPhone"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f160081

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x64

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mPresenter:Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

    invoke-virtual {p1}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->enableDevelopmentSettings()V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mPresenter:Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mProcessingLastDevHit:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "soft_view"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPLayoutPreference;

    const v0, 0x7f0a0560

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPLayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a05c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone$2;-><init>(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0, p0, p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/oneplus/settings/aboutphone/Contract$View;)V

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mPresenter:Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mPresenter:Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->onResume()V

    return-void
.end method

.method public performHapticFeedback()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mCurrentClickView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method public showLongToast(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->showLongToast(Ljava/lang/String;)V

    return-void
.end method

.method public showLongToast(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mDevHitToast:Landroid/widget/Toast;

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
