.class public Lorg/bouncycastle/crypto/wtn/dma;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TQa:I = 0x1

.field public static final UQa:I = 0x2


# instance fields
.field private final dNa:I

.field private final eQa:I

.field private final l:I

.field private final n:I

.field private final nCa:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(IIILjava/security/SecureRandom;)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/wtn/dma;-><init>(IIILjava/security/SecureRandom;I)V

    return-void
.end method

.method public constructor <init>(IIILjava/security/SecureRandom;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/wtn/dma;->l:I

    iput p2, p0, Lorg/bouncycastle/crypto/wtn/dma;->n:I

    iput p3, p0, Lorg/bouncycastle/crypto/wtn/dma;->dNa:I

    iput p5, p0, Lorg/bouncycastle/crypto/wtn/dma;->eQa:I

    iput-object p4, p0, Lorg/bouncycastle/crypto/wtn/dma;->nCa:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public Fj()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/wtn/dma;->n:I

    return p0
.end method

.method public Wj()Ljava/security/SecureRandom;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/dma;->nCa:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public getCertainty()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/wtn/dma;->dNa:I

    return p0
.end method

.method public getL()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/wtn/dma;->l:I

    return p0
.end method

.method public lk()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/wtn/dma;->eQa:I

    return p0
.end method
