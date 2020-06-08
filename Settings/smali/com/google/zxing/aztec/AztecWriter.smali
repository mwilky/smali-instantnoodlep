.class public final Lcom/google/zxing/aztec/AztecWriter;
.super Ljava/lang/Object;
.source "AztecWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/AztecWriter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 6
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

    const/4 p0, 0x0

    if-nez p5, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    if-nez p5, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    :goto_1
    if-nez p5, :cond_2

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/google/zxing/EncodeHintType;->AZTEC_LAYERS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    :goto_2
    if-nez v0, :cond_3

    sget-object p5, Lcom/google/zxing/aztec/AztecWriter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_3

    :cond_3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p5

    :goto_3
    if-nez v1, :cond_4

    const/16 v0, 0x21

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_4
    const/4 v1, 0x0

    if-nez p0, :cond_5

    move p0, v1

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_5
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v2, :cond_a

    invoke-virtual {p1, p5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, v0, p0}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/AztecCode;->getMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p2

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p4

    div-int p5, p3, p1

    div-int v0, p4, p2

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    mul-int v0, p1, p5

    sub-int v0, p3, v0

    div-int/lit8 v0, v0, 0x2

    mul-int v2, p2, p5

    sub-int v2, p4, v2

    div-int/lit8 v2, v2, 0x2

    new-instance v3, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v3, p3, p4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move p3, v1

    :goto_6
    if-ge p3, p2, :cond_8

    move v4, v0

    move p4, v1

    :goto_7
    if-ge p4, p1, :cond_7

    invoke-virtual {p0, p4, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3, v4, v2, p5, p5}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_6
    add-int/lit8 p4, p4, 0x1

    add-int/2addr v4, p5

    goto :goto_7

    :cond_7
    add-int/lit8 p3, p3, 0x1

    add-int/2addr v2, p5

    goto :goto_6

    :cond_8
    return-object v3

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can only encode AZTEC, but got "

    invoke-static {p1, p2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
