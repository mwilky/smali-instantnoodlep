.class public Lcom/android/settings/applications/AppPermissionsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppPermissionsPreferenceController.java"


# static fields
.field private static NUM_PACKAGE_TO_CHECK:I = 0x3

.field static NUM_PERMISSIONS_TO_SHOW:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AppPermissionPrefCtrl"


# instance fields
.field mNumPackageChecked:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPermissionGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionsCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/applications/AppPermissionsPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/applications/AppPermissionsPreferenceController$1;-><init>(Lcom/android/settings/applications/AppPermissionsPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPermissionsCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPermissionGroups:Ljava/util/Set;

    return-void
.end method

.method static synthetic lambda$queryPermissionSummary$0(Landroid/content/pm/PackageInfo;)Z
    .locals 0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method queryPermissionSummary()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/applications/-$$Lambda$AppPermissionsPreferenceController$V5FV8sM4sykbVAV6lAvbDY5J6b0;->INSTANCE:Lcom/android/settings/applications/-$$Lambda$AppPermissionsPreferenceController$V5FV8sM4sykbVAV6lAvbDY5J6b0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget v1, Lcom/android/settings/applications/AppPermissionsPreferenceController;->NUM_PACKAGE_TO_CHECK:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPermissionsCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-static {v2, v1, v3}, Lcom/android/settingslib/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mNumPackageChecked:I

    invoke-virtual {p0}, Lcom/android/settings/applications/AppPermissionsPreferenceController;->queryPermissionSummary()V

    return-void
.end method

.method updateSummary(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPermissionGroups:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget p1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mNumPackageChecked:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mNumPackageChecked:I

    iget p1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mNumPackageChecked:I

    sget v0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->NUM_PACKAGE_TO_CHECK:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "de"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPermissionGroups:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget p1, Lcom/android/settings/applications/AppPermissionsPreferenceController;->NUM_PERMISSIONS_TO_SHOW:I

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-void
.end method
