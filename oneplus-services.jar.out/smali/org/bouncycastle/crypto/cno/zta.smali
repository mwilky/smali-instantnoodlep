.class public Lorg/bouncycastle/crypto/cno/zta;
.super Ljava/io/FilterInputStream;
.source ""


# instance fields
.field protected digest:Lorg/bouncycastle/crypto/qbh;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/qbh;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/cno/zta;->digest:Lorg/bouncycastle/crypto/qbh;

    return-void
.end method


# virtual methods
.method public Lg()Lorg/bouncycastle/crypto/qbh;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/cno/zta;->digest:Lorg/bouncycastle/crypto/qbh;

    return-object p0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/crypto/cno/zta;->digest:Lorg/bouncycastle/crypto/qbh;

    int-to-byte v1, v0

    invoke-interface {p0, v1}, Lorg/bouncycastle/crypto/qbh;->update(B)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/crypto/cno/zta;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    :cond_0
    return p3
.end method
