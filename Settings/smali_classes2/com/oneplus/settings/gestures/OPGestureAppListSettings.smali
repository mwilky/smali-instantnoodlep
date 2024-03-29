.class public Lcom/oneplus/settings/gestures/OPGestureAppListSettings;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPGestureAppListSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mDefaultGestureAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureAppListView:Landroid/widget/ListView;

.field private mGestureKey:Ljava/lang/String;

.field private mGesturePackageName:Ljava/lang/String;

.field private mGestureSummary:Ljava/lang/String;

.field private mGestureTitle:Ljava/lang/String;

.field private mGestureUid:I

.field private mGestureValueIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mLoadingContainer:Landroid/view/View;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    new-instance v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;-><init>(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Lcom/oneplus/settings/gestures/OPGestureAppAdapter;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)I
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    return-object p0
.end method

.method private refreshList()V
    .locals 11

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getShortCutIdByGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const v2, 0x7f120d2c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    const-string v2, "oem_acc_blackscreen_gesture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const-string v2, "OpenShortcut:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->hasShortCutsId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v9, v3

    goto :goto_2

    :cond_2
    move v9, v4

    :goto_2
    iget-object v5, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    iget-object v6, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    iget-object v7, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    iget v8, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureUid:I

    invoke-static {p0, v7, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getShortCutsNameByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->setSelectedItem(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0d01dc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "op_gesture_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string v2, "op_gesture_action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureTitle:Ljava/lang/String;

    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string v2, "oem_acc_blackscreen_gesture_o"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :cond_0
    const-string v2, "oem_acc_blackscreen_gesture_v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "oem_acc_blackscreen_gesture_s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    const-string v2, "oem_acc_blackscreen_gesture_m"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x9

    goto :goto_1

    :cond_3
    const-string v2, "oem_acc_blackscreen_gesture_w"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xa

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v3

    :goto_1
    iput v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureValueIndex:I

    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const v2, 0x7f120d2c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    const-string v4, "oem_acc_blackscreen_gesture"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    const/4 v6, 0x1

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v4, v1, v3

    const-string v7, "OpenApp:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    array-length v4, v1

    if-le v4, v6, :cond_8

    aget-object v5, v1, v6

    goto :goto_3

    :cond_7
    const-string v7, "OpenShortcut:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0xd

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    array-length v4, v1

    const/4 v7, 0x2

    if-le v4, v7, :cond_8

    aget-object v5, v1, v7

    :cond_8
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, -0x1

    goto :goto_4

    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_4
    iput v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureUid:I

    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureTitle:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    const v1, 0x7f0a04d0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v1, v0, v4}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const v1, 0x7f0a03ce

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mLoadingContainer:Landroid/view/View;

    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setmLoadingContainer(Landroid/view/View;)V

    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setNeedLoadWorkProfileApps(Z)V

    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    const-string v8, ""

    const-string v10, ""

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    new-instance v2, Lcom/oneplus/settings/better/OPAppModel;

    const v4, 0x7f120de9

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v18, ""

    const-string v20, ""

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v22}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    new-instance v4, Lcom/oneplus/settings/better/OPAppModel;

    const v5, 0x7f120deb

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const-string v13, ""

    const-string v15, ""

    move-object v12, v4

    invoke-direct/range {v12 .. v17}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    new-instance v5, Lcom/oneplus/settings/better/OPAppModel;

    const v7, 0x7f120ded

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    const-string v8, ""

    const-string v10, ""

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    new-instance v7, Lcom/oneplus/settings/better/OPAppModel;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v3

    const v8, 0x7f120dea

    invoke-virtual {v0, v8, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x0

    const-string v19, ""

    const-string v21, ""

    move-object/from16 v18, v7

    invoke-direct/range {v18 .. v23}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    new-instance v6, Lcom/oneplus/settings/better/OPAppModel;

    const v8, 0x7f1207d0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v13, ""

    const-string v15, ""

    move-object v12, v6

    invoke-direct/range {v12 .. v17}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v8, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->methodIsMigrated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    new-instance v1, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v4}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->setDefaultNum(I)V

    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v0, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureValueIndex:I

    invoke-static {p0, p1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->set1(Landroid/content/Context;I)I

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p3, :cond_9

    if-eq p3, p2, :cond_8

    const/4 p4, 0x2

    if-eq p3, p4, :cond_7

    const/4 p4, 0x3

    if-eq p3, p4, :cond_6

    const/4 p4, 0x4

    if-eq p3, p4, :cond_5

    const/4 p4, 0x5

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {p4}, Lcom/oneplus/settings/utils/OPUtils;->methodIsMigrated(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string p4, "OpenShelf"

    invoke-static {p2, p3, p4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object p4, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    invoke-virtual {p4, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p4

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_3

    move p4, p2

    goto :goto_2

    :cond_3
    :goto_1
    move p4, p1

    :goto_2
    if-eqz p4, :cond_4

    new-instance p1, Landroid/content/Intent;

    const-string p4, "oneplus.intent.action.ONEPLUS_GESTURE_SHORTCUT_LIST_ACTION"

    invoke-direct {p1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string p5, "op_gesture_key"

    invoke-virtual {p1, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p4

    const-string p5, "op_gesture_package"

    invoke-virtual {p1, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result p4

    const-string p5, "op_gesture_package_uid"

    invoke-virtual {p1, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object p3

    const-string p4, "op_gesture_package_app"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move p1, p2

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p4, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string p5, "OpenApp:"

    invoke-static {p5}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p4, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string p4, "OpenTorch"

    invoke-static {p2, p3, p4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string p4, "TakeVideo"

    invoke-static {p2, p3, p4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string p4, "FrontCamera"

    invoke-static {p2, p3, p4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string p4, "OpenCamera"

    invoke-static {p2, p3, p4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_9
    iget p2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureValueIndex:I

    invoke-static {p0, p2}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->set0(Landroid/content/Context;I)I

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string p4, ""

    invoke-static {p2, p3, p4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_3
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->refreshList()V

    if-nez p1, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_a
    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->refreshList()V

    return-void
.end method
