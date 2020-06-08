.class public final Lcom/android/settingslib/fuelgauge/Estimate;
.super Ljava/lang/Object;
.source "Estimate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/fuelgauge/Estimate$Companion;
    }
.end annotation


# instance fields
.field private final averageDischargeTime:J

.field private final estimateMillis:J

.field private final isBasedOnUsage:Z


# direct methods
.method public constructor <init>(JZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settingslib/fuelgauge/Estimate;->estimateMillis:J

    iput-boolean p3, p0, Lcom/android/settingslib/fuelgauge/Estimate;->isBasedOnUsage:Z

    iput-wide p4, p0, Lcom/android/settingslib/fuelgauge/Estimate;->averageDischargeTime:J

    return-void
.end method


# virtual methods
.method public final getAverageDischargeTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settingslib/fuelgauge/Estimate;->averageDischargeTime:J

    return-wide v0
.end method

.method public final getEstimateMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settingslib/fuelgauge/Estimate;->estimateMillis:J

    return-wide v0
.end method

.method public final isBasedOnUsage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settingslib/fuelgauge/Estimate;->isBasedOnUsage:Z

    return p0
.end method
