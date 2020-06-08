.class public Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;
.super Landroidx/fragment/app/FragmentActivity;
.source "OPQuickLaunchCategorySettings.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field private mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

.field private mCurrentIndex:I

.field private final mFragmentTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mPagerAdapter:Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;

.field private mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

.field private mTabLayout:Lcom/oneplus/lib/widget/OPTabLayout;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mCurrentIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragmentTitles:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragments:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragmentTitles:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode1()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oneplus/settings/utils/OPUtils;->setLightNavigationBar(Landroid/view/Window;I)V

    const p1, 0x7f0d0228

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0a0751

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    const p1, 0x7f0a04f3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0a0701

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/OPTabLayout;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mTabLayout:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragmentTitles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-string v2, "directory_fragment"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    iput-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    if-nez v3, :cond_1

    new-instance v3, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-direct {v3}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;-><init>()V

    iput-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-virtual {v1, p1, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragments:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragmentTitles:Ljava/util/List;

    const v3, 0x7f12100d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const-string v2, "browse_fragment"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    iput-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    if-nez v3, :cond_2

    new-instance v3, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-direct {v3}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;-><init>()V

    iput-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-virtual {v1, p1, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragments:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragmentTitles:Ljava/util/List;

    const v2, 0x7f120c5f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    new-instance p1, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mPagerAdapter:Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mPagerAdapter:Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mPagerAdapter:Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragments:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->updateData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mTabLayout:Lcom/oneplus/lib/widget/OPTabLayout;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout;->removeAllTabs()V

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout;->newTab()Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    move-result-object v4

    invoke-static {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-virtual {p1, v4}, Lcom/oneplus/lib/widget/OPTabLayout;->addTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;

    invoke-direct {v2, p1}, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;-><init>(Lcom/oneplus/lib/widget/OPTabLayout;)V

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    new-instance v2, Lcom/oneplus/settings/quicklaunch/TabUtils$ViewPagerOnTabSelectedListener;

    invoke-direct {v2, v0}, Lcom/oneplus/settings/quicklaunch/TabUtils$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {p1, v2}, Lcom/oneplus/lib/widget/OPTabLayout;->setOnTabSelectedListener(Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;)V

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v1, v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->getTabAt(I)Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->select()V

    :cond_4
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mCurrentIndex:I

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ViewPager does not have a PagerAdapter set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mTabLayout:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout;->getTabAt(I)Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->select()V

    return-void
.end method
