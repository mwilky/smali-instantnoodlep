.class Lcom/android/server/am/H;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final Bn:I = 0x2

.field public static final Cn:I = 0x4

.field public static final XG:I = 0x8

.field public static final YG:I = 0x800

.field public static final ZG:I = 0x2000

.field public static final _G:I = 0x20000000

.field public static final aH:I = 0x40000000


# instance fields
.field public final SG:Ljava/lang/String;

.field public final TG:Lcom/android/server/am/tsu;

.field UG:Z

.field private VG:I

.field private final WG:Ljava/lang/Object;

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public mPss:J

.field public final mUid:I

.field public sn:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZLcom/android/server/am/tsu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/H;->UG:Z

    iput v0, p0, Lcom/android/server/am/H;->VG:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/H;->WG:Ljava/lang/Object;

    iput p1, p0, Lcom/android/server/am/H;->mUid:I

    iput p2, p0, Lcom/android/server/am/H;->mPid:I

    iput-object p3, p0, Lcom/android/server/am/H;->SG:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/server/am/H;->UG:Z

    iput-object p6, p0, Lcom/android/server/am/H;->TG:Lcom/android/server/am/tsu;

    iput-object p4, p0, Lcom/android/server/am/H;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZLcom/android/server/am/tsu;)V
    .locals 7

    iget v1, p5, Lcom/android/server/am/tsu;->mUid:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/H;-><init>(IILjava/lang/String;Ljava/lang/String;ZLcom/android/server/am/tsu;)V

    return-void
.end method


# virtual methods
.method _c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/H;->VG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/H;->VG:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method ad()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/H;->VG:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method bd()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/H;->VG:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/H;->VG:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cd()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/H;->WG:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/am/H;->mPid:I

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/H;->mPss:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method dd()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/am/H;->VG:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method fto(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/H;->sn:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/am/H;->sn:I

    return-void
.end method

.method public getFlag()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/H;->sn:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/H;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPid()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/H;->mPid:I

    return p0
.end method

.method public getPss()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/H;->WG:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/am/H;->mPss:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method isShowing()Z
    .locals 0

    iget p0, p0, Lcom/android/server/am/H;->sn:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method oxb(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/H;->sn:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/am/H;->sn:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProcRecord { "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/H;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/H;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/H;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", procName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/H;->SG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
