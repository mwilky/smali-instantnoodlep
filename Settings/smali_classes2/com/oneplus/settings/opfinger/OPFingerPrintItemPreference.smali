.class public Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;
.super Landroid/preference/Preference;
.source "OPFingerPrintItemPreference.java"


# instance fields
.field private mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private mBackGroundView:Landroid/view/View;

.field private mHighlightBackgroundColor:Z

.field private mLayoutResId:I

.field private mOPFingerPrintSummary:Ljava/lang/String;

.field private mOPFingerPrintTitle:Ljava/lang/String;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d01bf

    iput p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mLayoutResId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mHighlightBackgroundColor:Z

    iget p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0d01bf

    iput p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mLayoutResId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mHighlightBackgroundColor:Z

    iget p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mHighlightBackgroundColor:Z

    return p1
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a051d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mBackGroundView:Landroid/view/View;

    const v0, 0x7f0a0520

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a051f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mSummaryView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mOPFingerPrintTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mSummaryView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mOPFingerPrintSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mSummaryView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    iget-boolean p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mHighlightBackgroundColor:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mBackGroundView:Landroid/view/View;

    const-string v0, "#239ff1"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mBackGroundView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0}, Landroid/view/animation/AlphaAnimation;->start()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mBackGroundView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
