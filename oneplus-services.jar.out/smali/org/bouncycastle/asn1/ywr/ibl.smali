.class Lorg/bouncycastle/asn1/ywr/ibl;
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
    .locals 11

    const-string p0, "0163F35A5137C2CE3EA6ED8667190B0BC43ECD69977702709B"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->La(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string p0, "00C9BB9E8927D4D64C377E2AB2856A5B16E3EFB7F61D4316AE"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->La(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-string p0, "10B7B4D696E676875615175137C8A16FD0DA2211"

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v10

    const-string p0, "010000000000000000000000015AAB561B005413CCD4EE99D5"

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

    const-string v0, "0400D9B67D192E0367C803F39E1A7E82CA14A651350AAE617E8F01CE94335607C304AC29E7DEFBD9CA01F596F927224CDECF6C"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v7, p0, v0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    new-instance v0, Lorg/bouncycastle/asn1/ibl/vju;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
