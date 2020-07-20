.class Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    new-instance p2, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {p2, p1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    return-void
.end method

.method private formatFallbackData()Ljava/lang/CharSequence;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v1, v2}, Landroidx/transition/R$id;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-wide v3, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v1, v3, v1

    if-gtz v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    iget-wide v0, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {p0, v0, v1}, Landroidx/transition/R$id;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    iget-wide v0, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v0, v1, v3, v4}, Lcom/android/settingslib/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public setListening(Z)V
    .locals 9

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroidx/transition/R$id;->hasSim(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120582

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "telephony_subscription_service"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->formatFallbackData()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {v4, v5}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getPrimaryPlan(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->formatFallbackData()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->unlimited(J)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroidx/transition/R$id;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/android/settingslib/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v4

    :goto_0
    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p1}, Lcom/android/settingslib/net/DataUsageController;->getWifiDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120595

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    iget-wide v4, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v3, v4, v5}, Landroidx/transition/R$id;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return-void
.end method
