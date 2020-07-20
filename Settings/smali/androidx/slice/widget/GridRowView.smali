.class public Landroidx/slice/widget/GridRowView;
.super Landroidx/slice/widget/SliceChildView;
.source "GridRowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mForeground:Landroid/view/View;

.field private mGridContent:Landroidx/slice/widget/GridContent;

.field private mGutter:I

.field private mIconSize:I

.field private mLargeImageHeight:I

.field private mLoc:[I

.field mMaxCellUpdateScheduled:Z

.field mMaxCells:I

.field private mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRowCount:I

.field private mRowIndex:I

.field private mSmallImageMinWidth:I

.field private mSmallImageSize:I

.field private mTextPadding:I

.field private mViewContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/GridRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    const/4 p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    new-instance p2, Landroidx/slice/widget/GridRowView$1;

    invoke-direct {p2, p0}, Landroidx/slice/widget/GridRowView$1;-><init>(Landroidx/slice/widget/GridRowView;)V

    iput-object p2, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v0, 0x7f07004b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mIconSize:I

    const v0, 0x7f070059

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mSmallImageSize:I

    const v0, 0x7f070044

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    const v0, 0x7f070043

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mSmallImageMinWidth:I

    const v0, 0x7f070042

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mGutter:I

    const v0, 0x7f07004a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/GridRowView;->mTextPadding:I

    new-instance p2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    iget-object p2, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addCell(Landroidx/slice/widget/GridContent$CellContent;II)V
    .locals 22

    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_0

    iget-object v0, v6, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    const/4 v11, 0x2

    :goto_0
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getCellItems()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v14

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v10, :cond_1

    move/from16 v16, v10

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    const-string v5, "text"

    if-nez v16, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v1

    if-ne v1, v10, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    const-string v4, "title"

    const-string v0, "large"

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_5
    move-object v4, v1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_12

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v9

    const-string v15, "long"

    const-string v10, "image"

    if-nez v18, :cond_8

    move/from16 v19, v1

    :cond_7
    const/16 v20, 0x0

    goto :goto_7

    :cond_8
    move/from16 v19, v1

    invoke-virtual/range {v18 .. v18}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, v6, Landroidx/slice/widget/GridRowView;->mTextPadding:I

    :goto_6
    move/from16 v20, v1

    goto :goto_7

    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_a
    iget-object v1, v6, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroidx/slice/widget/SliceStyle;->getVerticalGridTextPadding()I

    move-result v1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    :goto_7
    if-ge v2, v11, :cond_f

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_8

    :cond_c
    move-object v15, v0

    move v9, v3

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move/from16 v5, v19

    const/4 v0, 0x1

    move/from16 v19, v2

    goto :goto_9

    :cond_d
    :goto_8
    if-eqz v4, :cond_e

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    move v9, v3

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move/from16 v10, v19

    move/from16 v19, v2

    goto/16 :goto_b

    :cond_e
    iget v9, v6, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    move-object v15, v0

    move-object/from16 v0, p0

    move/from16 v10, v19

    move-object v1, v15

    move/from16 v19, v2

    move v2, v9

    move v9, v3

    move-object v3, v12

    move-object/from16 v21, v4

    move/from16 v4, v20

    move-object/from16 v20, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/GridRowView;->addItem(Landroidx/slice/SliceItem;ILandroid/view/ViewGroup;IZ)Z

    move-result v0

    if-eqz v0, :cond_11

    add-int/lit8 v2, v19, 0x1

    move v1, v10

    move-object/from16 v18, v15

    goto :goto_a

    :cond_f
    move-object v15, v0

    move v9, v3

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move/from16 v5, v19

    move/from16 v19, v2

    const/4 v0, 0x1

    :goto_9
    if-ge v5, v0, :cond_10

    invoke-virtual {v15}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v2, v6, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v3, v12

    move v10, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/GridRowView;->addItem(Landroidx/slice/SliceItem;ILandroid/view/ViewGroup;IZ)Z

    move-result v0

    if-eqz v0, :cond_11

    add-int/lit8 v1, v10, 0x1

    move-object/from16 v18, v15

    move/from16 v2, v19

    :goto_a
    const/16 v17, 0x1

    goto :goto_c

    :cond_10
    move v10, v5

    :cond_11
    :goto_b
    move v1, v10

    move/from16 v2, v19

    :goto_c
    add-int/lit8 v3, v9, 0x1

    move-object/from16 v5, v20

    move-object/from16 v4, v21

    const/4 v10, 0x1

    goto/16 :goto_5

    :cond_12
    if-eqz v17, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_13
    iget-object v0, v6, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v8, -0x1

    if-eq v7, v0, :cond_14

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v6, Landroidx/slice/widget/GridRowView;->mGutter:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    if-eqz v14, :cond_15

    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v1

    iget v2, v6, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v7, v8}, Landroidx/slice/widget/EventInfo;->setPosition(III)V

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v14, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-direct {v6, v12, v3}, Landroidx/slice/widget/GridRowView;->makeClickable(Landroid/view/View;Z)V

    :cond_15
    return-void
