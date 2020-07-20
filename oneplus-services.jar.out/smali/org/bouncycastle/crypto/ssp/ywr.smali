.class public Lorg/bouncycastle/crypto/ssp/ywr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/sis;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private param:Lorg/bouncycastle/crypto/wtn/lqr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/ssp/ywr;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(II)I
    .locals 4

    const/4 v0, 0x4

    const/16 v1, 0x64

    const/16 v2, 0x600

    if-lt p0, v2, :cond_2

    if-gt p1, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/16 p0, 0x80

    if-gt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    :goto_0
    return v0

    :cond_2
    const/16 v2, 0x400

    const/4 v3, 0x5

    if-lt p0, v2, :cond_5

    if-gt p1, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 p0, 0x70

    if-gt p1, p0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 v0, p1, 0x5

    :goto_1
    return v0

    :cond_5
    const/16 v0, 0x200

    const/16 v2, 0x50

    if-lt p0, v0, :cond_8

    const/4 p0, 0x7

    if-gt p1, v2, :cond_6

    goto :goto_2

    :cond_6
    if-gt p1, v1, :cond_7

    move v3, p0

    goto :goto_2

    :cond_7
    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 v3, p1, 0x7

    :goto_2
    return v3

    :cond_8
    const/16 p0, 0x28

    if-gt p1, v2, :cond_9

    goto :goto_3

    :cond_9
    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    :goto_3
    return p0
.end method


# virtual methods
.method protected cno(Ljava/math/BigInteger;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp/ywr;->param:Lorg/bouncycastle/crypto/wtn/lqr;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/wtn/lqr;->getCertainty()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/ssp/ywr;->e(II)I

    move-result v0

    invoke-static {p1}, Lyou/zta/sis/you;->gck(Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/crypto/ssp/ywr;->param:Lorg/bouncycastle/crypto/wtn/lqr;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/bvj;->_j()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lyou/zta/sis/you;->you(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public generateKeyPair()Lorg/bouncycastle/crypto/you;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/ssp/ywr;->param:Lorg/bouncycastle/crypto/wtn/lqr;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/bvj;->getStrength()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    div-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v4, -0x64

    div-int/lit8 v6, v1, 0x3

    if-ge v5, v6, :cond_0

    move v5, v6

    :cond_0
    shr-int/lit8 v6, v1, 0x2

    const-wide/16 v7, 0x2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v7, Lorg/bouncycastle/crypto/ssp/ywr;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v8, Lorg/bouncycastle/crypto/ssp/ywr;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v8

    const/4 v10, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    :goto_0
    if-nez v10, :cond_7

    iget-object v12, v0, Lorg/bouncycastle/crypto/ssp/ywr;->param:Lorg/bouncycastle/crypto/wtn/lqr;

    invoke-virtual {v12}, Lorg/bouncycastle/crypto/wtn/lqr;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v15

    :goto_1
    invoke-virtual {v0, v2, v15, v7}, Lorg/bouncycastle/crypto/ssp/ywr;->zta(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    :goto_2
    invoke-virtual {v0, v3, v15, v7}, Lorg/bouncycastle/crypto/ssp/ywr;->zta(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    if-lt v9, v5, :cond_6

    invoke-virtual {v14, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-gtz v9, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    if-eq v9, v1, :cond_2

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    goto :goto_2

    :cond_2
    invoke-static {v14}, Lyou/zta/sis/zta/fto;->obl(Ljava/math/BigInteger;)I

    move-result v9

    if-ge v9, v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-gez v9, :cond_4

    move-object v9, v12

    move-object v12, v13

    goto :goto_3

    :cond_4
    move-object v9, v13

    :goto_3
    sget-object v13, Lorg/bouncycastle/crypto/ssp/ywr;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v0, Lorg/bouncycastle/crypto/ssp/ywr;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move/from16 v23, v1

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-gtz v16, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v23

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v13}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    new-instance v11, Lorg/bouncycastle/crypto/you;

    new-instance v0, Lorg/bouncycastle/crypto/wtn/veq;

    const/4 v10, 0x0

    invoke-direct {v0, v10, v14, v15}, Lorg/bouncycastle/crypto/wtn/veq;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v13, Lorg/bouncycastle/crypto/wtn/cgv;

    move-object/from16 v22, v13

    move-object/from16 v16, v1

    move-object/from16 v17, v12

    move-object/from16 v18, v9

    invoke-direct/range {v13 .. v21}, Lorg/bouncycastle/crypto/wtn/cgv;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v1, v22

    invoke-direct {v11, v0, v1}, Lorg/bouncycastle/crypto/you;-><init>(Lorg/bouncycastle/crypto/wtn/you;Lorg/bouncycastle/crypto/wtn/you;)V

    const/4 v0, 0x1

    move v10, v0

    move/from16 v1, v23

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_6
    :goto_4
    move/from16 v23, v1

    const/4 v0, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    goto/16 :goto_2

    :cond_7
    return-object v11
.end method

.method protected zta(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v1, p1, 0x5

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp/ywr;->param:Lorg/bouncycastle/crypto/wtn/lqr;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/bvj;->_j()Ljava/security/SecureRandom;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lorg/bouncycastle/util/you;->sis(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/crypto/ssp/ywr;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/ssp/ywr;->cno(Ljava/math/BigInteger;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Lorg/bouncycastle/crypto/ssp/ywr;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/crypto/ssp/ywr;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unable to generate prime number for RSA key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta(Lorg/bouncycastle/crypto/bvj;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/wtn/lqr;

    iput-object p1, p0, Lorg/bouncycastle/crypto/ssp/ywr;->param:Lorg/bouncycastle/crypto/wtn/lqr;

    return-void
.end method
