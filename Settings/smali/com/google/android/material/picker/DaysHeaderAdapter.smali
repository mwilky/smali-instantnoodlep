.class public Lcom/google/android/material/picker/DaysHeaderAdapter;
.super Landroid/widget/BaseAdapter;
.source "DaysHeaderAdapter.java"


# static fields
.field private static final CALENDAR_DAY_STYLE:I


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field private final daysInWeek:I

.field private final firstDayOfWeek:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x4

    sput v0, Lcom/google/android/material/picker/DaysHeaderAdapter;->CALENDAR_DAY_STYLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->calendar:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->daysInWeek:I

    iget-object v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->firstDayOfWeek:I

    return-void
.end method

.method private positionToDayOfWeek(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->firstDayOfWeek:I

    add-int/2addr p1, v0

    iget p0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->daysInWeek:I

    if-le p1, p0, :cond_0

    sub-int/2addr p1, p0

    :cond_0
    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->daysInWeek:I

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->daysInWeek:I

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/DaysHeaderAdapter;->positionToDayOfWeek(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

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

    :cond_0
    iget-object p2, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->calendar:Ljava/util/Calendar;

    iget p3, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->firstDayOfWeek:I

    add-int/2addr p1, p3

    iget p3, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->daysInWeek:I

    if-le p1, p3, :cond_1

    sub-int/2addr p1, p3

    :cond_1
    const/4 p3, 0x7

    invoke-virtual {p2, p3, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->calendar:Ljava/util/Calendar;

    sget p1, Lcom/google/android/material/picker/DaysHeaderAdapter;->CALENDAR_DAY_STYLE:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p0, p3, p1, p2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method
