.class public Lorg/bouncycastle/crypto/bvj;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private sDa:Ljava/security/SecureRandom;

.field private strength:I


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/bvj;->sDa:Ljava/security/SecureRandom;

    iput p2, p0, Lorg/bouncycastle/crypto/bvj;->strength:I

    return-void
.end method


# virtual methods
.method public ak()Ljava/security/SecureRandom;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/bvj;->sDa:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public getStrength()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/bvj;->strength:I

    return p0
.end method
