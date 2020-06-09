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
.field public mPkg:Ljava/lang/String;

.field public pr:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field public qr:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public rr:Z

.field public tr:D

.field public ur:Z

.field public vr:Z

.field public wr:Lcom/android/server/am/OnePlusBGController$OptType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/am/OnePlusBGController$AppBucketRanking;Lcom/android/server/am/OnePlusBGController$MyDrainType;ZDZZLcom/android/server/am/OnePlusBGController$OptType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->pr:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    iput-object p3, p0, Lcom/android/server/am/OnePlusBGController$igw;->qr:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    iput-boolean p4, p0, Lcom/android/server/am/OnePlusBGController$igw;->rr:Z

    iput-wide p5, p0, Lcom/android/server/am/OnePlusBGController$igw;->tr:D

    iput-boolean p7, p0, Lcom/android/server/am/OnePlusBGController$igw;->ur:Z

    iput-boolean p8, p0, Lcom/android/server/am/OnePlusBGController$igw;->vr:Z

    iput-object p9, p0, Lcom/android/server/am/OnePlusBGController$igw;->wr:Lcom/android/server/am/OnePlusBGController$OptType;

    return-void
.end method
