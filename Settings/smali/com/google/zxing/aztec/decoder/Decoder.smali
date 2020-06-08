.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    const-string v0, "CTRL_PS"

    const-string v1, " "

    const-string v2, "A"

    const-string v3, "B"

    const-string v4, "C"

    const-string v5, "D"

    const-string v6, "E"

    const-string v7, "F"

    const-string v8, "G"

    const-string v9, "H"

    const-string v10, "I"

    const-string v11, "J"

    const-string v12, "K"

    const-string v13, "L"

    const-string v14, "M"

    const-string v15, "N"

    const-string v16, "O"

    const-string v17, "P"

    const-string v18, "Q"

    const-string v19, "R"

    const-string v20, "S"

    const-string v21, "T"

    const-string v22, "U"

    const-string v23, "V"

    const-string v24, "W"

    const-string v25, "X"

    const-string v26, "Y"

    const-string v27, "Z"

    const-string v28, "CTRL_LL"

    const-string v29, "CTRL_ML"

    const-string v30, "CTRL_DL"

    const-string v31, "CTRL_BS"

    filled-new-array/range {v0 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "a"

    const-string v4, "b"

    const-string v5, "c"

    const-string v6, "d"

    const-string v7, "e"

    const-string v8, "f"

    const-string v9, "g"

    const-string v10, "h"

    const-string v11, "i"

    const-string v12, "j"

    const-string v13, "k"

    const-string v14, "l"

    const-string v15, "m"

    const-string v16, "n"

    const-string v17, "o"

    const-string v18, "p"

    const-string v19, "q"

    const-string v20, "r"

    const-string v21, "s"

    const-string v22, "t"

    const-string v23, "u"

    const-string v24, "v"

    const-string v25, "w"

    const-string v26, "x"

    const-string v27, "y"

    const-string v28, "z"

    const-string v29, "CTRL_US"

    const-string v30, "CTRL_ML"

    const-string v31, "CTRL_DL"

    const-string v32, "CTRL_BS"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "\u0001"

    const-string v4, "\u0002"

    const-string v5, "\u0003"

    const-string v6, "\u0004"

    const-string v7, "\u0005"

    const-string v8, "\u0006"

    const-string v9, "\u0007"

    const-string v10, "\u0008"

    const-string v11, "\t"

    const-string v12, "\n"

    const-string v13, "\u000b"

    const-string v14, "\u000c"

    const-string v15, "\r"

    const-string v16, "\u001b"

    const-string v17, "\u001c"

    const-string v18, "\u001d"

    const-string v19, "\u001e"

    const-string v20, "\u001f"

    const-string v21, "@"

    const-string v22, "\\"

    const-string v23, "^"

    const-string v24, "_"

    const-string v25, "`"

    const-string v26, "|"

    const-string v27, "~"

    const-string v28, "\u007f"

    const-string v29, "CTRL_LL"

    const-string v30, "CTRL_UL"

    const-string v31, "CTRL_PL"

    const-string v32, "CTRL_BS"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "\r"

    const-string v3, "\r\n"

    const-string v4, ". "

    const-string v5, ", "

    const-string v6, ": "

    const-string v7, "!"

    const-string v8, "\""

    const-string v9, "#"

    const-string v10, "$"

    const-string v11, "%"

    const-string v12, "&"

    const-string v13, "\'"

    const-string v14, "("

    const-string v15, ")"

    const-string v16, "*"

    const-string v17, "+"

    const-string v18, ","

    const-string v19, "-"

    const-string v20, "."

    const-string v21, "/"

    const-string v22, ":"

    const-string v23, ";"

    const-string v24, "<"

    const-string v25, "="

    const-string v26, ">"

    const-string v27, "?"

    const-string v28, "["

    const-string v29, "]"

    const-string v30, "{"

    const-string v31, "}"

    const-string v32, "CTRL_UL"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "0"

    const-string v4, "1"

    const-string v5, "2"

    const-string v6, "3"

    const-string v7, "4"

    const-string v8, "5"

    const-string v9, "6"

    const-string v10, "7"

    const-string v11, "8"

    const-string v12, "9"

    const-string v13, ","

    const-string v14, "."

    const-string v15, "CTRL_UL"

    const-string v16, "CTRL_US"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static readCode([ZII)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    move v0, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_1

    shl-int/lit8 v1, v1, 0x1

    aget-boolean v2, p0, v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v2

    iget-object v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    const/16 v4, 0xb

    mul-int/lit8 v5, v3, 0x4

    if-eqz v2, :cond_0

    add-int/2addr v5, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v5, 0xe

    :goto_0
    new-array v6, v5, [I

    if-eqz v2, :cond_1

    const/16 v7, 0x58

    goto :goto_1

    :cond_1
    const/16 v7, 0x70

    :goto_1
    mul-int/lit8 v8, v3, 0x10

    add-int/2addr v8, v7

    mul-int/2addr v8, v3

    new-array v7, v8, [Z

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v2, :cond_2

    const/4 v11, 0x0

    :goto_2
    array-length v12, v6

    if-ge v11, v12, :cond_3

    aput v11, v6, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v5, 0x1

    div-int/lit8 v12, v5, 0x2

    add-int/lit8 v13, v12, -0x1

    div-int/lit8 v13, v13, 0xf

    mul-int/2addr v13, v9

    add-int/2addr v13, v11

    div-int/2addr v13, v9

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v12, :cond_3

    div-int/lit8 v14, v11, 0xf

    add-int/2addr v14, v11

    sub-int v15, v12, v11

    add-int/lit8 v15, v15, -0x1

    sub-int v16, v13, v14

    add-int/lit8 v16, v16, -0x1

    aput v16, v6, v15

    add-int v15, v12, v11

    add-int/2addr v14, v13

    add-int/2addr v14, v10

    aput v14, v6, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4
    const/4 v13, 0x4

    if-ge v11, v3, :cond_7

    sub-int v14, v3, v11

    mul-int/2addr v14, v13

    if-eqz v2, :cond_4

    add-int/lit8 v14, v14, 0x9

    goto :goto_5

    :cond_4
    add-int/lit8 v14, v14, 0xc

    :goto_5
    mul-int/lit8 v13, v11, 0x2

    add-int/lit8 v15, v5, -0x1

    sub-int/2addr v15, v13

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v14, :cond_6

    mul-int/lit8 v16, v8, 0x2

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v9, :cond_5

    add-int v17, v12, v16

    add-int v17, v17, v4

    add-int v18, v13, v4

    aget v10, v6, v18

    add-int v19, v13, v8

    aget v9, v6, v19

    invoke-virtual {v1, v10, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    aput-boolean v9, v7, v17

    mul-int/lit8 v9, v14, 0x2

    add-int/2addr v9, v12

    add-int v9, v9, v16

    add-int/2addr v9, v4

    aget v10, v6, v19

    sub-int v17, v15, v4

    move/from16 v19, v2

    aget v2, v6, v17

    invoke-virtual {v1, v10, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    aput-boolean v2, v7, v9

    mul-int/lit8 v2, v14, 0x4

    add-int/2addr v2, v12

    add-int v2, v2, v16

    add-int/2addr v2, v4

    aget v9, v6, v17

    sub-int v10, v15, v8

    move/from16 v17, v3

    aget v3, v6, v10

    invoke-virtual {v1, v9, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    aput-boolean v3, v7, v2

    mul-int/lit8 v2, v14, 0x6

    add-int/2addr v2, v12

    add-int v2, v2, v16

    add-int/2addr v2, v4

    aget v3, v6, v10

    aget v9, v6, v18

    invoke-virtual {v1, v3, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    aput-boolean v3, v7, v2

    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v17

    move/from16 v2, v19

    const/4 v9, 0x2

    const/4 v10, 0x1

    goto :goto_7

    :cond_5
    move/from16 v19, v2

    move/from16 v17, v3

    add-int/lit8 v8, v8, 0x1

    const/16 v4, 0xb

    const/4 v9, 0x2

    const/4 v10, 0x1

    goto :goto_6

    :cond_6
    move/from16 v19, v2

    move/from16 v17, v3

    mul-int/lit8 v14, v14, 0x8

    add-int/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    const/16 v4, 0xb

    const/4 v9, 0x2

    const/4 v10, 0x1

    goto/16 :goto_4

    :cond_7
    iget-object v1, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v1

    const/4 v2, 0x6

    const/16 v3, 0x8

    const/4 v4, 0x2

    if-gt v1, v4, :cond_8

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v4, v1

    move v1, v2

    goto :goto_8

    :cond_8
    iget-object v1, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v1

    if-gt v1, v3, :cond_9

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v4, v1

    move v1, v3

    goto :goto_8

    :cond_9
    iget-object v1, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v1

    const/16 v4, 0x16

    if-gt v1, v4, :cond_a

    const/16 v1, 0xa

    sget-object v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_8

    :cond_a
    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v4, 0xc

    move/from16 v20, v4

    move-object v4, v1

    move/from16 v1, v20

    :goto_8
    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v0

    array-length v5, v7

    div-int/2addr v5, v1

    array-length v6, v7

    rem-int/2addr v6, v1

    sub-int v8, v5, v0

    new-array v9, v5, [I

    move v10, v6

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v5, :cond_b

    invoke-static {v7, v10, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v11

    aput v11, v9, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v10, v1

    goto :goto_9

    :cond_b
    :try_start_0
    new-instance v5, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {v5, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v5, v9, v8}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    shl-int v5, v4, v1

    sub-int/2addr v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_a
    if-ge v6, v0, :cond_f

    aget v8, v9, v6

    if-eqz v8, :cond_e

    if-eq v8, v5, :cond_e

    if-eq v8, v4, :cond_c

    add-int/lit8 v4, v5, -0x1

    if-ne v8, v4, :cond_d

    :cond_c
    add-int/lit8 v7, v7, 0x1

    :cond_d
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x1

    goto :goto_a

    :cond_e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_f
    mul-int v4, v0, v1

    sub-int/2addr v4, v7

    new-array v4, v4, [Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_b
    if-ge v6, v0, :cond_15

    aget v8, v9, v6

    const/4 v10, 0x1

    if-eq v8, v10, :cond_12

    add-int/lit8 v11, v5, -0x1

    if-ne v8, v11, :cond_10

    goto :goto_e

    :cond_10
    add-int/lit8 v11, v1, -0x1

    :goto_c
    if-ltz v11, :cond_14

    add-int/lit8 v12, v7, 0x1

    shl-int v14, v10, v11

    and-int v10, v14, v8

    if-eqz v10, :cond_11

    const/4 v10, 0x1

    goto :goto_d

    :cond_11
    const/4 v10, 0x0

    :goto_d
    aput-boolean v10, v4, v7

    add-int/lit8 v11, v11, -0x1

    move v7, v12

    const/4 v10, 0x1

    goto :goto_c

    :cond_12
    :goto_e
    add-int v10, v7, v1

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-le v8, v11, :cond_13

    const/4 v8, 0x1

    goto :goto_f

    :cond_13
    const/4 v8, 0x0

    :goto_f
    invoke-static {v4, v7, v10, v8}, Ljava/util/Arrays;->fill([ZIIZ)V

    add-int/lit8 v8, v1, -0x1

    add-int/2addr v8, v7

    move v7, v8

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_15
    array-length v0, v4

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v1

    move-object v7, v6

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_2a

    sget-object v8, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const/4 v9, 0x5

    if-ne v6, v8, :cond_1b

    sub-int v6, v0, v1

    if-ge v6, v9, :cond_16

    goto/16 :goto_18

    :cond_16
    invoke-static {v4, v1, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v6

    add-int/lit8 v1, v1, 0x5

    if-nez v6, :cond_18

    sub-int v6, v0, v1

    const/16 v8, 0xb

    if-ge v6, v8, :cond_17

    goto/16 :goto_18

    :cond_17
    invoke-static {v4, v1, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v6

    add-int/lit8 v6, v6, 0x1f

    add-int/lit8 v1, v1, 0xb

    goto :goto_11

    :cond_18
    const/16 v8, 0xb

    :goto_11
    move v9, v1

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v6, :cond_1a

    sub-int v10, v0, v9

    if-ge v10, v3, :cond_19

    move v1, v0

    goto :goto_13

    :cond_19
    invoke-static {v4, v9, v3}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1a
    move v1, v9

    :goto_13
    const/4 v10, 0x1

    const/4 v12, 0x2

    goto/16 :goto_17

    :cond_1b
    const/16 v8, 0xb

    sget-object v10, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v6, v10, :cond_1c

    move v10, v13

    goto :goto_14

    :cond_1c
    move v10, v9

    :goto_14
    sub-int v11, v0, v1

    if-ge v11, v10, :cond_1d

    goto/16 :goto_18

    :cond_1d
    invoke-static {v4, v1, v10}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v11

    add-int/2addr v1, v10

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_22

    const/4 v10, 0x1

    if-eq v6, v10, :cond_21

    const/4 v12, 0x2

    if-eq v6, v12, :cond_20

    const/4 v14, 0x3

    if-eq v6, v14, :cond_1f

    if-ne v6, v13, :cond_1e

    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object v6, v6, v11

    goto :goto_15

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object v6, v6, v11

    goto :goto_15

    :cond_20
    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object v6, v6, v11

    goto :goto_15

    :cond_21
    const/4 v12, 0x2

    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object v6, v6, v11

    goto :goto_15

    :cond_22
    const/4 v10, 0x1

    const/4 v12, 0x2

    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object v6, v6, v11

    :goto_15
    const-string v11, "CTRL_"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_29

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x42

    const/16 v14, 0x4c

    if-eq v9, v11, :cond_27

    const/16 v11, 0x44

    if-eq v9, v11, :cond_26

    const/16 v11, 0x50

    if-eq v9, v11, :cond_25

    if-eq v9, v14, :cond_24

    const/16 v11, 0x4d

    if-eq v9, v11, :cond_23

    sget-object v9, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_16

    :cond_23
    sget-object v9, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_16

    :cond_24
    sget-object v9, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_16

    :cond_25
    sget-object v9, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_16

    :cond_26
    sget-object v9, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_16

    :cond_27
    sget-object v9, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    :goto_16
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v14, :cond_28

    move-object v6, v9

    move-object v7, v6

    goto/16 :goto_10

    :cond_28
    move-object v6, v9

    goto/16 :goto_10

    :cond_29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    move-object v6, v7

    goto/16 :goto_10

    :cond_2a
    :goto_18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/zxing/common/DecoderResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2, v2}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    :catch_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
