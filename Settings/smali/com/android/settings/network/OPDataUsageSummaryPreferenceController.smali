.class public Lcom/android/settings/network/OPDataUsageSummaryPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPDataUsageSummaryPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_DATA_USAGE_SUMMARY:Ljava/lang/String; = "data_usage_summary"

.field private static final PCO_DEFAULT_VALUE:Ljava/lang/String; = "-1"

.field private static final PCO_POST_PAID_CARD:Ljava/lang/String; = "2"

.field private static final PCO_PRE_PAID_CARD:Ljava/lang/String; = "3"

.field private static final PROPERTY_PCO_STATE:Ljava/lang/String; = "persist.radio.pco.state"


# instance fields
.field private mDdsPhoneId:I

.field private mPCOvalue:Ljava/lang/String;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "data_usage_summary"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "-1"

    iput-object p1, p0, Lcom/android/settings/network/OPDataUsageSummaryPreferenceController;->mPCOvalue:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/network/OPDataUsageSummaryPreferenceController;->mDdsPhoneId:I

    return-void
.end method

.method private disableBasedOnPCO()V
    .locals 3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/OPDataUsageSummaryPreferenceController;->mDdsPhoneId:I

    iget v0, p0, Lcom/android/settings/network/OPDataUsageSummaryPreferenceController;->mDdsPhoneId:I

    const-string v1, "persist.radio.pco.state"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/OPDataUsageSummaryPreferenceController;->mPCOvalue:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/network/OPDataUsageSummaryPreferenceController;->mPCOvalue:Ljava/lang/String;

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/OPDataUsageSummaryPreferenceController;->mPCOvalue:Ljava/lang/String;

    const-string v1, "3"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/OPDataUsageSummaryPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/network/OPDataUsageSummaryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/OPDataUsageSummaryPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/network/OPDataUsageSummaryPreferenceController;->disableBasedOnPCO()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "data_usage_summary"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data_usage_summary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oneplus.security.action.USAGE_DATA_SUMMARY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