.end method

.method private addItem(Landroidx/slice/SliceItem;ILandroid/view/ViewGroup;IZ)Z
    .locals 7

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "long"

    const-string v4, "large"

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v1, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string p4, "image"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p4

    if-eqz p4, :cond_c

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_c

    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result p4

    const-string v0, "no_tint"

    const/4 v1, -0x1

    if-eqz p4, :cond_2

    sget-object p4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, p4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz p5, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    iget p0, p0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    :goto_0
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p4, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result p4

    xor-int/2addr p4, v2

    if-eqz p4, :cond_3

    iget p0, p0, Landroidx/slice/widget/GridRowView;->mIconSize:I

    goto :goto_1

    :cond_3
    iget p0, p0, Landroidx/slice/widget/GridRowView;->mSmallImageSize:I

    :goto_1
    if-eqz p4, :cond_4

    sget-object p4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_2

    :cond_4
    sget-object p4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_2
    invoke-virtual {v5, p4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p4, p0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_3
    if-eq p2, v1, :cond_5

    invoke-virtual {p1, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v5, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_5
    invoke-virtual {p3, v5, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_6
    :goto_4
    const-string p2, "title"

    filled-new-array {v4, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p5

    if-eqz p2, :cond_7

    const v1, 0x7f0d002a

    goto :goto_5

    :cond_7
    const v1, 0x7f0d0027

    :goto_5
    invoke-virtual {p5, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Landroid/widget/TextView;

    iget-object p5, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz p5, :cond_a

    if-eqz p2, :cond_8

    invoke-virtual {p5}, Landroidx/slice/widget/SliceStyle;->getGridTitleSize()I

    move-result p5

    goto :goto_6

    :cond_8
    invoke-virtual {p5}, Landroidx/slice/widget/SliceStyle;->getGridSubtitleSize()I

    move-result p5

    :goto_6
    int-to-float p5, p5

    invoke-virtual {v5, v6, p5}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz p2, :cond_9

    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p2}, Landroidx/slice/widget/SliceStyle;->getTitleColor()I

    move-result p2

    goto :goto_7

    :cond_9
    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p2}, Landroidx/slice/widget/SliceStyle;->getSubtitleColor()I

    move-result p2

    :goto_7
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Landroidx/slice/view/R$id;->getTimestampString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_8

    :cond_b
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_8
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v6, p4, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_c
    :goto_9
    if-eqz v5, :cond_d

    goto :goto_a

    :cond_d
    move v2, v6

    :goto_a
    return v2
.end method

.method private getExtraBottomPadding()I
    .locals 4

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    iget v2, p0, Landroidx/slice/widget/GridRowView;->mRowCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/slice/widget/SliceStyle;->getGridBottomPadding()I

    move-result v1

    :cond_1
    return v1
.end method

.method private getExtraTopPadding()I
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/SliceStyle;->getGridTopPadding()I

    move-result v1

    :cond_0
    return v1
.end method

.method private makeClickable(Landroid/view/View;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x101045c

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Landroidx/slice/view/R$id;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private makeEntireGridClickable(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101030e

    invoke-static {v1, v2}, Landroidx/slice/view/R$id;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method

.method private scheduleMaxCellsUpdate()Z
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getMaxCells()I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method getMaxCells()I
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getGridContent()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getLargestImageMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mSmallImageMinWidth:I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget p0, p0, Landroidx/slice/widget/GridRowView;->mGutter:I

    add-int/2addr v0, p0

    div-int/2addr v1, v0

    :cond_2
    return v1

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidx/slice/SliceItem;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/slice/widget/EventInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "action"

    invoke-static {v0, v2, v1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, v1, v1}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-interface {p0, p1, v0}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "GridRowView"

    const-string v0, "PendingIntent for slice cannot be sent"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object p2, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    iget-object v0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {p2, v0, v1}, Landroidx/slice/widget/GridContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result p2

    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    add-int/2addr p2, v0

    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object p1, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    if-eq p1, v3, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    :goto_0
    return v1
.end method

.method populateViews()V
    .locals 13

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->scheduleMaxCellsUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v3

    const/4 v4, 0x3

    iget v5, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    invoke-direct {v0, v3, v4, v2, v5}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v4}, Landroidx/slice/widget/GridContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Landroidx/slice/widget/GridRowView;->makeEntireGridClickable(Z)V

    :cond_3
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    iget-object v0, v0, Landroidx/slice/widget/SliceContent;->mContentDescr:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getGridContent()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v3}, Landroidx/slice/widget/GridContent;->getLargestImageMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/16 v5, 0x30

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_1
    iget v3, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    iget-object v5, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v5}, Landroidx/slice/widget/GridContent;->getSeeMoreItem()Landroidx/slice/SliceItem;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    move v5, v2

    goto :goto_2

    :cond_7
    move v5, v6

    :goto_2
    move v7, v6

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_d

    iget-object v8, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-lt v8, v3, :cond_c

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v5}, Landroidx/slice/widget/GridContent;->getSeeMoreItem()Landroidx/slice/SliceItem;

    move-result-object v5

    iget-object v7, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    iget v8, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v9

    const-string v10, "slice"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v9

    const-string v10, "action"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_9

    new-instance v0, Landroidx/slice/widget/GridContent$CellContent;

    invoke-direct {v0, v5}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    invoke-direct {p0, v0, v7, v8}, Landroidx/slice/widget/GridRowView;->addCell(Landroidx/slice/widget/GridContent$CellContent;II)V

    goto/16 :goto_5

    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    iget-object v10, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v10}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v10

    const v11, 0x7f0a0714

    if-eqz v10, :cond_a

    const v10, 0x7f0d001d

    iget-object v12, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10, v12, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v3, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    goto :goto_4

    :cond_a
    const v3, 0x7f0d001c

    iget-object v10, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3, v10, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v10, 0x7f0a0713

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iget-object v11, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Landroidx/slice/widget/SliceStyle;->getGridTitleSize()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v6, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v11, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v11}, Landroidx/slice/widget/SliceStyle;->getTitleColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    :goto_4
    iget-object v10, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v11, v6, v1, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v10, 0x7f120034

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v6

    invoke-virtual {v1, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v1

    const/4 v3, 0x4

    iget v6, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    invoke-direct {v0, v1, v3, v2, v6}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    invoke-virtual {v0, v4, v7, v8}, Landroidx/slice/widget/EventInfo;->setPosition(III)V

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, v9, v2}, Landroidx/slice/widget/GridRowView;->makeClickable(Landroid/view/View;Z)V

    goto :goto_5

    :cond_c
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/slice/widget/GridContent$CellContent;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-direct {p0, v8, v7, v9}, Landroidx/slice/widget/GridRowView;->addCell(Landroidx/slice/widget/GridContent$CellContent;II)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_d
    :goto_5
    return-void

    :cond_e
    :goto_6
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    return-void
.end method

