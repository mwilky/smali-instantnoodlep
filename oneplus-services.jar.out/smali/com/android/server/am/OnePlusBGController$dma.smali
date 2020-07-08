.class public Lcom/android/server/am/OnePlusBGController$dma;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dma"
.end annotation


# instance fields
.field public Fr:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field public Gr:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public Hr:Z

.field public Ir:D

.field public Jr:Z

.field public Kr:Z

.field public Lr:Lcom/android/server/am/OnePlusBGController$OptType;

.field public Qr:D

.field public Rr:D

.field public Sr:D

.field public cs:D

.field public mPkgName:Ljava/lang/String;

.field public mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IDDDDLcom/android/server/am/OnePlusBGController$AppBucketRanking;Lcom/android/server/am/OnePlusBGController$MyDrainType;ZZZLcom/android/server/am/OnePlusBGController$OptType;)V
    .locals 5

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/am/OnePlusBGController$dma;->mPkgName:Ljava/lang/String;

    move v1, p2

    iput v1, v0, Lcom/android/server/am/OnePlusBGController$dma;->mUid:I

    move-wide v1, p3

    iput-wide v1, v0, Lcom/android/server/am/OnePlusBGController$dma;->Qr:D

    move-wide v1, p5

    iput-wide v1, v0, Lcom/android/server/am/OnePlusBGController$dma;->Rr:D

    move-wide v1, p7

    iput-wide v1, v0, Lcom/android/server/am/OnePlusBGController$dma;->Sr:D

    iget-wide v1, v0, Lcom/android/server/am/OnePlusBGController$dma;->Qr:D

    iget-wide v3, v0, Lcom/android/server/am/OnePlusBGController$dma;->Rr:D

    add-double/2addr v1, v3

    iget-wide v3, v0, Lcom/android/server/am/OnePlusBGController$dma;->Sr:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/am/OnePlusBGController$dma;->cs:D

    move-wide v1, p9

    iput-wide v1, v0, Lcom/android/server/am/OnePlusBGController$dma;->Ir:D

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/android/server/am/OnePlusBGController$dma;->Fr:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/server/am/OnePlusBGController$dma;->Gr:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/android/server/am/OnePlusBGController$dma;->Hr:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/android/server/am/OnePlusBGController$dma;->Jr:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/android/server/am/OnePlusBGController$dma;->Kr:Z

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/am/OnePlusBGController$dma;->Lr:Lcom/android/server/am/OnePlusBGController$OptType;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## UidmAh["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController$dma;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$dma;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$dma;->Qr:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$dma;->Rr:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$dma;->Sr:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBGController$dma;->Kr:Z

    if-eqz v1, :cond_0

    const-string v1, "Spe, "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBGController$dma;->Jr:Z

    if-eqz v1, :cond_1

    const-string v1, "F, "

    goto :goto_1

    :cond_1
    const-string v1, "K, "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$dma;->Lr:Lcom/android/server/am/OnePlusBGController$OptType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
