.class Lorg/bouncycastle/asn1/ywr/bvj;
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
.method protected Yj()Lorg/bouncycastle/asn1/ibl/vju;
    .locals 11

    const-string p0, "0017858FEB7A98975169E171F77B4087DE098AC8A911DF7B01"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->La(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string p0, "00FDFB49BFE6C3A89FACADAA7A1E5BBC7CC1C2E5D831478814"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->La(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-string p0, "103FAEC74D696E676875615175777FC5B191EF30"

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v10

    const-string p0, "01000000000000000000000000C7F34A778F443ACC920EBA49"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->La(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    new-instance p0, Lyou/zta/sis/zta/rtg$tsu;

    const/16 v1, 0xc1

    const/16 v2, 0xf

    move-object v0, p0

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lyou/zta/sis/zta/rtg$tsu;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->zta(Lyou/zta/sis/zta/rtg;)Lyou/zta/sis/zta/rtg;

    new-instance v7, Lorg/bouncycastle/asn1/ibl/les;

    const-string v0, "0401F481BC5F0FF84A74AD6CDF6FDEF4BF6179625372D8C0C5E10025E399F2903712CCF3EA9E3A1AD17FB0B3201B6AF7CE1B05"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v7, p0, v0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    new-instance v0, Lorg/bouncycastle/asn1/ibl/vju;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
