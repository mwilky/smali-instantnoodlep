.class final Lcom/android/server/am/OnePlusMemoryTracker$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusMemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zta"
.end annotation


# instance fields
.field public final mCurAdj:I

.field public final mPid:I

.field public final mProcessName:Ljava/lang/String;

.field public final mThread:Landroid/app/IApplicationThread;

.field public final mUid:I

.field public final yC:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZLandroid/app/IApplicationThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mProcessName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mUid:I

    iput p3, p0, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mPid:I

    iput p4, p0, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mCurAdj:I

    iput-boolean p5, p0, Lcom/android/server/am/OnePlusMemoryTracker$zta;->yC:Z

    iput-object p6, p0, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mThread:Landroid/app/IApplicationThread;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppEvent={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mCurAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", processName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
