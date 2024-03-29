.class public final Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSSExpandedReader.java"


# static fields
.field private static final EVEN_TOTAL_SUBSET:[I

.field private static final FINDER_PATTERNS:[[I

.field private static final FINDER_PATTERN_SEQUENCES:[[I

.field private static final GSUM:[I

.field private static final SYMBOL_WIDEST:[I

.field private static final WEIGHTS:[[I


# instance fields
.field private final pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation
.end field

.field private final startEnd:[I

.field private startFromEven:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    const/4 v1, 0x6

    new-array v2, v1, [[I

    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v7, 0x2

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v8, 0x3

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    aput-object v4, v2, v0

    sput-object v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    const/16 v2, 0x17

    new-array v2, v2, [[I

    const/16 v4, 0x8

    new-array v9, v4, [I

    fill-array-data v9, :array_9

    aput-object v9, v2, v5

    new-array v9, v4, [I

    fill-array-data v9, :array_a

    aput-object v9, v2, v6

    new-array v9, v4, [I

    fill-array-data v9, :array_b

    aput-object v9, v2, v7

    new-array v9, v4, [I

    fill-array-data v9, :array_c

    aput-object v9, v2, v8

    new-array v9, v4, [I

    fill-array-data v9, :array_d

    aput-object v9, v2, v3

    new-array v9, v4, [I

    fill-array-data v9, :array_e

    aput-object v9, v2, v0

    new-array v9, v4, [I

    fill-array-data v9, :array_f

    aput-object v9, v2, v1

    new-array v9, v4, [I

    fill-array-data v9, :array_10

    const/4 v10, 0x7

    aput-object v9, v2, v10

    new-array v9, v4, [I

    fill-array-data v9, :array_11

    aput-object v9, v2, v4

    new-array v9, v4, [I

    fill-array-data v9, :array_12

    const/16 v11, 0x9

    aput-object v9, v2, v11

    new-array v9, v4, [I

    fill-array-data v9, :array_13

    const/16 v12, 0xa

    aput-object v9, v2, v12

    new-array v9, v4, [I

    fill-array-data v9, :array_14

    const/16 v13, 0xb

    aput-object v9, v2, v13

    new-array v9, v4, [I

    fill-array-data v9, :array_15

    const/16 v14, 0xc

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_16

    const/16 v14, 0xd

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_17

    const/16 v14, 0xe

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_18

    const/16 v14, 0xf

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_19

    const/16 v14, 0x10

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1a

    const/16 v14, 0x11

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1b

    const/16 v14, 0x12

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1c

    const/16 v14, 0x13

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1d

    const/16 v14, 0x14

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1e

    const/16 v14, 0x15

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1f

    const/16 v14, 0x16

    aput-object v9, v2, v14

    sput-object v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    new-array v2, v12, [[I

    new-array v9, v7, [I

    fill-array-data v9, :array_20

    aput-object v9, v2, v5

    new-array v5, v8, [I

    fill-array-data v5, :array_21

    aput-object v5, v2, v6

    new-array v5, v3, [I

    fill-array-data v5, :array_22

    aput-object v5, v2, v7

    new-array v5, v0, [I

    fill-array-data v5, :array_23

    aput-object v5, v2, v8

    new-array v5, v1, [I

    fill-array-data v5, :array_24

    aput-object v5, v2, v3

    new-array v3, v10, [I

    fill-array-data v3, :array_25

    aput-object v3, v2, v0

    new-array v0, v4, [I

    fill-array-data v0, :array_26

    aput-object v0, v2, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_27

    aput-object v0, v2, v10

    new-array v0, v12, [I

    fill-array-data v0, :array_28

    aput-object v0, v2, v4

    new-array v0, v13, [I

    fill-array-data v0, :array_29

    aput-object v0, v2, v11

    sput-object v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7
        0x5
        0x4
        0x3
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x14
        0x34
        0x68
        0xcc
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x15c
        0x56c
        0xb84
        0xf94
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x8
        0x4
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x6
        0x4
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x4
        0x6
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x2
        0x8
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x6
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x2
        0x9
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    :array_b
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    :array_c
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    :array_d
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    :array_e
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    :array_f
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    :array_10
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    :array_11
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    :array_12
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    :array_13
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    :array_14
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    :array_15
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    :array_16
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    :array_17
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    :array_18
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    :array_1a
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    :array_1b
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    :array_1c
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    :array_1d
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    :array_1e
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    :array_1f
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    :array_20
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x2
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    return-void
.end method

.method private checkChecksum()Z
    .locals 8

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    move v5, v3

    move v3, v0

    move v0, v4

    :goto_0
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v7

    add-int/2addr v7, v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v3

    add-int/2addr v3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v3, v7

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    rem-int/lit16 v3, v3, 0xd3

    add-int/lit8 v5, v5, -0x4

    mul-int/lit16 v5, v5, 0xd3

    add-int/2addr v5, v3

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result p0

    if-ne v5, p0, :cond_3

    move v1, v4

    :cond_3
    return v1
.end method

.method private checkRows(Ljava/util/List;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_8

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    array-length v4, v3

    move v5, v2

    :goto_2
    const/4 v6, 0x1

    if-ge v5, v4, :cond_5

    aget-object v7, v3, v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    array-length v9, v7

    if-le v8, v9, :cond_1

    goto :goto_5

    :cond_1
    move v8, v2

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v9

    aget v10, v7, v8

    if-eq v9, v10, :cond_2

    move v7, v2

    goto :goto_4

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    move v7, v6

    :goto_4
    if-eqz v7, :cond_4

    move v2, v6

    goto :goto_6

    :cond_4
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_6
    if-nez v2, :cond_6

    goto :goto_7

    :cond_6
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    return-object p0

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, p2, 0x1

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private checkRows(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x19

    if-le v0, v2, :cond_0

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_2
    return-object v1
.end method

.method static constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    sub-int/2addr v0, v1

    invoke-static {p0, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline8(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    mul-int/lit8 v0, v0, 0xc

    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v3

    const/16 v4, 0xb

    move v6, v0

    move v5, v4

    :goto_0
    if-ltz v5, :cond_2

    shl-int v7, v1, v5

    and-int/2addr v7, v3

    if-eqz v7, :cond_1

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v7

    move v8, v6

    move v6, v4

    :goto_2
    if-ltz v6, :cond_4

    shl-int v9, v1, v6

    and-int/2addr v9, v7

    if-eqz v9, :cond_3

    invoke-virtual {v2, v8}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v5

    move v6, v4

    :goto_3
    if-ltz v6, :cond_6

    shl-int v7, v1, v6

    and-int/2addr v7, v5

    if-eqz v7, :cond_5

    invoke-virtual {v2, v8}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_5
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_6
    move v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    invoke-static {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    invoke-static {p0, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline8(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object p0

    new-instance v4, Lcom/google/zxing/Result;

    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/google/zxing/ResultPoint;

    aget-object v7, v3, v0

    aput-object v7, v6, v0

    aget-object v3, v3, v1

    aput-object v3, v6, v1

    const/4 v3, 0x2

    aget-object v0, p0, v0

    aput-object v0, v6, v3

    const/4 v0, 0x3

    aget-object p0, p0, v1

    aput-object p0, v6, v0

    sget-object p0, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v4, v2, v5, v6, p0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v4
.end method

.method private findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    move-result-object v0

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v4, 0x3

    aput v1, v0, v4

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    invoke-static {p2, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline8(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {p3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object p3

    aget p3, p3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    rem-int/2addr p2, v3

    if-eqz p2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    iget-boolean v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v6, :cond_3

    xor-int/lit8 p2, p2, 0x1

    :cond_3
    move v6, v1

    :goto_2
    if-ge p3, v5, :cond_5

    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    xor-int/2addr v6, v2

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    move v8, p3

    move v7, v1

    :goto_4
    if-ge p3, v5, :cond_c

    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    xor-int/2addr v9, v6

    if-eqz v9, :cond_6

    aget v9, v0, v7

    add-int/2addr v9, v2

    aput v9, v0, v7

    goto :goto_6

    :cond_6
    if-ne v7, v4, :cond_a

    if-eqz p2, :cond_7

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    :cond_7
    invoke-static {v0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->isFinderPattern([I)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aput v8, p0, v1

    aput p3, p0, v2

    return-void

    :cond_8
    if-eqz p2, :cond_9

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    :cond_9
    aget v9, v0, v1

    aget v10, v0, v2

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    aget v9, v0, v3

    aput v9, v0, v1

    aget v9, v0, v4

    aput v9, v0, v2

    aput v1, v0, v3

    aput v1, v0, v4

    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v7, v7, 0x1

    :goto_5
    aput v2, v0, v7

    if-nez v6, :cond_b

    move v6, v2

    goto :goto_6

    :cond_b
    move v6, v1

    :goto_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static reverseCounters([I)V
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    sub-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    aget v4, p0, v3

    aput v4, p0, v1

    aput v2, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDataCharacterCounters()[I

    move-result-object v1

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v5, 0x3

    aput v2, v1, v5

    const/4 v5, 0x4

    aput v2, v1, v5

    const/4 v6, 0x5

    aput v2, v1, v6

    const/4 v6, 0x6

    aput v2, v1, v6

    const/4 v6, 0x7

    aput v2, v1, v6

    if-eqz p4, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v6

    aget v6, v6, v2

    invoke-static {v0, v6, v1}, Lcom/google/zxing/oned/OneDReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    goto :goto_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v6

    aget v6, v6, v3

    invoke-static {v0, v6, v1}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    array-length v0, v1

    sub-int/2addr v0, v3

    move v6, v0

    move v0, v2

    :goto_0
    if-ge v0, v6, :cond_1

    aget v7, v1, v0

    aget v8, v1, v6

    aput v8, v1, v0

    aput v7, v1, v6

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v0, 0x11

    invoke-static {v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->count([I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v7

    aget v7, v7, v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v8

    aget v8, v8, v2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x41700000    # 15.0f

    div-float/2addr v7, v8

    sub-float v8, v6, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float/2addr v8, v7

    const v7, 0x3e99999a    # 0.3f

    cmpl-float v8, v8, v7

    if-gtz v8, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    move-result-object v11

    move v12, v2

    :goto_2
    array-length v13, v1

    if-ge v12, v13, :cond_7

    const/high16 v13, 0x3f800000    # 1.0f

    aget v14, v1, v12

    int-to-float v14, v14

    mul-float/2addr v14, v13

    div-float/2addr v14, v6

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    const/16 v15, 0x8

    if-ge v13, v3, :cond_3

    cmpg-float v13, v14, v7

    if-ltz v13, :cond_2

    move v13, v3

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_3
    if-le v13, v15, :cond_5

    const v13, 0x410b3333    # 8.7f

    cmpl-float v13, v14, v13

    if-gtz v13, :cond_4

    move v13, v15

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_5
    :goto_3
    shr-int/lit8 v15, v12, 0x1

    and-int/lit8 v16, v12, 0x1

    if-nez v16, :cond_6

    aput v13, v8, v15

    int-to-float v13, v13

    sub-float/2addr v14, v13

    aput v14, v10, v15

    goto :goto_4

    :cond_6
    aput v13, v9, v15

    int-to-float v13, v13

    sub-float/2addr v14, v13

    aput v14, v11, v15

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->count([I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v6

    invoke-static {v6}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->count([I)I

    move-result v6

    add-int v7, v1, v6

    sub-int/2addr v7, v0

    and-int/lit8 v0, v1, 0x1

    if-ne v0, v3, :cond_8

    move v0, v3

    goto :goto_5

    :cond_8
    move v0, v2

    :goto_5
    and-int/lit8 v10, v6, 0x1

    if-nez v10, :cond_9

    move v10, v3

    goto :goto_6

    :cond_9
    move v10, v2

    :goto_6
    const/16 v11, 0xd

    if-le v1, v11, :cond_a

    move v12, v2

    move v13, v3

    goto :goto_7

    :cond_a
    if-ge v1, v5, :cond_b

    move v13, v2

    move v12, v3

    goto :goto_7

    :cond_b
    move v12, v2

    move v13, v12

    :goto_7
    if-le v6, v11, :cond_c

    move v14, v2

    move v15, v3

    goto :goto_8

    :cond_c
    if-ge v6, v5, :cond_d

    move v15, v2

    move v14, v3

    goto :goto_8

    :cond_d
    move v14, v2

    move v15, v14

    :goto_8
    if-ne v7, v3, :cond_11

    if-eqz v0, :cond_f

    if-nez v10, :cond_e

    move v13, v3

    goto :goto_9

    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_f
    if-eqz v10, :cond_10

    move v15, v3

    goto :goto_9

    :cond_10
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_11
    const/4 v2, -0x1

    if-ne v7, v2, :cond_15

    if-eqz v0, :cond_13

    if-nez v10, :cond_12

    move v12, v3

    goto :goto_9

    :cond_12
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_13
    if-eqz v10, :cond_14

    move v14, v3

    goto :goto_9

    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_15
    if-nez v7, :cond_2a

    if-eqz v0, :cond_18

    if-eqz v10, :cond_17

    if-ge v1, v6, :cond_16

    move v12, v3

    move v15, v12

    goto :goto_9

    :cond_16
    move v13, v3

    move v14, v13

    goto :goto_9

    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_18
    if-nez v10, :cond_29

    :goto_9
    if-eqz v12, :cond_1a

    if-nez v13, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->increment([I[F)V

    goto :goto_a

    :cond_19
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1a
    :goto_a
    if-eqz v13, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decrement([I[F)V

    :cond_1b
    if-eqz v14, :cond_1d

    if-nez v15, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->increment([I[F)V

    goto :goto_b

    :cond_1c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1d
    :goto_b
    if-eqz v15, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decrement([I[F)V

    :cond_1e
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    mul-int/2addr v0, v5

    if-eqz p3, :cond_1f

    const/4 v1, 0x0

    goto :goto_c

    :cond_1f
    move v1, v4

    :goto_c
    add-int/2addr v0, v1

    xor-int/lit8 v1, p4, 0x1

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    array-length v1, v8

    sub-int/2addr v1, v3

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_d
    if-ltz v1, :cond_23

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v7

    if-nez v7, :cond_21

    if-eqz p3, :cond_21

    if-nez p4, :cond_20

    goto :goto_e

    :cond_20
    const/4 v7, 0x0

    goto :goto_f

    :cond_21
    :goto_e
    move v7, v3

    :goto_f
    if-eqz v7, :cond_22

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v7, v7, v0

    mul-int/lit8 v10, v1, 0x2

    aget v7, v7, v10

    aget v10, v8, v1

    mul-int/2addr v10, v7

    add-int/2addr v10, v2

    move v2, v10

    :cond_22
    aget v7, v8, v1

    add-int/2addr v6, v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_23
    array-length v1, v9

    sub-int/2addr v1, v3

    const/4 v7, 0x0

    :goto_10
    if-ltz v1, :cond_27

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v10

    if-nez v10, :cond_25

    if-eqz p3, :cond_25

    if-nez p4, :cond_24

    goto :goto_11

    :cond_24
    const/4 v10, 0x0

    goto :goto_12

    :cond_25
    :goto_11
    move v10, v3

    :goto_12
    if-eqz v10, :cond_26

    sget-object v10, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v10, v10, v0

    mul-int/lit8 v12, v1, 0x2

    add-int/2addr v12, v3

    aget v10, v10, v12

    aget v12, v9, v1

    mul-int/2addr v12, v10

    add-int/2addr v12, v7

    move v7, v12

    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_27
    add-int/2addr v2, v7

    and-int/lit8 v0, v6, 0x1

    if-nez v0, :cond_28

    if-gt v6, v11, :cond_28

    if-lt v6, v5, :cond_28

    sub-int/2addr v11, v6

    div-int/2addr v11, v4

    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    aget v0, v0, v11

    rsub-int/lit8 v1, v0, 0x9

    invoke-static {v8, v0, v3}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v9, v1, v3}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    aget v3, v3, v11

    sget-object v4, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    aget v4, v4, v11

    mul-int/2addr v0, v3

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    new-instance v1, Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v1

    :cond_28
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_29
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_2a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_2b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method

.method decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {p0, p2, v0, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    return-object p0

    :cond_0
    iget-object p2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getRowNumber()I

    move-result v5

    if-le v5, p1, :cond_1

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v4

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v4, v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_2
    if-nez v4, :cond_11

    if-eqz v3, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v7, v9}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v7, v0

    goto :goto_3

    :cond_7
    move v7, v1

    :goto_3
    if-nez v7, :cond_5

    move v5, v1

    goto :goto_4

    :cond_8
    move v5, v0

    :goto_4
    if-eqz v5, :cond_4

    move v3, v0

    goto :goto_5

    :cond_9
    move v3, v1

    :goto_5
    if-eqz v3, :cond_a

    goto/16 :goto_9

    :cond_a
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    new-instance v4, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-direct {v4, v5, p1, v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;-><init>(Ljava/util/List;IZ)V

    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v4, v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move v4, v0

    goto :goto_7

    :cond_f
    move v4, v1

    :goto_7
    if-nez v4, :cond_d

    move v3, v1

    goto :goto_8

    :cond_10
    move v3, v0

    :goto_8
    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_11
    :goto_9
    if-eqz p2, :cond_13

    invoke-direct {p0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_12

    return-object p1

    :cond_12
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_13

    return-object p0

    :cond_13
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_14
    throw p2
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iget-boolean v7, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v7, :cond_1

    xor-int/lit8 v3, v3, 0x1

    :cond_1
    const/4 v7, -0x1

    move v8, v6

    :cond_2
    invoke-direct {v0, v1, v2, v7}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V

    if-eqz v3, :cond_4

    iget-object v9, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v9, v9, v5

    sub-int/2addr v9, v6

    :goto_1
    if-ltz v9, :cond_3

    invoke-virtual {v1, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_3

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    iget-object v10, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v11, v10, v5

    sub-int/2addr v11, v9

    aget v10, v10, v6

    move v15, v9

    move/from16 v16, v10

    goto :goto_2

    :cond_4
    iget-object v9, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v10, v9, v5

    aget v9, v9, v6

    add-int/2addr v9, v6

    invoke-virtual {v1, v9}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v9

    iget-object v11, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v11, v11, v6

    sub-int v11, v9, v11

    move/from16 v16, v9

    move v15, v10

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    move-result-object v9

    array-length v10, v9

    sub-int/2addr v10, v6

    invoke-static {v9, v5, v9, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v11, v9, v5

    const/4 v10, 0x0

    :try_start_0
    sget-object v11, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    invoke-static {v9, v11}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->parseFinderValue([I[[I)I

    move-result v13
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v9, Lcom/google/zxing/oned/rss/FinderPattern;

    new-array v14, v4, [I

    aput v15, v14, v5

    aput v16, v14, v6

    move-object v12, v9

    move/from16 v17, p3

    invoke-direct/range {v12 .. v17}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    goto :goto_3

    :catch_0
    move-object v9, v10

    :goto_3
    if-nez v9, :cond_6

    iget-object v7, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v7, v7, v5

    invoke-virtual {v1, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v1, v7}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v7

    goto :goto_4

    :cond_5
    invoke-virtual {v1, v7}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v7

    goto :goto_4

    :cond_6
    move v8, v5

    :goto_4
    if-nez v8, :cond_2

    invoke-virtual {v0, v1, v9, v3, v6}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v2, v6}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline8(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mustBeLast()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_5
    :try_start_1
    invoke-virtual {v0, v1, v9, v3, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-direct {v0, v4, v10, v9, v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;-><init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V

    return-object v0
.end method
