.class public Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;
.super Ljava/lang/Object;
.source "PowerUsageBase.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PowerLoaderCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/internal/os/BatteryStatsHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private mRefreshType:I

.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;"
        }
    .end annotation

    const-string p1, "refresh_type"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->mRefreshType:I

    new-instance p1, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->access$000(Lcom/android/settings/fuelgauge/PowerUsageBase;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    iput-object p2, p1, Lcom/android/settings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget p2, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->mRefreshType:I

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->refreshUi(I)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->access$002(Lcom/android/settings/fuelgauge/PowerUsageBase;Z)Z

    :cond_0
    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
