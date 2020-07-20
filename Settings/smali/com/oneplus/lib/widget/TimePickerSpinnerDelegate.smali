.class Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;
.super Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerSpinnerDelegate.java"


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDivider:Landroid/widget/TextView;

.field private mHourFormat:C

.field private final mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private final mTempCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    iput-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->TimePicker:[I

    invoke-virtual {p2, p3, v1, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 p3, 0xd

    const p4, 0x7f0d0265

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object p4, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p2, p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    const p2, 0x7f0a0304

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    new-instance p4, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$1;

    invoke-direct {p4, p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$1;-><init>(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {p2, p4}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const p4, 0x7f0a0480

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 p5, 0x5

    invoke-virtual {p2, p5}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const v1, 0x7f0a0213

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    const-string v1, "hm"

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz p2, :cond_0

    const-string p2, "Hm"

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v2, p2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x48

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/16 v2, 0x68

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    :cond_1
    if-ne v2, v3, :cond_2

    const-string p2, ":"

    goto :goto_1

    :cond_2
    const/16 v4, 0x6d

    add-int/2addr v2, v0

    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v3, :cond_3

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const v2, 0x7f0a040f

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v2, 0x3b

    invoke-virtual {p2, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const-wide/16 v2, 0x64

    invoke-virtual {p2, v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {}, Lcom/oneplus/lib/widget/NumberPicker;->getTwoDigitFormatter()Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setFormatter(Lcom/oneplus/lib/widget/NumberPicker$Formatter;)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    new-instance v2, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;-><init>(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {p2, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p2, p5}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-static {}, Lcom/oneplus/lib/widget/TimePicker;->getAmPmStrings()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const v2, 0x7f0a008c

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    instance-of v2, p2, Landroid/widget/Button;

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-eqz v2, :cond_5

    iput-object v3, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v3, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    move-object p4, p2

    check-cast p4, Landroid/widget/Button;

    iput-object p4, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    iget-object p4, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    new-instance v2, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$3;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$3;-><init>(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {p4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    iput-object v3, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2, p3}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    new-instance v3, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$4;

    invoke-direct {v3, p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$4;-><init>(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/EditText;

    iput-object p4, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    iget-object p4, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p4, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_2
    iget-object p4, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {p4, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v1, "a"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    const p4, 0x7f0a0739

    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p4

    if-eq p2, p4, :cond_6

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_6
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    iget-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p1, p5}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_3
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result p2

    if-ne p1, p2, :cond_8

    goto :goto_4

    :cond_8
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p2, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    :goto_4
    iget-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_9
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    if-eqz p1, :cond_a

    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_5
    iput-boolean p3, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    :cond_b
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_c

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :cond_c
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    return p0
.end method

.method static synthetic access$102(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    return-object p0
.end method

.method private getHourFormatData()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x48

    if-eq v3, v4, :cond_2

    const/16 v4, 0x68

    if-eq v3, v4, :cond_2

    const/16 v4, 0x4b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x6b

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iput-char v3, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    const/4 v4, 0x1

    add-int/2addr v2, v4

    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v3, v0, :cond_3

    iput-boolean v4, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    :cond_3
    return-void
.end method

.method private onTimeChanged()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result p0

    invoke-interface {v0, v1, v2, p0}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    :cond_1
    return-void
.end method

.method private setCurrentHour(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v0, :cond_3

    const/16 v0, 0xc

    if-lt p1, v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    if-le p1, v0, :cond_2

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    if-nez p1, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    :cond_4
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private updateHourControl()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-char v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v3, 0x6b

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_1
    iget-char v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v3, 0x4b

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/oneplus/lib/widget/NumberPicker;->getTwoDigitFormatter()Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/NumberPicker;->setFormatter(Lcom/oneplus/lib/widget/NumberPicker$Formatter;)V

    return-void
.end method


# virtual methods
.method public getAmView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    return-object p0
.end method

.method public getBaseline()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result p0

    return p0
.end method

.method public getHour()I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v0

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz p0, :cond_1

    rem-int/lit8 v0, v0, 0xc

    return v0

    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getHourView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    return-object p0
.end method

.method public getMinute()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result p0

    return p0
.end method

.method public getMinuteView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    return-object p0
.end method

.method public getPmView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    return-object p0
.end method

.method public is24Hour()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result p1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 7

    new-instance v6, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    return-object v6
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setHour(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    iget-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method public setMinute(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method public validateInput()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
