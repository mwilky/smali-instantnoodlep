.class public Lorg/bouncycastle/crypto/wtn/cgv;
.super Lorg/bouncycastle/crypto/wtn/veq;
.source ""


# instance fields
.field private TRa:Ljava/math/BigInteger;

.field private URa:Ljava/math/BigInteger;

.field private VRa:Ljava/math/BigInteger;

.field private e:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p3}, Lorg/bouncycastle/crypto/wtn/veq;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/wtn/cgv;->e:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/bouncycastle/crypto/wtn/cgv;->p:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/bouncycastle/crypto/wtn/cgv;->q:Ljava/math/BigInteger;

    iput-object p6, p0, Lorg/bouncycastle/crypto/wtn/cgv;->TRa:Ljava/math/BigInteger;

    iput-object p7, p0, Lorg/bouncycastle/crypto/wtn/cgv;->URa:Ljava/math/BigInteger;

    iput-object p8, p0, Lorg/bouncycastle/crypto/wtn/cgv;->VRa:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getP()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/cgv;->p:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/cgv;->e:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/cgv;->q:Ljava/math/BigInteger;

    return-object p0
.end method

.method public lk()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/cgv;->TRa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public mk()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/cgv;->URa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public nk()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/cgv;->VRa:Ljava/math/BigInteger;

    return-object p0
.end method
