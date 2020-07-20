.class public Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;
.super Landroidx/preference/Preference;
.source "RamBoostLottieAnimPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAnimRes:Lcom/airbnb/lottie/LottieAnimationView;

.field private mContext:Landroid/content/Context;

.field private mImgPlay:Landroid/widget/ImageView;

.field private resid:I

.field private showPlayBtn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d021b

    iput v0, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->resid:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->showPlayBtn:Z

    new-instance v0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference$1;-><init>(Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;)V

    iput-object p1, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->mContext:Landroid/content/Context;

    iget p1, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->resid:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d021b

    iput p2, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->resid:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->showPlayBtn:Z

    new-instance p2, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference$1;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference$1;-><init>(Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;)V

    iput-object p1, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->mContext:Landroid/content/Context;

    iget p1, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->resid:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, 0x7f0d021b

    iput p2, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->resid:I

    iput-boolean v0, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->showPlayBtn:Z

    new-instance p2, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference$1;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference$1;-><init>(Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;)V

    iput-object p1, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->mContext:Landroid/content/Context;

    iget p1, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->resid:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->mAnimRes:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->stopAnim()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->mImgPlay:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->mAnimRes:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    :goto_0
    return-void
.end method


# virtual methods
.method public isShowPlayBtn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->showPlayBtn:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0324

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->mImgPlay:Landroid/widget/ImageView;

    const v0, 0x7f0a0095

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->mAnimRes:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p1, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->mImgPlay:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->mImgPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->isShowPlayBtn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->mAnimRes:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->mAnimRes:Lcom/airbnb/lottie/LottieAnimationView;

    const-string p1, "op_ramboost_anim_dark.json"

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->mAnimRes:Lcom/airbnb/lottie/LottieAnimationView;

    const-string p1, "op_ramboost_anim_white.json"

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public stopAnim()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->mAnimRes:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->mImgPlay:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
