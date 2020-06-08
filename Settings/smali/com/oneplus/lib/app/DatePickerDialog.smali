.class public Lcom/oneplus/lib/app/DatePickerDialog;
.super Lcom/oneplus/lib/app/OPAlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

.field private mDateSetListener:Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;

.field private final mValidationCallback:Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 4

    const/4 v0, 0x1

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10104ac

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, p1, v1}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lcom/oneplus/lib/app/DatePickerDialog$2;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/app/DatePickerDialog$2;-><init>(Lcom/oneplus/lib/app/DatePickerDialog;)V

    iput-object p1, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mValidationCallback:Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d019f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setView(Landroid/view/View;)V

    const/4 v2, -0x1

    const v3, 0x104000a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v2, -0x2

    const/high16 v3, 0x1040000

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1, p0}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p1, 0x7f0a01ca

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/widget/DatePicker;

    iput-object p1, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    iget-object p1, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p1, p3, p4, p5, p0}, Lcom/oneplus/lib/widget/DatePicker;->init(IIILcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 p3, 0x801

    const/16 p4, 0xb

    const/16 p5, 0x1f

    invoke-virtual {p1, p3, p4, p5}, Ljava/util/Calendar;->set(III)V

    iget-object p3, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/oneplus/lib/widget/DatePicker;->setMaxDate(J)V

    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    const/16 p3, 0x76d

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4, v0}, Ljava/util/Calendar;->set(III)V

    iget-object p3, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/oneplus/lib/widget/DatePicker;->setMinDate(J)V

    iget-object p1, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    iget-object p3, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mValidationCallback:Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;

    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/DatePicker;->setValidationCallback(Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;)V

    iput-object p2, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDateSetListener:Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/app/DatePickerDialog;)Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDateSetListener:Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/app/DatePickerDialog;)Lcom/oneplus/lib/widget/DatePicker;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    return-object p0
.end method


# virtual methods
.method public getDatePicker()Lcom/oneplus/lib/widget/DatePicker;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDateSetListener:Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearFocus()V

    iget-object p1, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDateSetListener:Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;

    iget-object p2, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/DatePicker;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/DatePicker;->getMonth()I

    move-result v1

    iget-object p0, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePicker;->getDayOfMonth()I

    move-result p0

    invoke-interface {p1, p2, v0, v1, p0}, Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/oneplus/lib/widget/DatePicker;III)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDateChanged(Lcom/oneplus/lib/widget/DatePicker;III)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/oneplus/lib/widget/DatePicker;->init(IIILcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "month"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "day"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v2, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v2, v0, v1, p1, p0}, Lcom/oneplus/lib/widget/DatePicker;->init(IIILcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/DatePicker;->getYear()I

    move-result v1

    const-string v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/DatePicker;->getMonth()I

    move-result v1

    const-string v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePicker;->getDayOfMonth()I

    move-result p0

    const-string v1, "day"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/OPAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/app/DatePickerDialog$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/app/DatePickerDialog$1;-><init>(Lcom/oneplus/lib/app/DatePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
