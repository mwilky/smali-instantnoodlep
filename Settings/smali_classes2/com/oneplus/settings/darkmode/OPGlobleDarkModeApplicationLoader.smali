.class public Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;
.super Lcom/oneplus/settings/apploader/OPApplicationLoader;
.source "OPGlobleDarkModeApplicationLoader.java"


# static fields
.field protected static mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAppopsModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppopsModeMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAppListByType(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppList:Ljava/util/List;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSortBySelectedList:Ljava/util/List;

    return-object p0
.end method

.method public loadAllAppList()V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "OPGlobleDarkModeApplicationLoader"

    :try_start_0
    sget-object v2, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget v3, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const/16 v4, 0x64

    if-eq v3, v4, :cond_0

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-boolean v3, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mNeedLoadWorkProfileApps:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget-object v8, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v2, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, -0x1

    iget-object v8, v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppopsModeMap:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v7, v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppopsModeMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_4
    move v14, v7

    const/16 v15, 0x66

    const/16 v12, 0x65

    const/16 v11, 0x6a

    if-eq v14, v4, :cond_5

    const/16 v7, 0x67

    if-eq v14, v7, :cond_5

    if-eq v14, v11, :cond_5

    if-eq v14, v12, :cond_5

    if-eq v14, v15, :cond_5

    goto :goto_1

    :cond_5
    iget-object v7, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v6, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget v10, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v8, Lcom/oneplus/settings/better/OPDarkModeAppModel;

    const-string v16, ""

    const/16 v17, 0x0

    move-object v7, v8

    move-object v5, v8

    move-object v8, v6

    move v15, v10

    move-object/from16 v10, v16

    move v11, v13

    move/from16 v12, v17

    invoke-direct/range {v7 .. v12}, Lcom/oneplus/settings/better/OPDarkModeAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v5, v15}, Lcom/oneplus/settings/better/OPDarkModeAppModel;->setVersionCode(I)V

    iget-object v7, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/oneplus/settings/better/OPDarkModeAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    if-eq v14, v4, :cond_7

    const/16 v7, 0x65

    if-eq v14, v7, :cond_7

    const/16 v7, 0x66

    if-eq v14, v7, :cond_7

    const/16 v7, 0x6a

    if-ne v14, v7, :cond_6

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    move v7, v3

    :goto_3
    invoke-virtual {v5, v7}, Lcom/oneplus/settings/better/OPDarkModeAppModel;->setSelected(Z)V

    invoke-virtual {v5, v14}, Lcom/oneplus/settings/better/OPDarkModeAppModel;->setAppopsMode(I)V

    const/16 v7, 0x6b

    if-eq v14, v7, :cond_9

    const/16 v7, 0x68

    if-ne v14, v7, :cond_8

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/oneplus/settings/better/OPDarkModeAppModel;->setDisable(Z)V

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v7, 0x0

    invoke-virtual {v5, v3}, Lcom/oneplus/settings/better/OPDarkModeAppModel;->setDisable(Z)V

    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GlobalDarkMode--packageName:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " uid:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " currentMode:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mAppList.contains(appModel):"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    move v5, v7

    goto/16 :goto_1

    :cond_b
    sget-object v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppList:Ljava/util/List;

    sget-object v2, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    const-string v2, "some unknown error happened."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-void
.end method

.method public loadAppMode(I)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppopsModeMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->isThisUserAProfileOfCurrentUser(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v5

    if-ne v5, p1, :cond_3

    iget-object v5, p0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppopsModeMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppopsModeMap:Ljava/util/Map;

    return-object p0
.end method

.method public releaseAppList()V
    .locals 0

    sget-object p0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method
