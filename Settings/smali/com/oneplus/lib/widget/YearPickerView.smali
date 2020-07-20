.class Lcom/oneplus/lib/widget/YearPickerView;
.super Landroid/widget/FrameLayout;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;
    }
.end annotation


# instance fields
.field private mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

.field private mPicker:Lcom/oneplus/lib/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x1010524

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/oneplus/lib/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d0272

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f07012f

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    const p1, 0x7f070130

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    const p1, 0x7f0a07d9

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object p1, p0, Lcom/oneplus/lib/widget/YearPickerView;->mPicker:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object p0, p0, Lcom/oneplus/lib/widget/YearPickerView;->mPicker:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setSelectNumberCount(I)V

    return-void
.end method


# virtual methods
.method public setCurrentYear()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/YearPickerView;->mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/widget/YearPickerView;->mPicker:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result p0

    check-cast v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    iget-object v1, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    iget-object v3, v3, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3, p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->getDaysInMonth(II)I

    move-result v3

    if-le v1, v3, :cond_0

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    iget-object v1, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    :cond_0
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    iget-object v1, v1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Ljava/util/Calendar;->set(II)V

    iget-object p0, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    invoke-static {p0, v2, v2}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->access$000(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;ZZ)V

    iget-object p0, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->access$100(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;I)V

    iget-object p0, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    invoke-static {p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->access$200(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public setOnYearSelectedListener(Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/YearPickerView;->mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

    return-void
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object v0, p0, Lcom/oneplus/lib/widget/YearPickerView;->mPicker:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/YearPickerView;->mPicker:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    return-void
.end method

.method public setYear(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/YearPickerView;->mPicker:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    return-void
.end method
