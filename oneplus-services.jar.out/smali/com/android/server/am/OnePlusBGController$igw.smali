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
.field public Gr:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field public Hr:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public Ir:Z

.field public Jr:D

.field public Kr:Z

.field public Lr:Z

.field public Mr:Lcom/android/server/am/OnePlusBGController$OptType;

.field public mPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/am/OnePlusBGController$AppBucketRanking;Lcom/android/server/am/OnePlusBGController$MyDrainType;ZDZZLcom/android/server/am/OnePlusBGController$OptType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->Gr:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    iput-object p3, p0, Lcom/android/server/am/OnePlusBGController$igw;->Hr:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    iput-boolean p4, p0, Lcom/android/server/am/OnePlusBGController$igw;->Ir:Z

    iput-wide p5, p0, Lcom/android/server/am/OnePlusBGController$igw;->Jr:D

    iput-boolean p7, p0, Lcom/android/server/am/OnePlusBGController$igw;->Kr:Z

    iput-boolean p8, p0, Lcom/android/server/am/OnePlusBGController$igw;->Lr:Z

    iput-object p9, p0, Lcom/android/server/am/OnePlusBGController$igw;->Mr:Lcom/android/server/am/OnePlusBGController$OptType;

    return-void
.end method
