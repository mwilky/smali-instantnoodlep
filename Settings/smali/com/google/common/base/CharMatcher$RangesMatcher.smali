.class Lcom/google/common/base/CharMatcher$RangesMatcher;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangesMatcher"
.end annotation


# instance fields
.field private final rangeEnds:[C

.field private final rangeStarts:[C


# direct methods
.method constructor <init>(Ljava/lang/String;[C[C)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    iput-object p3, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    array-length p0, p2

    array-length p1, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->checkArgument(Z)V

    move p0, v1

    :goto_1
    array-length p1, p2

    if-ge p0, p1, :cond_4

    aget-char p1, p2, p0

    aget-char v2, p3, p0

    if-gt p1, v2, :cond_1

    move p1, v0

    goto :goto_2

    :cond_1
    move p1, v1

    :goto_2
    invoke-static {p1}, Lcom/google/common/base/MoreObjects;->checkArgument(Z)V

    add-int/lit8 p1, p0, 0x1

    array-length v2, p2

    if-ge p1, v2, :cond_3

    aget-char p0, p3, p0

    aget-char v2, p2, p1

    if-ge p0, v2, :cond_2

    move p0, v0

    goto :goto_3

    :cond_2
    move p0, v1

    :goto_3
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->checkArgument(Z)V

    :cond_3
    move p0, p1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    return v1

    :cond_0
    not-int v0, v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_1

    iget-object p0, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    aget-char p0, p0, v0

    if-gt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
