.class public Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;
.super Landroid/widget/FrameLayout;
.source "OPFingerPrintRecognitionLottieView.java"


# instance fields
.field private mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mContext:Landroid/content/Context;

.field private mFingerPrintView:Landroid/widget/FrameLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01ca

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/high16 p1, 0x40800000    # 4.0f

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    new-instance p1, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView$1;

    invoke-direct {p1, p0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;Lcom/oneplus/settings/opfinger/OPLottieAnimationView;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method


# virtual methods
.method public initLottieAnimationView(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d01ca

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const v0, 0x7f11002e

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const p1, 0x7f11002b

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    const p1, 0x7f11002c

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    const p1, 0x7f11002d

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01b6

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

    const-string v0, "#414141"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->setEnrollAnimBgColor(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->initLottieAnimationView(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public playAnimationByCount(IIIZ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public releaseFingerprintLottieAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    :cond_2
    return-void
.end method

.method public setBackGround(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setEnrollAnimBgColor(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDynamicEnrollAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f08066d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08066b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    move-object p0, v0

    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_4
    return-void
.end method
