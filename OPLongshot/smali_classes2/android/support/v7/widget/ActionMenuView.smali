.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
.implements Landroid/support/v7/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuView$LayoutParams;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuView;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 15

    move-object v0, p0

    move/from16 v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int v3, v3, p4

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    instance-of v6, v0, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/view/menu/ActionMenuItemView;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    const/4 v10, 0x0

    if-lez v1, :cond_4

    const/4 v11, 0x2

    if-eqz v9, :cond_2

    if-lt v1, v11, :cond_4

    :cond_2
    mul-int v12, p1, v1

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {p0, v12, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    div-int v10, v13, p1

    rem-int v14, v13, p1

    if-eqz v14, :cond_3

    add-int/lit8 v10, v10, 0x1

    :cond_3
    if-eqz v9, :cond_4

    if-ge v10, v11, :cond_4

    const/4 v10, 0x2

    :cond_4
    iget-boolean v11, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v9, :cond_5

    move v7, v8

    :cond_5
    iput-boolean v7, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    iput v10, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v8, v10, p1

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v5}, Landroid/view/View;->measure(II)V

    return v10
.end method

.method private onMeasureExactFormat(II)V
    .locals 40

    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    sub-int/2addr v2, v4

    iget v8, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    div-int v9, v2, v8

    rem-int v10, v2, v8

    const/4 v11, 0x0

    if-nez v9, :cond_0

    invoke-virtual {v0, v2, v11}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    div-int v12, v10, v9

    add-int/2addr v8, v12

    move v12, v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v11

    const/16 v21, 0x0

    move-wide/from16 v38, v18

    move/from16 v18, v3

    move v3, v13

    move/from16 v13, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v12

    move/from16 v12, v21

    move-wide/from16 v21, v38

    :goto_0
    move/from16 v19, v4

    if-ge v12, v11, :cond_8

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    move/from16 v24, v9

    const/16 v9, 0x8

    if-ne v7, v9, :cond_1

    move/from16 v27, v5

    move/from16 v25, v10

    goto/16 :goto_4

    :cond_1
    instance-of v7, v4, Landroid/support/v7/view/menu/ActionMenuItemView;

    add-int/lit8 v13, v13, 0x1

    if-eqz v7, :cond_2

    iget v9, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v25, v10

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    move/from16 v25, v10

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    iput-boolean v10, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    iput v10, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    iput v10, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    iput-boolean v10, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    iput v10, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    iput v10, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    if-eqz v7, :cond_3

    move-object v10, v4

    check-cast v10, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v10}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    iput-boolean v10, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    iget-boolean v10, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    move v10, v14

    :goto_3
    move/from16 v26, v7

    invoke-static {v4, v8, v10, v6, v5}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v7

    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v27, v5

    iget-boolean v5, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v5, :cond_5

    add-int/lit8 v16, v16, 0x1

    :cond_5
    iget-boolean v5, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_6

    const/16 v17, 0x1

    :cond_6
    sub-int/2addr v14, v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x1

    if-ne v7, v5, :cond_7

    shl-int/2addr v5, v12

    move/from16 v28, v3

    move-object/from16 v23, v4

    int-to-long v3, v5

    or-long v3, v21, v3

    move-wide/from16 v21, v3

    move/from16 v3, v28

    goto :goto_4

    :cond_7
    move/from16 v28, v3

    move-object/from16 v23, v4

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, p2

    move/from16 v4, v19

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v5, v27

    goto/16 :goto_0

    :cond_8
    move/from16 v27, v5

    move/from16 v24, v9

    move/from16 v25, v10

    const/4 v4, 0x2

    if-eqz v17, :cond_9

    if-ne v13, v4, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    const/4 v7, 0x0

    :goto_6
    const-wide/16 v28, 0x0

    if-lez v16, :cond_13

    if-lez v14, :cond_13

    const v12, 0x7fffffff

    const-wide/16 v30, 0x0

    const/16 v26, 0x0

    const/16 v32, 0x0

    move v9, v12

    move/from16 v4, v26

    move/from16 v12, v32

    :goto_7
    if-ge v12, v11, :cond_d

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    move/from16 v35, v7

    move-object/from16 v7, v34

    check-cast v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v34, v10

    iget-boolean v10, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v10, :cond_a

    goto :goto_8

    :cond_a
    iget v10, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v10, v9, :cond_b

    iget v9, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const-wide/16 v32, 0x1

    shl-long v30, v32, v12

    const/4 v4, 0x1

    goto :goto_8

    :cond_b
    const-wide/16 v32, 0x1

    iget v10, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v10, v9, :cond_c

    shl-long v36, v32, v12

    or-long v30, v30, v36

    add-int/lit8 v4, v4, 0x1

    :cond_c
    :goto_8
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v35

    goto :goto_7

    :cond_d
    move/from16 v35, v7

    or-long v21, v21, v30

    if-le v4, v14, :cond_e

    move/from16 v36, v2

    move/from16 v37, v3

    goto :goto_b

    :cond_e
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v11, :cond_12

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move/from16 v34, v4

    const/16 v23, 0x1

    shl-int v4, v23, v7

    move/from16 v36, v2

    move/from16 v37, v3

    int-to-long v2, v4

    and-long v2, v30, v2

    cmp-long v2, v2, v28

    if-nez v2, :cond_f

    iget v2, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v2, v9, :cond_11

    shl-int v2, v23, v7

    int-to-long v2, v2

    or-long v21, v21, v2

    goto :goto_a

    :cond_f
    if-eqz v5, :cond_10

    iget-boolean v2, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    if-ne v14, v2, :cond_10

    iget v2, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int v3, v2, v8

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_10
    iget v2, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    iput-boolean v3, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    add-int/lit8 v14, v14, -0x1

    :cond_11
    :goto_a
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v34

    move/from16 v2, v36

    move/from16 v3, v37

    goto :goto_9

    :cond_12
    move/from16 v36, v2

    move/from16 v37, v3

    move/from16 v34, v4

    const/4 v7, 0x1

    const/4 v4, 0x2

    goto/16 :goto_6

    :cond_13
    move/from16 v36, v2

    move/from16 v37, v3

    move/from16 v35, v7

    :goto_b
    if-nez v17, :cond_14

    const/4 v2, 0x1

    if-ne v13, v2, :cond_14

    const/4 v2, 0x1

    goto :goto_c

    :cond_14
    const/4 v2, 0x0

    :goto_c
    if-lez v14, :cond_23

    cmp-long v3, v21, v28

    if-eqz v3, :cond_23

    add-int/lit8 v3, v13, -0x1

    if-lt v14, v3, :cond_16

    if-nez v2, :cond_16

    const/4 v3, 0x1

    if-le v15, v3, :cond_15

    goto :goto_d

    :cond_15
    move v9, v8

    move v8, v2

    goto/16 :goto_13

    :cond_16
    :goto_d
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    int-to-float v3, v3

    if-nez v2, :cond_19

    const-wide/16 v9, 0x1

    and-long v9, v21, v9

    cmp-long v4, v9, v28

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v4, :cond_17

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    iget-boolean v9, v4, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v9, :cond_18

    sub-float/2addr v3, v7

    goto :goto_e

    :cond_17
    const/4 v10, 0x0

    :cond_18
    :goto_e
    add-int/lit8 v4, v11, -0x1

    const/4 v9, 0x1

    shl-int v4, v9, v4

    move v9, v8

    int-to-long v7, v4

    and-long v7, v21, v7

    cmp-long v4, v7, v28

    if-eqz v4, :cond_1a

    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    iget-boolean v7, v4, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v7, :cond_1a

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v3, v7

    goto :goto_f

    :cond_19
    move v9, v8

    const/4 v10, 0x0

    :cond_1a
    :goto_f
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1b

    mul-int v8, v14, v9

    int-to-float v4, v8

    div-float/2addr v4, v3

    float-to-int v4, v4

    goto :goto_10

    :cond_1b
    move v4, v10

    :goto_10
    const/4 v7, 0x0

    :goto_11
    if-ge v7, v11, :cond_22

    const/4 v8, 0x1

    shl-int v10, v8, v7

    move v8, v2

    move v12, v3

    int-to-long v2, v10

    and-long v2, v21, v2

    cmp-long v2, v2, v28

    if-nez v2, :cond_1c

    const/16 v20, 0x2

    goto :goto_12

    :cond_1c
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    instance-of v10, v2, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_1e

    iput v4, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v10, 0x1

    iput-boolean v10, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v7, :cond_1d

    iget-boolean v10, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v10, :cond_1d

    neg-int v10, v4

    const/16 v20, 0x2

    div-int/lit8 v10, v10, 0x2

    iput v10, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_1d
    const/16 v35, 0x1

    const/16 v20, 0x2

    goto :goto_12

    :cond_1e
    iget-boolean v10, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v10, :cond_1f

    iput v4, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v10, 0x1

    iput-boolean v10, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    neg-int v10, v4

    const/16 v20, 0x2

    div-int/lit8 v10, v10, 0x2

    iput v10, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    const/16 v35, 0x1

    goto :goto_12

    :cond_1f
    const/16 v20, 0x2

    if-eqz v7, :cond_20

    div-int/lit8 v10, v4, 0x2

    iput v10, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_20
    add-int/lit8 v10, v11, -0x1

    if-eq v7, v10, :cond_21

    div-int/lit8 v10, v4, 0x2

    iput v10, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    :cond_21
    :goto_12
    add-int/lit8 v7, v7, 0x1

    move v2, v8

    move v3, v12

    goto :goto_11

    :cond_22
    move v8, v2

    move v12, v3

    const/4 v14, 0x0

    goto :goto_13

    :cond_23
    move v9, v8

    move v8, v2

    :goto_13
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v35, :cond_25

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v11, :cond_25

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    iget-boolean v10, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v10, :cond_24

    goto :goto_15

    :cond_24
    iget v10, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v10, v9

    iget v12, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v10, v12

    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v4, v12, v6}, Landroid/view/View;->measure(II)V

    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_25
    if-eq v1, v2, :cond_26

    move/from16 v3, v37

    goto :goto_16

    :cond_26
    move/from16 v3, v18

    :goto_16
    move/from16 v2, v36

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dismissPopupMenus()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2

    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/support/v7/widget/ActionMenuView$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_1

    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    new-instance v2, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v2}, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v0, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_1
    if-lez p1, :cond_2

    instance-of v3, v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_2
    return v2
