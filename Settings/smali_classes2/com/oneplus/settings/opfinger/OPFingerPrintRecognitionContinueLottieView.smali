.class public Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;
.super Landroid/widget/FrameLayout;
.source "OPFingerPrintRecognitionContinueLottieView.java"


# instance fields
.field private mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mContext:Landroid/content/Context;

.field private mFingerPrintView:Landroid/widget/FrameLayout;

.field private mLastExcessStep:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01ca

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/high16 p1, 0x40400000    # 3.0f

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    new-instance p1, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;

    invoke-direct {p1, p0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;Lcom/oneplus/settings/opfinger/OPLottieAnimationView;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method


# virtual methods
.method public dynamicSetLottieSplit(II)V
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getUnFullFillViewCount()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x0

    div-int/2addr v0, p2

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    move v0, v1

    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "zhuyang--excessStep:"

    const/4 v4, 0x0

    const-string v5, " splitStep:"

    const-string v6, " remainingSteps:"

    invoke-static {v3, v4, v5, v0, v6}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline25(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v0, 0x0

    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v3}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v3

    const/16 v5, 0xc

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v3, v2}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    div-int v2, v5, v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    :cond_2
    add-int/lit8 v2, v0, 0x0

    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v3}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v3, v2}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    div-int v6, v5, v2

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    :cond_3
    add-int/lit8 v3, v0, 0x0

    iget-object v6, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v6}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v6, v2}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    div-int v3, v5, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    :cond_4
    add-int/2addr v0, v4

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    div-int v0, v5, v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    :cond_5
    if-ne p2, v1, :cond_6

    iget p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    add-int/2addr p1, v1

    iput p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    invoke-virtual {p1, p2}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    div-int/2addr v5, p0

    int-to-float p0, v5

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    :cond_6
    return-void
.end method

.method public getUnFullFillViewCount()I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p0

    if-eqz p0, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    return v0
.end method

.method public initLottieAnimationView(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d01ca

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const v0, 0x7f110034

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const p1, 0x7f11002f

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    const p1, 0x7f110030

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    const p1, 0x7f110031

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    const p1, 0x7f110032

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const p1, 0x7f110033

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01b6

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

    const-string v0, "#414141"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->setEnrollAnimBgColor(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->initLottieAnimationView(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public playAnimationByCount(IIIZ)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->dynamicSetLottieSplit(II)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    :cond_4
    return-void
.end method

.method public playContinueAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method

.method public releaseFingerprintLottieAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    :cond_4
    return-void
.end method

.method public setBackGround(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

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
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f08066d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08066b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

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
