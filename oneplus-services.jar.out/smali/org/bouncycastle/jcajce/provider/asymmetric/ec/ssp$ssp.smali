.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ssp$ssp;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ssp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ssp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/you/igw;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/you/igw;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/gck/tsu;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/gck/tsu;-><init>()V

    sget-object v2, Lorg/bouncycastle/crypto/gck/kth;->INSTANCE:Lorg/bouncycastle/crypto/gck/kth;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ssp;-><init>(Lorg/bouncycastle/crypto/qbh;Lorg/bouncycastle/crypto/gck;Lorg/bouncycastle/crypto/gck/zta;)V

    return-void
.end method
