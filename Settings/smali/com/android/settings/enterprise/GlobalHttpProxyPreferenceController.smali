.class public Lcom/android/settings/enterprise/GlobalHttpProxyPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "GlobalHttpProxyPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/GlobalHttpProxyPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "global_http_proxy"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/enterprise/GlobalHttpProxyPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    check-cast p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->isGlobalHttpProxySet()Z

    move-result p0

    return p0
.end method
