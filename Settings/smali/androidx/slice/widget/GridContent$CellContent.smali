.class public Landroidx/slice/widget/GridContent$CellContent;
.super Ljava/lang/Object;
.source "GridContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/GridContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellContent"
.end annotation


# instance fields
.field private mCellItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContentDescr:Landroidx/slice/SliceItem;

.field private mContentIntent:Landroidx/slice/SliceItem;

.field private mHasImage:Z

.field private mImageMode:I

.field private mTextCount:I

.field private mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shortcut"

    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "image"

    const-string v3, "long"

    const-string v4, "text"

    const-string v5, "content_description"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v1, :cond_b

    const-string v1, "slice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "action"

    if-nez v8, :cond_0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v7, :cond_2

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/slice/SliceItem;

    invoke-virtual {v10}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/slice/SliceItem;

    invoke-virtual {v10}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    iput-object v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentIntent:Landroidx/slice/SliceItem;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v8

    :cond_2
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentIntent:Landroidx/slice/SliceItem;

    :cond_3
    iput v6, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    move p1, v6

    move v0, p1

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_10

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iput-object v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentDescr:Landroidx/slice/SliceItem;

    goto :goto_3

    :cond_4
    iget v10, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    const/4 v11, 0x2

    if-ge v10, v11, :cond_7

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_5
    iget v9, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    add-int/2addr v9, v7

    iput v9, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    iget-object v9, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Landroidx/slice/widget/GridContent$CellContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v9, :cond_6

    const-string v10, "title"

    invoke-virtual {v9, v10}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v1, v10}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_6
    iput-object v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mTitleItem:Landroidx/slice/SliceItem;

    goto :goto_3

    :cond_7
    if-ge v0, v7, :cond_a

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "no_tint"

    invoke-virtual {v1, v9}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "large"

    invoke-virtual {v1, v9}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_1

    :cond_8
    move v11, v7

    :goto_1
    iput v11, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    goto :goto_2

    :cond_9
    iput v6, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    iput-boolean v7, p0, Landroidx/slice/widget/GridContent$CellContent;->mHasImage:Z

    iget-object v9, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "keywords"

    const-string v5, "ttl"

    const-string v8, "last_updated"

    filled-new-array {v1, v5, v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4

    :cond_c
    move v1, v6

    goto :goto_5

    :cond_d
    :goto_4
    move v1, v7

    :goto_5
    if-nez v1, :cond_f

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    move v6, v7

    :cond_f
    if-eqz v6, :cond_10

    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual {p0}, Landroidx/slice/widget/GridContent$CellContent;->isValid()Z

    return-void
.end method


# virtual methods
.method public getCellItems()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentDescr:Landroidx/slice/SliceItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getContentIntent()Landroidx/slice/SliceItem;
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentIntent:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getImageMode()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    return p0
.end method

.method public getTextCount()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    return p0
.end method

.method public getTitleItem()Landroidx/slice/SliceItem;
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/GridContent$CellContent;->mTitleItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public hasImage()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/slice/widget/GridContent$CellContent;->mHasImage:Z

    return p0
.end method

.method public isImageOnly()Z
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p0

    const-string v0, "image"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
