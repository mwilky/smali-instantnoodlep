.class public Lcom/android/settingslib/applications/ServiceListing;
.super Ljava/lang/Object;
.source "ServiceListing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/applications/ServiceListing$Builder;,
        Lcom/android/settingslib/applications/ServiceListing$Callback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ServiceListing$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mEnabledServices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentAction:Ljava/lang/String;

.field private mListening:Z

.field private final mNoun:Ljava/lang/String;

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPermission:Ljava/lang/String;

.field private final mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetting:Ljava/lang/String;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mTag:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/settingslib/applications/ServiceListing$1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p7, Ljava/util/HashSet;

    invoke-direct {p7}, Ljava/util/HashSet;-><init>()V

    iput-object p7, p0, Lcom/android/settingslib/applications/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    iput-object p7, p0, Lcom/android/settingslib/applications/ServiceListing;->mServices:Ljava/util/List;

    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    iput-object p7, p0, Lcom/android/settingslib/applications/ServiceListing;->mCallbacks:Ljava/util/List;

    new-instance p7, Lcom/android/settingslib/applications/ServiceListing$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p7, p0, v0}, Lcom/android/settingslib/applications/ServiceListing$1;-><init>(Lcom/android/settingslib/applications/ServiceListing;Landroid/os/Handler;)V

    iput-object p7, p0, Lcom/android/settingslib/applications/ServiceListing;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance p7, Lcom/android/settingslib/applications/ServiceListing$2;

    invoke-direct {p7, p0}, Lcom/android/settingslib/applications/ServiceListing$2;-><init>(Lcom/android/settingslib/applications/ServiceListing;)V

    iput-object p7, p0, Lcom/android/settingslib/applications/ServiceListing;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p7

    iput-object p7, p0, Lcom/android/settingslib/applications/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/settingslib/applications/ServiceListing;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/applications/ServiceListing;->mTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settingslib/applications/ServiceListing;->mSetting:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settingslib/applications/ServiceListing;->mIntentAction:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settingslib/applications/ServiceListing;->mPermission:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/settingslib/applications/ServiceListing;->mNoun:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/settingslib/applications/ServiceListing$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/applications/ServiceListing;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isEnabled(Landroid/content/ComponentName;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/applications/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public reload()V
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settingslib/applications/ServiceListing;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/settingslib/applications/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/applications/ServiceListing;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settingslib/applications/ServiceListing;->mIntentAction:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x84

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, p0, Lcom/android/settingslib/applications/ServiceListing;->mPermission:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settingslib/applications/ServiceListing;->mTag:Ljava/lang/String;

    const-string v3, "Skipping "

    invoke-static {v3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/applications/ServiceListing;->mNoun:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": it does not require the permission "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/applications/ServiceListing;->mPermission:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/settingslib/applications/ServiceListing;->mServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ServiceListing$Callback;

    iget-object v2, p0, Lcom/android/settingslib/applications/ServiceListing;->mServices:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/android/settingslib/applications/ServiceListing$Callback;->onServicesReloaded(Ljava/util/List;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public removeCallback(Lcom/android/settingslib/applications/ServiceListing$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/applications/ServiceListing;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEnabled(Landroid/content/ComponentName;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settingslib/applications/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/applications/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/applications/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_1
    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/applications/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settingslib/applications/ServiceListing;->mSetting:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_3
    const-string p2, ""

    :goto_3
    invoke-static {p1, p0, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/settingslib/applications/ServiceListing;->mListening:Z

    iget-boolean p1, p0, Lcom/android/settingslib/applications/ServiceListing;->mListening:Z

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/applications/ServiceListing;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/settingslib/applications/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mSetting:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/settingslib/applications/ServiceListing;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/applications/ServiceListing;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/android/settingslib/applications/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settingslib/applications/ServiceListing;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
