.class Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference$1;
.super Landroid/os/Handler;
.source "ChargingOptLottieAnimPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference$1;->this$0:Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference$1;->this$0:Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;

    invoke-static {p0}, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->access$000(Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;)V

    :goto_0
    return-void
.end method
