.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "CodaBarWriter.java"


# static fields
.field private static final ALT_START_END_CHARS:[C

.field private static final START_END_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    :array_1
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_14

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    sget-object v3, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v3, v0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v3, v1}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, p0

    :goto_0
    sget-object v4, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v4, v0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v0, v1}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_1
    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Codabar should start/end with "

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", or start/end with "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    const/16 v0, 0x14

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    move v3, v0

    move v0, v2

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v0, v4, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v1, v4}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, 0xa

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot encode : \'"

    invoke-static {v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x9

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/2addr v0, v3

    new-array v0, v0, [Z

    move v1, p0

    move v3, v1

    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_13

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    if-ne v1, v5, :cond_c

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_b

    const/16 v5, 0x45

    if-eq v4, v5, :cond_a

    const/16 v5, 0x4e

    if-eq v4, v5, :cond_9

    const/16 v5, 0x54

    if-eq v4, v5, :cond_8

    goto :goto_7

    :cond_8
    const/16 v4, 0x41

    goto :goto_7

    :cond_9
    const/16 v4, 0x42

    goto :goto_7

    :cond_a
    const/16 v4, 0x44

    goto :goto_7

    :cond_b
    const/16 v4, 0x43

    :cond_c
    :goto_7
    move v5, p0

    :goto_8
    sget-object v6, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    array-length v7, v6

    if-ge v5, v7, :cond_e

    aget-char v6, v6, v5

    if-ne v4, v6, :cond_d

    sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v4, v4, v5

    goto :goto_9

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_e
    move v4, p0

    :goto_9
    move v7, p0

    move v5, v2

    move v6, v3

    move v3, v7

    :goto_a
    const/4 v8, 0x7

    if-ge v3, v8, :cond_11

    aput-boolean v5, v0, v6

    add-int/lit8 v6, v6, 0x1

    rsub-int/lit8 v8, v3, 0x6

    shr-int v8, v4, v8

    and-int/2addr v8, v2

    if-eqz v8, :cond_10

    if-ne v7, v2, :cond_f

    goto :goto_b

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_10
    :goto_b
    xor-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    move v7, p0

    goto :goto_a

    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_12

    aput-boolean p0, v0, v6

    add-int/lit8 v6, v6, 0x1

    :cond_12
    move v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_13
    return-object v0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Codabar should start/end with start/stop symbols"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method
