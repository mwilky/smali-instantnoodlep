.class public Lcom/android/settings/enterprise/EnterprisePrivacySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "EnterprisePrivacySettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/enterprise/EnterprisePrivacySettings$1;

    invoke-direct {v0}, Lcom/android/settings/enterprise/EnterprisePrivacySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->buildPreferenceControllers(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/enterprise/NetworkLogsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/NetworkLogsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/enterprise/BugReportsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/BugReportsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/enterprise/SecurityLogsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/SecurityLogsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/enterprise/AdminGrantedLocationPermissionsPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/AdminGrantedLocationPermissionsPreferenceController;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/enterprise/AdminGrantedMicrophonePermissionPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/AdminGrantedMicrophonePermissionPreferenceController;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/enterprise/AdminGrantedCameraPermissionPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/AdminGrantedCameraPermissionPreferenceController;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/AlwaysOnVpnCurrentUserPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/AlwaysOnVpnCurrentUserPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/AlwaysOnVpnManagedProfilePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/AlwaysOnVpnManagedProfilePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/ImePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/ImePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/GlobalHttpProxyPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/GlobalHttpProxyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/CaCertsManagedProfilePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/CaCertsManagedProfilePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v2, "exposure_changes_category"

    invoke-direct {p1, p0, v2}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/FailedPasswordWipeCurrentUserPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/FailedPasswordWipeCurrentUserPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/FailedPasswordWipeManagedProfilePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/FailedPasswordWipeManagedProfilePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static isPageEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object p0

    check-cast p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->hasDeviceOwner()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->buildPreferenceControllers(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "EnterprisePrivacySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x274

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f16005a

    return p0
.end method