.method public resetView()V
    .locals 3

    iget-boolean v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    invoke-direct {p0, v1}, Landroidx/slice/widget/GridRowView;->makeEntireGridClickable(Z)V

    return-void
.end method

.method public setInsets(IIII)V
    .locals 2

    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mInsetStart:I

    iput p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    iput p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetEnd:I

    iput p4, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraTopPadding()I

    move-result v1

    add-int/2addr p2, v1

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraBottomPadding()I

    move-result p0

    add-int/2addr p4, p0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setSliceItem(Landroidx/slice/widget/SliceContent;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    invoke-virtual {p0, p5}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    iput p3, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    iput p4, p0, Landroidx/slice/widget/GridRowView;->mRowCount:I

    check-cast p1, Landroidx/slice/widget/GridContent;

    iput-object p1, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->scheduleMaxCellsUpdate()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->populateViews()V

    :cond_0
    iget-object p1, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    iget p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetStart:I

    iget p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraTopPadding()I

    move-result p4

    add-int/2addr p3, p4

    iget p4, p0, Landroidx/slice/widget/SliceChildView;->mInsetEnd:I

    iget p5, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraBottomPadding()I

    move-result p0

    add-int/2addr p5, p0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    iget-object p1, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->populateViews()V

    :cond_0
    return-void
.end method
