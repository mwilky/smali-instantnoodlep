.class public Lorg/bouncycastle/x509/sis;
.super Lorg/bouncycastle/x509/tsu;
.source ""


# instance fields
.field private KDa:I

.field private LDa:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lorg/bouncycastle/util/dma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/tsu;-><init>(Ljava/util/Set;)V

    const/4 p1, 0x5

    iput p1, p0, Lorg/bouncycastle/x509/sis;->KDa:I

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object p1, p0, Lorg/bouncycastle/x509/sis;->LDa:Ljava/util/Set;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/x509/tsu;->you(Lorg/bouncycastle/util/dma;)V

    return-void
.end method

.method public static zta(Ljava/security/cert/PKIXParameters;)Lorg/bouncycastle/x509/tsu;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/bouncycastle/x509/sis;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CertSelector;

    invoke-static {v2}, Lorg/bouncycastle/x509/bio;->zta(Ljava/security/cert/X509CertSelector;)Lorg/bouncycastle/x509/bio;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/x509/sis;-><init>(Ljava/util/Set;Lorg/bouncycastle/util/dma;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/x509/sis;->you(Ljava/security/cert/PKIXParameters;)V

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ah()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/sis;->LDa:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/bouncycastle/x509/sis;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/tsu;->Wg()Lorg/bouncycastle/util/dma;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/x509/sis;-><init>(Ljava/util/Set;Lorg/bouncycastle/util/dma;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/x509/sis;->you(Ljava/security/cert/PKIXParameters;)V

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxPathLength()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/x509/sis;->KDa:I

    return p0
.end method

.method public rtg(Ljava/util/Set;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/sis;->LDa:Ljava/util/Set;

    :goto_0
    return-void
.end method

.method public setMaxPathLength(I)V
    .locals 1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lorg/bouncycastle/x509/sis;->KDa:I

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "The maximum path length parameter can not be less than -1."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected you(Ljava/security/cert/PKIXParameters;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/bouncycastle/x509/tsu;->you(Ljava/security/cert/PKIXParameters;)V

    instance-of v0, p1, Lorg/bouncycastle/x509/sis;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/x509/sis;

    iget v1, v0, Lorg/bouncycastle/x509/sis;->KDa:I

    iput v1, p0, Lorg/bouncycastle/x509/sis;->KDa:I

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, v0, Lorg/bouncycastle/x509/sis;->LDa:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/bouncycastle/x509/sis;->LDa:Ljava/util/Set;

    :cond_0
    instance-of v0, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {p1}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/x509/sis;->KDa:I

    :cond_1
    return-void
.end method
