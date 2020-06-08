.class public Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/ListBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowBuilderImpl"
.end annotation


# instance fields
.field private mContentDescr:Ljava/lang/CharSequence;

.field private mEndItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field private mStartItem:Landroidx/slice/Slice;

.field private mSubtitleItem:Landroidx/slice/SliceItem;

.field private mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method constructor <init>(Landroidx/slice/Slice$Builder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 3

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    :cond_1
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/Slice;

    invoke-virtual {p1, v2}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "content_description"

    invoke-virtual {p1, v1, v2, v0}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_4
    iget-object p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    :cond_5
    return-void
.end method

.method fillFrom(Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 14

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->setBuilder(Landroidx/slice/Slice$Builder;)V

    :cond_0
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getLayoutDirection()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "layout_direction"

    invoke-virtual {v1, v0, v4, v3}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_1
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    const-string v1, "large"

    const-string v3, "no_tint"

    const/4 v4, 0x2

    const-string v5, "title"

    const/4 v6, 0x0

    const-string v7, "partial"

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->isTitleActionLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->isTitleItemLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTimeStamp()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTimeStamp()J

    move-result-wide v8

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v10

    invoke-direct {v0, v10}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    new-array v10, v2, [Ljava/lang/String;

    invoke-virtual {v0, v8, v9, v6, v10}, Landroidx/slice/Slice$Builder;->addTimestamp(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    goto :goto_2

    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleImageMode()I

    move-result v8

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->isTitleItemLoading()Z

    move-result v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_5

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-ne v8, v4, :cond_6

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    new-instance v8, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v11

    invoke-direct {v8, v11}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    invoke-virtual {v8, v0, v6, v10}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    if-eqz v9, :cond_8

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_8
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    invoke-virtual {v8}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    goto :goto_2

    :cond_9
    :goto_1
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->isTitleActionLoading()Z

    move-result v8

    new-instance v9, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v10

    invoke-direct {v9, v10}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    if-eqz v8, :cond_a

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_a
    invoke-virtual {v0, v9}, Landroidx/slice/builders/SliceAction;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    :cond_b
    :goto_2
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v8, "text"

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->isTitleLoading()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->isTitleLoading()Z

    move-result v9

    new-instance v10, Landroidx/slice/SliceItem;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v0, v8, v6, v5}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v10, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v9, :cond_d

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0, v7}, Landroidx/slice/SliceItem;->addHint(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->isSubtitleLoading()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->isSubtitleLoading()Z

    move-result v5

    new-instance v9, Landroidx/slice/SliceItem;

    new-array v10, v2, [Ljava/lang/String;

    invoke-direct {v9, v0, v8, v6, v10}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v9, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-eqz v5, :cond_f

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0, v7}, Landroidx/slice/SliceItem;->addHint(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    :cond_10
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getEndItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getEndTypes()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getEndLoads()Ljava/util/List;

    move-result-object p1

    move v8, v2

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_19

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_18

    const/4 v10, 0x1

    if-eq v9, v10, :cond_13

    if-eq v9, v4, :cond_11

    goto/16 :goto_4

    :cond_11
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/slice/builders/SliceAction;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    new-instance v11, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v12

    invoke-direct {v11, v12}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    if-eqz v10, :cond_12

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_12
    iget-object v10, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Landroidx/slice/builders/SliceAction;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_13
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/util/Pair;

    iget-object v10, v9, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroidx/core/graphics/drawable/IconCompat;

    iget-object v9, v9, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz v9, :cond_14

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    if-ne v9, v4, :cond_15

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eqz v11, :cond_16

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    new-instance v9, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v13

    invoke-direct {v9, v13}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    invoke-virtual {v9, v10, v6, v12}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    if-eqz v11, :cond_17

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_17
    iget-object v10, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_18
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    new-instance v12, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v13

    invoke-direct {v12, v13}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    new-array v13, v2, [Ljava/lang/String;

    invoke-virtual {v12, v9, v10, v6, v13}, Landroidx/slice/Slice$Builder;->addTimestamp(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    invoke-virtual {v12}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_19
    return-void
.end method

.method hasText()Z
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
