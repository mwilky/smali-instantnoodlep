.class public Lyou/zta/sis/zta/zta/zta/bud;
.super Lyou/zta/sis/zta/cno$you;
.source ""


# static fields
.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lyou/zta/sis/zta/zta/zta/cgv;->q:Ljava/math/BigInteger;

    sput-object v0, Lyou/zta/sis/zta/zta/zta/bud;->Q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyou/zta/sis/zta/cno$you;-><init>()V

    const/16 v0, 0xc

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    iput-object v0, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/sis/zta/cno$you;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lyou/zta/sis/zta/zta/zta/bud;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Lyou/zta/sis/zta/zta/zta/vju;->dma(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecP384R1FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Lyou/zta/sis/zta/cno$you;-><init>()V

    iput-object p1, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    return-void
.end method


# virtual methods
.method public _k()Lyou/zta/sis/zta/cno;
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {p0, v0}, Lyou/zta/sis/zta/zta/zta/vju;->ssp([I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/bud;-><init>([I)V

    return-object p0
.end method

.method public al()Ljava/lang/String;
    .locals 0

    const-string p0, "SecP384R1Field"

    return-object p0
.end method

.method public bl()Z
    .locals 1

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    const/16 v0, 0xc

    invoke-static {v0, p0}, Lyou/zta/sis/sis/kth;->gck(I[I)Z

    move-result p0

    return p0
.end method

.method public cl()Lyou/zta/sis/zta/cno;
    .locals 7

    iget-object v0, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lyou/zta/sis/sis/kth;->dma(I[I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1, v0}, Lyou/zta/sis/sis/kth;->gck(I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v1}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object p0

    invoke-static {v1}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v2

    invoke-static {v1}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v3

    invoke-static {v1}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v4

    invoke-static {v0, p0}, Lyou/zta/sis/zta/zta/zta/vju;->igw([I[I)V

    invoke-static {p0, v0, p0}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    const/4 v5, 0x2

    invoke-static {p0, v5, v2}, Lyou/zta/sis/zta/zta/zta/vju;->zta([II[I)V

    invoke-static {v2, p0, v2}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    invoke-static {v2, v2}, Lyou/zta/sis/zta/zta/zta/vju;->igw([I[I)V

    invoke-static {v2, v0, v2}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    const/4 v6, 0x5

    invoke-static {v2, v6, v3}, Lyou/zta/sis/zta/zta/zta/vju;->zta([II[I)V

    invoke-static {v3, v2, v3}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    invoke-static {v3, v6, v4}, Lyou/zta/sis/zta/zta/zta/vju;->zta([II[I)V

    invoke-static {v4, v2, v4}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    const/16 v6, 0xf

    invoke-static {v4, v6, v2}, Lyou/zta/sis/zta/zta/zta/vju;->zta([II[I)V

    invoke-static {v2, v4, v2}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    invoke-static {v2, v5, v3}, Lyou/zta/sis/zta/zta/zta/vju;->zta([II[I)V

    invoke-static {p0, v3, p0}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    const/16 v5, 0x1c

    invoke-static {v3, v5, v3}, Lyou/zta/sis/zta/zta/zta/vju;->zta([II[I)V

    invoke-static {v2, v3, v2}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    const/16 v5, 0x3c

    invoke-static {v2, v5, v3}, Lyou/zta/sis/zta/zta/zta/vju;->zta([II[I)V

    invoke-static {v3, v2, v3}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    const/16 v5, 0x78

    invoke-static {v3, v5, v2}, Lyou/zta/sis/zta/zta/zta/vju;->zta([II[I)V

    invoke-static {v2, v3, v2}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    invoke-static {v2, v6, v2}, Lyou/zta/sis/zta/zta/zta/vju;->zta([II[I)V

    invoke-static {v2, v4, v2}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    const/16 v3, 0x21

    invoke-static {v2, v3, v2}, Lyou/zta/sis/zta/zta/zta/vju;->zta([II[I)V

    invoke-static {v2, p0, v2}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    const/16 v3, 0x40

    invoke-static {v2, v3, v2}, Lyou/zta/sis/zta/zta/zta/vju;->zta([II[I)V

    invoke-static {v2, v0, v2}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    const/16 v3, 0x1e

    invoke-static {v2, v3, p0}, Lyou/zta/sis/zta/zta/zta/vju;->zta([II[I)V

    invoke-static {p0, v2}, Lyou/zta/sis/zta/zta/zta/vju;->igw([I[I)V

    invoke-static {v1, v0, v2}, Lyou/zta/sis/sis/kth;->rtg(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-direct {v0, p0}, Lyou/zta/sis/zta/zta/zta/bud;-><init>([I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public dl()Z
    .locals 2

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lyou/zta/sis/sis/kth;->zta([II)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lyou/zta/sis/zta/zta/zta/bud;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lyou/zta/sis/zta/zta/zta/bud;

    const/16 v0, 0xc

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v0, p0, p1}, Lyou/zta/sis/sis/kth;->rtg(I[I[I)Z

    move-result p0

    return p0
.end method

.method public getFieldSize()I
    .locals 0

    sget-object p0, Lyou/zta/sis/zta/zta/zta/bud;->Q:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    sget-object v0, Lyou/zta/sis/zta/zta/zta/bud;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {p0, v1, v2}, Lorg/bouncycastle/util/zta;->you([III)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public invert()Lyou/zta/sis/zta/cno;
    .locals 2

    const/16 v0, 0xc

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    sget-object v1, Lyou/zta/sis/zta/zta/zta/vju;->P:[I

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v1, p0, v0}, Lyou/zta/sis/sis/you;->bio([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/bud;-><init>([I)V

    return-object p0
.end method

.method public isZero()Z
    .locals 1

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    const/16 v0, 0xc

    invoke-static {v0, p0}, Lyou/zta/sis/sis/kth;->dma(I[I)Z

    move-result p0

    return p0
.end method

.method public negate()Lyou/zta/sis/zta/cno;
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {p0, v0}, Lyou/zta/sis/zta/zta/zta/vju;->kth([I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/bud;-><init>([I)V

    return-object p0
.end method

.method public rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    check-cast p1, Lyou/zta/sis/zta/zta/zta/bud;

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {p0, p1, v0}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/bud;-><init>([I)V

    return-object p0
.end method

.method public sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    check-cast p1, Lyou/zta/sis/zta/zta/zta/bud;

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {p0, p1, v0}, Lyou/zta/sis/zta/zta/zta/vju;->you([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/bud;-><init>([I)V

    return-object p0
.end method

.method public square()Lyou/zta/sis/zta/cno;
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {p0, v0}, Lyou/zta/sis/zta/zta/zta/vju;->igw([I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/bud;-><init>([I)V

    return-object p0
.end method

.method public ssp(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    check-cast p1, Lyou/zta/sis/zta/zta/zta/bud;

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {p0, p1, v0}, Lyou/zta/sis/zta/zta/zta/vju;->ssp([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/bud;-><init>([I)V

    return-object p0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    const/16 v0, 0xc

    invoke-static {v0, p0}, Lyou/zta/sis/sis/kth;->ywr(I[I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public tsu(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 2

    const/16 v0, 0xc

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    sget-object v1, Lyou/zta/sis/zta/zta/zta/vju;->P:[I

    check-cast p1, Lyou/zta/sis/zta/zta/zta/bud;

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v1, p1, v0}, Lyou/zta/sis/sis/you;->bio([I[I[I)V

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v0, p0, v0}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/bud;-><init>([I)V

    return-object p0
.end method
