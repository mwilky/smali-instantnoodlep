.class public Landroidx/slice/widget/RowStyle;
.super Ljava/lang/Object;
.source "RowStyle.java"


# instance fields
.field private mActionDividerHeight:I

.field private mBottomDividerEndPadding:I

.field private mBottomDividerStartPadding:I

.field private mContentEndPadding:I

.field private mContentStartPadding:I

.field private mEndItemEndPadding:I

.field private mEndItemStartPadding:I

.field private mTitleItemEndPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Landroidx/slice/view/R$styleable;->RowStyle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x7

    const/high16 v0, -0x40800000    # -1.0f

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_actionDividerHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public getActionDividerHeight()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I

    return p0
.end method

.method public getBottomDividerEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    return p0
.end method

.method public getBottomDividerStartPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    return p0
.end method

.method public getContentEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    return p0
.end method

.method public getContentStartPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    return p0
.end method

.method public getEndItemEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    return p0
.end method

.method public getEndItemStartPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    return p0
.end method

.method public getTitleItemEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    return p0
.end method