.end method

.method public hideOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-nez v1, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getDividerWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sub-int v7, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x8

    if-ge v10, v1, :cond_6

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v11, :cond_1

    move/from16 v16, v2

    move/from16 v17, v9

    goto :goto_2

    :cond_1
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    iget-boolean v13, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v13, :cond_4

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v13

    if-eqz v13, :cond_2

    add-int/2addr v4, v3

    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    if-eqz v9, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v14

    iget v15, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    add-int v15, v14, v4

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    iget v15, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v15, v14, v15

    sub-int v14, v15, v4

    :goto_1
    div-int/lit8 v16, v13, 0x2

    move/from16 v17, v9

    sub-int v9, v2, v16

    move/from16 v16, v2

    add-int v2, v9, v13

    invoke-virtual {v12, v14, v9, v15, v2}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v7, v4

    const/4 v2, 0x1

    move v8, v2

    goto :goto_2

    :cond_4
    move/from16 v16, v2

    move/from16 v17, v9

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v9, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v9

    iget v9, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v9

    add-int/2addr v5, v2

    sub-int/2addr v7, v2

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_5

    add-int/2addr v5, v3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    :goto_2
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    move/from16 v9, v17

    goto :goto_0

    :cond_6
    move/from16 v16, v2

    move/from16 v17, v9

    const/4 v2, 0x0

    const/4 v9, 0x1

    if-ne v1, v9, :cond_7

    if-nez v8, :cond_7

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int v11, p4, p2

    div-int/lit8 v11, v11, 0x2

    div-int/lit8 v12, v9, 0x2

    sub-int v12, v11, v12

    div-int/lit8 v13, v10, 0x2

    sub-int v13, v16, v13

    add-int v14, v12, v9

    add-int v15, v13, v10

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_7
    if-eqz v8, :cond_8

    move v9, v2

    :cond_8
    sub-int v9, v6, v9

    if-lez v9, :cond_9

    div-int v10, v7, v9

    goto :goto_3

    :cond_9
    move v10, v2

    :goto_3
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v17, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v10, v12

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v1, :cond_c

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v11, :cond_b

    iget-boolean v15, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v15, :cond_a

    move/from16 v19, v3

    move/from16 v20, v4

    goto :goto_5

    :cond_a
    iget v15, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v10, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    div-int/lit8 v19, v18, 0x2

    sub-int v11, v16, v19

    move/from16 v19, v3

    sub-int v3, v10, v15

    move/from16 v20, v4

    add-int v4, v11, v18

    invoke-virtual {v13, v3, v11, v10, v4}, Landroid/view/View;->layout(IIII)V

    iget v3, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v15

    add-int/2addr v3, v2

    sub-int/2addr v10, v3

    goto :goto_5

    :cond_b
    move/from16 v19, v3

    move/from16 v20, v4

    :goto_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v19

    move/from16 v4, v20

    const/16 v11, 0x8

    goto :goto_4

    :cond_c
    move/from16 v19, v3

    move/from16 v20, v4

    goto :goto_8

    :cond_d
    move/from16 v19, v3

    move/from16 v20, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v3

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_10

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_f

    iget-boolean v12, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v12, :cond_e

    goto :goto_7

    :cond_e
    iget v12, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v12

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    div-int/lit8 v15, v14, 0x2

    sub-int v15, v16, v15

    add-int v13, v3, v12

    add-int v0, v15, v14

    invoke-virtual {v10, v3, v15, v13, v0}, Landroid/view/View;->layout(IIII)V

    iget v0, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v12

    add-int/2addr v0, v2

    add-int/2addr v3, v0

    :cond_f
    :goto_7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    :cond_10
    :goto_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eq v0, v1, :cond_1

    iput v3, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v4, :cond_2

    iget v5, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v5, :cond_2

    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    invoke-virtual {v4, v2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v2

    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_3

    if-lez v2, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    iput v3, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v3, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    :goto_2
    return-void
.end method

.method public peekMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    return-void
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
