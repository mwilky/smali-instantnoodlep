.class public Lcom/android/settings/LegalSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LegalSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/LegalSettings$1;

    invoke-direct {v0}, Lcom/android/settings/LegalSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/LegalSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static startLegalActivity(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "op_legal_notices_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "key_from_settings"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 6
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

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;

    const-string v1, "op_user_agreements"

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2}, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v1, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;

    const-string v2, "op_privacy_policy"

    const/4 v3, 0x3

    invoke-direct {v1, p1, v2, v3}, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v2, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;

    const-string v3, "op_permission_agreement"

    const/4 v4, 0x4

    invoke-direct {v2, p1, v3, v4}, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v3, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;

    const-string v4, "health_safety_information"

    const/16 v5, 0xc

    invoke-direct {v3, p1, v4, v5}, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "LegalSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xe1

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const/high16 p0, 0x7f160000

    return p0
.end method
