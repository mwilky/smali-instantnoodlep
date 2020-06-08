.class Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;
.super Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerSpinnerDelegate.java"


# instance fields
.field private final mCalendarView:Landroid/widget/CalendarView;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private final mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    move-object/from16 v3, p1

    iput-object v3, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    iput-object v0, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    sget-object v3, Lcom/oneplus/commonctrl/R$styleable;->DatePicker:[I

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/4 v6, 0x7

    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/16 v7, 0x76c

    invoke-virtual {v3, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    const/4 v8, 0x2

    const/16 v9, 0x834

    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x14

    const v12, 0x7f0d01a1

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v3, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v0, v11, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    new-instance v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;-><init>(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V

    iget-object v11, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    const v12, 0x7f0a0565

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v11, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    const v12, 0x7f0a011f

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CalendarView;

    iput-object v11, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v11, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    new-instance v12, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$2;

    invoke-direct {v12, v1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$2;-><init>(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V

    invoke-virtual {v11, v12}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    iget-object v11, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    const v12, 0x7f0a01d6

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v11, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v11, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {}, Lcom/oneplus/lib/widget/NumberPicker;->getTwoDigitFormatter()Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/oneplus/lib/widget/NumberPicker;->setFormatter(Lcom/oneplus/lib/widget/NumberPicker$Formatter;)V

    iget-object v11, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const-wide/16 v12, 0x64

    invoke-virtual {v11, v12, v13}, Lcom/oneplus/lib/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v11, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v11, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v11, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const v14, 0x7f0a047f

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    iget-object v11, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    const v15, 0x7f0a040d

    invoke-virtual {v11, v15}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v11, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v11, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v11, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v3, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget v11, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    sub-int/2addr v11, v2

    invoke-virtual {v3, v11}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v2, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v3, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v2, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    move/from16 p3, v5

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/lib/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v2, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v2, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    iget-object v2, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    const v3, 0x7f0a07db

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v2, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v2, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2, v12, v13}, Lcom/oneplus/lib/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v2, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    if-nez p3, :cond_0

    if-nez v6, :cond_0

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz v6, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/CalendarView;->setVisibility(I)V

    :goto_1
    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    :try_start_0
    iget-object v2, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, v9}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v7, v2, v3}, Ljava/util/Calendar;->set(III)V

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v7, v2, v3}, Ljava/util/Calendar;->set(III)V

    :goto_3
    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v6, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v0, v3, :cond_5

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v6, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v0, v6, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, v4, v5}, Landroid/widget/CalendarView;->setMinDate(J)V

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v3, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v3, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    :goto_4
    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0x1f

    const/16 v4, 0xb

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    :try_start_1
    iget-object v5, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v5, v10}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move v0, v2

    :goto_5
    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v8, v4, v3}, Ljava/util/Calendar;->set(III)V

    goto :goto_6

    :cond_7
    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v8, v4, v3}, Ljava/util/Calendar;->set(III)V

    :cond_8
    :goto_6
    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v6, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v0, v5, :cond_9

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v6, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v0, v5, :cond_9

    goto :goto_7

    :cond_9
    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/CalendarView;->setMaxDate(J)V

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v3, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v3, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    :goto_7
    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v0, v3, v4}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setDate(III)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    iput-object v5, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v3, "yyyyMMMdd"

    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [C

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x64

    const/16 v11, 0x4d

    const/16 v12, 0x79

    if-ge v4, v9, :cond_17

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v13, 0x4c

    if-eq v9, v10, :cond_12

    if-eq v9, v13, :cond_12

    if-eq v9, v11, :cond_12

    if-ne v9, v12, :cond_b

    goto :goto_a

    :cond_b
    const/16 v10, 0x47

    if-ne v9, v10, :cond_c

    goto/16 :goto_c

    :cond_c
    const/16 v10, 0x61

    if-lt v9, v10, :cond_d

    const/16 v10, 0x7a

    if-le v9, v10, :cond_e

    :cond_d
    const/16 v10, 0x41

    if-lt v9, v10, :cond_f

    const/16 v10, 0x5a

    if-le v9, v10, :cond_e

    goto :goto_9

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad pattern character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\' in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :goto_9
    const/16 v10, 0x27

    if-ne v9, v10, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v4, v9, :cond_10

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v10, :cond_10

    move v4, v9

    goto :goto_c

    :cond_10
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v10, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_11

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad quoting in "

    invoke-static {v2, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline17(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    :goto_a
    if-ne v9, v10, :cond_13

    if-nez v6, :cond_13

    add-int/lit8 v6, v5, 0x1

    aput-char v10, v3, v5

    const/4 v5, 0x1

    move/from16 v16, v6

    move v6, v5

    :goto_b
    move/from16 v5, v16

    goto :goto_c

    :cond_13
    if-eq v9, v13, :cond_14

    if-ne v9, v11, :cond_15

    :cond_14
    if-nez v7, :cond_15

    add-int/lit8 v7, v5, 0x1

    aput-char v11, v3, v5

    const/4 v5, 0x1

    move/from16 v16, v7

    move v7, v5

    goto :goto_b

    :cond_15
    if-ne v9, v12, :cond_16

    if-nez v8, :cond_16

    add-int/lit8 v8, v5, 0x1

    aput-char v12, v3, v5

    const/4 v5, 0x1

    move/from16 v16, v8

    move v8, v5

    goto :goto_b

    :cond_16
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_17
    array-length v0, v3

    :goto_d
    if-ge v2, v0, :cond_1b

    aget-char v4, v3, v2

    if-eq v4, v11, :cond_1a

    if-eq v4, v10, :cond_19

    if-ne v4, v12, :cond_18

    iget-object v4, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {v1, v4, v0, v2}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setImeOptions(Lcom/oneplus/lib/widget/NumberPicker;II)V

    goto :goto_e

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget-object v4, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {v1, v4, v0, v2}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setImeOptions(Lcom/oneplus/lib/widget/NumberPicker;II)V

    goto :goto_e

    :cond_1a
    iget-object v4, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {v1, v4, v0, v2}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setImeOptions(Lcom/oneplus/lib/widget/NumberPicker;II)V

    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1b
    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :cond_1c
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setDate(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->notifyDateChanged()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p2
.end method

.method private notifyDateChanged()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/oneplus/lib/widget/DatePicker;III)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result p0

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/oneplus/lib/widget/DatePicker;III)V

    :cond_1
    return-void
.end method

.method private setDate(III)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setImeOptions(Lcom/oneplus/lib/widget/NumberPicker;II)V
    .locals 0

    add-int/lit8 p2, p2, -0x1

    if-ge p3, p2, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    :goto_0
    const p2, 0x7f0a047f

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method private updateCalendarView()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/4 p0, 0x0

    invoke-virtual {v0, v1, v2, p0, p0}, Landroid/widget/CalendarView;->setDate(JZZ)V

    return-void
.end method

.method private updateSpinners()V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getMinValue()I

    move-result v2

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/NumberPicker;->getMaxValue()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v0, v2, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setRawInputType(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    return-object p0
.end method

.method public getCalendarViewShown()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {p0}, Landroid/widget/CalendarView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDayOfMonth()I
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getFirstDayOfWeek()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {p0}, Landroid/widget/CalendarView;->getFirstDayOfWeek()I

    move-result p0

    return p0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {p0}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {p0}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method public getMonth()I
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getSpinnersShown()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p0

    return p0
.end method

.method public getYear()I
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public init(IIILcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setDate(III)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    iput-object p4, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    return p0
.end method

.method public isYearPickerIsShow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setDate(III)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 13

    new-instance v12, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {p0}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    return-object v12
.end method

.method public setCalendarViewShown(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/CalendarView;->setVisibility(I)V

    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object p1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    iget-object p1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    move p1, v1

    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    const-string v5, "%d"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    move p1, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCurrentYear()V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {p0, p1}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public updateDate(III)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setDate(III)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->notifyDateChanged()V

    return-void
.end method
