.class final Lcom/google/zxing/pdf417/decoder/DetectionResult;
.super Ljava/lang/Object;
.source "DetectionResult.java"


# instance fields
.field private final barcodeColumnCount:I

.field private final barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

.field private boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

.field private final detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    iget p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    return-void
.end method

.method private static adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I
    .locals 1

    if-nez p2, :cond_0

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :cond_2
    :goto_0
    return p1
.end method


# virtual methods
.method getBarcodeColumnCount()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    return p0
.end method

.method getBarcodeECLevel()I
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result p0

    return p0
.end method

.method getBarcodeRowCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result p0

    return p0
.end method

.method getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    return-object p0
.end method

.method getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object p0, p0, p1

    return-object p0
.end method

.method getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .locals 15

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    check-cast v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I

    :cond_1
    const/16 v0, 0x3a0

    :goto_0
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v4, v2, v1

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v4, v3

    aget-object v4, v2, v4

    if-nez v4, :cond_2

    goto :goto_4

    :cond_2
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v4

    move v5, v1

    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_6

    aget-object v6, v2, v5

    if-eqz v6, :cond_5

    aget-object v6, v4, v5

    if-eqz v6, :cond_5

    aget-object v6, v2, v5

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v7

    if-ne v6, v7, :cond_5

    move v6, v3

    :goto_2
    iget v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    if-gt v6, v7, :cond_5

    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    aget-object v7, v7, v5

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    aget-object v8, v2, v5

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v8, v7, v5

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v4, v2, v1

    const/4 v5, 0x2

    if-nez v4, :cond_7

    move v6, v1

    goto :goto_8

    :cond_7
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    move v4, v1

    move v6, v4

    :goto_5
    array-length v7, v2

    if-ge v4, v7, :cond_b

    aget-object v7, v2, v4

    if-nez v7, :cond_8

    goto :goto_7

    :cond_8
    aget-object v7, v2, v4

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v7

    move v8, v1

    move v9, v6

    move v6, v3

    :goto_6
    iget v10, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v10, v3

    if-ge v6, v10, :cond_a

    if-ge v8, v5, :cond_a

    iget-object v10, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v10

    aget-object v10, v10, v4

    if-eqz v10, :cond_9

    invoke-static {v7, v8, v10}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v8

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v10

    if-nez v10, :cond_9

    add-int/lit8 v9, v9, 0x1

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    move v6, v9

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    :goto_8
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v4, v3

    aget-object v7, v2, v4

    if-nez v7, :cond_c

    move v7, v1

    goto :goto_c

    :cond_c
    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    move v4, v1

    move v7, v4

    :goto_9
    array-length v8, v2

    if-ge v4, v8, :cond_10

    aget-object v8, v2, v4

    if-nez v8, :cond_d

    goto :goto_b

    :cond_d
    aget-object v8, v2, v4

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v8

    iget v9, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v9, v3

    move v10, v7

    move v7, v1

    :goto_a
    if-lez v9, :cond_f

    if-ge v7, v5, :cond_f

    iget-object v11, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v11, v11, v9

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v11

    aget-object v11, v11, v4

    if-eqz v11, :cond_e

    invoke-static {v8, v7, v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v7

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v11

    if-nez v11, :cond_e

    add-int/lit8 v10, v10, 0x1

    :cond_e
    add-int/lit8 v9, v9, -0x1

    goto :goto_a

    :cond_f
    move v7, v10

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_10
    :goto_c
    add-int v2, v6, v7

    if-nez v2, :cond_11

    move v2, v1

    goto/16 :goto_14

    :cond_11
    move v4, v3

    :goto_d
    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v6, v3

    if-ge v4, v6, :cond_1d

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    move v7, v1

    :goto_e
    array-length v8, v6

    if-ge v7, v8, :cond_1c

    aget-object v8, v6, v7

    if-nez v8, :cond_12

    goto/16 :goto_13

    :cond_12
    aget-object v8, v6, v7

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v8

    if-nez v8, :cond_1b

    aget-object v8, v6, v7

    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v10, v4, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v9

    iget-object v10, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v11, v4, 0x1

    aget-object v12, v10, v11

    if-eqz v12, :cond_13

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v10

    goto :goto_f

    :cond_13
    move-object v10, v9

    :goto_f
    const/16 v11, 0xe

    new-array v11, v11, [Lcom/google/zxing/pdf417/decoder/Codeword;

    aget-object v12, v9, v7

    aput-object v12, v11, v5

    const/4 v12, 0x3

    aget-object v13, v10, v7

    aput-object v13, v11, v12

    if-lez v7, :cond_14

    add-int/lit8 v12, v7, -0x1

    aget-object v13, v6, v12

    aput-object v13, v11, v1

    const/4 v13, 0x4

    aget-object v14, v9, v12

    aput-object v14, v11, v13

    const/4 v13, 0x5

    aget-object v12, v10, v12

    aput-object v12, v11, v13

    :cond_14
    if-le v7, v3, :cond_15

    const/16 v12, 0x8

    add-int/lit8 v13, v7, -0x2

    aget-object v14, v6, v13

    aput-object v14, v11, v12

    const/16 v12, 0xa

    aget-object v14, v9, v13

    aput-object v14, v11, v12

    const/16 v12, 0xb

    aget-object v13, v10, v13

    aput-object v13, v11, v12

    :cond_15
    array-length v12, v6

    sub-int/2addr v12, v3

    if-ge v7, v12, :cond_16

    add-int/lit8 v12, v7, 0x1

    aget-object v13, v6, v12

    aput-object v13, v11, v3

    const/4 v13, 0x6

    aget-object v14, v9, v12

    aput-object v14, v11, v13

    const/4 v13, 0x7

    aget-object v12, v10, v12

    aput-object v12, v11, v13

    :cond_16
    array-length v12, v6

    sub-int/2addr v12, v5

    if-ge v7, v12, :cond_17

    const/16 v12, 0x9

    add-int/lit8 v13, v7, 0x2

    aget-object v14, v6, v13

    aput-object v14, v11, v12

    const/16 v12, 0xc

    aget-object v9, v9, v13

    aput-object v9, v11, v12

    const/16 v9, 0xd

    aget-object v10, v10, v13

    aput-object v10, v11, v9

    :cond_17
    array-length v9, v11

    move v10, v1

    :goto_10
    if-ge v10, v9, :cond_1b

    aget-object v12, v11, v10

    if-nez v12, :cond_18

    goto :goto_11

    :cond_18
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v13

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v14

    if-ne v13, v14, :cond_19

    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    move v12, v3

    goto :goto_12

    :cond_19
    :goto_11
    move v12, v1

    :goto_12
    if-eqz v12, :cond_1a

    goto :goto_13

    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_1b
    :goto_13
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_e

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    :cond_1d
    :goto_14
    if-lez v2, :cond_1f

    if-lt v2, v0, :cond_1e

    goto :goto_15

    :cond_1e
    move v0, v2

    goto/16 :goto_0

    :cond_1f
    :goto_15
    iget-object p0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    return-object p0
.end method

.method public setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    return-void
.end method

.method setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aput-object p2, p0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v2, v3

    aget-object v2, v0, v2

    :cond_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    move v4, v1

    :goto_0
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "CW %3d:"

    invoke-virtual {v0, v6, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v5, v1

    :goto_1
    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    const/4 v7, 0x2

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v8, v6, v5

    const-string v9, "    |   "

    if-nez v8, :cond_1

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    :cond_1
    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    aget-object v6, v6, v4

    if-nez v6, :cond_2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    :cond_2
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v3

    const-string v6, " %3d|%3d"

    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "\n"

    invoke-virtual {v0, v6, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object p0
.end method
