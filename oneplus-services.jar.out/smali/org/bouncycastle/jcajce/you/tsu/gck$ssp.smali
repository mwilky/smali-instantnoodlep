.class public Lorg/bouncycastle/jcajce/you/tsu/gck$ssp;
.super Lorg/bouncycastle/jcajce/you/tsu/gck$zta;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/gck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ssp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 7

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_hmacWithSHA224:Lorg/bouncycastle/asn1/bvj;

    sget-object v4, Lorg/bouncycastle/asn1/bio/you;->pfb:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "HmacSHA224"

    const/16 v3, 0x20

    const-string v5, "AES256"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;-><init>(Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;ILorg/bouncycastle/asn1/bvj;Ljava/lang/String;Lorg/bouncycastle/jcajce/you/tsu/wtn;)V

    return-void
.end method
