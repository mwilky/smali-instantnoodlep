.class public Lcom/android/settings/privacy/PermissionBarChartPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PermissionBarChartPreferenceController.java"

# interfaces
.implements Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# static fields
.field private static final KEY_PERMISSION_USAGE:Ljava/lang/String; = "usage_infos"

.field private static final TAG:Ljava/lang/String; = "BarChartPreferenceCtl"


# instance fields
.field private mBarChartPreference:Lcom/android/settingslib/widget/BarChartPreference;

.field mOldUsageInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/permission/RuntimePermissionUsageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mParent:Lcom/android/settings/privacy/PrivacyDashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mOldUsageInfos:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private areSamePermissionGroups(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/permission/RuntimePermissionUsageInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mOldUsageInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/RuntimePermissionUsageInfo;

    iget-object v3, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mOldUsageInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/RuntimePermissionUsageInfo;

    invoke-virtual {v1}, Landroid/permission/RuntimePermissionUsageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/permission/RuntimePermissionUsageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/permission/RuntimePermissionUsageInfo;->getAppAccessCount()I

    move-result v1

    invoke-virtual {v3}, Landroid/permission/RuntimePermissionUsageInfo;->getAppAccessCount()I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private createBarViews(Ljava/util/List;)[Lcom/android/settingslib/widget/BarViewInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/permission/RuntimePermissionUsageInfo;",
            ">;)[",
            "Lcom/android/settingslib/widget/BarViewInfo;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [Lcom/android/settingslib/widget/BarViewInfo;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/RuntimePermissionUsageInfo;

    invoke-virtual {v3}, Landroid/permission/RuntimePermissionUsageInfo;->getAppAccessCount()I

    move-result v6

    invoke-virtual {v3}, Landroid/permission/RuntimePermissionUsageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->getPermissionGroupLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    new-instance v10, Lcom/android/settingslib/widget/BarViewInfo;

    invoke-virtual {v3}, Landroid/permission/RuntimePermissionUsageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->getPermissionGroupIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f100039

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v1

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v10

    move-object v7, v9

    invoke-direct/range {v4 .. v9}, Lcom/android/settingslib/widget/BarViewInfo;-><init>(Landroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object v10, v0, v2

    aget-object v4, v0, v2

    new-instance v5, Lcom/android/settings/privacy/-$$Lambda$PermissionBarChartPreferenceController$ivr47iIuOOQVcxtrEoXQKHEfPh8;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/privacy/-$$Lambda$PermissionBarChartPreferenceController$ivr47iIuOOQVcxtrEoXQKHEfPh8;-><init>(Lcom/android/settings/privacy/PermissionBarChartPreferenceController;Landroid/permission/RuntimePermissionUsageInfo;)V

    invoke-virtual {v4, v5}, Lcom/android/settingslib/widget/BarViewInfo;->setClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getPermissionGroupIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/PermissionGroupInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x1010038

    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find group icon for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BarChartPreferenceCtl"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private getPermissionGroupLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p0}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find group label for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BarChartPreferenceCtl"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$onPermissionUsageResult$1(Landroid/permission/RuntimePermissionUsageInfo;Landroid/permission/RuntimePermissionUsageInfo;)I
    .locals 6

    invoke-virtual {p1}, Landroid/permission/RuntimePermissionUsageInfo;->getAppAccessCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/permission/RuntimePermissionUsageInfo;->getAppAccessCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/permission/RuntimePermissionUsageInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/permission/RuntimePermissionUsageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission-group.LOCATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    return v4

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    return v3

    :cond_2
    const-string v2, "android.permission-group.MICROPHONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v4

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    :cond_4
    const-string v2, "android.permission-group.CAMERA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v4

    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Landroid/permission/RuntimePermissionUsageInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/permission/RuntimePermissionUsageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private retrievePermissionUsageData()V
    .locals 7

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionControllerManager;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v0, v2

    int-to-long v3, v0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    const/4 v2, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/permission/PermissionControllerManager;->getPermissionUsages(ZJLjava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/BarChartPreference;

    iput-object p1, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mBarChartPreference:Lcom/android/settingslib/widget/BarChartPreference;

    new-instance p1, Lcom/android/settingslib/widget/BarChartInfo$Builder;

    invoke-direct {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;-><init>()V

    const v0, 0x7f1211dc

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->setTitle(I)Lcom/android/settingslib/widget/BarChartInfo$Builder;

    const v0, 0x7f1211da

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->setDetails(I)Lcom/android/settingslib/widget/BarChartInfo$Builder;

    const v0, 0x7f1211db    # 1.9416E38f

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->setEmptyText(I)Lcom/android/settingslib/widget/BarChartInfo$Builder;

    new-instance v0, Lcom/android/settings/privacy/-$$Lambda$PermissionBarChartPreferenceController$7uYW6TM4hHjFYr9O8yC9wq3m7i8;

    invoke-direct {v0, p0}, Lcom/android/settings/privacy/-$$Lambda$PermissionBarChartPreferenceController$7uYW6TM4hHjFYr9O8yC9wq3m7i8;-><init>(Lcom/android/settings/privacy/PermissionBarChartPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->setDetailsOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/BarChartInfo$Builder;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->build()Lcom/android/settingslib/widget/BarChartInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mBarChartPreference:Lcom/android/settingslib/widget/BarChartPreference;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/BarChartPreference;->initializeBarChart(Lcom/android/settingslib/widget/BarChartInfo;)V

    iget-object p1, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mOldUsageInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mBarChartPreference:Lcom/android/settingslib/widget/BarChartPreference;

    iget-object v0, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mOldUsageInfos:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->createBarViews(Ljava/util/List;)[Lcom/android/settingslib/widget/BarViewInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/BarChartPreference;->setBarViewInfos([Lcom/android/settingslib/widget/BarViewInfo;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public synthetic lambda$createBarViews$2$PermissionBarChartPreferenceController(Landroid/permission/RuntimePermissionUsageInfo;Landroid/view/View;)V
    .locals 2

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.REVIEW_PERMISSION_USAGE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/permission/RuntimePermissionUsageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.PERMISSION_GROUP_NAME"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-string p1, "android.intent.extra.DURATION_MILLIS"

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$displayPreference$0$PermissionBarChartPreferenceController(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.REVIEW_PERMISSION_USAGE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-string v2, "android.intent.extra.DURATION_MILLIS"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "usage_infos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mOldUsageInfos:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public onPermissionUsageResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/permission/RuntimePermissionUsageInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/privacy/-$$Lambda$PermissionBarChartPreferenceController$UHx6oMVPo53H_jFCZg1upr97mP4;->INSTANCE:Lcom/android/settings/privacy/-$$Lambda$PermissionBarChartPreferenceController$UHx6oMVPo53H_jFCZg1upr97mP4;

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-direct {p0, p1}, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->areSamePermissionGroups(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mBarChartPreference:Lcom/android/settingslib/widget/BarChartPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->createBarViews(Ljava/util/List;)[Lcom/android/settingslib/widget/BarViewInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/BarChartPreference;->setBarViewInfos([Lcom/android/settingslib/widget/BarViewInfo;)V

    iput-object p1, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mOldUsageInfos:Ljava/util/List;

    :cond_0
    iget-object p1, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mBarChartPreference:Lcom/android/settingslib/widget/BarChartPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/BarChartPreference;->updateLoadingState(Z)V

    iget-object p0, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mParent:Lcom/android/settings/privacy/PrivacyDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/privacy/PrivacyDashboardFragment;->setLoadingEnabled(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mOldUsageInfos:Ljava/util/List;

    const-string v0, "usage_infos"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mBarChartPreference:Lcom/android/settingslib/widget/BarChartPreference;

    iget-object v1, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mOldUsageInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/BarChartPreference;->updateLoadingState(Z)V

    iget-object v0, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mParent:Lcom/android/settings/privacy/PrivacyDashboardFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/privacy/PrivacyDashboardFragment;->setLoadingEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->retrievePermissionUsageData()V

    return-void
.end method

.method public setFragment(Lcom/android/settings/privacy/PrivacyDashboardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->mParent:Lcom/android/settings/privacy/PrivacyDashboardFragment;

    return-void
.end method
