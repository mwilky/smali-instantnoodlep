.class public Lcom/android/settings/network/telephony/CarrierPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "CarrierPreferenceController.java"


# instance fields
.field mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Landroid/telephony/CarrierConfigManager;

    invoke-direct {p2, p1}, Landroid/telephony/CarrierConfigManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/CarrierPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    return-void
.end method

.method private getCarrierSettingsActivityIntent(I)Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/telephony/CarrierPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "carrier_settings_activity_component_name_string"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    move-object v1, v2

    :cond_2
    return-object v1
.end method


# virtual methods
.method public getAvailabilityStatus(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/CarrierPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "carrier_settings_enable_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isCdmaOptions(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isGsmOptions(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/CarrierPreferenceController;->getCarrierSettingsActivityIntent(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public init(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    return-void
.end method
