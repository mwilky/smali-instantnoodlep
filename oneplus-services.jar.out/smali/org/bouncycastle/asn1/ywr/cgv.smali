.class Lorg/bouncycastle/asn1/ywr/cgv;
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
.method protected Zj()Lorg/bouncycastle/asn1/ibl/vju;
    .locals 10

    const-string p0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->La(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    const-string p0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFC"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->La(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    const-string p0, "1C97BEFC54BD7A8B65ACF89F81D4D4ADC565FA45"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->La(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string p0, "1053CDE42C14D696E67687561517533BF3F83345"

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v9

    const-string p0, "0100000000000000000001F4C8F927AED3CA752257"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->La(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    new-instance p0, Lyou/zta/sis/zta/rtg$rtg;

    move-object v0, p0

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lyou/zta/sis/zta/rtg$rtg;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->zta(Lyou/zta/sis/zta/rtg;)Lyou/zta/sis/zta/rtg;

    new-instance v6, Lorg/bouncycastle/asn1/ibl/les;

    const-string v0, "044A96B5688EF573284664698968C38BB913CBFC8223A628553168947D59DCC912042351377AC5FB32"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    new-instance v0, Lorg/bouncycastle/asn1/ibl/vju;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
