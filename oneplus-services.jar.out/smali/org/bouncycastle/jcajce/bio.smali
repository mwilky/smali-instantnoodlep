.class public Lorg/bouncycastle/jcajce/bio;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/bio$zta;
    }
.end annotation


# instance fields
.field private final PEa:I

.field private final QEa:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final USa:Lorg/bouncycastle/jcajce/wtn;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/jcajce/bio$zta;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/jcajce/bio$zta;->zta(Lorg/bouncycastle/jcajce/bio$zta;)Lorg/bouncycastle/jcajce/wtn;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/bio;->USa:Lorg/bouncycastle/jcajce/wtn;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/bio$zta;->you(Lorg/bouncycastle/jcajce/bio$zta;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/bio;->QEa:Ljava/util/Set;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/bio$zta;->sis(Lorg/bouncycastle/jcajce/bio$zta;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/bio;->PEa:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/jcajce/bio$zta;Lorg/bouncycastle/jcajce/kth;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/bio;-><init>(Lorg/bouncycastle/jcajce/bio$zta;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public fh()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/bio;->QEa:Ljava/util/Set;

    return-object p0
.end method

.method public getMaxPathLength()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/bio;->PEa:I

    return p0
.end method

.method public uk()Lorg/bouncycastle/jcajce/wtn;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/bio;->USa:Lorg/bouncycastle/jcajce/wtn;

    return-object p0
.end method
