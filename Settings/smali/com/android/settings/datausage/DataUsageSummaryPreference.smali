.class public Lcom/android/settings/datausage/DataUsageSummaryPreference;
.super Landroidx/preference/Preference;
.source "DataUsageSummaryPreference.java"


# static fields
.field private static final MILLIS_IN_A_DAY:J

.field static final SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;

.field private static final WARNING_AGE:J


# instance fields
.field private mCarrierName:Ljava/lang/CharSequence;

.field private mChartEnabled:Z

.field private mCycleEndTimeMs:J

.field private mDataplanSize:J

.field private mDataplanUse:J

.field private mEndLabel:Ljava/lang/CharSequence;

.field private mHasMobileData:Z

.field private mLaunchIntent:Landroid/content/Intent;

.field private mLimitInfoText:Ljava/lang/CharSequence;

.field private mNumPlans:I

.field private mProgress:F

.field private mSingleWifi:Z

.field private mSnapshotTimeMs:J

.field private mStartLabel:Ljava/lang/CharSequence;

.field private mUsagePeriod:Ljava/lang/String;

.field private mWifiMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->MILLIS_IN_A_DAY:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->WARNING_AGE:J

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    const p1, 0x7f0d0080

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static launchWifiDataUsage(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    const-string v3, "network_template"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "network_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class v0, Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v0, 0x7f121903

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private setCarrierInfoTextStyle(Landroid/widget/TextView;ILandroid/graphics/Typeface;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private updateCycleTimeText(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8

    const v0, 0x7f0a01be

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-wide v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1202cd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    sget-wide v1, Lcom/android/settings/datausage/DataUsageSummaryPreference;->MILLIS_IN_A_DAY:J

    div-long/2addr v4, v1

    long-to-int v1, v4

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1202cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f100010

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-virtual {p0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateDataUsageLabels(Landroidx/preference/PreferenceViewHolder;)V
    .locals 10

    const v0, 0x7f0a01c9

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    const/16 v4, 0xa

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070630

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v4, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120598

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v2, v4, v5

    iget-object v1, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a078f

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/MeasurableLinearLayout;

    iget-boolean v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mHasMobileData:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    if-ltz v3, :cond_1

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanSize:J

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-lez v3, :cond_1

    const v3, 0x7f0a01c5

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanSize:J

    iget-wide v8, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    sub-long/2addr v3, v8

    cmp-long v6, v3, v6

    if-ltz v6, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f12052d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3, v4}, Landroidx/transition/R$id;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v6, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x1010435

    invoke-static {p0, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f12052c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    neg-long v3, v3

    invoke-static {v7, v3, v4}, Landroidx/transition/R$id;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v6, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x1010543

    invoke-static {p0, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    invoke-virtual {v1, v0, p1}, Lcom/android/settings/datausage/MeasurableLinearLayout;->setChildren(Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v1, v0, p0}, Lcom/android/settings/datausage/MeasurableLinearLayout;->setChildren(Landroid/view/View;Landroid/view/View;)V

    :goto_1
    return-void
.end method


# virtual methods
.method getHistoricalUsageLevel()J
    .locals 2

    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/net/DataUsageController;->getHistoricalUsageLevel(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic lambda$onBindViewHolder$0$DataUsageSummaryPreference(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->launchWifiDataUsage(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$DataUsageSummaryPreference(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v2, 0x7f0a01fa

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iget-boolean v3, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    const v4, 0x7f0a0377

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget v3, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x1020015

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateDataUsageLabels(Landroidx/preference/PreferenceViewHolder;)V

    const v2, 0x7f0a0791

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a012a

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0389

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v7, 0x7f0a01c1

    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-boolean v8, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWifiMode:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSingleWifi:Z

    if-eqz v8, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateCycleTimeText(Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    :cond_3
    iget-boolean v8, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWifiMode:Z

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_5

    const v8, 0x7f120596

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0a01be

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsagePeriod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getHistoricalUsageLevel()J

    move-result-wide v1

    cmp-long v1, v1, v9

    if-lez v1, :cond_4

    new-instance v1, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreference$zBjNn20lFyV2SqYMtfKeIRkAo7w;

    invoke-direct {v1, v0}, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreference$zBjNn20lFyV2SqYMtfKeIRkAo7w;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreference;)V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    const v0, 0x7f12091a

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_9

    :cond_5
    iget v8, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    const/4 v11, 0x1

    if-le v8, v11, :cond_6

    move v8, v5

    goto :goto_2

    :cond_6
    move v8, v6

    :goto_2
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateCycleTimeText(Landroidx/preference/PreferenceViewHolder;)V

    iget v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    if-lez v1, :cond_e

    iget-wide v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSnapshotTimeMs:J

    cmp-long v1, v1, v9

    if-ltz v1, :cond_e

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v12, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSnapshotTimeMs:J

    sub-long/2addr v1, v12

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x1

    invoke-virtual {v8, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    cmp-long v8, v1, v14

    if-ltz v8, :cond_7

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    div-long/2addr v1, v14

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    goto :goto_3

    :cond_7
    sget-object v8, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    cmp-long v8, v1, v14

    if-ltz v8, :cond_8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    div-long/2addr v1, v14

    sget-object v8, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    goto :goto_3

    :cond_8
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    cmp-long v8, v1, v14

    if-ltz v8, :cond_9

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    div-long/2addr v1, v14

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    :goto_3
    mul-long/2addr v1, v12

    goto :goto_4

    :cond_9
    move-wide v1, v9

    :goto_4
    const/4 v8, 0x0

    cmp-long v9, v1, v9

    if-nez v9, :cond_b

    iget-object v9, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    if-eqz v9, :cond_a

    const v9, 0x7f120412

    goto :goto_6

    :cond_a
    const v9, 0x7f120b64

    goto :goto_6

    :cond_b
    iget-object v8, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    if-eqz v8, :cond_c

    const v8, 0x7f120413

    goto :goto_5

    :cond_c
    const v8, 0x7f120b65

    :goto_5
    move v9, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    long-to-double v12, v1

    invoke-static {v8, v12, v13, v5}, Lcom/android/settingslib/RestrictedLockUtils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/CharSequence;

    iget-object v12, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    aput-object v12, v10, v5

    aput-object v8, v10, v11

    invoke-static {v9, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-wide v8, Lcom/android/settings/datausage/DataUsageSummaryPreference;->WARNING_AGE:J

    cmp-long v1, v1, v8

    if-gtz v1, :cond_d

    const v1, 0x1010038

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setCarrierInfoTextStyle(Landroid/widget/TextView;ILandroid/graphics/Typeface;)V

    goto :goto_7

    :cond_d
    const v1, 0x1010543

    sget-object v2, Lcom/android/settings/datausage/DataUsageSummaryPreference;->SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setCarrierInfoTextStyle(Landroid/widget/TextView;ILandroid/graphics/Typeface;)V

    goto :goto_7

    :cond_e
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    iget-object v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_f

    new-instance v1, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreference$1NKWVGupHVFnsudApVgFBRMGUJg;

    invoke-direct {v1, v0}, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreference$1NKWVGupHVFnsudApVgFBRMGUJg;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreference;)V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8

    :cond_f
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_8
    iget-object v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v5, v6

    :cond_10
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    return-void
.end method

.method public setChartEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setLabels(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setLimitInfo(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setUsageInfo(JJLjava/lang/CharSequence;ILandroid/content/Intent;)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:J

    iput-wide p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSnapshotTimeMs:J

    iput-object p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    iput p6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    iput-object p7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method setUsageNumbers(JJZ)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    iput-wide p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanSize:J

    iput-boolean p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mHasMobileData:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method setWifiMode(ZLjava/lang/String;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWifiMode:Z

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsagePeriod:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSingleWifi:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
