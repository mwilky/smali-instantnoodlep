.class public Lorg/bouncycastle/asn1/x509/gwm;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# static fields
.field public static final AIa:Lorg/bouncycastle/asn1/bvj;

.field public static final BIa:Lorg/bouncycastle/asn1/bvj;

.field public static final CIa:Lorg/bouncycastle/asn1/bvj;

.field public static final DIa:Lorg/bouncycastle/asn1/bvj;

.field public static final EIa:Lorg/bouncycastle/asn1/bvj;

.field public static final FIa:Lorg/bouncycastle/asn1/bvj;

.field public static final GIa:Lorg/bouncycastle/asn1/bvj;

.field public static final HIa:Lorg/bouncycastle/asn1/bvj;

.field public static final IEa:Lorg/bouncycastle/asn1/bvj;

.field public static final IIa:Lorg/bouncycastle/asn1/bvj;

.field public static final JIa:Lorg/bouncycastle/asn1/bvj;

.field public static final KEa:Lorg/bouncycastle/asn1/bvj;

.field public static final KIa:Lorg/bouncycastle/asn1/bvj;

.field public static final LIa:Lorg/bouncycastle/asn1/bvj;

.field public static final MIa:Lorg/bouncycastle/asn1/bvj;

.field public static final NEa:Lorg/bouncycastle/asn1/bvj;

.field public static final NIa:Lorg/bouncycastle/asn1/bvj;

.field public static final OIa:Lorg/bouncycastle/asn1/bvj;

.field public static final PIa:Lorg/bouncycastle/asn1/bvj;

.field public static final QIa:Lorg/bouncycastle/asn1/bvj;

.field public static final RIa:Lorg/bouncycastle/asn1/bvj;

.field public static final SIa:Lorg/bouncycastle/asn1/bvj;

.field public static final TIa:Lorg/bouncycastle/asn1/bvj;

.field public static final UIa:Lorg/bouncycastle/asn1/bvj;

.field public static final VIa:Lorg/bouncycastle/asn1/bvj;

.field public static final WIa:Lorg/bouncycastle/asn1/bvj;

.field public static final XIa:Lorg/bouncycastle/asn1/bvj;

.field public static final basicConstraints:Lorg/bouncycastle/asn1/bvj;

.field public static final keyUsage:Lorg/bouncycastle/asn1/bvj;

.field public static final reasonCode:Lorg/bouncycastle/asn1/bvj;

.field public static final yIa:Lorg/bouncycastle/asn1/bvj;

.field public static final zIa:Lorg/bouncycastle/asn1/bvj;


# instance fields
.field private critical:Z

.field private value:Lorg/bouncycastle/asn1/ibl;

.field private xIa:Lorg/bouncycastle/asn1/bvj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.9"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->yIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.14"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->zIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.15"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->keyUsage:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.16"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->AIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.17"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->BIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.18"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->CIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.19"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->basicConstraints:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.20"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->DIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.21"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->reasonCode:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.23"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->EIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.24"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->FIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.27"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->KEa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.28"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->NEa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.29"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->IEa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.30"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->GIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.31"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->HIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.32"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->IIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.33"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->JIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.35"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->KIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.36"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->LIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.37"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->MIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.46"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->NIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.54"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->OIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.6.1.5.5.7.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->PIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.6.1.5.5.7.1.11"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->QIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.6.1.5.5.7.1.12"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->RIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.6.1.5.5.7.1.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->SIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.6.1.5.5.7.1.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->TIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.6.1.5.5.7.1.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->UIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.56"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->VIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.55"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->WIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.29.60"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/gwm;->XIa:Lorg/bouncycastle/asn1/bvj;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/tsu;Lorg/bouncycastle/asn1/ibl;)V
    .locals 0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/tsu;->Ah()Z

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/gwm;-><init>(Lorg/bouncycastle/asn1/bvj;ZLorg/bouncycastle/asn1/ibl;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;ZLorg/bouncycastle/asn1/ibl;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/gwm;->xIa:Lorg/bouncycastle/asn1/bvj;

    iput-boolean p2, p0, Lorg/bouncycastle/asn1/x509/gwm;->critical:Z

    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/gwm;->value:Lorg/bouncycastle/asn1/ibl;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Z[B)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/C;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/x509/gwm;-><init>(Lorg/bouncycastle/asn1/bvj;ZLorg/bouncycastle/asn1/ibl;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/bvj;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/gwm;->xIa:Lorg/bouncycastle/asn1/bvj;

    iput-boolean v3, p0, Lorg/bouncycastle/asn1/x509/gwm;->critical:Z

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/gwm;->value:Lorg/bouncycastle/asn1/ibl;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/bvj;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/gwm;->xIa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsu;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsu;->Ah()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/x509/gwm;->critical:Z

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sequence size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/gwm;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/gwm;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/gwm;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/gwm;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/gwm;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static you(Lorg/bouncycastle/asn1/x509/gwm;)Lorg/bouncycastle/asn1/vdb;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gwm;->Zi()Lorg/bouncycastle/asn1/ibl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t convert extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public Yi()Lorg/bouncycastle/asn1/bvj;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/gwm;->xIa:Lorg/bouncycastle/asn1/bvj;

    return-object p0
.end method

.method public Zi()Lorg/bouncycastle/asn1/ibl;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/gwm;->value:Lorg/bouncycastle/asn1/ibl;

    return-object p0
.end method

.method public _i()Lorg/bouncycastle/asn1/ssp;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/gwm;->you(Lorg/bouncycastle/asn1/x509/gwm;)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/asn1/x509/gwm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/x509/gwm;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/gwm;->Yi()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gwm;->Yi()Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/gwm;->Zi()Lorg/bouncycastle/asn1/ibl;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gwm;->Zi()Lorg/bouncycastle/asn1/ibl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/gwm;->isCritical()Z

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gwm;->isCritical()Z

    move-result p0

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gwm;->isCritical()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gwm;->Zi()Lorg/bouncycastle/asn1/ibl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gwm;->Yi()Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bvj;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gwm;->Zi()Lorg/bouncycastle/asn1/ibl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gwm;->Yi()Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bvj;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    not-int p0, p0

    return p0
.end method

.method public isCritical()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/asn1/x509/gwm;->critical:Z

    return p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/gwm;->xIa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/x509/gwm;->critical:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/asn1/tsu;->getInstance(Z)Lorg/bouncycastle/asn1/tsu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/gwm;->value:Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
