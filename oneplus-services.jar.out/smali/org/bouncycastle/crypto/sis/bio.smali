.class public Lorg/bouncycastle/crypto/sis/bio;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final iPa:Ljava/util/Hashtable;

.field static final jPa:Ljava/util/Hashtable;

.field static final kPa:Ljava/util/Hashtable;

.field static final lPa:Ljava/util/Hashtable;

.field static final mJa:Ljava/util/Vector;

.field static pMa:Lorg/bouncycastle/asn1/ibl/bud;

.field static qMa:Lorg/bouncycastle/asn1/ibl/bud;

.field static rMa:Lorg/bouncycastle/asn1/ibl/bud;

.field static sMa:Lorg/bouncycastle/asn1/ibl/bud;

.field static tMa:Lorg/bouncycastle/asn1/ibl/bud;

.field static uMa:Lorg/bouncycastle/asn1/ibl/bud;

.field static vMa:Lorg/bouncycastle/asn1/ibl/bud;

.field static wMa:Lorg/bouncycastle/asn1/ibl/bud;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/sis/zta;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/sis/zta;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/sis/bio;->pMa:Lorg/bouncycastle/asn1/ibl/bud;

    new-instance v0, Lorg/bouncycastle/crypto/sis/you;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/sis/you;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/sis/bio;->qMa:Lorg/bouncycastle/asn1/ibl/bud;

    new-instance v0, Lorg/bouncycastle/crypto/sis/sis;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/sis/sis;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/sis/bio;->rMa:Lorg/bouncycastle/asn1/ibl/bud;

    new-instance v0, Lorg/bouncycastle/crypto/sis/tsu;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/sis/tsu;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/sis/bio;->sMa:Lorg/bouncycastle/asn1/ibl/bud;

    new-instance v0, Lorg/bouncycastle/crypto/sis/rtg;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/sis/rtg;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/sis/bio;->tMa:Lorg/bouncycastle/asn1/ibl/bud;

    new-instance v0, Lorg/bouncycastle/crypto/sis/ssp;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/sis/ssp;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/sis/bio;->uMa:Lorg/bouncycastle/asn1/ibl/bud;

    new-instance v0, Lorg/bouncycastle/crypto/sis/cno;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/sis/cno;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/sis/bio;->vMa:Lorg/bouncycastle/asn1/ibl/bud;

    new-instance v0, Lorg/bouncycastle/crypto/sis/kth;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/sis/kth;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/sis/bio;->wMa:Lorg/bouncycastle/asn1/ibl/bud;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/sis/bio;->iPa:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/sis/bio;->jPa:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/sis/bio;->kPa:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/sis/bio;->lPa:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/sis/bio;->mJa:Ljava/util/Vector;

    sget-object v0, Lorg/bouncycastle/asn1/ywr/vdw;->pMa:Lorg/bouncycastle/asn1/bvj;

    sget-object v1, Lorg/bouncycastle/crypto/sis/bio;->pMa:Lorg/bouncycastle/asn1/ibl/bud;

    const-string v2, "secp192k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/sis/bio;->you(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ibl/bud;)V

    sget-object v0, Lorg/bouncycastle/asn1/ywr/vdw;->qMa:Lorg/bouncycastle/asn1/bvj;

    sget-object v1, Lorg/bouncycastle/crypto/sis/bio;->qMa:Lorg/bouncycastle/asn1/ibl/bud;

    const-string v2, "secp192r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/sis/bio;->you(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ibl/bud;)V

    sget-object v0, Lorg/bouncycastle/asn1/ywr/vdw;->rMa:Lorg/bouncycastle/asn1/bvj;

    sget-object v1, Lorg/bouncycastle/crypto/sis/bio;->rMa:Lorg/bouncycastle/asn1/ibl/bud;

    const-string v2, "secp224k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/sis/bio;->you(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ibl/bud;)V

    sget-object v0, Lorg/bouncycastle/asn1/ywr/vdw;->sMa:Lorg/bouncycastle/asn1/bvj;

    sget-object v1, Lorg/bouncycastle/crypto/sis/bio;->sMa:Lorg/bouncycastle/asn1/ibl/bud;

    const-string v2, "secp224r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/sis/bio;->you(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ibl/bud;)V

    sget-object v0, Lorg/bouncycastle/asn1/ywr/vdw;->tMa:Lorg/bouncycastle/asn1/bvj;

    sget-object v1, Lorg/bouncycastle/crypto/sis/bio;->tMa:Lorg/bouncycastle/asn1/ibl/bud;

    const-string v2, "secp256k1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/sis/bio;->you(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ibl/bud;)V

    sget-object v0, Lorg/bouncycastle/asn1/ywr/vdw;->uMa:Lorg/bouncycastle/asn1/bvj;

    sget-object v1, Lorg/bouncycastle/crypto/sis/bio;->uMa:Lorg/bouncycastle/asn1/ibl/bud;

    const-string v2, "secp256r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/sis/bio;->you(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ibl/bud;)V

    sget-object v0, Lorg/bouncycastle/asn1/ywr/vdw;->vMa:Lorg/bouncycastle/asn1/bvj;

    sget-object v1, Lorg/bouncycastle/crypto/sis/bio;->vMa:Lorg/bouncycastle/asn1/ibl/bud;

    const-string v2, "secp384r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/sis/bio;->you(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ibl/bud;)V

    sget-object v0, Lorg/bouncycastle/asn1/ywr/vdw;->wMa:Lorg/bouncycastle/asn1/bvj;

    sget-object v1, Lorg/bouncycastle/crypto/sis/bio;->wMa:Lorg/bouncycastle/asn1/ibl/bud;

    const-string v2, "secp521r1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/sis/bio;->you(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ibl/bud;)V

    sget-object v0, Lorg/bouncycastle/asn1/ywr/vdw;->qMa:Lorg/bouncycastle/asn1/bvj;

    const-string v1, "P-192"

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/sis/bio;->you(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;)V

    sget-object v0, Lorg/bouncycastle/asn1/ywr/vdw;->sMa:Lorg/bouncycastle/asn1/bvj;

    const-string v1, "P-224"

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/sis/bio;->you(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;)V

    sget-object v0, Lorg/bouncycastle/asn1/ywr/vdw;->uMa:Lorg/bouncycastle/asn1/bvj;

    const-string v1, "P-256"

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/sis/bio;->you(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;)V

    sget-object v0, Lorg/bouncycastle/asn1/ywr/vdw;->vMa:Lorg/bouncycastle/asn1/bvj;

    const-string v1, "P-384"

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/sis/bio;->you(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;)V

    sget-object v0, Lorg/bouncycastle/asn1/ywr/vdw;->wMa:Lorg/bouncycastle/asn1/bvj;

    const-string v1, "P-521"

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/sis/bio;->you(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ka(Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/sis/bio;->jPa:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/bvj;

    return-object p0
.end method

.method public static dma(Lorg/bouncycastle/asn1/bvj;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/sis/bio;->lPa:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static gck(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ibl/vju;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/sis/bio;->kPa:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ibl/bud;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/bud;->getParameters()Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/ibl/vju;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/sis/bio;->iPa:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ibl/bud;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/bud;->getParameters()Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/sis/bio;->mJa:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private static kth(Lyou/zta/sis/zta/rtg;)Lyou/zta/sis/zta/rtg;
    .locals 0

    return-object p0
.end method

.method private static sis(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/you/tsu;)Lyou/zta/sis/zta/rtg;
    .locals 2

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->Pk()Lyou/zta/sis/zta/rtg$sis;

    move-result-object v0

    new-instance v1, Lyou/zta/sis/zta/you/sis;

    invoke-direct {v1, p0, p1}, Lyou/zta/sis/zta/you/sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/you/tsu;)V

    invoke-virtual {v0, v1}, Lyou/zta/sis/zta/rtg$sis;->zta(Lyou/zta/sis/zta/you/zta;)Lyou/zta/sis/zta/rtg$sis;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg$sis;->create()Lyou/zta/sis/zta/rtg;

    move-result-object p0

    return-object p0
.end method

.method static synthetic you(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/you/tsu;)Lyou/zta/sis/zta/rtg;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/sis/bio;->sis(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/you/tsu;)Lyou/zta/sis/zta/rtg;

    move-result-object p0

    return-object p0
.end method

.method static you(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/sis/bio;->kPa:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lorg/bouncycastle/crypto/sis/bio;->jPa:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lorg/bouncycastle/crypto/sis/bio;->iPa:Ljava/util/Hashtable;

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method static you(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ibl/bud;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/sis/bio;->mJa:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v0, Lorg/bouncycastle/crypto/sis/bio;->lPa:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/sis/bio;->kPa:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/crypto/sis/bio;->jPa:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lorg/bouncycastle/crypto/sis/bio;->iPa:Ljava/util/Hashtable;

    invoke-virtual {p1, p0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zta(Lyou/zta/sis/zta/rtg;)Lyou/zta/sis/zta/rtg;
    .locals 0

    return-object p0
.end method

.method static zta(Ljava/lang/String;Lorg/bouncycastle/asn1/ibl/bud;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/sis/bio;->mJa:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/crypto/sis/bio;->iPa:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
