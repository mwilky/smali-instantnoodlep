.class public Lcom/oneplus/lib/app/OPNumberPickerDialog;
.super Lcom/oneplus/lib/app/OPAlertDialog;
.source "OPNumberPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;
    }
.end annotation


# instance fields
.field private final OP_NUMBER_PICKER_DEFAULT_MAX_VALUE:I

.field private final OP_NUMBER_PICKER_DEFAULT_MIN_VALUE:I

.field private mMaxValue:I

.field private mMin:Landroid/widget/TextView;

.field private mMinValue:I

.field private mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

.field private mNumberSetListener:Lcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;

.field private mPlurals:I

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/OPNumberPickerDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->OP_NUMBER_PICKER_DEFAULT_MIN_VALUE:I

    const/16 v1, 0x3c

    iput v1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->OP_NUMBER_PICKER_DEFAULT_MAX_VALUE:I

    iput v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mValue:I

    iput v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMinValue:I

    iput v1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMaxValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->OP_NUMBER_PICKER_DEFAULT_MIN_VALUE:I

    const/16 v1, 0x3c

    iput v1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->OP_NUMBER_PICKER_DEFAULT_MAX_VALUE:I

    iput v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mValue:I

    iput v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMinValue:I

    iput v1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMaxValue:I

    iput-object p3, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberSetListener:Lcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/lib/app/OPNumberPickerDialog;-><init>(Landroid/content/Context;ILcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/app/OPNumberPickerDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/app/OPNumberPickerDialog;->updateMinutes()V

    return-void
.end method

.method private updateMinutes()V
    .locals 4

    iget v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mPlurals:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMin:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mPlurals:I

    iget-object v3, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMaxValue()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMinValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMinValue:I

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mValue:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberSetListener:Lcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/lib/app/OPNumberPickerDialog$OnNumberSetListener;->onNumberSet(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPNumberPickerDialog;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_number_picker_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$id;->numberPicker:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    iget v3, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMinValue:I

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    iget v3, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMaxValue:I

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    iget v3, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mValue:I

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    sget v2, Lcom/oneplus/commonctrl/R$id;->min:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMin:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/oneplus/lib/app/OPNumberPickerDialog;->updateMinutes()V

    iget-object v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    new-instance v3, Lcom/oneplus/lib/app/OPNumberPickerDialog$1;

    invoke-direct {v3, p0}, Lcom/oneplus/lib/app/OPNumberPickerDialog$1;-><init>(Lcom/oneplus/lib/app/OPNumberPickerDialog;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mContext:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2, p0}, Lcom/oneplus/lib/app/OPNumberPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mContext:Landroid/content/Context;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {p0, v3, v2, p0}, Lcom/oneplus/lib/app/OPNumberPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPNumberPickerDialog;->setView(Landroid/view/View;)V

    invoke-super {p0, p1}, Lcom/oneplus/lib/app/OPAlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMaxValue:I

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    :cond_0
    return-void
.end method

.method public setMinValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mMinValue:I

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    :cond_0
    return-void
.end method

.method public setPlurals(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mPlurals:I

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mValue:I

    return-void
.end method

.method public updateNumber(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog;->mNumberPicker:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    return-void
.end method
