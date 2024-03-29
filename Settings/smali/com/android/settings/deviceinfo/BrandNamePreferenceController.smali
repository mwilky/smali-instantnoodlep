.class public Lcom/android/settings/deviceinfo/BrandNamePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BrandNamePreferenceController.java"


# static fields
.field public static final KEY_BRAND_NAME:Ljava/lang/String; = "brand_name"


# instance fields
.field private isNeedEnable:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "brand_name"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->isNeedEnable:Z

    iput-object p1, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getBrandName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1205f5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->isNeedEnable:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->isNeedEnable:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->isNeedEnable:Z

    const-string v0, ""

    :goto_0
    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "brand_name"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->isNeedEnable:Z

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method
