.class Lorg/bouncycastle/asn1/ywr/rtg;
.super Lorg/bouncycastle/asn1/ibl/bud;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/ywr/irq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ibl/bud;-><init>()V

    return-void
.end method


# virtual methods
.method protected Uj()Lorg/bouncycastle/asn1/ibl/vju;
    .locals 18

    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr/irq;->Ka(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lyou/zta/sis/zta/sis;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x7

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141"

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr/irq;->Ka(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    new-instance v0, Lyou/zta/sis/zta/you/tsu;

    new-instance v11, Ljava/math/BigInteger;

    const/16 v1, 0x10

    const-string v5, "7ae96a2b657c07106e64479eac3434e99cf0497512f58995c1396c28719501ee"

    invoke-direct {v11, v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v12, Ljava/math/BigInteger;

    const-string v5, "5363ad4cc05c30e0a5261c028812645a122e22ea20816678df02967c1b23bd72"

    invoke-direct {v12, v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x2

    new-array v13, v5, [Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "3086d221a7d46bcde86c90e49284eb15"

    invoke-direct {v6, v7, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v10, 0x0

    aput-object v6, v13, v10

    new-instance v6, Ljava/math/BigInteger;

    const-string v14, "-e4437ed6010e88286f547fa90abfe4c3"

    invoke-direct {v6, v14, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v14, 0x1

    aput-object v6, v13, v14

    new-array v5, v5, [Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    const-string v15, "114ca50f7a8e2f3f657c1108d9d44cfd8"

    invoke-direct {v6, v15, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v6, v5, v10

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v7, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v6, v5, v14

    new-instance v15, Ljava/math/BigInteger;

    const-string v6, "3086d221a7d46bcde86c90e49284eb153dab"

    invoke-direct {v15, v6, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "e4437ed6010e88286f547fa90abfe4c42212"

    invoke-direct {v6, v7, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v17, 0x110

    move-object v10, v0

    move-object v14, v5

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v17}, Lyou/zta/sis/zta/you/tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    new-instance v7, Lyou/zta/sis/zta/rtg$rtg;

    move-object v1, v7

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lyou/zta/sis/zta/rtg$rtg;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v7, v0}, Lorg/bouncycastle/asn1/ywr/irq;->zta(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/you/tsu;)Lyou/zta/sis/zta/rtg;

    move-result-object v6

    new-instance v7, Lorg/bouncycastle/asn1/ibl/les;

    const-string v0, "0479BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v7, v6, v0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    new-instance v0, Lorg/bouncycastle/asn1/ibl/vju;

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
