.class Lorg/bouncycastle/asn1/da;
.super Lorg/bouncycastle/asn1/ga;
.source ""


# instance fields
.field private Tya:I

.field private Uya:I

.field private Vya:Z

.field private Wya:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ga;-><init>(Ljava/io/InputStream;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/bouncycastle/asn1/da;->Vya:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/bouncycastle/asn1/da;->Wya:Z

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    iput p2, p0, Lorg/bouncycastle/asn1/da;->Tya:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/asn1/da;->Uya:I

    iget p1, p0, Lorg/bouncycastle/asn1/da;->Uya:I

    if-ltz p1, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/da;->Aw()Z

    return-void

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private Aw()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/da;->Vya:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/da;->Wya:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/asn1/da;->Tya:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/asn1/da;->Uya:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/da;->Vya:Z

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ga;->fa(Z)V

    :cond_0
    iget-boolean p0, p0, Lorg/bouncycastle/asn1/da;->Vya:Z

    return p0
.end method


# virtual methods
.method ga(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/da;->Wya:Z

    invoke-direct {p0}, Lorg/bouncycastle/asn1/da;->Aw()Z

    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/da;->Aw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ga;->Pya:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    iget v1, p0, Lorg/bouncycastle/asn1/da;->Tya:I

    iget v2, p0, Lorg/bouncycastle/asn1/da;->Uya:I

    iput v2, p0, Lorg/bouncycastle/asn1/da;->Tya:I

    iput v0, p0, Lorg/bouncycastle/asn1/da;->Uya:I

    return v1

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/da;->Wya:Z

    if-nez v0, :cond_4

    const/4 v0, 0x3

    if-ge p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/da;->Vya:Z

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/ga;->Pya:Ljava/io/InputStream;

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-virtual {v0, p1, v1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-ltz p3, :cond_3

    iget v0, p0, Lorg/bouncycastle/asn1/da;->Tya:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    iget v0, p0, Lorg/bouncycastle/asn1/da;->Uya:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    iget-object p1, p0, Lorg/bouncycastle/asn1/ga;->Pya:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/asn1/da;->Tya:I

    iget-object p1, p0, Lorg/bouncycastle/asn1/ga;->Pya:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/asn1/da;->Uya:I

    iget p0, p0, Lorg/bouncycastle/asn1/da;->Uya:I

    if-ltz p0, :cond_2

    add-int/lit8 p3, p3, 0x2

    return p3

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_4
    :goto_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0
.end method
