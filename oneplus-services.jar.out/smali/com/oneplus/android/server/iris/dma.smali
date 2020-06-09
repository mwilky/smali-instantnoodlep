.class public Lcom/oneplus/android/server/iris/dma;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Wra:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Xra:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Yra:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Zra:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _ra:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private asa:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bsa:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private csa:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;

.field private mVersion:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/android/server/iris/dma;->mVersion:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/iris/dma;->mUrl:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/dma;->Wra:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/dma;->Xra:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/dma;->Yra:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/dma;->Zra:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/dma;->_ra:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/dma;->asa:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/dma;->bsa:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/dma;->csa:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public Qf()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/dma;->Wra:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/dma;->Xra:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/dma;->Yra:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/dma;->Zra:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/dma;->_ra:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/dma;->asa:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->bsa:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public Rf()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->_ra:Ljava/util/HashMap;

    return-object p0
.end method

.method public Sf()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->Yra:Ljava/util/ArrayList;

    return-object p0
.end method

.method public Tf()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->Xra:Ljava/util/ArrayList;

    return-object p0
.end method

.method public Uf()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->csa:Ljava/util/HashMap;

    return-object p0
.end method

.method public Vf()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->Zra:Ljava/util/HashMap;

    return-object p0
.end method

.method public Wf()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->Wra:Ljava/util/ArrayList;

    return-object p0
.end method

.method public bvj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->asa:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getMemcAppTypeMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->bsa:Ljava/util/HashMap;

    return-object p0
.end method

.method public getMemcRateMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->asa:Ljava/util/HashMap;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/android/server/iris/dma;->mVersion:J

    return-wide v0
.end method

.method public gwm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->Zra:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ibl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->csa:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public lqr(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/android/server/iris/dma;->mVersion:J

    return-void
.end method

.method public oif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->bsa:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public qa(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->Yra:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public qbh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->_ra:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ra(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->Xra:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public sa(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/dma;->Wra:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/iris/dma;->mUrl:Ljava/lang/String;

    return-void
.end method
