.class public Lcom/android/settings/enterprise/CaCertsManagedProfilePreferenceController;
.super Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;
.source "CaCertsManagedProfilePreferenceController.java"


# static fields
.field static final CA_CERTS_MANAGED_PROFILE:Ljava/lang/String; = "ca_certs_managed_profile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getNumberOfCaCerts()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    check-cast p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getNumberOfOwnerInstalledCaCertsForManagedProfile()I

    move-result p0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "ca_certs_managed_profile"

    return-object p0
.end method
