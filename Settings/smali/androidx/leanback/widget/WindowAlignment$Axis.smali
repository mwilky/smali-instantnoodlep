.class public Landroidx/leanback/widget/WindowAlignment$Axis;
.super Ljava/lang/Object;
.source "WindowAlignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/WindowAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Axis"
.end annotation


# instance fields
.field private mMaxEdge:I

.field private mMaxScroll:I

.field private mMinEdge:I

.field private mMinScroll:I

.field private mPaddingMax:I

.field private mPaddingMin:I

.field private mPreferredKeyLine:I

.field private mReversedFlow:Z

.field private mSize:I

.field private mWindowAlignment:I

.field private mWindowAlignmentOffset:I

.field private mWindowAlignmentOffsetPercent:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    const/4 p1, 0x3

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    const/high16 p1, 0x42480000    # 50.0f

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->reset()V

    return-void
.end method


# virtual methods
.method final calculateKeyline()I
    .locals 4

    iget-boolean v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    add-int/2addr v0, v3

    :goto_0
    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v3

    div-float/2addr p0, v1

    float-to-int p0, p0

    add-int/2addr v0, p0

    goto :goto_2

    :cond_1
    iget v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    if-ltz v0, :cond_2

    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    sub-int/2addr v3, v0

    move v0, v3

    goto :goto_1

    :cond_2
    neg-int v0, v0

    :goto_1
    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v3

    div-float/2addr p0, v1

    float-to-int p0, p0

    sub-int/2addr v0, p0

    :cond_3
    :goto_2
    return v0
.end method

.method public final getClientSize()I
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget v1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v0, v1

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getMaxScroll()I
    .locals 0

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    return p0
.end method

.method public final getMinScroll()I
    .locals 0

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    return p0
.end method

.method public final getPaddingMax()I
    .locals 0

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    return p0
.end method

.method public final getPaddingMin()I
    .locals 0

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    return p0
.end method

.method public final getScroll(I)I
    .locals 7

    iget v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->calculateKeyline()I

    move-result v1

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v2

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v3

    if-nez v2, :cond_2

    iget v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int v4, v1, v4

    iget-boolean v5, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v5, :cond_0

    iget v5, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_0
    iget v5, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    :goto_0
    iget v5, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    sub-int v6, p1, v5

    if-gt v6, v4, :cond_2

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v5, p1

    if-nez v3, :cond_1

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    if-le v5, p0, :cond_1

    goto :goto_1

    :cond_1
    move p0, v5

    :goto_1
    return p0

    :cond_2
    if-nez v3, :cond_5

    sub-int v3, v0, v1

    iget v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int/2addr v3, v4

    iget-boolean v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v4, :cond_3

    iget v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_3
    iget v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    :goto_2
    iget v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    sub-int v5, v4, p1

    if-gt v5, v3, :cond_5

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int/2addr v0, p1

    sub-int/2addr v4, v0

    if-nez v2, :cond_4

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    if-ge v4, p0, :cond_4

    goto :goto_3

    :cond_4
    move p0, v4

    :goto_3
    return p0

    :cond_5
    sub-int/2addr p1, v1

    return p1
.end method

.method public final getSize()I
    .locals 0

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    return p0
.end method

.method public final getWindowAlignment()I
    .locals 0

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    return p0
.end method

.method public final getWindowAlignmentOffset()I
    .locals 0

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    return p0
.end method

.method public final getWindowAlignmentOffsetPercent()F
    .locals 0

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    return p0
.end method

.method public final invalidateScrollMax()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    return-void
.end method

.method public final invalidateScrollMin()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    return-void
.end method

.method public final isMaxUnknown()Z
    .locals 1

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMinUnknown()Z
    .locals 1

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method reset()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    return-void
.end method

.method public final setPadding(II)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    iput p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    return-void
.end method

.method final setPreferKeylineOverHighEdge(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    and-int/lit8 p1, p1, -0x3

    :goto_0
    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    return-void
.end method

.method final setPreferKeylineOverLowEdge(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    and-int/lit8 p1, p1, -0x2

    :goto_0
    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    return-void
.end method

.method public final setReversedFlow(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    return-void
.end method

.method public final setWindowAlignment(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    return-void
.end method

.method public final setWindowAlignmentOffset(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    return-void
.end method

.method public final setWindowAlignmentOffsetPercent(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    :cond_1
    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, " min:"

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " max:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateMinMax(IIII)V
    .locals 5

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    iput p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result p1

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->calculateKeyline()I

    move-result p2

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-boolean v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v3, :cond_0

    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_0
    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    :goto_0
    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    iget v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_1

    :cond_1
    sub-int v3, p3, p2

    iput v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    :cond_2
    :goto_1
    if-nez v1, :cond_5

    iget-boolean v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v3, :cond_3

    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_3
    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_4

    :goto_2
    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    iget v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, p1

    iput v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    goto :goto_3

    :cond_4
    sub-int p1, p4, p2

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    :cond_5
    :goto_3
    if-nez v1, :cond_11

    if-nez v0, :cond_11

    iget-boolean p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    const/4 v0, 0x0

    if-nez p1, :cond_b

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_8

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_6

    move v0, v2

    :cond_6
    if-eqz v0, :cond_7

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    sub-int/2addr p4, p2

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    :cond_7
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    goto :goto_4

    :cond_8
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_11

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_9

    move v0, v2

    :cond_9
    if-eqz v0, :cond_a

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    :cond_a
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_4

    :cond_b
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_e

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_c

    move v0, v2

    :cond_c
    if-eqz v0, :cond_d

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    :cond_d
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_4

    :cond_e
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_11

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_f

    move v0, v2

    :cond_f
    if-eqz v0, :cond_10

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    sub-int/2addr p4, p2

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    :cond_10
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    :cond_11
    :goto_4
    return-void
.end method
