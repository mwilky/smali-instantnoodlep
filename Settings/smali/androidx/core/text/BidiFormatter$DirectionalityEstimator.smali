.class Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x700

    new-array v1, v0, [B

    sput-object v1, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    return-void
.end method

.method private static getCachedDirectionality(C)B
    .locals 1

    const/16 v0, 0x700

    if-ge p0, v0, :cond_0

    sget-object v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte p0, v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method dirTypeBackward()B
    .locals 7

    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result p0

    return p0

    :cond_0
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x700

    if-ge v0, v1, :cond_1

    sget-object v1, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v0, v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    :goto_0
    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_b

    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0xc

    const/16 v3, 0xd

    const/16 v4, 0x3e

    if-ne v1, v4, :cond_7

    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    :cond_2
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_6

    iget-object v5, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v5, 0x3c

    if-ne v1, v5, :cond_3

    goto :goto_3

    :cond_3
    if-ne v1, v4, :cond_4

    goto :goto_2

    :cond_4
    const/16 v5, 0x22

    if-eq v1, v5, :cond_5

    const/16 v5, 0x27

    if-ne v1, v5, :cond_2

    :cond_5
    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    :goto_1
    iget v5, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v5, :cond_2

    iget-object v6, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v6, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iput-char v5, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v5, v1, :cond_2

    goto :goto_1

    :cond_6
    :goto_2
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iput-char v4, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    goto :goto_4

    :cond_7
    const/16 v4, 0x3b

    if-ne v1, v4, :cond_b

    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    :cond_8
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_a

    iget-object v5, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v5, 0x26

    if-ne v1, v5, :cond_9

    :goto_3
    move v0, v2

    goto :goto_5

    :cond_9
    if-ne v1, v4, :cond_8

    :cond_a
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iput-char v4, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    :goto_4
    move v0, v3

    :cond_b
    :goto_5
    return v0
.end method

.method getEntryDir()I
    .locals 13

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    move v3, v0

    move v4, v3

    move v5, v4

    :cond_0
    :goto_0
    iget v6, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v7, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v6, v7, :cond_c

    if-nez v3, :cond_c

    iget-object v7, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iput-char v6, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v6, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v7, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v6, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    iget v7, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v8, v7

    iput v8, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v6}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    goto/16 :goto_4

    :cond_1
    iget v6, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/2addr v6, v2

    iput v6, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget-char v6, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v6}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v6

    iget-boolean v7, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    const/16 v8, 0xc

    if-eqz v7, :cond_8

    iget-char v7, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v9, 0x3c

    if-ne v7, v9, :cond_6

    iget v6, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    :cond_2
    iget v7, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v10, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v7, v10, :cond_5

    iget-object v10, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v11, v7, 0x1

    iput v11, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v10, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    iput-char v7, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v7, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v10, 0x3e

    if-ne v7, v10, :cond_3

    goto :goto_3

    :cond_3
    const/16 v10, 0x22

    if-eq v7, v10, :cond_4

    const/16 v10, 0x27

    if-ne v7, v10, :cond_2

    :cond_4
    iget-char v7, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    :goto_1
    iget v10, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v11, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v10, v11, :cond_2

    iget-object v11, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v12, v10, 0x1

    iput v12, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v11, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    iput-char v10, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v10, v7, :cond_2

    goto :goto_1

    :cond_5
    iput v6, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iput-char v9, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v6, 0xd

    goto :goto_4

    :cond_6
    const/16 v9, 0x26

    if-ne v7, v9, :cond_8

    :goto_2
    iget v6, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v7, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v6, v7, :cond_7

    iget-object v7, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iput-char v6, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    move v6, v8

    :cond_8
    :goto_4
    if-eqz v6, :cond_a

    if-eq v6, v2, :cond_9

    const/4 v7, 0x2

    if-eq v6, v7, :cond_9

    const/16 v7, 0x9

    if-eq v6, v7, :cond_0

    packed-switch v6, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    add-int/lit8 v5, v5, -0x1

    move v4, v0

    goto/16 :goto_0

    :pswitch_1
    add-int/lit8 v5, v5, 0x1

    move v4, v2

    goto/16 :goto_0

    :pswitch_2
    add-int/lit8 v5, v5, 0x1

    move v4, v1

    goto/16 :goto_0

    :cond_9
    if-nez v5, :cond_b

    return v2

    :cond_a
    if-nez v5, :cond_b

    return v1

    :cond_b
    :goto_5
    move v3, v5

    goto/16 :goto_0

    :cond_c
    if-nez v3, :cond_d

    return v0

    :cond_d
    if-eqz v4, :cond_e

    return v4

    :cond_e
    :goto_6
    iget v4, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v4, :cond_10

    invoke-virtual {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_6

    :pswitch_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :pswitch_4
    if-ne v3, v5, :cond_f

    return v2

    :pswitch_5
    if-ne v3, v5, :cond_f

    return v1

    :cond_f
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_10
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method getExitDir()I
    .locals 7

    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    iget v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_6

    invoke-virtual {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    const/16 v6, 0x9

    if-eq v3, v6, :cond_0

    packed-switch v3, :pswitch_data_0

    if-nez v1, :cond_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    if-ne v1, v2, :cond_1

    return v5

    :pswitch_2
    if-ne v1, v2, :cond_1

    return v4

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    return v5

    :cond_3
    if-nez v1, :cond_0

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    return v4

    :cond_5
    if-nez v1, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_6
    return v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
