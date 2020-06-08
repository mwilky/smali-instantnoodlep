.class public Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;
.super Ljava/lang/Object;
.source "OPDeleteNonRequiredAppsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;,
        Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mDisallowedAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeaveAllSystemAppsEnabled:Z

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mProvisioningType:I

.field private final mRequiredAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/android/internal/view/IInputMethodManager;Ljava/lang/String;IZIZLcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p9, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mCallback:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mContext:Landroid/content/Context;

    iput p5, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mProvisioningType:I

    iput p7, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mUserId:I

    iput-boolean p8, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mLeaveAllSystemAppsEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mPm:Landroid/content/pm/PackageManager;

    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0300fd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mRequiredAppsList:Ljava/util/List;

    const p2, 0x7f030062

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mDisallowedAppsList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;)Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mCallback:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    return-object p0
.end method


# virtual methods
.method protected getRequiredApps()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mRequiredAppsList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public run()V
    .locals 8

    iget-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mLeaveAllSystemAppsEnabled:Z

    const-string v1, "DeleteNonRequiredAppsTask"

    if-eqz v0, :cond_0

    const-string v0, "Not deleting non-required apps."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mCallback:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    invoke-virtual {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;->onSuccess()V

    return-void

    :cond_0
    const-string v0, "Deleting non required apps."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mPm:Landroid/content/pm/PackageManager;

    iget v3, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mUserId:I

    const v4, 0x1c2200

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    const-string v2, "Oneplus-MATCH_SYSTEM_ONLY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->getRequiredApps()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mProvisioningType:I

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mDisallowedAppsList:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_0
    iget-object v5, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    iget v7, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mUserId:I

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mCallback:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    invoke-virtual {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;->onSuccess()V

    return-void

    :cond_8
    new-instance v0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v0, p0, v3}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;-><init>(Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;I)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting package ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] as user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mPm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x4

    iget v6, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mUserId:I

    invoke-virtual {v4, v3, v0, v5, v6}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    goto :goto_3

    :cond_9
    return-void
.end method
