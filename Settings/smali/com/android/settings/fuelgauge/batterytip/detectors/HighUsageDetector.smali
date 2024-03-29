.class public Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;
.super Ljava/lang/Object;
.source "HighUsageDetector.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/batterytip/detectors/BatteryTipDetector;


# instance fields
.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mDataParser:Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;

.field mDischarging:Z

.field private mHighUsageAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/internal/os/BatteryStatsHelper;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    new-instance p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsagePeriodMs:J

    iget p2, p2, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsageBatteryDraining:I

    invoke-direct {p1, v0, v1, p2}, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;-><init>(JI)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mDataParser:Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;

    iput-boolean p4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mDischarging:Z

    return-void
.end method

.method static synthetic lambda$detect$0(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)I
    .locals 2

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    iget-wide p0, p0, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method


# virtual methods
.method public detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 15

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateLastFullChargeTime(Lcom/android/internal/os/BatteryStatsHelper;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v2, v2, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsageEnabled:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mDischarging:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->parseBatteryData()V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mDataParser:Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->isDeviceHeavilyUsed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v2, v2, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testHighUsageTip:Z

    if-eqz v2, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v13

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    sget-object v4, Lcom/android/settings/fuelgauge/batterytip/detectors/-$$Lambda$HighUsageDetector$28BD4HACLyHurD4PO4rsFVqsaMI;->INSTANCE:Lcom/android/settings/fuelgauge/batterytip/detectors/-$$Lambda$HighUsageDetector$28BD4HACLyHurD4PO4rsFVqsaMI;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    const-wide/16 v10, 0x0

    move-wide v8, v13

    move v12, v2

    invoke-virtual/range {v5 .. v12}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDDI)D

    move-result-wide v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v5, v7

    if-ltz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v5, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    new-instance v6, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-direct {v6}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setUid(I)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    iget-object v7, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->build()Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget v5, v5, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsageAppCount:I

    if-lt v4, v5, :cond_2

    :cond_4
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v2, v2, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testHighUsageTip:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    new-instance v3, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-direct {v3}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;-><init>()V

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setScreenOnTimeMs(J)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->build()Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v2, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;-><init>(JLjava/util/List;)V

    return-object v2
.end method

.method parseBatteryData()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mDataParser:Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/BatteryInfo;->parse(Landroid/os/BatteryStats;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V

    return-void
.end method
