.class Lcom/android/settingslib/net/NetworkCycleChartDataLoader$1;
.super Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;
.source "NetworkCycleChartDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->builder(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder<",
        "Lcom/android/settingslib/net/NetworkCycleChartDataLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settingslib/net/NetworkCycleDataLoader;
    .locals 2

    new-instance v0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;Lcom/android/settingslib/net/NetworkCycleChartDataLoader$1;)V

    return-object v0
.end method
