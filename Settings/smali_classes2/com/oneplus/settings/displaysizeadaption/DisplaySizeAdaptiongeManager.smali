.class public Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;
.super Ljava/lang/Object;
.source "DisplaySizeAdaptiongeManager.java"


# static fields
.field private static m17819FullScreenAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

.field private static mFullScreenAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mOriginalSizeAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mTmp17819FullScreenAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mTmpFullScreenAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mTmpOriginalSizeAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field multiAppInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->multiAppInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mContext:Landroid/content/Context;

    const-string p1, "activity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    :cond_0
    sget-object p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    return-object p0
.end method

.method private loadClassAppList(I)V
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0x3ee

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v1, v3}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v6

    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    if-ne v9, v4, :cond_1

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    if-ne v8, p1, :cond_1

    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    iget-object v3, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v3, Lcom/oneplus/settings/better/OPAppModel;

    const-string v8, ""

    const/4 v9, 0x0

    move-object v5, v3

    move-object v6, v4

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    if-eqz p1, :cond_b

    const/16 v5, 0x64

    if-ne p1, v5, :cond_6

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    if-eq p1, v2, :cond_a

    const/16 v5, 0x65

    if-ne p1, v5, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x2

    if-eq p1, v5, :cond_8

    const/16 v5, 0x66

    if-ne p1, v5, :cond_9

    :cond_8
    sget-object v5, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    sget-object v3, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    :goto_2
    sget-object v5, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_b
    :goto_3
    sget-object v5, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    return-void
.end method

.method private removeTask(Ljava/lang/String;)V
    .locals 4

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x2

    const/4 v3, -0x2

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_2

    :cond_2
    move-object v2, p0

    :goto_2
    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Failed to remove task="

    invoke-static {v3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OPNotchDisplayGuideActivity"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public getAppTypeValue(Ljava/lang/String;)I
    .locals 2

    sget-object p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/better/OPAppModel;

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/better/OPAppModel;

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x3

    :cond_2
    :goto_0
    return v1
.end method

.method public loadAppMap()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v4

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    new-instance v2, Lcom/oneplus/settings/better/OPAppModel;

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method public setClassApp(ILjava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->removeTask(Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x3e7

    invoke-virtual {v2, p2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->multiAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->multiAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v1, v2, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object p0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance p0, Lcom/oneplus/settings/better/OPAppModel;

    const-string v4, ""

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    if-eq p3, v0, :cond_6

    const/16 p1, 0x65

    if-ne p3, p1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_5

    const/16 p1, 0x64

    if-ne p3, p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x66

    if-eq p3, p1, :cond_3

    const/4 p1, 0x2

    if-ne p3, p1, :cond_4

    :cond_3
    sget-object p1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    sget-object p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    :goto_1
    sget-object p1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    :goto_2
    sget-object p1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplaySizeAdaptiongeManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method
