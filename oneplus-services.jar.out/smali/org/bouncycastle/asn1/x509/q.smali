.class public Lorg/bouncycastle/asn1/x509/q;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# static fields
.field public static final ALa:Ljava/util/Hashtable;

.field public static final BLa:Ljava/util/Hashtable;

.field public static final C:Lorg/bouncycastle/asn1/bvj;

.field public static final CLa:Ljava/util/Hashtable;

.field public static final CN:Lorg/bouncycastle/asn1/bvj;

.field public static final DLa:Ljava/util/Hashtable;

.field public static final DefaultSymbols:Ljava/util/Hashtable;

.field public static final E:Lorg/bouncycastle/asn1/bvj;

.field private static final FALSE:Ljava/lang/Boolean;

.field public static final L:Lorg/bouncycastle/asn1/bvj;

.field public static final NAME:Lorg/bouncycastle/asn1/bvj;

.field public static final O:Lorg/bouncycastle/asn1/bvj;

.field public static final OU:Lorg/bouncycastle/asn1/bvj;

.field public static final POSTAL_CODE:Lorg/bouncycastle/asn1/bvj;

.field public static final ST:Lorg/bouncycastle/asn1/bvj;

.field public static final STREET:Lorg/bouncycastle/asn1/bvj;

.field public static final T:Lorg/bouncycastle/asn1/bvj;

.field private static final TRUE:Ljava/lang/Boolean;

.field public static final UID:Lorg/bouncycastle/asn1/bvj;

.field public static final cLa:Lorg/bouncycastle/asn1/bvj;

.field public static final dLa:Lorg/bouncycastle/asn1/bvj;

.field public static final eLa:Lorg/bouncycastle/asn1/bvj;

.field public static final fLa:Lorg/bouncycastle/asn1/bvj;

.field public static final gAa:Lorg/bouncycastle/asn1/bvj;

.field public static final gLa:Lorg/bouncycastle/asn1/bvj;

.field public static final hLa:Lorg/bouncycastle/asn1/bvj;

.field public static final iLa:Lorg/bouncycastle/asn1/bvj;

.field public static final jLa:Lorg/bouncycastle/asn1/bvj;

.field public static final kLa:Lorg/bouncycastle/asn1/bvj;

.field public static final lLa:Lorg/bouncycastle/asn1/bvj;

.field public static final mLa:Lorg/bouncycastle/asn1/bvj;

.field public static final nLa:Lorg/bouncycastle/asn1/bvj;

.field public static final oLa:Lorg/bouncycastle/asn1/bvj;

.field public static final pLa:Lorg/bouncycastle/asn1/bvj;

.field public static final qLa:Lorg/bouncycastle/asn1/bvj;

.field public static final rLa:Lorg/bouncycastle/asn1/bvj;

.field public static final sLa:Lorg/bouncycastle/asn1/bvj;

.field public static final tLa:Lorg/bouncycastle/asn1/bvj;

.field public static final uLa:Lorg/bouncycastle/asn1/bvj;

.field public static final vLa:Lorg/bouncycastle/asn1/bvj;

.field public static final wLa:Lorg/bouncycastle/asn1/bvj;

.field public static final xLa:Lorg/bouncycastle/asn1/bvj;

.field public static yLa:Z

.field public static final zLa:Ljava/util/Hashtable;


# instance fields
.field private LFa:Lorg/bouncycastle/asn1/x509/r;

.field private XHa:Z

.field private added:Ljava/util/Vector;

.field private jEa:I

.field private ordering:Ljava/util/Vector;

.field private seq:Lorg/bouncycastle/asn1/obl;

