.class public Lcom/oneplus/lib/widget/NumericTextView;
.super Landroid/widget/TextView;
.source "NumericTextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_RADIX:D


# instance fields
.field private mCount:I

.field private mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

.field private mMaxCount:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mPreviousValue:I

.field private mShowLeadingZeroes:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/lib/widget/NumericTextView;->LOG_RADIX:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMinValue:I

    const/16 p1, 0x63

    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mShowLeadingZeroes:Z

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    return-void
.end method

.method private static isKeyCodeNumeric(I)Z
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateDisplayedValue()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mShowLeadingZeroes:Z

    if-eqz v0, :cond_0

    const-string v0, "%0"

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    const-string v2, "d"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline19(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "%d"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final getOnDigitEnteredListener()Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    return-object p0
.end method

.method public final getRangeMaximum()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    return p0
.end method

.method public final getRangeMinimum()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMinValue:I

    return p0
.end method

.method public final getShowLeadingZeroes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mShowLeadingZeroes:Z

    return p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    return p0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const-string p2, ""

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mPreviousValue:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    if-nez p1, :cond_1

    iget p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mPreviousValue:I

    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    iget p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    iget p2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMinValue:I

    if-ge p1, p2, :cond_2

    iput p2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    :cond_2
    iget p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/NumericTextView;->setValue(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    if-eqz p1, :cond_3

    iget p2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    check-cast p1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;

    const/4 p3, 0x1

    invoke-virtual {p1, p0, p2, p3, p3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;->onValueChanged(Lcom/oneplus/lib/widget/NumericTextView;IZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p1}, Lcom/oneplus/lib/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p1}, Lcom/oneplus/lib/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/16 v0, 0x43

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    if-lez v0, :cond_1

    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    div-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/oneplus/lib/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    if-ge v0, v3, :cond_1

    add-int/lit8 v3, p1, -0x7

    iget v4, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v3

    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    if-gt v4, v3, :cond_1

    iput v4, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    if-lez v0, :cond_2

    const-string v0, "%0"

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    const-string v4, "d"

    invoke-static {v0, v3, v4}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline19(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMinValue:I

    if-lt v0, v3, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    iget v4, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    if-ge v3, v4, :cond_5

    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    mul-int/lit8 v3, v3, 0xa

    iget v4, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    if-le v3, v4, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v3, v1

    :goto_4
    iget-object v4, p0, Lcom/oneplus/lib/widget/NumericTextView;->mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    iget v5, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    check-cast v4, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;

    invoke-virtual {v4, p0, v5, v0, v3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;->onValueChanged(Lcom/oneplus/lib/widget/NumericTextView;IZZ)V

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    move v0, v2

    :goto_5
    if-nez v0, :cond_9

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_6

    :cond_8
    move v1, v2

    :cond_9
    :goto_6
    return v1
.end method

.method public final setOnDigitEnteredListener(Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    return-void
.end method

.method public final setRange(II)V
    .locals 6

    iget v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMinValue:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMinValue:I

    :cond_0
    iget p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    if-eq p1, p2, :cond_3

    iput p2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    int-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    sget-wide v0, Lcom/oneplus/lib/widget/NumericTextView;->LOG_RADIX:D

    div-double/2addr p1, v0

    double-to-int p1, p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    if-ge v1, v3, :cond_2

    const-string v3, "%0"

    invoke-static {v3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    const-string v5, "d"

    invoke-static {v3, v4, v5}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline19(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, p2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    if-le v3, v2, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumericTextView;->updateDisplayedValue()V

    :cond_3
    return-void
.end method

.method public final setShowLeadingZeroes(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mShowLeadingZeroes:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mShowLeadingZeroes:Z

    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumericTextView;->updateDisplayedValue()V

    :cond_0
    return-void
.end method

.method public final setValue(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumericTextView;->updateDisplayedValue()V

    :cond_0
    return-void
.end method
