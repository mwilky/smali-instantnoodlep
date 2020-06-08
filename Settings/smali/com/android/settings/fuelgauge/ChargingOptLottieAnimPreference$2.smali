.class Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference$2;
.super Ljava/lang/Object;
.source "ChargingOptLottieAnimPreference.java"

# interfaces
.implements Lcom/airbnb/lottie/OnCompositionLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
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

    iput-object p1, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference$2;->this$0:Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference$2;->this$0:Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->access$100(Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference$2;->this$0:Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;

    invoke-static {p0}, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->access$100(Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    const p1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method
