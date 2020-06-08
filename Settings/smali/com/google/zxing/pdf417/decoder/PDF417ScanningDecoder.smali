.class public final Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;
.super Ljava/lang/Object;
.source "PDF417ScanningDecoder.java"


# static fields
.field private static final errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    return-void
.end method

.method private static adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getRowHeights()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v3

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    array-length v1, v0

    move v3, v2

    move v5, v3

    :goto_1
    if-ge v3, v1, :cond_3

    aget v6, v0, v3

    sub-int v7, v4, v6

    add-int/2addr v5, v7

    if-lez v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    move v3, v2

    :goto_3
    if-lez v5, :cond_4

    aget-object v6, v1, v3

    if-nez v6, :cond_4

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-ltz v3, :cond_6

    aget v6, v0, v3

    sub-int v6, v4, v6

    add-int/2addr v2, v6

    aget v6, v0, v3

    if-lez v6, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_6
    :goto_5
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-lez v2, :cond_7

    aget-object v3, v1, v0

    if-nez v3, :cond_7

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft()Z

    move-result p0

    invoke-virtual {v0, v5, v2, p0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->addMissingRows(IIZ)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object p0

    return-object p0
.end method

.method public static decode(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/DecoderResult;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    new-instance v6, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    const/4 v1, 0x0

    move v2, v1

    move-object v9, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x2

    if-ge v2, v11, :cond_d

    if-eqz p1, :cond_0

    const/4 v6, 0x1

    move-object/from16 v3, p0

    move-object v4, v9

    move-object/from16 v5, p1

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v3

    :cond_0
    move-object v12, v3

    if-eqz p3, :cond_1

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object v4, v9

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v3

    move-object v10, v3

    :cond_1
    if-nez v12, :cond_2

    if-nez v10, :cond_2

    :goto_1
    const/4 v4, 0x0

    goto :goto_6

    :cond_2
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v5

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v6

    if-eq v5, v6, :cond_8

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v5

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v6

    if-eq v5, v6, :cond_8

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v5

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    if-eq v5, v4, :cond_8

    goto :goto_4

    :cond_5
    :goto_2
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v3

    goto :goto_5

    :cond_6
    :goto_3
    if-nez v10, :cond_7

    :goto_4
    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v3

    :cond_8
    :goto_5
    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    invoke-static {v12}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    invoke-static {v10}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->merge(Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/pdf417/decoder/BoundingBox;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    new-instance v5, Lcom/google/zxing/pdf417/decoder/DetectionResult;

    invoke-direct {v5, v3, v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;-><init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    move-object v4, v5

    :goto_6
    if-eqz v4, :cond_c

    if-nez v2, :cond_b

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v3

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v5

    if-lt v3, v5, :cond_a

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v3

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v5

    if-le v3, v5, :cond_b

    :cond_a
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v9

    add-int/lit8 v2, v2, 0x1

    move-object v3, v12

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v4, v9}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    goto :goto_7

    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_d
    move-object v12, v3

    :goto_7
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v4, v1, v12}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    invoke-virtual {v4, v2, v10}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    if-eqz v12, :cond_e

    move v5, v3

    goto :goto_8

    :cond_e
    move v5, v1

    :goto_8
    move/from16 v7, p5

    move/from16 v8, p6

    move v6, v3

    :goto_9
    if-gt v6, v2, :cond_27

    if-eqz v5, :cond_f

    move v12, v6

    goto :goto_a

    :cond_f
    sub-int v12, v2, v6

    :goto_a
    invoke-virtual {v4, v12}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v13

    if-eqz v13, :cond_10

    goto/16 :goto_18

    :cond_10
    if-eqz v12, :cond_12

    if-ne v12, v2, :cond_11

    goto :goto_c

    :cond_11
    new-instance v13, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    invoke-direct {v13, v9}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    :goto_b
    move-object v15, v13

    goto :goto_e

    :cond_12
    :goto_c
    new-instance v13, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    if-nez v12, :cond_13

    move v14, v3

    goto :goto_d

    :cond_13
    move v14, v1

    :goto_d
    invoke-direct {v13, v9, v14}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    goto :goto_b

    :goto_e
    invoke-virtual {v4, v12, v15}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v13

    move v14, v8

    move v8, v7

    move v7, v13

    const/4 v13, -0x1

    :goto_f
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    if-gt v7, v0, :cond_26

    if-eqz v5, :cond_14

    move v0, v3

    goto :goto_10

    :cond_14
    const/4 v0, -0x1

    :goto_10
    sub-int v1, v12, v0

    invoke-static {v4, v1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-virtual {v4, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v3

    goto :goto_11

    :cond_15
    const/4 v3, 0x0

    :goto_11
    if-eqz v3, :cond_17

    if-eqz v5, :cond_16

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v0

    goto/16 :goto_15

    :cond_16
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v0

    goto/16 :goto_15

    :cond_17
    invoke-virtual {v4, v12}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v3

    if-eqz v3, :cond_19

    if-eqz v5, :cond_18

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v0

    goto/16 :goto_15

    :cond_18
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v0

    goto/16 :goto_15

    :cond_19
    invoke-static {v4, v1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v16

    if-eqz v16, :cond_1a

    invoke-virtual {v4, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v3

    :cond_1a
    if-eqz v3, :cond_1c

    if-eqz v5, :cond_1b

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v0

    goto :goto_15

    :cond_1b
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v0

    goto :goto_15

    :cond_1c
    move v1, v12

    const/4 v3, 0x0

    :goto_12
    sub-int/2addr v1, v0

    invoke-static {v4, v1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v16

    if-eqz v16, :cond_20

    invoke-virtual {v4, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v11

    array-length v10, v11

    move/from16 p5, v1

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v10, :cond_1f

    aget-object v16, v11, v1

    if-eqz v16, :cond_1e

    if-eqz v5, :cond_1d

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v1

    goto :goto_14

    :cond_1d
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v1

    :goto_14
    mul-int/2addr v0, v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v10

    sub-int/2addr v3, v10

    mul-int/2addr v3, v0

    add-int v0, v3, v1

    goto :goto_15

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, p5

    const/4 v11, 0x2

    goto :goto_12

    :cond_20
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    if-eqz v5, :cond_21

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v0

    goto :goto_15

    :cond_21
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v0

    :goto_15
    if-ltz v0, :cond_22

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v1

    if-le v0, v1, :cond_24

    :cond_22
    const/4 v0, -0x1

    if-ne v13, v0, :cond_23

    move v10, v13

    move v11, v14

    move-object v1, v15

    goto :goto_16

    :cond_23
    move v0, v13

    :cond_24
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v1

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v3

    move v10, v13

    move-object/from16 v13, p0

    move v11, v14

    move v14, v1

    move-object v1, v15

    move v15, v3

    move/from16 v16, v5

    move/from16 v17, v0

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v11

    invoke-static/range {v13 .. v20}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual {v1, v7, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v3

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v13, v0

    goto :goto_17

    :cond_25
    :goto_16
    move v13, v10

    move v14, v11

    :goto_17
    add-int/lit8 v7, v7, 0x1

    move-object v15, v1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v11, 0x2

    goto/16 :goto_f

    :cond_26
    move v11, v14

    move v7, v8

    move v8, v11

    :goto_18
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v11, 0x2

    goto/16 :goto_9

    :cond_27
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v0

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    const/4 v1, 0x0

    :goto_19
    array-length v2, v0

    if-ge v1, v2, :cond_29

    const/4 v2, 0x0

    :goto_1a
    aget-object v3, v0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_28

    aget-object v3, v0, v1

    new-instance v5, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_29
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v5, -0x1

    :goto_1b
    if-ge v3, v2, :cond_2e

    aget-object v6, v1, v3

    const/4 v7, 0x1

    add-int/2addr v5, v7

    if-nez v6, :cond_2a

    goto :goto_1e

    :cond_2a
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1c
    if-ge v8, v7, :cond_2d

    aget-object v9, v6, v8

    if-eqz v9, :cond_2c

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2b

    goto :goto_1d

    :cond_2b
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v10

    aget-object v10, v0, v10

    aget-object v10, v10, v5

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v9

    invoke-virtual {v10, v9}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    :cond_2c
    :goto_1d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_2d
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2e
    const/4 v3, 0x0

    aget-object v1, v0, v3

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v5

    mul-int/2addr v3, v5

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v5

    const/4 v6, 0x2

    shl-int v5, v6, v5

    sub-int/2addr v3, v5

    array-length v5, v1

    if-nez v5, :cond_30

    if-lt v3, v2, :cond_2f

    const/16 v1, 0x3a0

    if-gt v3, v1, :cond_2f

    const/4 v5, 0x0

    aget-object v1, v0, v5

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_1f

    :cond_2f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_30
    const/4 v5, 0x0

    aget v1, v1, v5

    if-eq v1, v3, :cond_31

    aget-object v1, v0, v5

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    :cond_31
    :goto_1f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v2

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_20
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v7

    if-ge v6, v7, :cond_35

    const/4 v7, 0x0

    :goto_21
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v8

    if-ge v7, v8, :cond_34

    aget-object v8, v0, v6

    add-int/lit8 v9, v7, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v8

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v7

    array-length v7, v8

    if-nez v7, :cond_32

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_32
    array-length v7, v8

    const/4 v11, 0x1

    if-ne v7, v11, :cond_33

    const/4 v7, 0x0

    aget v8, v8, v7

    aput v8, v2, v10

    goto :goto_22

    :cond_33
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_22
    move v7, v9

    goto :goto_21

    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_35
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[I

    const/4 v6, 0x0

    :goto_23
    array-length v7, v0

    if-ge v6, v7, :cond_36

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aput-object v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_36
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v3

    invoke-static {v1}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-static {v5}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v4

    array-length v5, v4

    new-array v5, v5, [I

    const/16 v6, 0x64

    :goto_24
    add-int/lit8 v7, v6, -0x1

    if-lez v6, :cond_3c

    const/4 v6, 0x0

    :goto_25
    array-length v8, v5

    if-ge v6, v8, :cond_37

    aget v8, v4, v6

    aget-object v9, v0, v6

    aget v10, v5, v6

    aget v9, v9, v10

    aput v9, v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_37
    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    array-length v6, v5

    if-eqz v6, :cond_3b

    const/4 v6, 0x0

    :goto_26
    array-length v8, v5

    if-ge v6, v8, :cond_3a

    aget v8, v5, v6

    aget-object v9, v0, v6

    array-length v9, v9

    const/4 v10, -0x1

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_38

    aget v8, v5, v6

    const/4 v9, 0x1

    add-int/2addr v8, v9

    aput v8, v5, v6

    const/4 v8, 0x0

    goto :goto_27

    :cond_38
    const/4 v8, 0x0

    const/4 v9, 0x1

    aput v8, v5, v6

    array-length v11, v5

    add-int/2addr v11, v10

    if-eq v6, v11, :cond_39

    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_39
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_3a
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, -0x1

    :goto_27
    move v6, v7

    goto :goto_24

    :cond_3b
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_3c
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0
.end method

.method private static decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    array-length v0, p0

    if-eqz v0, :cond_6

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    if-eqz p2, :cond_0

    array-length v1, p2

    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x3

    if-gt v1, v2, :cond_5

    :cond_0
    if-ltz v0, :cond_5

    const/16 v1, 0x200

    if-gt v0, v1, :cond_5

    sget-object v1, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-virtual {v1, p0, v0, p2}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->decode([II[I)I

    move-result v1

    array-length v2, p0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    const/4 v2, 0x0

    aget v3, p0, v2

    array-length v4, p0

    if-gt v3, v4, :cond_3

    if-nez v3, :cond_2

    array-length v3, p0

    if-ge v0, v3, :cond_1

    array-length v3, p0

    sub-int/2addr v3, v0

    aput v3, p0, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    array-length p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/DecoderResult;->setErasures(Ljava/lang/Integer;)V

    return-object p0

    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p0

    throw p0

    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz p3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    const/4 v7, 0x0

    move/from16 v10, p3

    move/from16 v8, p4

    move v9, v6

    move v6, v7

    :goto_1
    const/4 v11, 0x2

    if-ge v6, v11, :cond_6

    :goto_2
    if-eqz v10, :cond_1

    if-ge v8, v1, :cond_2

    :cond_1
    if-nez v10, :cond_4

    if-ge v8, v2, :cond_4

    :cond_2
    invoke-virtual {v0, v8, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-ne v10, v12, :cond_4

    sub-int v12, p4, v8

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v12, v11, :cond_3

    move/from16 v8, p4

    goto :goto_4

    :cond_3
    add-int/2addr v8, v9

    goto :goto_2

    :cond_4
    neg-int v9, v9

    if-nez v10, :cond_5

    move v10, v5

    goto :goto_3

    :cond_5
    move v10, v7

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    :goto_4
    const/16 v6, 0x8

    new-array v9, v6, [I

    if-eqz p3, :cond_7

    move v10, v5

    goto :goto_5

    :cond_7
    move v10, v4

    :goto_5
    move/from16 v14, p3

    move v13, v7

    move v12, v8

    :goto_6
    if-eqz p3, :cond_8

    if-lt v12, v2, :cond_9

    :cond_8
    if-nez p3, :cond_c

    if-lt v12, v1, :cond_c

    :cond_9
    array-length v15, v9

    if-ge v13, v15, :cond_c

    invoke-virtual {v0, v12, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-ne v15, v14, :cond_a

    aget v15, v9, v13

    add-int/2addr v15, v5

    aput v15, v9, v13

    add-int/2addr v12, v10

    goto :goto_6

    :cond_a
    add-int/lit8 v13, v13, 0x1

    if-nez v14, :cond_b

    move v14, v5

    goto :goto_6

    :cond_b
    move v14, v7

    goto :goto_6

    :cond_c
    array-length v0, v9

    const/4 v3, 0x0

    if-eq v13, v0, :cond_10

    if-eqz p3, :cond_d

    if-eq v12, v2, :cond_e

    :cond_d
    if-nez p3, :cond_f

    if-ne v12, v1, :cond_f

    :cond_e
    array-length v0, v9

    sub-int/2addr v0, v5

    if-ne v13, v0, :cond_f

    goto :goto_7

    :cond_f
    move-object v9, v3

    :cond_10
    :goto_7
    if-nez v9, :cond_11

    return-object v3

    :cond_11
    invoke-static {v9}, Lcom/google/zxing/pdf417/PDF417Common;->getBitCountSum([I)I

    move-result v0

    if-eqz p3, :cond_12

    add-int v1, v8, v0

    goto :goto_9

    :cond_12
    move v1, v7

    :goto_8
    array-length v2, v9

    shr-int/2addr v2, v5

    if-ge v1, v2, :cond_13

    aget v2, v9, v1

    array-length v10, v9

    sub-int/2addr v10, v5

    sub-int/2addr v10, v1

    aget v10, v9, v10

    aput v10, v9, v1

    array-length v10, v9

    sub-int/2addr v10, v5

    sub-int/2addr v10, v1

    aput v2, v9, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    sub-int v1, v8, v0

    move/from16 v16, v8

    move v8, v1

    move/from16 v1, v16

    :goto_9
    add-int/lit8 v2, p6, -0x2

    if-gt v2, v0, :cond_14

    add-int/lit8 v2, p7, 0x2

    if-gt v0, v2, :cond_14

    move v0, v5

    goto :goto_a

    :cond_14
    move v0, v7

    :goto_a
    if-nez v0, :cond_15

    return-object v3

    :cond_15
    invoke-static {v9}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedValue([I)I

    move-result v0

    int-to-long v9, v0

    invoke-static {v9, v10}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(J)I

    move-result v2

    if-ne v2, v4, :cond_16

    return-object v3

    :cond_16
    new-instance v3, Lcom/google/zxing/pdf417/decoder/Codeword;

    new-array v6, v6, [I

    array-length v9, v6

    add-int/2addr v9, v4

    move v4, v7

    :goto_b
    and-int/lit8 v10, v0, 0x1

    if-eq v10, v4, :cond_18

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_17

    aget v0, v6, v7

    aget v4, v6, v11

    sub-int/2addr v0, v4

    const/4 v4, 0x4

    aget v4, v6, v4

    add-int/2addr v0, v4

    const/4 v4, 0x6

    aget v4, v6, v4

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    invoke-direct {v3, v8, v1, v0, v2}, Lcom/google/zxing/pdf417/decoder/Codeword;-><init>(IIII)V

    return-object v3

    :cond_17
    move v4, v10

    :cond_18
    aget v10, v6, v9

    add-int/2addr v10, v5

    aput v10, v6, v9

    shr-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private static getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .locals 15

    move/from16 v8, p3

    new-instance v9, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-object/from16 v10, p1

    invoke-direct {v9, v10, v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v11, v0, :cond_4

    if-nez v11, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    :goto_1
    move v12, v0

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    move v14, v0

    move v13, v1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    if-gt v13, v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v0

    if-lt v13, v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    move-object v0, p0

    move/from16 v3, p3

    move v4, v14

    move v5, v13

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v9, v13, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    if-eqz v8, :cond_1

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v14

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v14

    :cond_2
    :goto_3
    add-int/2addr v13, v12

    goto :goto_2

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    return-object v9
.end method

.method private static isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z
    .locals 1

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result p0

    add-int/2addr p0, v0

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
