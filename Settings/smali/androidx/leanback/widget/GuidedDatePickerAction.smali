.class public Landroidx/leanback/widget/GuidedDatePickerAction;
.super Landroidx/leanback/widget/GuidedAction;
.source "GuidedDatePickerAction.java"


# instance fields
.field mDate:J

.field mDatePickerFormat:Ljava/lang/String;

.field mMaxDate:J

.field mMinDate:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/leanback/widget/GuidedAction;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/leanback/widget/GuidedDatePickerAction;->mMinDate:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroidx/leanback/widget/GuidedDatePickerAction;->mMaxDate:J

    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Landroidx/leanback/widget/GuidedDatePickerAction;->mDate:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/leanback/widget/GuidedDatePickerAction;->mDate:J

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Landroidx/leanback/widget/GuidedDatePickerAction;->mDate:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setDate(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/leanback/widget/GuidedDatePickerAction;->mDate:J

    return-void
.end method
