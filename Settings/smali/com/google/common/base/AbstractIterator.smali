.class abstract Lcom/google/common/base/AbstractIterator;
.super Ljava/lang/Object;
.source "AbstractIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:Lcom/google/common/base/AbstractIterator$State;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->NOT_READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    return-void
.end method


# virtual methods
.method protected final endOfData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->DONE:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasNext()Z
    .locals 12

    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    sget-object v1, Lcom/google/common/base/AbstractIterator$State;->FAILED:Lcom/google/common/base/AbstractIterator$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->checkState(Z)V

    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->FAILED:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    move-object v0, p0

    check-cast v0, Lcom/google/common/base/Splitter$SplittingIterator;

    iget v1, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    :cond_1
    :goto_1
    iget v4, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    move-object v6, v0

    check-cast v6, Lcom/google/common/base/Splitter$2$1;

    iget-object v7, v6, Lcom/google/common/base/Splitter$2$1;->this$0:Lcom/google/common/base/Splitter$2;

    iget-object v7, v7, Lcom/google/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, v6, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v7

    :goto_2
    if-gt v4, v8, :cond_3

    move v9, v2

    :goto_3
    if-ge v9, v7, :cond_4

    iget-object v10, v6, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int v11, v9, v4

    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    iget-object v11, v6, Lcom/google/common/base/Splitter$2$1;->this$0:Lcom/google/common/base/Splitter$2;

    iget-object v11, v11, Lcom/google/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v10, v11, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    move v4, v5

    :cond_4
    if-ne v4, v5, :cond_5

    iget-object v4, v0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v5, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_4

    :cond_5
    iget-object v6, v6, Lcom/google/common/base/Splitter$2$1;->this$0:Lcom/google/common/base/Splitter$2;

    iget-object v6, v6, Lcom/google/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    iput v6, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    :goto_4
    iget v6, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    if-ne v6, v1, :cond_6

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    iget v4, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    iget-object v6, v0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lt v4, v6, :cond_1

    iput v5, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_1

    :cond_6
    :goto_5
    if-ge v1, v4, :cond_7

    iget-object v6, v0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v7, v0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    if-le v4, v1, :cond_8

    iget-object v6, v0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v7, v0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v8, v4, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v6

    if-eqz v6, :cond_8

    move v4, v8

    goto :goto_6

    :cond_8
    iget-boolean v6, v0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v6, :cond_9

    if-ne v1, v4, :cond_9

    iget v1, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto/16 :goto_1

    :cond_9
    iget v6, v0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    if-ne v6, v3, :cond_a

    iget-object v4, v0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v5, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    :goto_7
    if-le v4, v1, :cond_b

    iget-object v5, v0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v6, v0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v5

    if-eqz v5, :cond_b

    move v4, v7

    goto :goto_7

    :cond_a
    sub-int/2addr v6, v3

    iput v6, v0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    :cond_b
    iget-object v0, v0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_c
    invoke-virtual {v0}, Lcom/google/common/base/AbstractIterator;->endOfData()Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_8
    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->next:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    sget-object v1, Lcom/google/common/base/AbstractIterator$State;->DONE:Lcom/google/common/base/AbstractIterator$State;

    if-eq v0, v1, :cond_d

    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    move v2, v3

    :cond_d
    return v2

    :cond_e
    return v3
.end method

.method public final next()Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    sget-object v1, Lcom/google/common/base/AbstractIterator$State;->FAILED:Lcom/google/common/base/AbstractIterator$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->checkState(Z)V

    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const/4 v4, 0x2

    if-eq v0, v4, :cond_d

    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->FAILED:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    move-object v0, p0

    check-cast v0, Lcom/google/common/base/Splitter$SplittingIterator;

    iget v4, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    :cond_1
    :goto_1
    iget v5, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_c

    move-object v7, v0

    check-cast v7, Lcom/google/common/base/Splitter$2$1;

    iget-object v8, v7, Lcom/google/common/base/Splitter$2$1;->this$0:Lcom/google/common/base/Splitter$2;

    iget-object v8, v8, Lcom/google/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, v7, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    sub-int/2addr v9, v8

    :goto_2
    if-gt v5, v9, :cond_3

    move v10, v2

    :goto_3
    if-ge v10, v8, :cond_4

    iget-object v11, v7, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int v12, v10, v5

    invoke-interface {v11, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    iget-object v12, v7, Lcom/google/common/base/Splitter$2$1;->this$0:Lcom/google/common/base/Splitter$2;

    iget-object v12, v12, Lcom/google/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v11, v12, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    move v5, v6

    :cond_4
    if-ne v5, v6, :cond_5

    iget-object v5, v0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iput v6, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_4

    :cond_5
    iget-object v7, v7, Lcom/google/common/base/Splitter$2$1;->this$0:Lcom/google/common/base/Splitter$2;

    iget-object v7, v7, Lcom/google/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    iput v7, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    :goto_4
    iget v7, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    if-ne v7, v4, :cond_6

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    iget v5, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    iget-object v7, v0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lt v5, v7, :cond_1

    iput v6, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_1

    :cond_6
    :goto_5
    if-ge v4, v5, :cond_7

    iget-object v7, v0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v8, v0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v8, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v7

    if-eqz v7, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    if-le v5, v4, :cond_8

    iget-object v7, v0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v8, v0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v9, v5, -0x1

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v7

    if-eqz v7, :cond_8

    move v5, v9

    goto :goto_6

    :cond_8
    iget-boolean v7, v0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v7, :cond_9

    if-ne v4, v5, :cond_9

    iget v4, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto/16 :goto_1

    :cond_9
    iget v7, v0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    if-ne v7, v3, :cond_a

    iget-object v5, v0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iput v6, v0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    :goto_7
    if-le v5, v4, :cond_b

    iget-object v6, v0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v7, v0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v6

    if-eqz v6, :cond_b

    move v5, v8

    goto :goto_7

    :cond_a
    sub-int/2addr v7, v3

    iput v7, v0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    :cond_b
    iget-object v0, v0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v0, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_c
    invoke-virtual {v0}, Lcom/google/common/base/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-object v0, v1

    :goto_8
    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->next:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    sget-object v4, Lcom/google/common/base/AbstractIterator$State;->DONE:Lcom/google/common/base/AbstractIterator$State;

    if-eq v0, v4, :cond_d

    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    goto :goto_9

    :cond_d
    move v3, v2

    :cond_e
    :goto_9
    if-eqz v3, :cond_f

    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->NOT_READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->next:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/base/AbstractIterator;->next:Ljava/lang/Object;

    return-object v0

    :cond_f
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
