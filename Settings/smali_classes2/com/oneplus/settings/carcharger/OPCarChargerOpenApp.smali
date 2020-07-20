.class public Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPCarChargerOpenApp.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private hasRecommendedCount:I

.field private mCarChargerAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mCarChargerOpenAppAdapter:Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

.field private mCarChargerOpenAppListView:Landroid/widget/ListView;

.field private mCarChargerRecommendedAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLoadingContainer:Landroid/view/View;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerRecommendedAppsList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerAppsList:Ljava/util/List;

    new-instance v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;-><init>(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppAdapter:Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerAppsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerRecommendedAppsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->hasRecommendedCount:I

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)I
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_charger_mode_auto_open_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerAppsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerAppsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method static synthetic access$600(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppListView:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0183

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const v0, 0x7f120c88

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    const p1, 0x7f0a04b1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppListView:Landroid/widget/ListView;

    iget-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p1, p0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v1, 0x50

    invoke-virtual {p1, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setAppType(I)V

    const p1, 0x7f0a03ce

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mLoadingContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setmLoadingContainer(Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setNeedLoadWorkProfileApps(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerRecommendedAppsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-instance p1, Lcom/oneplus/settings/better/OPAppModel;

    const v2, 0x7f120c85

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, ""

    const-string v5, ""

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerRecommendedAppsList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0300ec

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->hasRecommendedCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->hasRecommendedCount:I

    new-instance v3, Lcom/oneplus/settings/better/OPAppModel;

    aget-object v5, p1, v2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aget-object v6, p1, v2

    invoke-static {v4, v6}, Lcom/oneplus/settings/utils/OPUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v7, ""

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Lcom/oneplus/settings/utils/OPUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerRecommendedAppsList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p1, p0, v0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppAdapter:Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    iget-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppAdapter:Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppListView:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "op_care_charger_auto_open_app"

    invoke-static {p2, p4, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "charge_app"

    invoke-static {p2, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppAdapter:Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->setSelectedItem(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_care_charger_auto_open_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppAdapter:Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->setSelectedItem(Ljava/lang/String;)V

    return-void
.end method
