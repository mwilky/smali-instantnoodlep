.class public Lcom/google/android/material/picker/MonthInYearAdapter;
.super Landroid/widget/BaseAdapter;
.source "MonthInYearAdapter.java"


# static fields
.field private static final MAXIMUM_WEEKS:I


# instance fields
.field private final monthInYear:Lcom/google/android/material/picker/MonthInYear;

.field private final textViewSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/picker/MonthInYearAdapter;->MAXIMUM_WEEKS:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/picker/MonthInYear;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    const p2, 0x7f0402ce

    invoke-static {p1, p2}, Lcom/google/android/material/R$style;->resolveAttribute(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07030e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->textViewSize:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    iget p0, p0, Lcom/google/android/material/picker/MonthInYear;->daysInWeek:I

    sget v0, Lcom/google/android/material/picker/MonthInYearAdapter;->MAXIMUM_WEEKS:I

    mul-int/2addr p0, v0

    return p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MonthInYearAdapter;->getItem(I)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public getItem(I)Ljava/util/Calendar;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    iget v1, p0, Lcom/google/android/material/picker/MonthInYear;->daysInMonth:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MonthInYear;->getDay(I)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    iget p0, p0, Lcom/google/android/material/picker/MonthInYear;->daysInWeek:I

    div-int/2addr p1, p0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    if-nez p2, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget p2, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->textViewSize:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setHeight(I)V

    :cond_0
    iget-object p2, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {p2}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result p2

    sub-int/2addr p1, p2

    if-ltz p1, :cond_2

    iget-object p0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    iget p0, p0, Lcom/google/android/material/picker/MonthInYear;->daysInMonth:I

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-object v0
.end method

.method public withinMonth(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    iget p0, p0, Lcom/google/android/material/picker/MonthInYear;->daysInMonth:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
