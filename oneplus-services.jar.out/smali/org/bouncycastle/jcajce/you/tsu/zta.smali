.class public final Lorg/bouncycastle/jcajce/you/tsu/zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/you/tsu/zta$kth;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$you;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$zta;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$dma;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$gck;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$wtn;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$zgw;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$vdb;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$ugm;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$cjf;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$oxb;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$obl;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$cno;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$gwm;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$ibl;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$bvj;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$oif;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$qbh;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$ywr;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$igw;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$ear;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$ssp;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$bio;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$tsu;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$sis;,
        Lorg/bouncycastle/jcajce/you/tsu/zta$rtg;
    }
.end annotation


# static fields
.field private static final rTa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/you/tsu/zta;->rTa:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/jcajce/you/tsu/zta;->rTa:Ljava/util/Map;

    const-string v1, "SupportedKeyClasses"

    const-string v2, "javax.crypto.SecretKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/you/tsu/zta;->rTa:Ljava/util/Map;

    const-string v1, "SupportedKeyFormats"

    const-string v2, "RAW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/you/tsu/zta;->rTa:Ljava/util/Map;

    return-object v0
.end method
