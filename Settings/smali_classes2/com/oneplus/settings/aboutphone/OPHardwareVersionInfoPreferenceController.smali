.class public Lcom/oneplus/settings/aboutphone/OPHardwareVersionInfoPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPHardwareVersionInfoPreferenceController.java"


# static fields
.field private static final HARD_VERSION:[[Ljava/lang/String;

.field private static final KEY_HARDWARE_VERSION_INFO:Ljava/lang/String; = "hardware_version_info"

.field private static final PRODUCT:Ljava/lang/String;


# instance fields
.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/aboutphone/OPHardwareVersionInfoPreferenceController;->PRODUCT:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "15"

    const-string v2, "instantnoodle"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "instantnoodlep"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/settings/aboutphone/OPHardwareVersionInfoPreferenceController;->HARD_VERSION:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "hardware_version_info"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPHardwareVersionInfoPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPHardwareVersionInfoPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    sget-object v1, Lcom/oneplus/settings/aboutphone/OPHardwareVersionInfoPreferenceController;->HARD_VERSION:[[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/oneplus/settings/aboutphone/OPHardwareVersionInfoPreferenceController;->PRODUCT:Ljava/lang/String;

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    aget-object v1, v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPHardwareVersionInfoPreferenceController;->mPreference:Landroidx/preference/Preference;

    sget-object v2, Lcom/oneplus/settings/aboutphone/OPHardwareVersionInfoPreferenceController;->HARD_VERSION:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    sget-object v1, Lcom/oneplus/settings/aboutphone/OPHardwareVersionInfoPreferenceController;->HARD_VERSION:[[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/oneplus/settings/aboutphone/OPHardwareVersionInfoPreferenceController;->PRODUCT:Ljava/lang/String;

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    aget-object v1, v1, p0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "hardware_version_info"

    return-object p0
.end method
