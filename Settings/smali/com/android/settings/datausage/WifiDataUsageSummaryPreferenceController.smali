.class public Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;
.super Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;
.source "WifiDataUsageSummaryPreferenceController.java"


# instance fields
.field final mNetworkId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;I)V

    if-nez p4, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mNetworkId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mNetworkId:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public updateState(Landroidx/preference/Preference;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/android/settings/datausage/DataUsageSummaryPreference;

    iget-object v0, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mNetworkId:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v6

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/android/settings/datausage/DataUsageInfoController;->updateDataLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;Landroid/net/NetworkPolicy;)V

    iget-object v0, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWifiMode(ZLjava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setChartEnabled(Z)V

    iget-wide v3, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    const/4 v5, 0x0

    move-object v0, p1

    move-wide v1, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageNumbers(JJZ)V

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setProgress(F)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroidx/transition/R$id;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v1, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {p0, v1, v2}, Landroidx/transition/R$id;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLabels(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method
