.class public Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;
.super Lcom/oneplus/lib/widget/preference/OPPreference;
.source "OPSeekBarPreference.java"

# interfaces
.implements Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f13019f

    const v1, 0x7f040367

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, 0x7f13019f

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-static {p1, p3}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->resolveDefStyleAttr(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/oneplus/lib/widget/preference/OPPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->setMax(I)V

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->SeekBarPreference:[I

    invoke-static {p1, p3}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->resolveDefStyleAttr(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/oneplus/commonctrl/R$styleable;->SeekBarPreference_android_layout:I

    const p3, 0x7f0d02a8

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a063a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    const v0, 0x7f0a0522

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/widget/OPSeekBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/OPSeekBar;->setOnSeekBarChangeListener(Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;)V

    iget v0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mMax:I

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setMax(I)V

    iget v0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mProgress:I

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onProgressChanged(Lcom/oneplus/lib/widget/OPSeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-boolean p2, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mTrackingTouch:Z

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->syncProgress(Lcom/oneplus/lib/widget/OPSeekBar;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/oneplus/lib/widget/OPSeekBar;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Lcom/oneplus/lib/widget/OPSeekBar;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPProgressBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->syncProgress(Lcom/oneplus/lib/widget/OPSeekBar;)V

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mMax:I

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method syncProgress(Lcom/oneplus/lib/widget/OPSeekBar;)V
    .locals 2

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPProgressBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p1, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mMax:I

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_3

    iput p1, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->persistInt(I)Z

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mProgress:I

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgress(I)V

    :cond_3
    :goto_1
    return-void
.end method
