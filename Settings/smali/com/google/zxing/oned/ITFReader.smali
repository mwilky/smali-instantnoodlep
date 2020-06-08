.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[I

.field static final PATTERNS:[[I

.field private static final START_PATTERN:[I


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    const/16 v2, 0xa

    new-array v2, v2, [[I

    const/4 v3, 0x5

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v5, 0x2

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_8

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_9

    const/4 v1, 0x6

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    const/4 v1, 0x7

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_b

    const/16 v1, 0x8

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_c

    const/16 v1, 0x9

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    return-void

    :array_0
    .array-data 4
        0x30
        0x2c
        0x18
        0x14
        0x12
        0x10
        0xe
        0xc
        0xa
        0x8
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method

.method private static decodeDigit([I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    array-length v0, v0

    const/16 v1, 0x6b

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    sget-object v4, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v4, v4, v3

    const/16 v5, 0xc7

    invoke-static {p0, v4, v5}, Lcom/google/zxing/oned/OneDReader;->patternMatchVariance([I[II)I

    move-result v4

    if-ge v4, v1, :cond_0

    move v2, v3

    move v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ltz v2, :cond_2

    return v2

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    array-length v0, p2

    new-array v1, v0, [I

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v6, p1

    move v4, v3

    move v5, v4

    :goto_0
    if-ge p1, v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v4

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    aget v7, v1, v5

    add-int/2addr v7, v8

    aput v7, v1, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v0, -0x1

    if-ne v5, v7, :cond_2

    const/16 v9, 0xc7

    invoke-static {v1, p2, v9}, Lcom/google/zxing/oned/OneDReader;->patternMatchVariance([I[II)I

    move-result v9

    const/16 v10, 0x6b

    const/4 v11, 0x2

    if-ge v9, v10, :cond_1

    new-array p0, v11, [I

    aput v6, p0, v3

    aput p1, p0, v8

    return-object p0

    :cond_1
    aget v9, v1, v3

    aget v10, v1, v8

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    add-int/lit8 v9, v0, -0x2

    invoke-static {v1, v11, v1, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v3, v1, v9

    aput v3, v1, v7

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    :goto_1
    aput v8, v1, v5

    xor-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result p0

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget p0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    mul-int/lit8 p0, p0, 0xa

    if-ge p0, p2, :cond_0

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-lez p0, :cond_2

    if-ltz p2, :cond_2

    invoke-virtual {p1, p2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 17
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
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v3

    sget-object v4, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    invoke-static {v1, v3, v4}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v3

    const/4 v4, 0x1

    aget v5, v3, v4

    const/4 v6, 0x0

    aget v7, v3, v6

    sub-int/2addr v5, v7

    const/4 v7, 0x2

    shr-int/2addr v5, v7

    iput v5, v0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    aget v5, v3, v6

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v5

    sget-object v8, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    invoke-static {v1, v5, v8}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v5

    aget v8, v5, v6

    invoke-direct {v0, v1, v8}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    aget v0, v5, v6

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    aget v9, v5, v4

    sub-int/2addr v8, v9

    aput v8, v5, v6

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    sub-int/2addr v8, v0

    aput v8, v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v8, 0x14

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    aget v8, v3, v4

    aget v9, v5, v6

    const/16 v10, 0xa

    new-array v10, v10, [I

    const/4 v11, 0x5

    new-array v12, v11, [I

    new-array v13, v11, [I

    :goto_0
    if-ge v8, v9, :cond_2

    invoke-static {v1, v8, v10}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    move v14, v6

    :goto_1
    if-ge v14, v11, :cond_0

    shl-int/lit8 v15, v14, 0x1

    aget v16, v10, v15

    aput v16, v12, v14

    add-int/2addr v15, v4

    aget v15, v10, v15

    aput v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v12}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v14

    add-int/lit8 v14, v14, 0x30

    int-to-char v14, v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v14

    add-int/lit8 v14, v14, 0x30

    int-to-char v14, v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v14, v10

    move v15, v8

    move v8, v6

    :goto_2
    if-ge v8, v14, :cond_1

    aget v16, v10, v8

    add-int v15, v15, v16

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    move v8, v15

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v2, :cond_3

    sget-object v8, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    if-nez v2, :cond_4

    sget-object v2, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    array-length v9, v2

    move v10, v6

    :goto_4
    if-ge v10, v9, :cond_6

    aget v11, v2, v10

    if-ne v8, v11, :cond_5

    move v2, v4

    goto :goto_5

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    move v2, v6

    :goto_5
    if-eqz v2, :cond_7

    new-instance v2, Lcom/google/zxing/Result;

    new-array v7, v7, [Lcom/google/zxing/ResultPoint;

    new-instance v8, Lcom/google/zxing/ResultPoint;

    aget v3, v3, v4

    int-to-float v3, v3

    move/from16 v9, p1

    int-to-float v9, v9

    invoke-direct {v8, v3, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v7, v6

    new-instance v3, Lcom/google/zxing/ResultPoint;

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-direct {v3, v5, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v7, v4

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v2, v0, v1, v7, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v2

    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v0

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    throw v0
.end method
