.class public Lorg/bouncycastle/asn1/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/gwm;


# instance fields
.field private Jxa:Lorg/bouncycastle/asn1/hmo;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/hmo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/b;->Jxa:Lorg/bouncycastle/asn1/hmo;

    return-void
.end method


# virtual methods
.method public cno()Lorg/bouncycastle/asn1/vdb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ivd;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/b;->veq()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/io/you;->ssp(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ivd;-><init>([B)V

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/b;->cno()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException converting stream to byte array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public veq()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/k;

    iget-object p0, p0, Lorg/bouncycastle/asn1/b;->Jxa:Lorg/bouncycastle/asn1/hmo;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/k;-><init>(Lorg/bouncycastle/asn1/hmo;)V

    return-object v0
.end method
