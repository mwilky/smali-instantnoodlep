.class public Lorg/bouncycastle/asn1/X;
.super Lorg/bouncycastle/asn1/obl;
.source ""


# instance fields
.field private WGa:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/obl;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/X;->WGa:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cno;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/obl;-><init>(Lorg/bouncycastle/asn1/cno;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/X;->WGa:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ssp;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/obl;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/X;->WGa:I

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ssp;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/obl;-><init>([Lorg/bouncycastle/asn1/ssp;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/X;->WGa:I

    return-void
.end method

.method private Jw()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/X;->WGa:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/obl;->Lh()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ssp;

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/vdb;->yh()Lorg/bouncycastle/asn1/vdb;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/vdb;->wh()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/bouncycastle/asn1/X;->WGa:I

    :cond_1
    iget p0, p0, Lorg/bouncycastle/asn1/X;->WGa:I

    return p0
.end method


# virtual methods
.method wh()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/X;->Jw()I

    move-result p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ia;->na(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method zta(Lorg/bouncycastle/asn1/ugm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ugm;->Tj()Lorg/bouncycastle/asn1/ugm;

    move-result-object v0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/X;->Jw()I

    move-result v1

    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ugm;->la(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/obl;->Lh()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ssp;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ugm;->sis(Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_0

    :cond_0
    return-void
.end method
