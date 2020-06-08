.class public Lcom/oneplus/lib/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;,
        Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;,
        Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

.field private final mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f0404e9

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/oneplus/lib/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f0404e9

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/oneplus/lib/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->TimePicker:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-ne v3, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mMode:I

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/oneplus/lib/widget/TimePicker;->mMode:I

    :goto_0
    iget v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mMode:I

    if-eq v0, v2, :cond_1

    new-instance v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;-><init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;-><init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    :goto_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    new-instance p2, Lcom/oneplus/lib/widget/TimePicker$1;

    invoke-direct {p2, p0}, Lcom/oneplus/lib/widget/TimePicker$1;-><init>(Lcom/oneplus/lib/widget/TimePicker;)V

    check-cast p1, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;

    iput-object p2, p1, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public static getAmPmStrings()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " could not be autofilled into "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimePicker"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v0

    check-cast p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->setDate(J)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAmView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->getAmView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getAutofillType()I
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePicker;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    check-cast p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-interface {p0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-interface {p0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->getMinute()I

    move-result p0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getBaseline()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->getBaseline()I

    move-result p0

    return p0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePicker;->getHour()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePicker;->getMinute()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getHour()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->getHour()I

    move-result p0

    return p0
.end method

.method public getHourView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->getHourView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getMinute()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->getMinute()I

    move-result p0

    return p0
.end method

.method public getMinuteView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->getMinuteView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mMode:I

    return p0
.end method

.method public getPmView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->getPmView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public is24HourView()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->is24Hour()Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->isEnabled()Z

    move-result p0

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroid/view/View$BaseSavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {p0, p1}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {p0, v0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/TimePicker;->setHour(I)V

    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/TimePicker;->setMinute(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {p0, p1}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->setEnabled(Z)V

    return-void
.end method

.method public setHour(I)V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    const/4 v0, 0x0

    const/16 v1, 0x17

    invoke-static {p1, v0, v1}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->setHour(I)V

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->setIs24Hour(Z)V

    return-void
.end method

.method public setMinute(I)V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    const/4 v0, 0x0

    const/16 v1, 0x3b

    invoke-static {p1, v0, v1}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->setMinute(I)V

    return-void
.end method

.method public setOnTimeChangedListener(Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    check-cast p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;

    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public validateInput()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->validateInput()Z

    move-result p0

    return p0
.end method
