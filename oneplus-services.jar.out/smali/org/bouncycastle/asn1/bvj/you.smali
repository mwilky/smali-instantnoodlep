.class public Lorg/bouncycastle/asn1/bvj/you;
.super Lorg/bouncycastle/asn1/oif;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/rtg;
.implements Lorg/bouncycastle/asn1/fto;


# instance fields
.field private string:Lorg/bouncycastle/asn1/fto;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/O;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/O;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/bvj/you;->string:Lorg/bouncycastle/asn1/fto;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/F;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/bvj/you;->string:Lorg/bouncycastle/asn1/fto;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/K;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/bvj/you;->string:Lorg/bouncycastle/asn1/fto;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/O;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/bvj/you;->string:Lorg/bouncycastle/asn1/fto;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/P;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/bvj/you;->string:Lorg/bouncycastle/asn1/fto;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/m;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/bvj/you;->string:Lorg/bouncycastle/asn1/fto;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/you;
    .locals 3

    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/bvj/you;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/K;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/bvj/you;

    check-cast p0, Lorg/bouncycastle/asn1/K;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/bvj/you;-><init>(Lorg/bouncycastle/asn1/K;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/F;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/bvj/you;

    check-cast p0, Lorg/bouncycastle/asn1/F;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/bvj/you;-><init>(Lorg/bouncycastle/asn1/F;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/P;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/bvj/you;

    check-cast p0, Lorg/bouncycastle/asn1/P;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/bvj/you;-><init>(Lorg/bouncycastle/asn1/P;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/asn1/O;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/bvj/you;

    check-cast p0, Lorg/bouncycastle/asn1/O;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/bvj/you;-><init>(Lorg/bouncycastle/asn1/O;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lorg/bouncycastle/asn1/m;

    if-eqz v0, :cond_5

    new-instance v0, Lorg/bouncycastle/asn1/bvj/you;

    check-cast p0, Lorg/bouncycastle/asn1/m;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/bvj/you;-><init>(Lorg/bouncycastle/asn1/m;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/bvj/you;

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/bvj/you;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/lqr;->getObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/bvj/you;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/you;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice item must be explicitly tagged"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/bvj/you;->string:Lorg/bouncycastle/asn1/fto;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/fto;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/bvj/you;->string:Lorg/bouncycastle/asn1/fto;

    check-cast p0, Lorg/bouncycastle/asn1/ssp;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/bvj/you;->string:Lorg/bouncycastle/asn1/fto;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/fto;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
