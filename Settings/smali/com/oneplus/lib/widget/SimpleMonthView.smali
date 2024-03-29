.class Lcom/oneplus/lib/widget/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;,
        Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# instance fields
.field private mActivatedDay:I

.field private final mCalendar:Ljava/util/Calendar;

.field private mCellWidth:I

.field private mContext:Landroid/content/Context;

.field private final mDayFormatter:Ljava/text/NumberFormat;

.field private mDayHeight:I

.field private final mDayHighlightPaint:Landroid/graphics/Paint;

.field private final mDayHighlightSelectorPaint:Landroid/graphics/Paint;

.field private mDayOfWeekHeight:I

.field private final mDayOfWeekLabels:[Ljava/lang/String;

.field private final mDayOfWeekPaint:Landroid/text/TextPaint;

.field private mDayOfWeekStart:I

.field private final mDayPaint:Landroid/text/TextPaint;

.field private final mDaySelectorPaint:Landroid/graphics/Paint;

.field private mDaySelectorRadius:I

.field private mDayTextColor:Landroid/content/res/ColorStateList;

.field private mDaysInMonth:I

.field private final mDesiredCellWidth:I

.field private final mDesiredDayHeight:I

.field private final mDesiredDayOfWeekHeight:I

.field private final mDesiredDaySelectorRadius:I

.field private final mDesiredMonthHeight:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mHighlightedDay:I

.field private mIsTouchHighlighted:Z

.field private final mLocale:Ljava/util/Locale;

.field private mMonth:I

.field private mMonthHeight:I

.field private final mMonthPaint:Landroid/text/TextPaint;

.field private mMonthYearLabel:Ljava/lang/String;

.field private mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

.field private mPaddedHeight:I

.field private mPaddedWidth:I

.field private mPreviouslyHighlightedDay:I

.field private mToday:I

.field private final mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x101035c

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/oneplus/lib/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x101035c

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/oneplus/lib/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/4 p2, 0x7

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    const/4 p2, -0x1

    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mToday:I

    const/4 p3, 0x1

    iput p3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    iput p3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayStart:I

    const/16 p4, 0x1f

    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayEnd:I

    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    iput-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f07011e

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredMonthHeight:I

    const p4, 0x7f070119

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    const p4, 0x7f070118

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayHeight:I

    const p4, 0x7f07011d

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredCellWidth:I

    const p4, 0x7f07011b

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    new-instance p4, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {p4, p0, p0}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Lcom/oneplus/lib/widget/SimpleMonthView;Landroid/view/View;)V

    iput-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    iget-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, p4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    iget-object p4, p4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    iget-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {p4}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p4

    iput-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {p4}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p4

    iput-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->updateMonthYearLabel()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    const p4, 0x7f1205a2

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    const v0, 0x7f1205a0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1205a1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07011f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f07011a

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f07011c

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, p3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-static {p4, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p4

    invoke-virtual {v2, p4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p4, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {p4, p3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    int-to-float v2, v3

    invoke-virtual {p4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-static {v0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p4, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-virtual {p4, p3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object p3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-static {v1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/SimpleMonthView;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/SimpleMonthView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/SimpleMonthView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->onDayClicked(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/SimpleMonthView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    return p0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/SimpleMonthView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    return p0
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/SimpleMonthView;)Ljava/text/NumberFormat;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    return-object p0
.end method

.method private applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .locals 3

    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPTextAppearance:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPTextAppearance_android_textSize:I

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2
.end method

.method private ensureFocusedDay()V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    return-void

    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    return-void

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    return-void
.end method

.method private findClosestColumn(Landroid/graphics/Rect;)I
    .locals 2

    const/4 v0, 0x3

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    if-nez v1, :cond_1

    return v0

    :cond_1
    div-int/2addr p1, v1

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p1

    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    rsub-int/lit8 p0, p1, 0x7

    add-int/lit8 p1, p0, -0x1

    :cond_2
    return p1
.end method

.method private findClosestRow(Landroid/graphics/Rect;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    add-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    int-to-float p1, p1

    int-to-float v1, v3

    sub-float/2addr v1, v0

    sub-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    int-to-float v0, v2

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v0, p0

    div-int/lit8 p0, v0, 0x7

    rem-int/lit8 v0, v0, 0x7

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sub-int/2addr p0, v0

    invoke-static {p1, v1, p0}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method private findDayOffset()I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    sub-int v1, v0, p0

    if-ge v0, p0, :cond_0

    add-int/lit8 v1, v1, 0x7

    :cond_0
    return v1
.end method

.method private getDayAtLocation(II)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, -0x1

    if-ltz p1, :cond_4

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    if-lt p2, v1, :cond_4

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedHeight:I

    if-lt p2, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int p1, v2, p1

    :cond_2
    sub-int/2addr p2, v1

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    div-int/2addr p2, v1

    mul-int/lit8 p1, p1, 0x7

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    div-int/2addr p1, v1

    mul-int/lit8 p2, p2, 0x7

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    return p2

    :cond_4
    :goto_0
    return v0
.end method

.method private isDayEnabled(I)Z
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayStart:I

    if-lt p1, v0, :cond_0

    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayEnd:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValidDayOfMonth(I)Z
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveOneDay(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->ensureFocusedDay()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result v2

    add-int/2addr v2, p1

    rem-int/lit8 v2, v2, 0x7

    if-nez v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_3

    iget p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge p1, v2, :cond_3

    add-int/2addr p1, v1

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_2

    :cond_1
    iget p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result v2

    add-int/2addr v2, p1

    sub-int/2addr v2, v1

    rem-int/lit8 v2, v2, 0x7

    if-nez v2, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    if-nez p1, :cond_3

    iget p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    if-le p1, v1, :cond_3

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    return v1
.end method

.method private onDayClicked(I)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

    check-cast v1, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$1;

    invoke-virtual {v1, p0, v0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$1;->onDayClick(Lcom/oneplus/lib/widget/SimpleMonthView;Ljava/util/Calendar;)V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateDayOfWeekLabels()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    const/16 v3, 0x32

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    iget v5, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v1

    rem-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateMonthYearLabel()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    const-string v1, "MMMMy"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

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

.method public getBoundsForDay(ILandroid/graphics/Rect;)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result v1

    add-int/2addr p1, v1

    rem-int/lit8 v1, p1, 0x7

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    sub-int/2addr v3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    mul-int/2addr v1, v2

    add-int/2addr v3, v1

    :goto_0
    div-int/lit8 p1, p1, 0x7

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    iget v4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    iget v5, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    add-int/2addr p0, v4

    mul-int/2addr p1, v1

    add-int/2addr p1, p0

    add-int/2addr v2, v3

    add-int/2addr v1, p1

    invoke-virtual {p2, v3, p1, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method public getCellWidth()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    return p0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    if-lez v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getMonthHeight()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    return p0
.end method

.method public getMonthYearLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget v4, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v6, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    iget-object v7, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    add-float/2addr v7, v6

    iget v6, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    int-to-float v6, v6

    sub-float/2addr v6, v7

    div-float/2addr v6, v5

    iget-object v7, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    iget-object v8, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v7, v4, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    iget v6, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    iget v7, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    iget v8, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v10

    add-float/2addr v10, v9

    div-float/2addr v10, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    const/4 v9, 0x0

    :goto_0
    const/4 v11, 0x7

    if-ge v9, v11, :cond_1

    mul-int v11, v8, v9

    div-int/lit8 v12, v8, 0x2

    add-int/2addr v12, v11

    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget v11, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int v12, v11, v12

    :cond_0
    iget-object v11, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    aget-object v11, v11, v9

    int-to-float v12, v12

    int-to-float v13, v7

    sub-float/2addr v13, v10

    invoke-virtual {v1, v11, v12, v13, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    iget v7, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    iget v8, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    iget v9, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v10

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v12

    add-float/2addr v12, v10

    div-float/2addr v12, v5

    div-int/lit8 v5, v8, 0x2

    add-int/2addr v5, v7

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result v7

    move v13, v5

    const/4 v5, 0x1

    :goto_1
    iget v14, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt v5, v14, :cond_c

    mul-int v14, v9, v7

    div-int/lit8 v15, v9, 0x2

    add-int/2addr v15, v14

    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_2

    iget v14, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int v15, v14, v15

    :cond_2
    invoke-direct {v0, v5}, Lcom/oneplus/lib/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v14

    if-eqz v14, :cond_3

    const/16 v16, 0x8

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    iget v11, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    if-ne v11, v5, :cond_4

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    iget v10, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    if-ne v10, v5, :cond_5

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    if-eqz v11, :cond_7

    or-int/lit8 v16, v16, 0x20

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    goto :goto_5

    :cond_6
    iget-object v10, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    :goto_5
    int-to-float v14, v15

    int-to-float v6, v13

    move/from16 v17, v9

    iget v9, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorRadius:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v1, v14, v6, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_7
    move/from16 v17, v9

    if-eqz v10, :cond_8

    or-int/lit8 v16, v16, 0x10

    if-eqz v14, :cond_8

    int-to-float v6, v15

    int-to-float v9, v13

    iget v10, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorRadius:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget-object v14, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v9, v10, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_8
    :goto_6
    iget v6, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mToday:I

    if-ne v6, v5, :cond_9

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_7
    if-eqz v6, :cond_a

    if-nez v11, :cond_a

    iget-object v6, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto :goto_8

    :cond_a
    invoke-static/range {v16 .. v16}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v6

    iget-object v9, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :goto_8
    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v6, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    int-to-long v9, v5

    invoke-virtual {v6, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    int-to-float v9, v15

    int-to-float v10, v13

    sub-float/2addr v10, v12

    invoke-virtual {v1, v6, v9, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v7, 0x1

    const/4 v7, 0x7

    if-ne v6, v7, :cond_b

    add-int/2addr v13, v8

    const/4 v6, 0x0

    :cond_b
    add-int/lit8 v5, v5, 0x1

    move v11, v7

    move/from16 v9, v17

    move v7, v6

    goto/16 :goto_1

    :cond_c
    neg-int v0, v2

    int-to-float v0, v0

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-boolean p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-eq p2, v1, :cond_6

    const/16 v1, 0x21

    if-eq p2, v1, :cond_4

    const/16 v1, 0x42

    if-eq p2, v1, :cond_2

    const/16 v1, 0x82

    if-eq p2, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p3}, Lcom/oneplus/lib/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    sub-int/2addr v1, v0

    add-int/2addr v1, v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x7

    :cond_1
    iput v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_1

    :cond_2
    invoke-direct {p0, p3}, Lcom/oneplus/lib/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v1, v0

    add-int/2addr v2, v1

    :goto_0
    iput v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_1

    :cond_4
    invoke-direct {p0, p3}, Lcom/oneplus/lib/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    iget v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    add-int v4, v0, v3

    div-int/lit8 v4, v4, 0x7

    sub-int/2addr v1, v0

    mul-int/lit8 v4, v4, 0x7

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    if-le v4, v3, :cond_5

    add-int/lit8 v4, v4, -0x7

    :cond_5
    iput v4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_1

    :cond_6
    invoke-direct {p0, p3}, Lcom/oneplus/lib/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    :goto_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->ensureFocusedDay()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v2

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v2

    goto :goto_2

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->ensureFocusedDay()V

    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    iget v4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->ensureFocusedDay()V

    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    if-le v0, v1, :cond_6

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    :goto_0
    move v2, v3

    goto :goto_2

    :cond_0
    :pswitch_4
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SimpleMonthView;->onDayClicked(I)Z

    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v4, p0

    :cond_4
    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eq v4, p0, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v1, :cond_4

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    return v3

    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3

    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p4, p3

    sub-int/2addr p5, v0

    sub-int/2addr p4, p1

    sub-int/2addr p5, p2

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    if-eq p4, v1, :cond_2

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedHeight:I

    if-eq p5, v1, :cond_2

    if-ltz p4, :cond_2

    if-gez p5, :cond_1

    goto :goto_0

    :cond_1
    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    iput p5, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    int-to-float p2, p5

    int-to-float p4, p4

    div-float/2addr p2, p4

    iget p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredMonthHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p4, p4

    iget p5, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    div-int/lit8 p5, p5, 0x7

    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    iget p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p4, p4

    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    iget p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p2, p4

    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    iput p5, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    div-int/lit8 p5, p5, 0x2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    iget p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    div-int/lit8 p1, p1, 0x2

    iget p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorRadius:I

    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->invalidateRoot()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayHeight:I

    mul-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredMonthHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredCellWidth:I

    mul-int/lit8 v1, v1, 0x7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v0

    if-ltz v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x3ea

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_0

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->onDayClicked(I)Z

    :cond_1
    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v0

    iput-boolean v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    if-eq v1, v0, :cond_3

    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    if-nez p1, :cond_4

    if-gez v0, :cond_4

    return v2

    :cond_4
    :goto_0
    return v3
.end method

.method setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    const/16 v0, 0x28

    invoke-static {v0}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/16 v0, 0xb0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setDayTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v1, 0x7

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    :goto_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setMonthParams(IIIIII)V
    .locals 4

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ltz p2, :cond_0

    const/16 v1, 0xb

    if-gt p2, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-eqz v1, :cond_1

    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    :cond_1
    iput p3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    iget-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget p3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    const/4 v1, 0x2

    invoke-virtual {p2, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget p3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    invoke-virtual {p2, v0, p3}, Ljava/util/Calendar;->set(II)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 p3, 0x5

    invoke-virtual {p2, p3, v0}, Ljava/util/Calendar;->set(II)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekStart:I

    if-lt p4, v0, :cond_2

    if-gt p4, v2, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    move p2, p1

    :goto_1
    if-eqz p2, :cond_3

    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    const/4 p4, -0x1

    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mToday:I

    iget p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    packed-switch p4, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p4, 0x1e

    goto :goto_3

    :pswitch_1
    rem-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_4

    const/16 p4, 0x1d

    goto :goto_3

    :cond_4
    const/16 p4, 0x1c

    goto :goto_3

    :pswitch_2
    const/16 p4, 0x1f

    :goto_3
    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    move p4, p1

    :cond_5
    :goto_4
    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge p4, v2, :cond_7

    add-int/lit8 p4, p4, 0x1

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne p4, v2, :cond_6

    move v2, v0

    goto :goto_5

    :cond_6
    move v2, p1

    :goto_5
    if-eqz v2, :cond_5

    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mToday:I

    goto :goto_4

    :cond_7
    invoke-static {p5, v0, v2}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayStart:I

    iget p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayStart:I

    iget p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p6, p1, p2}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayEnd:I

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->updateMonthYearLabel()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setMonthTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnDayClickListener(Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

    return-void
.end method

.method public setSelectedDay(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
