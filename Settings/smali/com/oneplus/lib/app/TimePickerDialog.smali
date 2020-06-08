.class public Lcom/oneplus/lib/app/TimePickerDialog;
.super Lcom/oneplus/lib/app/OPAlertDialog;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# instance fields
.field private final mInitialHourOfDay:I

.field private final mInitialMinute:I

.field private final mIs24HourView:Z

.field private final mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

.field private final mTimeSetListener:Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;

.field private mToggleModeSpace:Landroid/widget/Space;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101049e

    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;IZ)V

    iput-object p3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimeSetListener:Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;

    iput p4, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mInitialHourOfDay:I

    iput p5, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mInitialMinute:I

    iput-boolean p6, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mIs24HourView:Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d0261

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->setView(Landroid/view/View;)V

    const/4 p3, -0x1

    const p4, 0x104000a

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3, p4, p0}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p3, -0x2

    const/high16 p4, 0x1040000

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1, p0}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p1, 0x7f0a073b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/widget/TimePicker;

    iput-object p1, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    iget-object p1, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    iget-boolean p3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mIs24HourView:Z

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    iget p3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mInitialHourOfDay:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    iget p3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mInitialMinute:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/TimePicker;->setOnTimeChangedListener(Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;)V

    const p1, 0x7f0a073e

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Space;

    iput-object p1, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mToggleModeSpace:Landroid/widget/Space;

    iget-object p0, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mToggleModeSpace:Landroid/widget/Space;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Space;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/app/TimePickerDialog;-><init>(Landroid/content/Context;ILcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/app/TimePickerDialog;)Lcom/oneplus/lib/widget/TimePicker;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimeSetListener:Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p2, v0, p0}, Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/oneplus/lib/widget/TimePicker;II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hour"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "minute"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "minute"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePicker;->is24HourView()Z

    move-result p0

    const-string v1, "is24hour"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/OPAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/app/TimePickerDialog$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/app/TimePickerDialog$1;-><init>(Lcom/oneplus/lib/app/TimePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
