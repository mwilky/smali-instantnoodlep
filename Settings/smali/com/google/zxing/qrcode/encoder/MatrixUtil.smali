.class final Lcom/google/zxing/qrcode/encoder/MatrixUtil;
.super Ljava/lang/Object;
.source "MatrixUtil.java"


# static fields
.field private static final POSITION_ADJUSTMENT_PATTERN:[[I

.field private static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

.field private static final POSITION_DETECTION_PATTERN:[[I

.field private static final TYPE_INFO_COORDINATES:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x7

    new-array v1, v0, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v2, v0, [I

    fill-array-data v2, :array_3

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-array v2, v0, [I

    fill-array-data v2, :array_4

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-array v2, v0, [I

    fill-array-data v2, :array_5

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-array v2, v0, [I

    fill-array-data v2, :array_6

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sput-object v1, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    new-array v1, v8, [[I

    new-array v2, v8, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v3

    new-array v2, v8, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v4

    new-array v2, v8, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v5

    new-array v2, v8, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v6

    new-array v2, v8, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v7

    sput-object v1, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    const/16 v1, 0x28

    new-array v1, v1, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_c

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_d

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_e

    aput-object v2, v1, v5

    new-array v2, v0, [I

    fill-array-data v2, :array_f

    aput-object v2, v1, v6

    new-array v2, v0, [I

    fill-array-data v2, :array_10

    aput-object v2, v1, v7

    new-array v2, v0, [I

    fill-array-data v2, :array_11

    aput-object v2, v1, v8

    new-array v2, v0, [I

    fill-array-data v2, :array_12

    aput-object v2, v1, v9

    new-array v2, v0, [I

    fill-array-data v2, :array_13

    aput-object v2, v1, v0

    new-array v2, v0, [I

    fill-array-data v2, :array_14

    const/16 v10, 0x8

    aput-object v2, v1, v10

    new-array v2, v0, [I

    fill-array-data v2, :array_15

    const/16 v11, 0x9

    aput-object v2, v1, v11

    new-array v2, v0, [I

    fill-array-data v2, :array_16

    const/16 v12, 0xa

    aput-object v2, v1, v12

    new-array v2, v0, [I

    fill-array-data v2, :array_17

    const/16 v13, 0xb

    aput-object v2, v1, v13

    new-array v2, v0, [I

    fill-array-data v2, :array_18

    const/16 v14, 0xc

    aput-object v2, v1, v14

    new-array v2, v0, [I

    fill-array-data v2, :array_19

    const/16 v15, 0xd

    aput-object v2, v1, v15

    new-array v2, v0, [I

    fill-array-data v2, :array_1a

    const/16 v16, 0xe

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_1b

    const/16 v17, 0xf

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_1c

    const/16 v17, 0x10

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_1d

    const/16 v17, 0x11

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_1e

    const/16 v17, 0x12

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_1f

    const/16 v17, 0x13

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_20

    const/16 v17, 0x14

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_21

    const/16 v17, 0x15

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_22

    const/16 v17, 0x16

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_23

    const/16 v17, 0x17

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_24

    const/16 v17, 0x18

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_25

    const/16 v17, 0x19

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_26

    const/16 v17, 0x1a

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_27

    const/16 v17, 0x1b

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_28

    const/16 v17, 0x1c

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_29

    const/16 v17, 0x1d

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_2a

    const/16 v17, 0x1e

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_2b

    const/16 v17, 0x1f

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_2c

    const/16 v17, 0x20

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_2d

    const/16 v17, 0x21

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_2e

    const/16 v17, 0x22

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_2f

    const/16 v17, 0x23

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_30

    const/16 v17, 0x24

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_31

    const/16 v17, 0x25

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_32

    const/16 v17, 0x26

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_33

    const/16 v17, 0x27

    aput-object v2, v1, v17

    sput-object v1, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    const/16 v1, 0xf

    new-array v1, v1, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_34

    aput-object v2, v1, v3

    new-array v2, v5, [I

    fill-array-data v2, :array_35

    aput-object v2, v1, v4

    new-array v2, v5, [I

    fill-array-data v2, :array_36

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_37

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_38

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_39

    aput-object v2, v1, v8

    new-array v2, v5, [I

    fill-array-data v2, :array_3a

    aput-object v2, v1, v9

    new-array v2, v5, [I

    fill-array-data v2, :array_3b

    aput-object v2, v1, v0

    new-array v0, v5, [I

    fill-array-data v0, :array_3c

    aput-object v0, v1, v10

    new-array v0, v5, [I

    fill-array-data v0, :array_3d

    aput-object v0, v1, v11

    new-array v0, v5, [I

    fill-array-data v0, :array_3e

    aput-object v0, v1, v12

    new-array v0, v5, [I

    fill-array-data v0, :array_3f

    aput-object v0, v1, v13

    new-array v0, v5, [I

    fill-array-data v0, :array_40

    aput-object v0, v1, v14

    new-array v0, v5, [I

    fill-array-data v0, :array_41

    aput-object v0, v1, v15

    new-array v0, v5, [I

    fill-array-data v0, :array_42

    aput-object v0, v1, v16

    sput-object v1, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_c
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x12
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x1a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x1e
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x16
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x18
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x1a
        0x2e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1c
        0x32
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1e
        0x36
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x20
        0x3a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x22
        0x3e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
        -0x1
        -0x1
    .end array-data

    :array_21
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        -0x1
        -0x1
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        -0x1
        -0x1
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        -0x1
        -0x1
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        -0x1
        -0x1
    .end array-data

    :array_25
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        -0x1
        -0x1
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        -0x1
        -0x1
    .end array-data

    :array_27
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
        -0x1
    .end array-data

    :array_28
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        -0x1
    .end array-data

    :array_29
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
        -0x1
    .end array-data

    :array_2a
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
        -0x1
    .end array-data

    :array_2b
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
        -0x1
    .end array-data

    :array_2c
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        -0x1
    .end array-data

    :array_2d
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
        -0x1
    .end array-data

    :array_2e
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_2f
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_30
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_31
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_32
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_33
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data

    :array_34
    .array-data 4
        0x8
        0x0
    .end array-data

    :array_35
    .array-data 4
        0x8
        0x1
    .end array-data

    :array_36
    .array-data 4
        0x8
        0x2
    .end array-data

    :array_37
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_38
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_39
    .array-data 4
        0x8
        0x5
    .end array-data

    :array_3a
    .array-data 4
        0x8
        0x7
    .end array-data

    :array_3b
    .array-data 4
        0x8
        0x8
    .end array-data

    :array_3c
    .array-data 4
        0x7
        0x8
    .end array-data

    :array_3d
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_3e
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_3f
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_40
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_41
    .array-data 4
        0x1
        0x8
    .end array-data

    :array_42
    .array-data 4
        0x0
        0x8
    .end array-data
.end method

.method static buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    move/from16 v0, p3

    move-object/from16 v1, p4

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->clear(B)V

    sget-object v3, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    invoke-static {v4, v4, v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v5, v4, v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v4, v5, v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    const/4 v3, 0x7

    invoke-static {v4, v3, v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x8

    invoke-static {v5, v3, v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x8

    invoke-static {v4, v5, v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {v3, v4, v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    add-int/2addr v5, v2

    invoke-static {v5, v4, v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v3, v5, v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    const/16 v5, 0x8

    sub-int/2addr v3, v5

    invoke-virtual {v1, v5, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    sub-int/2addr v3, v5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v3, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v3

    const/4 v7, 0x5

    const/4 v8, 0x2

    if-ge v3, v8, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v3

    add-int/2addr v3, v2

    sget-object v8, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v9, v8, v3

    aget-object v3, v8, v3

    array-length v3, v3

    move v8, v2

    move v2, v4

    :goto_0
    if-ge v4, v3, :cond_5

    move v10, v2

    :goto_1
    if-ge v2, v3, :cond_4

    aget v11, v9, v4

    aget v12, v9, v2

    if-eq v12, v8, :cond_3

    if-ne v11, v8, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v1, v12, v11}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v8

    invoke-static {v8}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v12, v12, -0x2

    add-int/lit8 v11, v11, -0x2

    move v8, v10

    :goto_2
    if-ge v10, v7, :cond_3

    :goto_3
    if-ge v8, v7, :cond_2

    add-int v13, v12, v8

    add-int v14, v11, v10

    sget-object v15, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    aget-object v15, v15, v10

    aget v15, v15, v8

    invoke-virtual {v1, v13, v14, v15}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    const/4 v8, -0x1

    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    :goto_5
    move v2, v5

    :goto_6
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    sub-int/2addr v3, v5

    const/4 v4, 0x6

    if-ge v2, v3, :cond_8

    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v8, v3, 0x2

    invoke-virtual {v1, v2, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v9

    invoke-static {v9}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v1, v2, v4, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    :cond_6
    invoke-virtual {v1, v4, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v9

    invoke-static {v9}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v1, v4, v2, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    :cond_7
    move v2, v3

    goto :goto_6

    :cond_8
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2}, Lcom/google/zxing/common/BitArray;-><init>()V

    if-ltz v0, :cond_9

    if-ge v0, v5, :cond_9

    move v3, v6

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->getBits()I

    move-result v3

    const/4 v8, 0x3

    shl-int/2addr v3, v8

    or-int/2addr v3, v0

    invoke-virtual {v2, v3, v7}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v7, 0x537

    invoke-static {v3, v7}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v3

    const/16 v7, 0xa

    invoke-virtual {v2, v3, v7}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/16 v7, 0x5412

    const/16 v9, 0xf

    invoke-virtual {v3, v7, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->xor(Lcom/google/zxing/common/BitArray;)V

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    const-string v7, "should not happen but we got: "

    if-ne v3, v9, :cond_1a

    const/4 v3, 0x0

    :goto_8
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    if-ge v3, v9, :cond_b

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    sub-int/2addr v9, v6

    sub-int/2addr v9, v3

    invoke-virtual {v2, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    sget-object v10, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v11, v10, v3

    const/4 v12, 0x0

    aget v11, v11, v12

    aget-object v10, v10, v3

    aget v10, v10, v6

    invoke-virtual {v1, v11, v10, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    if-ge v3, v5, :cond_a

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v10

    sub-int/2addr v10, v3

    sub-int/2addr v10, v6

    invoke-virtual {v1, v10, v5, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    goto :goto_9

    :cond_a
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, -0x7

    add-int/lit8 v11, v3, -0x8

    add-int/2addr v11, v10

    invoke-virtual {v1, v5, v11, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v3

    const/4 v5, 0x7

    if-ge v3, v5, :cond_c

    goto :goto_c

    :cond_c
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v5

    const/16 v9, 0x1f25

    invoke-static {v5, v9}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v5

    const/16 v9, 0xc

    invoke-virtual {v3, v5, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    const/16 v9, 0x12

    if-ne v5, v9, :cond_19

    const/16 v5, 0x11

    move v7, v5

    move v5, v2

    :goto_a
    if-ge v5, v4, :cond_e

    move v9, v7

    move v7, v2

    :goto_b
    if-ge v7, v8, :cond_d

    invoke-virtual {v3, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    add-int/lit8 v9, v9, -0x1

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v11

    add-int/lit8 v11, v11, -0xb

    add-int/2addr v11, v7

    invoke-virtual {v1, v5, v11, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v11

    add-int/lit8 v11, v11, -0xb

    add-int/2addr v11, v7

    invoke-virtual {v1, v11, v5, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_d
    add-int/lit8 v5, v5, 0x1

    move v7, v9

    goto :goto_a

    :cond_e
    :goto_c
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    sub-int/2addr v5, v6

    const/4 v7, -0x1

    move v8, v7

    move v7, v5

    move v5, v2

    :goto_d
    if-lez v3, :cond_17

    if-ne v3, v4, :cond_f

    add-int/lit8 v3, v3, -0x1

    :cond_f
    :goto_e
    if-ltz v7, :cond_16

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v9

    if-ge v7, v9, :cond_16

    const/4 v9, 0x2

    move v10, v5

    move v5, v2

    :goto_f
    if-ge v5, v9, :cond_15

    sub-int v11, v3, v5

    invoke-virtual {v1, v11, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v12

    invoke-static {v12}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v12

    if-nez v12, :cond_10

    move-object/from16 v12, p0

    goto/16 :goto_16

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v12

    if-ge v10, v12, :cond_11

    move-object/from16 v12, p0

    invoke-virtual {v12, v10}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_11
    move-object/from16 v12, p0

    move v13, v2

    :goto_10
    const/4 v14, -0x1

    if-eq v0, v14, :cond_14

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid mask pattern: "

    invoke-static {v2, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline12(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    mul-int v14, v7, v11

    rem-int/lit8 v14, v14, 0x3

    add-int v15, v7, v11

    and-int/lit8 v15, v15, 0x1

    goto :goto_11

    :pswitch_1
    mul-int v14, v7, v11

    and-int/lit8 v15, v14, 0x1

    rem-int/lit8 v14, v14, 0x3

    :goto_11
    add-int/2addr v14, v15

    goto :goto_12

    :pswitch_2
    mul-int v14, v7, v11

    and-int/lit8 v15, v14, 0x1

    rem-int/lit8 v14, v14, 0x3

    add-int/2addr v14, v15

    goto :goto_13

    :pswitch_3
    ushr-int/lit8 v14, v7, 0x1

    div-int/lit8 v15, v11, 0x3

    add-int/2addr v15, v14

    and-int/lit8 v14, v15, 0x1

    goto :goto_13

    :pswitch_4
    add-int v14, v7, v11

    rem-int/lit8 v14, v14, 0x3

    goto :goto_13

    :pswitch_5
    rem-int/lit8 v14, v11, 0x3

    goto :goto_13

    :pswitch_6
    move v14, v7

    goto :goto_12

    :pswitch_7
    add-int v14, v7, v11

    :goto_12
    and-int/lit8 v14, v14, 0x1

    :goto_13
    if-nez v14, :cond_12

    move v14, v6

    goto :goto_14

    :cond_12
    move v14, v2

    :goto_14
    if-eqz v14, :cond_14

    if-nez v13, :cond_13

    move v13, v6

    goto :goto_15

    :cond_13
    move v13, v2

    :cond_14
    :goto_15
    invoke-virtual {v1, v11, v7, v13}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    :goto_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_15
    move-object/from16 v12, p0

    add-int/2addr v7, v8

    move v5, v10

    goto/16 :goto_e

    :cond_16
    move-object/from16 v12, p0

    neg-int v8, v8

    add-int/2addr v7, v8

    add-int/lit8 v3, v3, -0x2

    goto/16 :goto_d

    :cond_17
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    if-ne v5, v0, :cond_18

    return-void

    :cond_18
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not all bits consumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-static {v7}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-static {v7}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid mask pattern"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static calculateBCHCode(II)I
    .locals 2

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    shl-int/2addr p0, v1

    :goto_0
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v1

    sub-int/2addr v1, v0

    shl-int v1, p1, v1

    xor-int/2addr p0, v1

    goto :goto_0

    :cond_0
    return p0
.end method

.method private static embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    add-int v2, p0, v1

    invoke-virtual {p2, v2, p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2, p1, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method private static embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    add-int v4, p0, v3

    add-int v5, p1, v1

    sget-object v6, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v6, v6, v1

    aget v6, v6, v3

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    add-int v2, p1, v1

    invoke-virtual {p2, p0, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, p0, v2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method static findMSBSet(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static isEmpty(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
