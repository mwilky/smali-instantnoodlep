.class public Landroidx/leanback/widget/SpeechOrbView;
.super Landroidx/leanback/widget/SearchOrbView;
.source "SpeechOrbView.java"


# instance fields
.field private mCurrentLevel:I

.field private mListening:Z

.field private mListeningOrbColors:Landroidx/leanback/widget/SearchOrbView$Colors;

.field private mNotListeningOrbColors:Landroidx/leanback/widget/SearchOrbView$Colors;

.field private final mSoundLevelMaxZoom:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroidx/leanback/widget/SpeechOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/SpeechOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Landroidx/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    iput-boolean p2, p0, Landroidx/leanback/widget/SpeechOrbView;->mListening:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p3, 0x1

    const v0, 0x7f09000e

    invoke-virtual {p1, v0, p3, p3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p3

    iput p3, p0, Landroidx/leanback/widget/SpeechOrbView;->mSoundLevelMaxZoom:F

    new-instance p3, Landroidx/leanback/widget/SearchOrbView$Colors;

    const v0, 0x7f060248

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f06024a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v2, 0x7f060249

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {p3, v0, v1, v2}, Landroidx/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    iput-object p3, p0, Landroidx/leanback/widget/SpeechOrbView;->mNotListeningOrbColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    new-instance p3, Landroidx/leanback/widget/SearchOrbView$Colors;

    const v0, 0x7f06024b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {p3, v1, p1, p2}, Landroidx/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    iput-object p3, p0, Landroidx/leanback/widget/SpeechOrbView;->mListeningOrbColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p0}, Landroidx/leanback/widget/SpeechOrbView;->showNotListening()V

    return-void
.end method


# virtual methods
.method getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d00fb

    return p0
.end method

.method public setListeningOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/SpeechOrbView;->mListeningOrbColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    return-void
.end method

.method public setNotListeningOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/SpeechOrbView;->mNotListeningOrbColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    return-void
.end method

.method public setSoundLevel(I)V
    .locals 2

    iget-boolean v0, p0, Landroidx/leanback/widget/SpeechOrbView;->mListening:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    if-le p1, v0, :cond_1

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline1(IIII)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    goto :goto_0

    :cond_1
    int-to-float p1, v0

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Landroidx/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    iget v0, p0, Landroidx/leanback/widget/SpeechOrbView;->mSoundLevelMaxZoom:F

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchOrbView;->getFocusedZoom()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroidx/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->scaleOrbViewOnly(F)V

    return-void
.end method

.method public showListening()V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/SpeechOrbView;->mListeningOrbColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->animateOnFocus(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/SearchOrbView;->enableOrbColorAnimation(Z)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/SearchOrbView;->scaleOrbViewOnly(F)V

    iput v1, p0, Landroidx/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    iput-boolean v0, p0, Landroidx/leanback/widget/SpeechOrbView;->mListening:Z

    return-void
.end method

.method public showNotListening()V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/SpeechOrbView;->mNotListeningOrbColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->animateOnFocus(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->scaleOrbViewOnly(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/leanback/widget/SpeechOrbView;->mListening:Z

    return-void
.end method
