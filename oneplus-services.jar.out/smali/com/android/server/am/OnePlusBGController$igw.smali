.class public Lcom/android/server/am/OnePlusBGController$igw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "igw"
.end annotation


# instance fields
.field public Fr:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field public Gr:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public Hr:Z

.field public Ir:D

.field public Jr:Z

.field public Kr:Z

.field public Lr:Lcom/android/server/am/OnePlusBGController$OptType;

.field public mPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/am/OnePlusBGController$AppBucketRanking;Lcom/android/server/am/OnePlusBGController$MyDrainType;ZDZZLcom/android/server/am/OnePlusBGController$OptType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->Fr:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    iput-object p3, p0, Lcom/android/server/am/OnePlusBGController$igw;->Gr:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    iput-boolean p4, p0, Lcom/android/server/am/OnePlusBGController$igw;->Hr:Z

    iput-wide p5, p0, Lcom/android/server/am/OnePlusBGController$igw;->Ir:D

    iput-boolean p7, p0, Lcom/android/server/am/OnePlusBGController$igw;->Jr:Z

    iput-boolean p8, p0, Lcom/android/server/am/OnePlusBGController$igw;->Kr:Z

    iput-object p9, p0, Lcom/android/server/am/OnePlusBGController$igw;->Lr:Lcom/android/server/am/OnePlusBGController$OptType;

    return-void
.end method
