.class final Lcom/google/zxing/oned/UPCEANExtension5Support;
.super Ljava/lang/Object;
.source "UPCEANExtension5Support.java"


# static fields
.field private static final CHECK_DIGIT_ENCODINGS:[I


# instance fields
.field private final decodeMiddleCounters:[I

.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/UPCEANExtension5Support;->CHECK_DIGIT_ENCODINGS:[I

    return-void

    :array_0
    .array-data 4
        0x18
        0x14
        0x12
        0x11
        0xc
        0x6
        0x3
        0xa
        0x9
        0x5
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeMiddleCounters:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method decodeRow(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeMiddleCounters:[I

    aput v3, v0, v3

    const/4 v4, 0x1

    aput v3, v0, v4

    const/4 v5, 0x2

    aput v3, v0, v5

    const/4 v6, 0x3

    aput v3, v0, v6

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    aget v8, p3, v4

    move v10, v3

    move v9, v8

    move v8, v10

    :goto_0
    const/16 v11, 0x30

    const/4 v12, 0x5

    const/16 v13, 0xa

    if-ge v8, v12, :cond_3

    if-ge v9, v7, :cond_3

    sget-object v12, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {v1, v0, v9, v12}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v12

    rem-int/lit8 v14, v12, 0xa

    add-int/2addr v14, v11

    int-to-char v11, v14

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v11, v0

    move v14, v9

    move v9, v3

    :goto_1
    if-ge v9, v11, :cond_0

    aget v15, v0, v9

    add-int/2addr v14, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x4

    if-lt v12, v13, :cond_1

    rsub-int/lit8 v11, v8, 0x4

    shl-int v11, v4, v11

    or-int/2addr v10, v11

    :cond_1
    if-eq v8, v9, :cond_2

    invoke-virtual {v1, v14}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v9

    goto :goto_2

    :cond_2
    move v9, v14

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v12, :cond_13

    move v0, v3

    :goto_3
    if-ge v0, v13, :cond_12

    sget-object v1, Lcom/google/zxing/oned/UPCEANExtension5Support;->CHECK_DIGIT_ENCODINGS:[I

    aget v1, v1, v0

    if-ne v10, v1, :cond_11

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v8, v7, -0x2

    move v10, v3

    :goto_4
    if-ltz v8, :cond_4

    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    add-int/lit8 v14, v14, -0x30

    add-int/2addr v10, v14

    add-int/lit8 v8, v8, -0x2

    goto :goto_4

    :cond_4
    mul-int/2addr v10, v6

    add-int/lit8 v7, v7, -0x1

    :goto_5
    if-ltz v7, :cond_5

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    add-int/2addr v10, v8

    add-int/lit8 v7, v7, -0x2

    goto :goto_5

    :cond_5
    mul-int/2addr v10, v6

    rem-int/2addr v10, v13

    if-ne v10, v0, :cond_10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v12, :cond_6

    goto/16 :goto_a

    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v11, :cond_c

    const/16 v6, 0x35

    if-eq v1, v6, :cond_b

    const/16 v6, 0x39

    if-eq v1, v6, :cond_7

    goto :goto_6

    :cond_7
    const-string v1, "90000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v2

    goto :goto_9

    :cond_8
    const-string v1, "99991"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "0.00"

    goto :goto_9

    :cond_9
    const-string v1, "99990"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "Used"

    goto :goto_9

    :cond_a
    :goto_6
    const-string v1, ""

    goto :goto_7

    :cond_b
    const-string v1, "$"

    goto :goto_7

    :cond_c
    const-string v1, "\u00a3"

    :goto_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    div-int/lit8 v7, v6, 0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    rem-int/lit8 v6, v6, 0x64

    if-ge v6, v13, :cond_d

    const-string v8, "0"

    invoke-static {v8, v6}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline12(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_d
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    :goto_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_9
    if-nez v1, :cond_e

    :goto_a
    move-object v6, v2

    goto :goto_b

    :cond_e
    new-instance v6, Ljava/util/EnumMap;

    const-class v7, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v6, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v7, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    new-instance v1, Lcom/google/zxing/Result;

    new-array v5, v5, [Lcom/google/zxing/ResultPoint;

    new-instance v7, Lcom/google/zxing/ResultPoint;

    aget v8, p3, v3

    aget v10, p3, v4

    add-int/2addr v8, v10

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    move/from16 v14, p1

    int-to-float v10, v14

    invoke-direct {v7, v8, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v5, v3

    new-instance v3, Lcom/google/zxing/ResultPoint;

    int-to-float v7, v9

    invoke-direct {v3, v7, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v5, v4

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v1, v0, v2, v5, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    if-eqz v6, :cond_f

    invoke-virtual {v1, v6}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    :cond_f
    return-object v1

    :cond_10
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_11
    move/from16 v14, p1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_12
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_13
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
