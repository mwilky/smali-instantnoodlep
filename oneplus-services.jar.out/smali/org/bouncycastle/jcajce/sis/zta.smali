.class public Lorg/bouncycastle/jcajce/sis/zta;
.super Ljavax/crypto/spec/IvParameterSpec;
.source ""


# instance fields
.field private final gGa:[B

.field private final hGa:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jcajce/sis/zta;-><init>([BI[B)V

    return-void
.end method

.method public constructor <init>([BI[B)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput p2, p0, Lorg/bouncycastle/jcajce/sis/zta;->hGa:I

    invoke-static {p3}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/sis/zta;->gGa:[B

    return-void
.end method


# virtual methods
.method public getNonce()[B
    .locals 0

    invoke-virtual {p0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p0

    return-object p0
.end method

.method public ph()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/sis/zta;->gGa:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method public qh()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/sis/zta;->hGa:I

    return p0
.end method
