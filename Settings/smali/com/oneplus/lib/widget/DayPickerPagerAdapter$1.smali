.class Lcom/oneplus/lib/widget/DayPickerPagerAdapter$1;
.super Ljava/lang/Object;
.source "DayPickerPagerAdapter.java"

# interfaces
.implements Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/DayPickerPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/DayPickerPagerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$1;->this$0:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDayClick(Lcom/oneplus/lib/widget/SimpleMonthView;Ljava/util/Calendar;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$1;->this$0:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$1;->this$0:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-static {p1}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->access$000(Lcom/oneplus/lib/widget/DayPickerPagerAdapter;)Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$1;->this$0:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-static {p0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->access$000(Lcom/oneplus/lib/widget/DayPickerPagerAdapter;)Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/DayPickerView$1;

    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView$1;->this$0:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-static {p1}, Lcom/oneplus/lib/widget/DayPickerView;->access$000(Lcom/oneplus/lib/widget/DayPickerView;)Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerView$1;->this$0:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-static {p0}, Lcom/oneplus/lib/widget/DayPickerView;->access$000(Lcom/oneplus/lib/widget/DayPickerView;)Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;

    iget-object p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    iget-object p1, p1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    const/4 p1, 0x1

    invoke-static {p0, p1, p1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->access$000(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;ZZ)V

    :cond_0
    return-void
.end method
