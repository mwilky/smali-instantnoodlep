.class final Lcom/google/zxing/oned/UPCEANExtension2Support;
.super Ljava/lang/Object;
.source "UPCEANExtension2Support.java"


# instance fields
.field private final decodeMiddleCounters:[I

.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeMiddleCounters:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method decodeRow(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p0, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeMiddleCounters:[I

    aput v1, p0, v1

    const/4 v2, 0x1

    aput v1, p0, v2

    const/4 v3, 0x2

    aput v1, p0, v3

    const/4 v4, 0x3

    aput v1, p0, v4

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    aget v5, p3, v2

    move v7, v1

    move v6, v5

    move v5, v7

    :goto_0
    if-ge v5, v3, :cond_3

    if-ge v6, v4, :cond_3

    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p2, p0, v6, v8}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v8

    rem-int/lit8 v9, v8, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v9, p0

    move v10, v6

    move v6, v1

    :goto_1
    if-ge v6, v9, :cond_0

    aget v11, p0, v6

    add-int/2addr v10, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const/16 v6, 0xa

    if-lt v8, v6, :cond_1

    rsub-int/lit8 v6, v5, 0x1

    shl-int v6, v2, v6

    or-int/2addr v6, v7

    move v7, v6

    :cond_1
    if-eq v5, v2, :cond_2

    invoke-virtual {p2, v10}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v10

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ne p0, v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    rem-int/lit8 p0, p0, 0x4

    if-ne p0, v7, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x0

    if-eq p2, v3, :cond_4

    move-object p2, v0

    goto :goto_3

    :cond_4
    new-instance p2, Ljava/util/EnumMap;

    const-class v4, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {p2, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v4, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    new-instance v4, Lcom/google/zxing/Result;

    new-array v3, v3, [Lcom/google/zxing/ResultPoint;

    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget v7, p3, v1

    aget p3, p3, v2

    add-int/2addr v7, p3

    int-to-float p3, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr p3, v7

    int-to-float p1, p1

    invoke-direct {v5, p3, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v3, v1

    new-instance p3, Lcom/google/zxing/ResultPoint;

    int-to-float v1, v6

    invoke-direct {p3, v1, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p3, v3, v2

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v4, p0, v0, v3, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    if-eqz p2, :cond_5

    invoke-virtual {v4, p2}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    :cond_5
    return-object v4

    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method
