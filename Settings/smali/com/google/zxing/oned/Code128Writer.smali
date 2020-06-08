.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code128Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can only encode CODE_128, but got "

    invoke-static {p1, p2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_13

    const/16 v1, 0x50

    if-gt p0, v1, :cond_13

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x20

    if-ge v2, p0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v3, :cond_0

    const/16 v3, 0x7e

    if-le v4, v3, :cond_1

    :cond_0
    packed-switch v4, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad character in input: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v6, v0

    move v3, v1

    move v4, v3

    move v5, v4

    :cond_3
    :goto_1
    if-ge v3, p0, :cond_f

    const/16 v7, 0x63

    if-ne v5, v7, :cond_4

    const/4 v8, 0x2

    goto :goto_2

    :cond_4
    const/4 v8, 0x4

    :goto_2
    add-int/2addr v8, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    move v10, v8

    move v8, v3

    :goto_3
    if-ge v8, v10, :cond_8

    if-ge v8, v9, :cond_8

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-lt v11, v12, :cond_5

    const/16 v12, 0x39

    if-le v11, v12, :cond_7

    :cond_5
    const/16 v12, 0xf1

    if-eq v11, v12, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v10, v10, 0x1

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    if-gt v10, v9, :cond_9

    move v8, v0

    goto :goto_5

    :cond_9
    :goto_4
    move v8, v1

    :goto_5
    const/16 v9, 0x64

    if-eqz v8, :cond_a

    goto :goto_6

    :cond_a
    move v7, v9

    :goto_6
    if-ne v7, v5, :cond_c

    if-ne v5, v9, :cond_b

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v9, v7, -0x20

    goto :goto_7

    :cond_b
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_1

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v3, v7

    goto :goto_a

    :pswitch_1
    const/16 v9, 0x60

    goto :goto_7

    :pswitch_2
    const/16 v9, 0x61

    goto :goto_7

    :pswitch_3
    const/16 v9, 0x66

    :goto_7
    :pswitch_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_c
    if-nez v5, :cond_e

    if-ne v7, v9, :cond_d

    const/16 v5, 0x68

    goto :goto_8

    :cond_d
    const/16 v5, 0x69

    :goto_8
    move v9, v5

    goto :goto_9

    :cond_e
    move v9, v7

    :goto_9
    move v5, v7

    :goto_a
    sget-object v7, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v7, v7, v9

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    mul-int/2addr v9, v6

    add-int/2addr v4, v9

    if-eqz v3, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_f
    rem-int/lit8 v4, v4, 0x67

    sget-object p0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object p0, p0, v4

    invoke-interface {v2, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 p1, 0x6a

    aget-object p0, p0, p1

    invoke-interface {v2, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p1, v1

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    array-length v4, v3

    move v5, p1

    move p1, v1

    :goto_c
    if-ge p1, v4, :cond_10

    aget v6, v3, p1

    add-int/2addr v5, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_10
    move p1, v5

    goto :goto_b

    :cond_11
    new-array p0, p1, [Z

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {p0, v1, v2, v0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_d

    :cond_12
    return-object p0

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Contents length should be between 1 and 80 characters, but got "

    invoke-static {v0, p0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline12(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
