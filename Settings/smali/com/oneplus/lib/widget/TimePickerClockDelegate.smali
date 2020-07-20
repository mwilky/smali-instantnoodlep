.class Lcom/oneplus/lib/widget/TimePickerClockDelegate;
.super Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;,
        Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;
    }
.end annotation


# static fields
.field private static final ATTRS_TEXT_COLOR:[I


# instance fields
.field private mAllowAutoAdvance:Z

.field private final mAmLabel:Landroid/widget/RadioButton;

.field private final mAmPmLayout:Landroid/view/View;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mCommitHour:Ljava/lang/Runnable;

.field private final mCommitMinute:Ljava/lang/Runnable;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private final mDigitEnteredListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

.field private mDuration:I

.field private final mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mHeaderOffset:I

.field private mHeaderPositionY:I

.field private mHourFormatShowLeadingZero:Z

.field private mHourFormatStartsAtZero:Z

.field private final mHourView:Lcom/oneplus/lib/widget/NumericTextView;

.field private mInputBlockPositionY:I

.field private mIs24Hour:Z

.field private mIsAmPmAtStart:Z

.field private mIsEnabled:Z

.field private mIsToggleTimeMode:Z

.field private mLastAnnouncedIsHour:Z

.field private mLastAnnouncedText:Ljava/lang/CharSequence;

.field private final mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

.field private final mOnValueSelectedListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

.field private final mOnValueTypedListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

.field private final mPmLabel:Landroid/widget/RadioButton;

.field private mRadialPickerModeEnabled:Z

.field private final mRadialTimePickerHeader:Landroid/widget/LinearLayout;

.field private final mRadialTimePickerModeButton:Landroid/widget/ImageButton;

.field private final mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

.field private mRadialTimeViewAlpha:F

.field private mRadialTimeViewScale:F

.field private final mSelectHours:Ljava/lang/String;

.field private final mSelectMinutes:Ljava/lang/String;

.field private final mSeparatorView:Landroid/widget/TextView;

.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTextInputPickerHeader:Landroid/view/View;

.field private final mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010098

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    new-array v0, v0, [I

    const v1, 0x1010033

    aput v1, v0, v2

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsEnabled:Z

    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$5;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$5;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnValueTypedListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$7;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$7;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$8;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$8;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$10;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$10;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->TimePicker:[I

    invoke-virtual {v1, p3, v2, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121469

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    const v5, 0x7f12146e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    const/16 v3, 0xc

    const v6, 0x7f0d0266

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v2, v6, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    const v6, 0x7f0a073a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v6, 0x7f0a0305

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/NumericTextView;

    iput-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v7, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v7, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v7, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    new-instance v7, Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;

    invoke-direct {v7, p2, v4}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const v4, 0x7f0a0647

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    const v6, 0x7f0a0648

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v6, 0x7f0a0410

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/NumericTextView;

    iput-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v7, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v7, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v7, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    new-instance v7, Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;

    invoke-direct {v7, p2, v5}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    const/16 v6, 0x3b

    invoke-virtual {v5, v2, v6}, Lcom/oneplus/lib/widget/NumericTextView;->setRange(II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->setActivated(Z)V

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const v4, 0x7f0a0090

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    new-instance v5, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;

    invoke-direct {v5, v8}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/oneplus/lib/widget/TimePicker;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const v6, 0x7f0a008d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    aget-object v6, v4, v2

    invoke-static {v6}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v5, v2, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const v6, 0x7f0a0572

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v4, v2, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMinimumWidth(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    invoke-virtual {v5, v8, v6, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    const v6, 0x7f0a033e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v6, v5}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v6, v5}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0b0049

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewScale:F

    iput p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewAlpha:F

    const p2, 0x7f0a05b9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/lib/widget/RadialTimePickerView;

    iput-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p2, p3, p4, p5}, Lcom/oneplus/lib/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    iget-object p3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setOnValueSelectedListener(Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;)V

    const p2, 0x7f0a0341

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/lib/widget/TextInputTimePickerView;

    iput-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    iget-object p3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnValueTypedListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setListener(Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;)V

    const p2, 0x7f0a074c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;

    invoke-direct {p2, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHourFormat()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-boolean p3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    iput p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    iput p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    iput-boolean p3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateUI(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 7

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsToggleTimeMode:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderPositionY:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0305

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    aget v3, v0, v1

    iput v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderPositionY:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a033f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderOffset:I

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderOffset:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderOffset:I

    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mInputBlockPositionY:I

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mInputBlockPositionY:I

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderPositionY:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderOffset:I

    add-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$2;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$2;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    const v1, 0x7f08046f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iput-boolean v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->showLabels(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    const v2, 0x7f08047a

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    :goto_0
    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/widget/TimePickerClockDelegate;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/widget/TimePickerClockDelegate;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oneplus/lib/widget/TimePickerClockDelegate;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setMinuteInternal(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setAmOrPm(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result p0

    invoke-interface {p1, v0, v1, p0}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    :cond_0
    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/NumericTextView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/NumericTextView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/TextInputTimePickerView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/lib/widget/TimePickerClockDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsToggleTimeMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/RadialTimePickerView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    return p0
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/TimePickerClockDelegate;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setHourInternal(IIZ)V

    return-void
.end method

.method private getLocalizedHour(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-nez v0, :cond_0

    rem-int/lit8 p1, p1, 0xc

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x18

    goto :goto_0

    :cond_1
    const/16 p0, 0xc

    :goto_0
    move p1, p0

    :cond_2
    return p1
.end method

.method static final obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private onTimeChanged()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result p0

    invoke-interface {v0, v1, v2, p0}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    :cond_1
    return-void
.end method

.method private setCurrentItemShowing(IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentItemShowing(IZ)V

    if-nez p1, :cond_0

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    iget-object p3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    iget-object p3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    if-ne p1, v0, :cond_3

    move p3, v0

    :cond_3
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setActivated(Z)V

    const p2, 0x7f13018b

    const p3, 0x7f13018a

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isAtLeastM()Z

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isAtLeastM()Z

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isAtLeastM()Z

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isAtLeastM()Z

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_2
    return-void
.end method

.method private setHourInternal(IIZ)V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentHour(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    const/16 v1, 0xc

    if-ge p1, v1, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {v0, p3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setAmOrPm(I)Z

    :cond_2
    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    :cond_3
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->onTimeChanged()V

    return-void
.end method

.method private setMinuteInternal(II)V
    .locals 3

    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/NumericTextView;->setValue(I)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentMinute(I)V

    :cond_1
    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    :cond_2
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->onTimeChanged()V

    return-void
.end method

.method private tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    :cond_1
    return-void
.end method

.method private updateAmPmLabelStates(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setActivated(Z)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setActivated(Z)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method private updateHeaderAmPm()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    const/4 v2, 0x0

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setAmPmAtStart(Z)V

    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    :goto_2
    return-void
.end method

.method private updateHeaderHour(IZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumericTextView;->setValue(I)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method private updateHourFormat()V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

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

    move v3, v2

    :goto_1
    const/16 v4, 0x48

    const/16 v5, 0x4b

    const/4 v6, 0x1

    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v4, :cond_2

    const/16 v8, 0x68

    if-eq v7, v8, :cond_2

    if-eq v7, v5, :cond_2

    const/16 v8, 0x6b

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/2addr v3, v6

    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v7, v0, :cond_3

    move v0, v6

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    move v7, v0

    :goto_3
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    if-eq v7, v5, :cond_6

    if-ne v7, v4, :cond_5

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    :goto_4
    move v0, v6

    :goto_5
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    xor-int/2addr v0, v6

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x17

    goto :goto_6

    :cond_7
    const/16 v1, 0xb

    :goto_6
    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v3, v0, v1}, Lcom/oneplus/lib/widget/NumericTextView;->setRange(II)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumericTextView;->setShowLeadingZeroes(Z)V

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigits()[C

    move-result-object p0

    move v1, v2

    :goto_7
    const/16 v3, 0xa

    if-ge v2, v3, :cond_8

    aget-char v3, p0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_8
    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setHourFormat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    return-void
.end method

.method private updateTextInputPicker()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    iget v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->updateTextInputValues(IIIZZ)V

    return-void
.end method

.method private updateUI(I)V
    .locals 9

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v2, :cond_0

    const-string v2, "Hm"

    goto :goto_0

    :cond_0
    const-string v2, "hm"

    :goto_0
    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    array-length v3, v2

    const/4 v4, -0x1

    if-lez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    :goto_1
    if-ltz v5, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v7, v1

    :goto_2
    if-ge v7, v3, :cond_2

    aget-char v8, v2, v7

    if-ne v6, v8, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_3
    const/4 v2, 0x1

    if-ne v5, v4, :cond_4

    const-string v0, ":"

    goto :goto_4

    :cond_4
    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v3, v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->updateSeparator(Ljava/lang/String;)V

    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v3, v0}, Lcom/oneplus/lib/widget/NumericTextView;->setValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    iget v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    iget v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-virtual {v0, v3, v4, v5}, Lcom/oneplus/lib/widget/RadialTimePickerView;->initialize(IIZ)V

    invoke-direct {p0, p1, v1, v2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
    .end array-data
.end method


# virtual methods
.method public getAmView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public getBaseline()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getHour()I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getAmOrPm()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    return v0

    :cond_1
    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getHourView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    return-object p0
.end method

.method public getMinute()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result p0

    return p0
.end method

.method public getMinuteView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    return-object p0
.end method

.method public getPmView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public is24Hour()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsEnabled:Z

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result v1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->is24HourMode()Z

    move-result v2

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getCurrentItemShowing()I

    move-result p1

    iput v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    iput v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateUI(I)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 7

    new-instance v6, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    return-object v6
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setHour(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setHourInternal(IIZ)V

    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setIs24Hour(Z)V

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHourFormat()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateUI(I)V

    :cond_0
    return-void
.end method

.method public setMinute(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setMinuteInternal(II)V

    return-void
.end method

.method public validateInput()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->validateInput()Z

    move-result p0

    return p0
.end method