.field private values:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->C:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.10"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->O:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.11"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->OU:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.12"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->T:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->CN:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.5"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->gAa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.9"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->STREET:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->gAa:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->cLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->L:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.8"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->ST:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->dLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.42"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->eLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.43"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->fLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.44"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->gLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.45"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->hLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.15"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->iLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.17"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->POSTAL_CODE:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.46"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->jLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.65"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->kLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.6.1.5.5.7.9.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->lLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.6.1.5.5.7.9.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->mLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.6.1.5.5.7.9.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->nLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.6.1.5.5.7.9.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->oLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.6.1.5.5.7.9.5"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->pLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.36.8.3.14"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->qLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.16"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->rLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.54"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->sLa:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/x509/t;->Fhb:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->tLa:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/x509/t;->Ghb:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->NAME:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_emailAddress:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->uLa:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_unstructuredName:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->vLa:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_unstructuredAddress:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->wLa:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->uLa:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->E:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "0.9.2342.19200300.100.1.25"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->xLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "0.9.2342.19200300.100.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->UID:Lorg/bouncycastle/asn1/bvj;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/bouncycastle/asn1/x509/q;->yLa:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->zLa:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->ALa:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->CLa:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->DLa:Ljava/util/Hashtable;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lorg/bouncycastle/asn1/x509/q;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->C:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->O:Lorg/bouncycastle/asn1/bvj;

    const-string v3, "O"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->T:Lorg/bouncycastle/asn1/bvj;

    const-string v4, "T"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->OU:Lorg/bouncycastle/asn1/bvj;

    const-string v4, "OU"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->CN:Lorg/bouncycastle/asn1/bvj;

    const-string v5, "CN"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->L:Lorg/bouncycastle/asn1/bvj;

    const-string v6, "L"

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->ST:Lorg/bouncycastle/asn1/bvj;

    const-string v7, "ST"

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->gAa:Lorg/bouncycastle/asn1/bvj;

    const-string v8, "SERIALNUMBER"

    invoke-virtual {v0, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->uLa:Lorg/bouncycastle/asn1/bvj;

    const-string v8, "E"

    invoke-virtual {v0, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->xLa:Lorg/bouncycastle/asn1/bvj;

    const-string v8, "DC"

    invoke-virtual {v0, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->UID:Lorg/bouncycastle/asn1/bvj;

    const-string v9, "UID"

    invoke-virtual {v0, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->STREET:Lorg/bouncycastle/asn1/bvj;

    const-string v10, "STREET"

    invoke-virtual {v0, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->dLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "SURNAME"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->eLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "GIVENNAME"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->fLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "INITIALS"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->gLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "GENERATION"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->wLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "unstructuredAddress"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->vLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "unstructuredName"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->hLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "UniqueIdentifier"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->jLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "DN"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->kLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "Pseudonym"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->rLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "PostalAddress"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->qLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "NameAtBirth"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->oLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "CountryOfCitizenship"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->pLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "CountryOfResidence"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->nLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "Gender"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->mLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "PlaceOfBirth"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->lLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "DateOfBirth"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->POSTAL_CODE:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "PostalCode"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->iLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "BusinessCategory"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->tLa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "TelephoneNumber"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->NAME:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "Name"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->zLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->C:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->zLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->O:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->zLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->OU:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->zLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->CN:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->zLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->L:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->zLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->ST:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->zLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->STREET:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->zLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->xLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->zLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->UID:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->ALa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->C:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->ALa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->O:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->ALa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->OU:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->ALa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->CN:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->ALa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->L:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->ALa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->ST:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->ALa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->STREET:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->C:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "c"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->O:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "o"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->T:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "t"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->OU:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "ou"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->CN:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "cn"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->L:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "l"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->ST:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "st"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->gAa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "sn"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->gAa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "serialnumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->STREET:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "street"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->E:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "emailaddress"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->xLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "dc"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->E:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "e"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->UID:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->dLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "surname"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->eLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "givenname"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->fLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "initials"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->gLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "generation"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->wLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "unstructuredaddress"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->vLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "unstructuredname"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->hLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "uniqueidentifier"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->jLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "dn"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->kLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "pseudonym"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->rLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "postaladdress"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->qLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "nameofbirth"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->oLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "countryofcitizenship"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->pLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "countryofresidence"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->nLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "gender"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->mLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "placeofbirth"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->lLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "dateofbirth"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->POSTAL_CODE:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "postalcode"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->iLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "businesscategory"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->tLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "telephonenumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->NAME:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->LFa:Lorg/bouncycastle/asn1/x509/r;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->added:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lorg/bouncycastle/asn1/x509/q;->yLa:Z

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/asn1/x509/q;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/r;)V
    .locals 2

    sget-boolean v0, Lorg/bouncycastle/asn1/x509/q;->yLa:Z

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/bouncycastle/asn1/x509/q;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lorg/bouncycastle/asn1/x509/r;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/x509/q;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/m;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/m;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/x509/q;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;Lorg/bouncycastle/asn1/x509/r;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Hashtable;Lorg/bouncycastle/asn1/x509/r;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->LFa:Lorg/bouncycastle/asn1/x509/r;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->added:Ljava/util/Vector;

    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/q;->LFa:Lorg/bouncycastle/asn1/x509/r;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    move v0, p3

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/q;->added:Ljava/util/Vector;

    sget-object v2, Lorg/bouncycastle/asn1/x509/q;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->added:Ljava/util/Vector;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_2
    iget-object p1, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-eq p3, p1, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {p1, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No attribute for object id - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - passed to distinguished name"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/m;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/m;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/x509/q;-><init>(Ljava/util/Vector;Ljava/util/Vector;Lorg/bouncycastle/asn1/x509/r;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;Lorg/bouncycastle/asn1/x509/r;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->LFa:Lorg/bouncycastle/asn1/x509/r;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->added:Ljava/util/Vector;

    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/q;->LFa:Lorg/bouncycastle/asn1/x509/r;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p3

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne p3, v0, :cond_1

    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {p1, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    invoke-virtual {p2, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->added:Ljava/util/Vector;

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "oids vector must be same length as values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 7

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->LFa:Lorg/bouncycastle/asn1/x509/r;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->added:Ljava/util/Vector;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/q;->seq:Lorg/bouncycastle/asn1/obl;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->Kh()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ssp;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ear;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ear;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ear;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/bvj;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    instance-of v4, v3, Lorg/bouncycastle/asn1/fto;

    if-eqz v4, :cond_2

    instance-of v4, v3, Lorg/bouncycastle/asn1/P;

    if-nez v4, :cond_2

    check-cast v3, Lorg/bouncycastle/asn1/fto;

    invoke-interface {v3}, Lorg/bouncycastle/asn1/fto;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    :goto_1
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :try_start_0
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v3

    const-string v6, "DER"

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/tsu;->encode([B)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/bouncycastle/asn1/x509/q;->bytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/q;->added:Ljava/util/Vector;

    if-eqz v2, :cond_3

    sget-object v4, Lorg/bouncycastle/asn1/x509/q;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    sget-object v4, Lorg/bouncycastle/asn1/x509/q;->FALSE:Ljava/lang/Boolean;

    :goto_3
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot encode value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "badly sized pair"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/x509/q;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lorg/bouncycastle/asn1/x509/r;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->BLa:Ljava/util/Hashtable;

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/bouncycastle/asn1/x509/q;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lorg/bouncycastle/asn1/x509/r;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/Hashtable;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/m;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/m;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/asn1/x509/q;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lorg/bouncycastle/asn1/x509/r;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/Hashtable;Ljava/lang/String;Lorg/bouncycastle/asn1/x509/r;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->LFa:Lorg/bouncycastle/asn1/x509/r;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->added:Ljava/util/Vector;

    iput-object p4, p0, Lorg/bouncycastle/asn1/x509/q;->LFa:Lorg/bouncycastle/asn1/x509/r;

    new-instance p4, Lorg/bouncycastle/asn1/x509/s;

    invoke-direct {p4, p3}, Lorg/bouncycastle/asn1/x509/s;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p4}, Lorg/bouncycastle/asn1/x509/s;->hasMoreTokens()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/x509/s;->nextToken()Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x2b

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/x509/s;

    invoke-direct {v1, p3, v0}, Lorg/bouncycastle/asn1/x509/s;-><init>(Ljava/lang/String;C)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/s;->nextToken()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-direct {p0, p2, p3, v0}, Lorg/bouncycastle/asn1/x509/q;->zta(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/s;->hasMoreTokens()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/s;->nextToken()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/x509/q;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p2, p3, v0}, Lorg/bouncycastle/asn1/x509/q;->zta(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    const/4 p4, 0x0

    const/4 v0, 0x1

    move v1, p4

    move v2, v0

    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/q;->added:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/q;->added:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/2addr v2, v0

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2, p4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2, p4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/q;->added:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2, p4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    move v2, v0

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/q;->added:Ljava/util/Vector;

    :cond_5
    return-void
.end method

.method private Ad(Ljava/lang/String;)Lorg/bouncycastle/asn1/vdb;
    .locals 2

    const/4 p0, 0x1

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown encoding in name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private Ma(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    if-eq v2, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private bytesToString([B)Ljava/lang/String;
    .locals 2

    array-length p0, p1

    new-array p0, p0, [C

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-eq v0, v1, :cond_0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    aput-char v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method private canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/q;->Ad(Ljava/lang/String;)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    instance-of v0, p0, Lorg/bouncycastle/asn1/fto;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/fto;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/fto;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/q;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/x509/q;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/q;->Ma(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/x509/q;->Ma(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/q;
    .locals 1

    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/q;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/bvj/tsu;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/q;

    check-cast p0, Lorg/bouncycastle/asn1/bvj/tsu;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bvj/tsu;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/q;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/x509/q;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/q;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/x509/q;

    return-object p0
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x5c

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x22

    if-gez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 p1, 0x0

    aget-char v3, v0, p1

    const/4 v4, 0x1

    if-ne v3, p0, :cond_1

    aget-char v3, v0, v4

    const/16 v5, 0x23

    if-ne v3, v5, :cond_1

    const/4 v3, 0x2

    const-string v5, "\\#"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    move v3, p1

    :goto_0
    move v5, p1

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_1
    array-length v9, v0

    const/16 v10, 0x20

    if-eq v3, v9, :cond_6

    aget-char v9, v0, v3

    if-eq v9, v10, :cond_2

    move v8, v4

    :cond_2
    if-ne v9, v1, :cond_3

    if-nez v5, :cond_5

    xor-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    if-ne v9, p0, :cond_4

    if-nez v5, :cond_4

    if-nez v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move v6, v5

    move v5, v4

    goto :goto_3

    :cond_4
    if-ne v9, v10, :cond_5

    if-nez v5, :cond_5

    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    move v5, p1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_7

    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    if-ne p0, v10, :cond_7

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v4

    if-eq v6, p0, :cond_7

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private you(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/bouncycastle/asn1/bvj;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OID."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/bvj;

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x39

    if-gt p1, v0, :cond_1

    new-instance p1, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/bvj;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown object id - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - passed to distinguished name"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/q;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/q;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/q;

    move-result-object p0

    return-object p0
.end method

.method private zta(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x3d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v0, 0x5c

    const/4 v1, 0x2

    if-lt p3, v1, :cond_1

    const/4 p3, 0x0

    invoke-virtual {p4, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-ne p3, v0, :cond_1

    const/4 p3, 0x1

    invoke-virtual {p4, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 p4, 0x23

    if-ne p3, p4, :cond_1

    add-int/lit8 p0, p0, 0x2

    :cond_1
    :goto_1
    const-string p3, "\\"

    const/16 p4, 0x20

    if-ge p0, p2, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p4, :cond_2

    invoke-virtual {p1, p0, p3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 p2, p2, -0x1

    if-le p2, p0, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p4, :cond_3

    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    :goto_3
    if-gt p0, p2, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p4

    const/16 v1, 0x22

    if-eq p4, v1, :cond_4

    if-eq p4, v0, :cond_4

    const/16 v1, 0x2b

    if-eq p4, v1, :cond_4

    const/16 v1, 0x2c

    if-eq p4, v1, :cond_4

    packed-switch p4, :pswitch_data_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_4
    :pswitch_0
    invoke-virtual {p1, p0, p3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private zta(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/x509/s;

    const/16 v1, 0x3d

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/asn1/x509/s;-><init>(Ljava/lang/String;C)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/s;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/s;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/s;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/asn1/x509/q;->you(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/bouncycastle/asn1/bvj;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/q;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/q;->added:Ljava/util/Vector;

    invoke-virtual {p0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "badly formatted directory string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 11

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/asn1/x509/q;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    instance-of v1, p1, Lorg/bouncycastle/asn1/obl;

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/asn1/ssp;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/q;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/q;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/q;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v3, p1, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    new-array v3, v1, [Z

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    move v6, v0

    move v5, v1

    move v4, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v1, -0x1

    move v6, v5

    :goto_0
    if-eq v4, v5, :cond_9

    iget-object v7, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/bvj;

    iget-object v8, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move v9, v2

    :goto_1
    if-ge v9, v1, :cond_7

    aget-boolean v10, v3, v9

    if-eqz v10, :cond_5

    goto :goto_2

    :cond_5
    iget-object v10, p1, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v10, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v7, v10}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p1, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    invoke-virtual {v10, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/asn1/x509/q;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    aput-boolean v0, v3, v9

    move v7, v0

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    move v7, v2

    :goto_3
    if-nez v7, :cond_8

    return v2

    :cond_8
    add-int/2addr v4, v6

    goto :goto_0

    :cond_9
    return v0

    :catch_0
    return v2
.end method

.method public equals(Ljava/lang/Object;Z)Z
    .locals 5

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x509/q;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p0, :cond_1

    return p2

    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/asn1/x509/q;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    instance-of v0, p1, Lorg/bouncycastle/asn1/obl;

    if-nez v0, :cond_2

    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ssp;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/q;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return p2

    :cond_3
    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/q;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/q;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v2, p1, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/bvj;

    iget-object v4, p1, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/asn1/x509/q;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    return p2

    :catch_0
    return v1
.end method

.method public getOIDs()Ljava/util/Vector;
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getValues()Ljava/util/Vector;
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x509/q;->XHa:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/bouncycastle/asn1/x509/q;->jEa:I

    return p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/x509/q;->XHa:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/x509/q;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/x509/q;->Ma(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/asn1/x509/q;->jEa:I

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/asn1/x509/q;->jEa:I

    iget v2, p0, Lorg/bouncycastle/asn1/x509/q;->jEa:I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/asn1/x509/q;->jEa:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget p0, p0, Lorg/bouncycastle/asn1/x509/q;->jEa:I

    return p0
.end method

.method public kth(Lorg/bouncycastle/asn1/bvj;)Ljava/util/Vector;
    .locals 7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/q;->seq:Lorg/bouncycastle/asn1/obl;

    if-nez v0, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/cno;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    new-instance v4, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v6, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lorg/bouncycastle/asn1/x509/q;->LFa:Lorg/bouncycastle/asn1/x509/r;

    invoke-virtual {v7, v5, v6}, Lorg/bouncycastle/asn1/x509/r;->tsu(Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)Lorg/bouncycastle/asn1/vdb;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/q;->added:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/I;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/cno;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/G;

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v2, Lorg/bouncycastle/asn1/G;

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    :goto_2
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    add-int/lit8 v3, v3, 0x1

    move-object v2, v5

    goto :goto_0

    :cond_2
    new-instance v2, Lorg/bouncycastle/asn1/I;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/G;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/q;->seq:Lorg/bouncycastle/asn1/obl;

    :cond_3
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/q;->seq:Lorg/bouncycastle/asn1/obl;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lorg/bouncycastle/asn1/x509/q;->yLa:Z

    sget-object v1, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/asn1/x509/q;->toString(ZLjava/util/Hashtable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(ZLjava/util/Hashtable;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/q;->added:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/bvj;

    iget-object v6, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v4, p2, v5, v6}, Lorg/bouncycastle/asn1/x509/q;->zta(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/q;->ordering:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/bvj;

    iget-object v6, p0, Lorg/bouncycastle/asn1/x509/q;->values:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v4, p2, v5, v6}, Lorg/bouncycastle/asn1/x509/q;->zta(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x2c

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    sub-int/2addr p1, p2

    :goto_2
    if-ltz p1, :cond_5

    if-eqz p2, :cond_2

    move p2, v2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_4
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge p1, v3, :cond_5

    if-eqz p2, :cond_4

    move p2, v2

    goto :goto_5

    :cond_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
