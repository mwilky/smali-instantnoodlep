.class public Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/crypto/interfaces/DHPrivateKey;
.implements Lorg/bouncycastle/jce/interfaces/tsu;


# static fields
.field static final serialVersionUID:J = 0x4511a58411962b4L


# instance fields
.field private attrCarrier:Lorg/bouncycastle/jce/interfaces/tsu;

.field private dhSpec:Ljavax/crypto/spec/DHParameterSpec;

.field private info:Lorg/bouncycastle/asn1/dma/vdb;

.field x:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jce/interfaces/tsu;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/interfaces/DHPrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jce/interfaces/tsu;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->x:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jce/interfaces/tsu;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/dma/vdb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jce/interfaces/tsu;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/vdb;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/vdb;->parsePrivateKey()Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/vdb;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->info:Lorg/bouncycastle/asn1/dma/vdb;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->x:Ljava/math/BigInteger;

    sget-object p1, Lorg/bouncycastle/asn1/dma/gwm;->dhKeyAgreement:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/asn1/dma/kth;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/kth;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getL()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getL()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/bouncycastle/asn1/ibl/ivd;->dhpublicnumber:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lorg/bouncycastle/asn1/ibl/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/zta;

    move-result-object p1

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/zta;->getP()Lorg/bouncycastle/asn1/ywr;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/zta;->getG()Lorg/bouncycastle/asn1/ywr;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown algorithm type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor <init>(Lorg/bouncycastle/crypto/wtn/kth;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jce/interfaces/tsu;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/kth;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ssp;->getParameters()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/wtn/cno;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ssp;->getParameters()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/wtn/cno;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ssp;->getParameters()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cno;->getL()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "DH"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 8

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->info:Lorg/bouncycastle/asn1/dma/vdb;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "DER"

    if-eqz v0, :cond_0

    :try_start_1
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->info:Lorg/bouncycastle/asn1/dma/vdb;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/dma/vdb;

    new-instance v2, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v3, Lorg/bouncycastle/asn1/dma/gwm;->dhKeyAgreement:Lorg/bouncycastle/asn1/bvj;

    new-instance v4, Lorg/bouncycastle/asn1/dma/kth;

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lorg/bouncycastle/asn1/dma/kth;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    new-instance v3, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v3, p0}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/dma/vdb;-><init>(Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-object p0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->x:Ljava/math/BigInteger;

    return-object p0
.end method

.method public obl()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jce/interfaces/tsu;

    invoke-interface {p0}, Lorg/bouncycastle/jce/interfaces/tsu;->obl()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jce/interfaces/tsu;

    invoke-interface {p0, p1}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    return-object p0
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jce/interfaces/tsu;

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    return-void
.end method
