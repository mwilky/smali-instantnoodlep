.class Lorg/bouncycastle/jce/provider/bvj;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final vUa:Lorg/bouncycastle/jce/provider/bvj;


# instance fields
.field private uUa:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/jce/provider/bvj;

    const v1, 0x80ff

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/bvj;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/jce/provider/bvj;->vUa:Lorg/bouncycastle/jce/provider/bvj;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/bvj;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/jce/provider/bvj;->uUa:I

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/x509/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/sis;->intValue()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jce/provider/bvj;->uUa:I

    return-void
.end method


# virtual methods
.method Hk()Z
    .locals 1

    iget p0, p0, Lorg/bouncycastle/jce/provider/bvj;->uUa:I

    sget-object v0, Lorg/bouncycastle/jce/provider/bvj;->vUa:Lorg/bouncycastle/jce/provider/bvj;

    iget v0, v0, Lorg/bouncycastle/jce/provider/bvj;->uUa:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method Wi()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jce/provider/bvj;->uUa:I

    return p0
.end method

.method sis(Lorg/bouncycastle/jce/provider/bvj;)Lorg/bouncycastle/jce/provider/bvj;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jce/provider/bvj;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/bvj;-><init>()V

    new-instance v1, Lorg/bouncycastle/jce/provider/bvj;

    iget p0, p0, Lorg/bouncycastle/jce/provider/bvj;->uUa:I

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/bvj;->Wi()I

    move-result p1

    and-int/2addr p0, p1

    invoke-direct {v1, p0}, Lorg/bouncycastle/jce/provider/bvj;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/bvj;->zta(Lorg/bouncycastle/jce/provider/bvj;)V

    return-object v0
.end method

.method you(Lorg/bouncycastle/jce/provider/bvj;)Z
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/provider/bvj;->uUa:I

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/bvj;->Wi()I

    move-result p1

    iget p0, p0, Lorg/bouncycastle/jce/provider/bvj;->uUa:I

    xor-int/2addr p0, p1

    or-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method zta(Lorg/bouncycastle/jce/provider/bvj;)V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/provider/bvj;->uUa:I

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/bvj;->Wi()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/jce/provider/bvj;->uUa:I

    return-void
.end method
