.class public Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;
.super Landroidx/preference/Preference;
.source "ChargingOptLottieAnimPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private animFile:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private resid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d0201

    iput p2, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->resid:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->animFile:Ljava/lang/String;

    new-instance p2, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference$1;

    invoke-direct {p2, p0}, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference$1;-><init>(Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->mContext:Landroid/content/Context;

    iget p1, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->resid:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, 0x7f0d0201

    iput p2, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->resid:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->animFile:Ljava/lang/String;

    new-instance p2, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference$1;

    invoke-direct {p2, p0}, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference$1;-><init>(Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->mContext:Landroid/content/Context;

    iget p1, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->resid:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->stopAnim()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0095

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p1, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->animFile:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->animFile:Ljava/lang/String;

    new-instance v1, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference$2;-><init>(Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;)V

    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromAssetFileName(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public stopAnim()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/ChargingOptLottieAnimPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :cond_0
    return-void
.end method
