.class public Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;
.super Ljava/lang/Object;
.source "OnepulsCalendarUtil.java"


# static fields
.field private static final LUNAR_INFOS:[I

.field private static final START_CALENDAR:Ljava/util/GregorianCalendar;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x96

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->LUNAR_INFOS:[I

    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x76c

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    sput-object v0, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->START_CALENDAR:Ljava/util/GregorianCalendar;

    return-void

    :array_0
    .array-data 4
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x56c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data
.end method

.method public static getLeapMonthDays(I)I
    .locals 2

    sget-object v0, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->LUNAR_INFOS:[I

    add-int/lit16 p0, p0, -0x76c

    aget v1, v0, p0

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_1

    aget p0, v0, p0

    const/high16 v0, 0xf0000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/16 p0, 0x1d

    return p0

    :cond_0
    const/16 p0, 0x1e

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static solarToLunar(Ljava/util/Calendar;)Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->START_CALENDAR:Ljava/util/GregorianCalendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    sget-object v3, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->START_CALENDAR:Ljava/util/GregorianCalendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    sget-object v4, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->START_CALENDAR:Ljava/util/GregorianCalendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    rsub-int/lit8 v5, v5, 0x0

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, v5

    move v5, p0

    move p0, v6

    :goto_0
    sub-int v7, v3, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge p0, v7, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v0, v2, v2}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x76c

    move v0, v6

    :goto_1
    const/16 v1, 0x801

    if-gt p0, v1, :cond_4

    const/16 v0, 0x15c

    const v1, 0x8000

    :goto_2
    const/16 v3, 0x8

    if-lt v1, v3, :cond_2

    sget-object v3, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->LUNAR_INFOS:[I

    add-int/lit16 v4, p0, -0x76c

    aget v3, v3, v4

    const v4, 0xfff0

    and-int/2addr v3, v4

    and-int/2addr v3, v1

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    shr-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getLeapMonthDays(I)I

    move-result v1

    add-int/2addr v0, v1

    sub-int v1, v5, v0

    if-ge v1, v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 p0, p0, 0x1

    move v5, v1

    goto :goto_1

    :cond_4
    :goto_3
    sget-object v1, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->LUNAR_INFOS:[I

    add-int/lit16 v3, p0, -0x76c

    aget v1, v1, v3

    and-int/lit8 v1, v1, 0xf

    if-lez v1, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    move v4, v6

    :goto_4
    move v8, v0

    move v0, v2

    move v7, v6

    :goto_5
    const/16 v9, 0xc

    if-gt v0, v9, :cond_a

    add-int/lit8 v8, v1, 0x1

    if-ne v0, v8, :cond_6

    if-eqz v4, :cond_6

    invoke-static {p0}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getLeapMonthDays(I)I

    move-result v4

    add-int/lit8 v0, v0, -0x1

    move v7, v2

    move v8, v4

    move v4, v6

    goto :goto_6

    :cond_6
    if-gt v0, v9, :cond_9

    if-ltz v0, :cond_9

    rsub-int/lit8 v8, v0, 0x10

    shl-int v8, v2, v8

    sget-object v9, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->LUNAR_INFOS:[I

    aget v9, v9, v3

    const v10, 0xffff

    and-int/2addr v9, v10

    and-int/2addr v8, v9

    if-nez v8, :cond_7

    const/16 v8, 0x1d

    goto :goto_6

    :cond_7
    const/16 v8, 0x1e

    :goto_6
    sub-int/2addr v5, v8

    if-gtz v5, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "month over erro:"

    invoke-static {v1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline12(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_7
    add-int/2addr v5, v8

    new-instance v3, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;

    if-ne v0, v1, :cond_b

    goto :goto_8

    :cond_b
    move v2, v6

    :goto_8
    and-int v1, v7, v2

    invoke-direct {v3, p0, v0, v5, v1}, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;-><init>(IIIZ)V

    return-object v3

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "start after end erro:"

    invoke-static {v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
