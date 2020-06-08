.class public Landroidx/slice/widget/ListContent;
.super Landroidx/slice/widget/SliceContent;
.source "ListContent.java"


# instance fields
.field private mHeaderContent:Landroidx/slice/widget/RowContent;

.field private mPrimaryAction:Landroidx/slice/core/SliceAction;

.field private mRowItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation
.end field

.field private mSeeMoreContent:Landroidx/slice/widget/RowContent;

.field private mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/slice/Slice;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroidx/slice/widget/SliceContent;-><init>(Landroidx/slice/Slice;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    iget-object v2, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    goto/16 :goto_8

    :cond_1
    const-string v2, "actions"

    const/4 v3, 0x0

    const-string v4, "slice"

    invoke-static {v1, v4, v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v5

    const-string v6, "shortcut"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_2

    invoke-static {v5, v4, v7, v3}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v3

    :goto_0
    const/4 v7, 0x0

    if-eqz v5, :cond_3

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v7

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/slice/SliceItem;

    new-instance v11, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v11, v10}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    move-object v8, v3

    :cond_4
    iput-object v8, v0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    const-string v9, "list_item"

    const-string v10, "shortcut"

    const-string v11, "actions"

    const-string v12, "keywords"

    const-string v13, "ttl"

    const-string v14, "last_updated"

    const-string v15, "horizontal"

    const-string v16, "selection_option"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v3, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v5

    const-string v8, "keywords"

    const-string v9, "see_more"

    const/4 v10, 0x1

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    filled-new-array {v2, v8, v9}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "text"

    invoke-static {v5, v11, v3, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v11

    if-eqz v11, :cond_5

    move v11, v10

    goto :goto_2

    :cond_5
    move v11, v7

    :goto_2
    if-eqz v11, :cond_6

    goto :goto_3

    :cond_6
    move-object v5, v3

    :goto_3
    if-eqz v5, :cond_7

    new-instance v11, Landroidx/slice/widget/RowContent;

    invoke-direct {v11, v5, v7}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    iput-object v11, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    iget-object v5, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    iget-object v11, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v3, v5, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v5

    const-string v11, "action"

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ne v13, v10, :cond_9

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/slice/SliceItem;

    invoke-virtual {v13}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    goto :goto_4

    :cond_8
    move-object v5, v3

    :cond_9
    :goto_4
    if-eqz v5, :cond_a

    new-instance v12, Landroidx/slice/widget/RowContent;

    const/4 v13, -0x1

    invoke-direct {v12, v5, v13}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    iput-object v12, v0, Landroidx/slice/widget/ListContent;->mSeeMoreContent:Landroidx/slice/widget/RowContent;

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    move v5, v7

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_f

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/slice/SliceItem;

    invoke-virtual {v12}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ttl"

    const-string v15, "last_updated"

    filled-new-array {v2, v9, v8, v14, v15}, [Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    :cond_b
    iget-object v13, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    const-string v14, "list_item"

    if-nez v13, :cond_c

    invoke-virtual {v12, v14}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_c

    new-instance v13, Landroidx/slice/widget/RowContent;

    invoke-direct {v13, v12, v7}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    iput-object v13, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    iget-object v12, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    iget-object v13, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v12, v7, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v12, v14}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    const-string v13, "horizontal"

    invoke-virtual {v12, v13}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    iget-object v13, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    new-instance v14, Landroidx/slice/widget/GridContent;

    invoke-direct {v14, v12, v5}, Landroidx/slice/widget/GridContent;-><init>(Landroidx/slice/SliceItem;I)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    iget-object v13, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    new-instance v14, Landroidx/slice/widget/RowContent;

    invoke-direct {v14, v12, v5}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_f
    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-nez v1, :cond_10

    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v10, :cond_10

    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/RowContent;

    iput-object v1, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v1, v10}, Landroidx/slice/widget/RowContent;->setIsHeader(Z)V

    :cond_10
    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/slice/widget/GridContent;

    if-eqz v1, :cond_11

    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/GridContent;

    invoke-virtual {v1, v10}, Landroidx/slice/widget/GridContent;->setIsLastIndex(Z)V

    :cond_11
    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v1

    goto :goto_7

    :cond_12
    move-object v1, v3

    :goto_7
    if-nez v1, :cond_13

    const-string v1, "title"

    filled-new-array {v6, v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v2, v11, v1, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    :cond_13
    if-nez v1, :cond_14

    iget-object v1, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v1, v11, v3, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    :cond_14
    if-eqz v1, :cond_15

    new-instance v3, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v3, v1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    :cond_15
    iput-object v3, v0, Landroidx/slice/widget/ListContent;->mPrimaryAction:Landroidx/slice/core/SliceAction;

    :goto_8
    return-void
.end method

.method public static getRowType(Landroidx/slice/widget/SliceContent;ZLjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/widget/SliceContent;",
            "Z",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    instance-of v1, p0, Landroidx/slice/widget/GridContent;

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    check-cast p0, Landroidx/slice/widget/RowContent;

    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v2, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v2, v1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p0

    const-string p1, "action"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    const/4 p0, 0x5

    :goto_0
    return p0

    :cond_3
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getSelection()Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    const/4 v1, 0x3

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    move p0, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_7

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/core/SliceAction;

    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_7
    return v0

    :cond_8
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getToggleItems()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_9

    move v0, v1

    :cond_9
    return v0
.end method


# virtual methods
.method public getHeader()Landroidx/slice/widget/RowContent;
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    return-object p0
.end method

.method public getHeaderTemplateType()I
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Landroidx/slice/widget/ListContent;->getRowType(Landroidx/slice/widget/SliceContent;ZLjava/util/List;)I

    move-result p0

    return p0
.end method

.method public getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 0

    invoke-virtual {p1, p0, p2}, Landroidx/slice/widget/SliceStyle;->getListHeight(Landroidx/slice/widget/ListContent;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result p0

    return p0
.end method

.method public getRowItems()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getRowItems(ILandroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/slice/widget/SliceStyle;",
            "Landroidx/slice/widget/SliceViewPolicy;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    new-array p2, v1, [Landroidx/slice/widget/RowContent;

    const/4 p3, 0x0

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    aput-object p0, p2, p3

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_0
    invoke-virtual {p3}, Landroidx/slice/widget/SliceViewPolicy;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    invoke-virtual {p2, p0, p1, p3}, Landroidx/slice/widget/SliceStyle;->getListItemsForNonScrollingList(Landroidx/slice/widget/ListContent;ILandroidx/slice/widget/SliceViewPolicy;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getSeeMoreItem()Landroidx/slice/widget/SliceContent;
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mSeeMoreContent:Landroidx/slice/widget/RowContent;

    return-object p0
.end method

.method public getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;
    .locals 13

    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mPrimaryAction:Landroidx/slice/core/SliceAction;

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    move-object v0, v1

    goto/16 :goto_8

    :cond_2
    const/4 v2, 0x3

    const-string v3, "title"

    const-string v4, "shortcut"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "action"

    invoke-static {v0, v5, v4, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    const-string v4, "text"

    const-string v6, "image"

    if-eqz v0, :cond_3

    invoke-static {v0, v6, v3, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    invoke-static {v0, v4, v1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v8

    goto :goto_1

    :cond_3
    move-object v7, v1

    move-object v8, v7

    :goto_1
    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v0, v5, v1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    :cond_4
    if-nez v7, :cond_5

    iget-object v5, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v5, v6, v3, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    :cond_5
    if-nez v8, :cond_6

    iget-object v5, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v5, v4, v3, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v8

    :cond_6
    if-nez v7, :cond_7

    iget-object v3, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v3, v6, v1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    :cond_7
    if-nez v8, :cond_8

    iget-object v3, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v3, v4, v1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v8

    :cond_8
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v7, :cond_b

    const-string v2, "no_tint"

    invoke-virtual {v7, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "large"

    invoke-virtual {v7, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    goto :goto_2

    :cond_9
    const/4 v2, 0x1

    goto :goto_2

    :cond_a
    move v2, v4

    :cond_b
    :goto_2
    if-eqz p1, :cond_15

    iget-object p0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    const-string v5, "slice"

    invoke-static {p0, v5, v1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    goto :goto_3

    :cond_d
    move-object v5, v1

    :goto_3
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_4

    :cond_e
    move-object v6, v1

    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    if-eqz v8, :cond_f

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_5

    :cond_f
    move-object v8, v1

    :goto_5
    if-eqz v8, :cond_13

    if-nez v5, :cond_11

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v5, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_10

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    goto :goto_6

    :cond_10
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    invoke-virtual {v2, v4, v4, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v5}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    :goto_6
    move-object v5, v2

    move v2, v3

    :cond_11
    if-nez v6, :cond_12

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v6, v3

    :cond_12
    if-nez v0, :cond_13

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_13

    new-instance v0, Landroidx/slice/SliceItem;

    invoke-static {p1, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    new-instance v3, Landroidx/slice/Slice$Builder;

    invoke-direct {v3, p0}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v9

    const/4 v11, 0x0

    new-array v12, v4, [Ljava/lang/String;

    const-string v10, "action"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_13
    if-nez v0, :cond_14

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v4, p0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    new-instance p0, Landroidx/slice/SliceItem;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v10, "action"

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_7

    :cond_14
    move-object p0, v0

    :goto_7
    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    new-instance v1, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v1, p0, v5, v2, v6}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_15
    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    if-eqz v8, :cond_1

    new-instance p0, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v7}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-virtual {v8}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p1, v0, v2, v1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    move-object v0, p0

    :goto_8
    return-object v0
.end method

.method public getSliceActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    return-object p0
.end method

.method public isValid()Z
    .locals 1

    invoke-super {p0}, Landroidx/slice/widget/SliceContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showActionDividers(Z)V
    .locals 2

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceContent;

    instance-of v1, v0, Landroidx/slice/widget/RowContent;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/slice/widget/RowContent;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/RowContent;->showActionDivider(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public showHeaderDivider(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/RowContent;->showBottomDivider(Z)V

    :cond_0
    return-void
.end method

.method public showTitleItems(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/slice/widget/RowContent;->showTitleItems(Z)V

    :cond_0
    return-void
.end method
