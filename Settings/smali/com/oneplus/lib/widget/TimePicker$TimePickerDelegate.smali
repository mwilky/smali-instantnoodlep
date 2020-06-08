.class interface abstract Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;
.super Ljava/lang/Object;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TimePickerDelegate"
.end annotation


# virtual methods
.method public abstract getAmView()Landroid/view/View;
.end method

.method public abstract getBaseline()I
.end method

.method public abstract getHour()I
.end method

.method public abstract getHourView()Landroid/view/View;
.end method

.method public abstract getMinute()I
.end method

.method public abstract getMinuteView()Landroid/view/View;
.end method

.method public abstract getPmView()Landroid/view/View;
.end method

.method public abstract is24Hour()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setHour(I)V
.end method

.method public abstract setIs24Hour(Z)V
.end method

.method public abstract setMinute(I)V
.end method

.method public abstract validateInput()Z
.end method
