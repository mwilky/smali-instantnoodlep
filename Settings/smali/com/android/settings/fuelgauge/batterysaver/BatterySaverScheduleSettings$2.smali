.class Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$2;
.super Landroid/database/ContentObserver;
.source "BatterySaverScheduleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$2;->this$0:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-static {}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->access$000()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$2;->this$0:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->access$100(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;)Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$2;->this$0:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->access$100(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;)Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->updateSeekBar()V

    :cond_0
    return-void
.end method
