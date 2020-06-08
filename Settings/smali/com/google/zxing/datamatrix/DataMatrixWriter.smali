.class public final Lcom/google/zxing/datamatrix/DataMatrixWriter;
.super Ljava/lang/Object;
.source "DataMatrixWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_13

    sget-object p0, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, p0, :cond_12

    if-ltz p3, :cond_11

    if-ltz p4, :cond_11

    sget-object p0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/4 p2, 0x0

    if-eqz p5, :cond_2

    sget-object p3, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    if-eqz p3, :cond_0

    move-object p0, p3

    :cond_0
    sget-object p3, Lcom/google/zxing/EncodeHintType;->MIN_SIZE:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/zxing/Dimension;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p2

    :goto_0
    sget-object p4, Lcom/google/zxing/EncodeHintType;->MAX_SIZE:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/zxing/Dimension;

    if-eqz p4, :cond_3

    move-object p2, p4

    goto :goto_1

    :cond_2
    move-object p3, p2

    :cond_3
    :goto_1
    invoke-static {p1, p0, p3, p2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    const/4 p5, 0x1

    invoke-static {p4, p0, p3, p2, p5}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->encodeECC200(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result p4

    invoke-direct {p2, p1, p3, p4}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->place()V

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result p3

    new-instance p4, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v1

    invoke-direct {p4, v0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_2
    if-ge v1, p3, :cond_d

    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    rem-int v3, v1, v3

    if-nez v3, :cond_6

    move v3, v0

    move v4, v3

    :goto_3
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v5

    if-ge v3, v5, :cond_5

    rem-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_4

    move v5, p5

    goto :goto_4

    :cond_4
    move v5, v0

    :goto_4
    invoke-virtual {p4, v4, v2, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/2addr v4, p5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    :cond_6
    move v3, v0

    move v4, v3

    :goto_5
    if-ge v3, p1, :cond_a

    iget v5, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    rem-int v5, v3, v5

    if-nez v5, :cond_7

    invoke-virtual {p4, v4, v2, p5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v4, v4, 0x1

    :cond_7
    invoke-virtual {p2, v3, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->getBit(II)Z

    move-result v5

    invoke-virtual {p4, v4, v2, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/2addr v4, p5

    iget v5, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    rem-int v6, v3, v5

    sub-int/2addr v5, p5

    if-ne v6, v5, :cond_9

    rem-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_8

    move v5, p5

    goto :goto_6

    :cond_8
    move v5, v0

    :goto_6
    invoke-virtual {p4, v4, v2, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v4, v4, 0x1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    rem-int v4, v1, v3

    sub-int/2addr v3, p5

    if-ne v4, v3, :cond_c

    move v3, v0

    move v4, v3

    :goto_7
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v5

    if-ge v3, v5, :cond_b

    invoke-virtual {p4, v4, v2, p5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/2addr v4, p5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v2, v2, 0x1

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    invoke-virtual {p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result p0

    invoke-virtual {p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result p1

    new-instance p2, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {p2, p0, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    invoke-virtual {p2}, Lcom/google/zxing/common/BitMatrix;->clear()V

    move p3, v0

    :goto_8
    if-ge p3, p0, :cond_10

    move v1, v0

    :goto_9
    if-ge v1, p1, :cond_f

    invoke-virtual {p4, p3, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    if-ne v2, p5, :cond_e

    invoke-virtual {p2, p3, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_10
    return-object p2

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Requested dimensions are too small: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x78

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can only encode DATA_MATRIX, but got "

    invoke-static {p1, p2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Found empty contents"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
