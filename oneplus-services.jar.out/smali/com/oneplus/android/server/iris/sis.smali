.class public Lcom/oneplus/android/server/iris/sis;
.super Lcom/oneplus/android/server/iris/bio;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;
.implements Lcom/android/server/OnePlusUtil$zta$zta;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/iris/sis$sis;,
        Lcom/oneplus/android/server/iris/sis$zta;,
        Lcom/oneplus/android/server/iris/sis$you;
    }
.end annotation


# static fields
.field private static final BZ:I = 0x3

.field private static final USER_OWNER:I = 0x0

.field private static final Wra:Ljava/lang/String; = "com.oneplus.gallery"

.field private static final Xra:Ljava/lang/String; = "com.oneplus.gallery/com.oneplus.gallery2.VideoPlayerActivity"

.field private static final Yra:Ljava/lang/String; = "com.oneplus.gallery/com.oneplus.gallery.VideoPlayerActivity"

.field private static final Zra:Ljava/lang/String; = "com.android.systemui"

.field private static final _ra:Ljava/lang/String; = "com.android.systemui/com.android.systemui.pip.phone.PipMenuActivity"

.field private static final asa:Ljava/lang/String; = "SCREEN OFF"

.field private static final bsa:Ljava/lang/String; = "com.netflix.mediaclient"

.field private static final csa:I = 0xb

.field private static final dsa:I = 0x1

.field private static final esa:I = 0x0

.field private static final fsa:I = 0x0

.field private static final gsa:I = 0x1

.field private static final hsa:I = 0x0

.field private static final isa:I = 0x1

.field private static final jsa:I = 0x2

.field private static final ksa:I = 0x4

.field private static final lsa:I = 0x5

.field private static final msa:I = 0x20

.field private static final nsa:I = 0x1f4

.field private static final osa:I = 0x1

.field private static final psa:I = 0x2

.field private static final qsa:I = 0x3

.field private static final rsa:I = 0x4

.field private static final ssa:J = 0x1f40L

.field private static final tsa:J = 0x3e8L

.field private static final usa:I = 0x18


# instance fields
.field private Ara:Z

.field private Bra:Z

.field private Cra:Z

.field private Dra:Z

.field private Era:Z

.field private Fra:Z

.field private Gra:Z

.field private Hra:Z

.field private Ira:Z

.field private Jra:Z

.field private Kra:Z

.field private Lra:Z

.field private Mra:Z

.field private Nra:Z

.field private Ora:Z

.field private Pra:Ljava/lang/Runnable;

.field private Qra:Lcom/oneplus/android/server/iris/sis$sis;

.field private Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

.field private Sra:Ljava/lang/String;

.field private Tra:Ljava/lang/String;

.field private Ura:Ljava/lang/String;

.field private Vra:Lcom/oneplus/display/IOneplusColorDisplayManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPackageName:Ljava/lang/String;

.field private mHandler:Lcom/oneplus/android/server/iris/sis$you;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mScreenOn:Z

.field private mTimer:Lcom/oneplus/android/server/iris/kth;

.field private mUserHandle:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mra:Lcom/oneplus/android/server/iris/sis$zta;

.field private nra:Lcom/oneplus/android/server/iris/qbh;

.field private ora:Lcom/oneplus/android/server/iris/dma;

.field private pra:Landroid/os/Handler;

.field private qra:I

.field private rra:Z

.field private sra:Z

.field private tra:Z

.field private ura:Z

.field private vra:Z

.field private wra:Z

.field private xra:Z

.field private yra:Z

.field private zra:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/bio;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/iris/sis;->qra:I

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->rra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->sra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->tra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->ura:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->vra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->wra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->xra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->yra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->zra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Ara:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Bra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Cra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Dra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Era:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Fra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Gra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Hra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Ira:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->Jra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Kra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Lra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Mra:Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->mScreenOn:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Nra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Ora:Z

    iput v0, p0, Lcom/oneplus/android/server/iris/sis;->mUserHandle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Pra:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Qra:Lcom/oneplus/android/server/iris/sis$sis;

    iput-object p1, p0, Lcom/oneplus/android/server/iris/sis;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/android/server/iris/sis;->pra:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/android/server/iris/sis$you;

    invoke-static {}, Lcom/oneplus/android/server/iris/tsu;->get()Lcom/oneplus/android/server/iris/tsu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/oneplus/android/server/iris/sis$you;-><init>(Lcom/oneplus/android/server/iris/sis;Landroid/os/Looper;Lcom/oneplus/android/server/iris/you;)V

    iput-object v1, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    new-instance v0, Lcom/oneplus/android/server/iris/qbh;

    invoke-direct {v0, p1}, Lcom/oneplus/android/server/iris/qbh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->nra:Lcom/oneplus/android/server/iris/qbh;

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->nra:Lcom/oneplus/android/server/iris/qbh;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/qbh;->_f()Lcom/oneplus/android/server/iris/dma;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    new-instance v0, Lcom/oneplus/android/server/iris/sis$zta;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/iris/sis$zta;-><init>(Lcom/oneplus/android/server/iris/sis;)V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mra:Lcom/oneplus/android/server/iris/sis$zta;

    new-instance v0, Lcom/oneplus/android/server/iris/sis$sis;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/iris/sis$sis;-><init>(Lcom/oneplus/android/server/iris/sis;)V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Qra:Lcom/oneplus/android/server/iris/sis$sis;

    new-instance v0, Lcom/oneplus/iris/OpIrisWindowInfo;

    invoke-direct {v0}, Lcom/oneplus/iris/OpIrisWindowInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    new-instance v0, Lcom/oneplus/android/server/iris/kth;

    invoke-direct {v0, p1}, Lcom/oneplus/android/server/iris/kth;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mTimer:Lcom/oneplus/android/server/iris/kth;

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->init()V

    return-void
.end method

.method private Gb(Z)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/bio;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBatterySaverChange enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mMemcEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->tra:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSdr2HdrEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->sra:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->tra:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->sra:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->pv()V

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mTimer:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/kth;->M(Z)V

    return-void
.end method

.method private Hb(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mTimer:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v0, p1}, Lcom/oneplus/android/server/iris/kth;->N(Z)V

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mTimer:Lcom/oneplus/android/server/iris/kth;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/kth;->Pf()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/kth;->Qf()V

    :goto_0
    return-void
.end method

.method private Hc(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string p0, "unknown"

    goto :goto_0

    :cond_0
    const-string p0, "SDR_AND_MEMC"

    goto :goto_0

    :cond_1
    const-string p0, "SDR2HDR_ONLY"

    goto :goto_0

    :cond_2
    const-string p0, "MEMC_ONLY"

    goto :goto_0

    :cond_3
    const-string p0, "PT"

    goto :goto_0

    :cond_4
    const-string p0, "Bypass"

    :goto_0
    return-object p0
.end method

.method private Ib(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Ira:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1f40

    :goto_0
    sget-boolean v2, Lcom/oneplus/android/server/iris/bio;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasShown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/android/server/iris/sis;->Ira:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " immediate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OpIrisManager"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/iris/sis;->Pra:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    new-instance p1, Lcom/oneplus/android/server/iris/you;

    invoke-direct {p1, p0}, Lcom/oneplus/android/server/iris/you;-><init>(Lcom/oneplus/android/server/iris/sis;)V

    iput-object p1, p0, Lcom/oneplus/android/server/iris/sis;->Pra:Ljava/lang/Runnable;

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/iris/sis;->pra:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/sis;->Pra:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/oneplus/android/server/iris/sis;->pra:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->Pra:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private Jb(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Lra:Z

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Lra:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private Kb(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private Lb(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchBypass enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mBypassEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->rra:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->rra:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->rra:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->mScreenOn:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio;->lra:Lcom/oneplus/android/server/iris/ssp;

    const-string p1, "56-1"

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio;->lra:Lcom/oneplus/android/server/iris/ssp;

    const-string p1, "56-0"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/ssp;->setIrisCommand(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private Mb(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchMEMC enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mMemcEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->tra:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->tra:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->tra:Z

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/dma;->Uf()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->Ura:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/dma;->Uf()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->Ura:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/iris/sis;->Uc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/sis;->Rf()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    const-string v2, "com.netflix.mediaclient"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "258-74-0"

    :cond_2
    iget-object v1, p0, Lcom/oneplus/android/server/iris/bio;->lra:Lcom/oneplus/android/server/iris/ssp;

    invoke-virtual {v1, v0}, Lcom/oneplus/android/server/iris/ssp;->setIrisCommand(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->mScreenOn:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/android/server/iris/bio;->lra:Lcom/oneplus/android/server/iris/ssp;

    const-string v1, "258-0"

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/iris/ssp;->setIrisCommand(Ljava/lang/String;)V

    :cond_4
    :goto_0
    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Lra:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->Jb(Z)V

    :cond_5
    return-void
.end method

.method private Nb(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchSDR2HDR enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSdr2HdrEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->sra:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->sra:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->sra:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/iris/sis;->Vra:Lcom/oneplus/display/IOneplusColorDisplayManager;

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Lcom/oneplus/display/IOneplusColorDisplayManager;->setActiveModesId(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {p1}, Lcom/oneplus/android/server/iris/dma;->Yf()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio;->lra:Lcom/oneplus/android/server/iris/ssp;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/ssp;->setIrisCommand(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/oneplus/android/server/iris/sis;->Vra:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {p1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->resumeColorMode()V

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->mScreenOn:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio;->lra:Lcom/oneplus/android/server/iris/ssp;

    const-string p1, "267-3-0"

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private Ob(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Mra:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Mra:Z

    sget-boolean p0, Lcom/oneplus/server/DynamicVsyncManager;->FEATURE_EXTREME_ENABLE:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/oneplus/server/DynamicVsyncManager;->getInstance()Lcom/oneplus/server/DynamicVsyncManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/server/DynamicVsyncManager;->da(Z)V

    :cond_1
    return-void
.end method

.method private Rc(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/dma;->Wf()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private Sc(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/dma;->Uf()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/dma;->Uf()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->Uc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private Tc(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/dma;->Yf()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private Uc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private Vc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "unknown"

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->vra:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/dma;->getMemcAppTypeMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->ura:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/dma;->Xf()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_1
    const/4 p0, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/16 v1, 0x30

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/16 v1, 0x31

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    const-string p1, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p0, v2

    :cond_4
    :goto_0
    if-eqz p0, :cond_6

    if-eq p0, v2, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "game"

    goto :goto_1

    :cond_6
    const-string v0, "video"

    :goto_1
    return-object v0
.end method

.method private Wc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->vra:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/dma;->getMemcRateMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string p1, "1"

    if-ne p0, p1, :cond_0

    const-string p0, "extreme"

    goto :goto_0

    :cond_0
    const-string p0, "smooth"

    goto :goto_0

    :cond_1
    const-string p0, "no effect"

    :cond_2
    :goto_0
    return-object p0
.end method

.method private Xc(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/dma;->getMemcAppTypeMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private Yc(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/dma;->Xf()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private Zc(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "OpIrisManager"

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v2}, Lcom/oneplus/android/server/iris/dma;->getMemcRateMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget-boolean v3, Lcom/oneplus/android/server/iris/bio;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoMemcMode pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " memcRate : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x1

    if-ne v2, p1, :cond_3

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/sis;->xra:Z

    if-eqz p0, :cond_3

    return p1

    :cond_3
    return v0

    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "smr:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PKG:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private cjf(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "values"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFeatureChange type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " values[0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OpIrisManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->Kb(Z)V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$zta;)V

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/bio;->lra:Lcom/oneplus/android/server/iris/ssp;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mra:Lcom/oneplus/android/server/iris/sis$zta;

    invoke-virtual {v0, p0}, Lcom/oneplus/android/server/iris/ssp;->zta(Lsis/sis/zta/zta/zta/cno$you;)V

    return-void
.end method

.method private kv()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v0, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, v1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/iris/sis;->vdw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->qv()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private lv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->yra:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Ara:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->xra:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->wra:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/sis;->zra:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private mv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Fra:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/sis;->Gra:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private nv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Dra:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/sis;->Era:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private ov()Z
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->tra:Z

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->Gra:Z

    if-eq v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/sis;->Fra:Z

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private pv()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private qv()V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget v0, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->modeId:I

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->vra:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->ura:Z

    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->vra:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->ura:Z

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->vra:Z

    const/4 v5, 0x3

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->ura:Z

    if-eqz v4, :cond_3

    move v1, v5

    :cond_3
    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->vra:Z

    const/4 v6, 0x4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->ura:Z

    if-eqz v4, :cond_4

    move v1, v6

    :cond_4
    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->vra:Z

    const/4 v7, 0x1

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->ura:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->Hra:Z

    if-eqz v4, :cond_5

    move v1, v7

    :cond_5
    if-eq v0, v2, :cond_6

    const/4 v4, -0x1

    if-ne v0, v4, :cond_7

    :cond_6
    move v1, v3

    :cond_7
    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->Bra:Z

    if-eqz v4, :cond_8

    move v1, v3

    :cond_8
    iget-object v4, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-boolean v4, v4, Lcom/oneplus/iris/OpIrisWindowInfo;->splitScreenMode:Z

    if-eqz v4, :cond_9

    move v1, v3

    :cond_9
    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->Kra:Z

    if-eqz v4, :cond_a

    move v1, v3

    :cond_a
    iget v4, p0, Lcom/oneplus/android/server/iris/sis;->mUserHandle:I

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->Jra:Z

    if-nez v4, :cond_d

    :goto_1
    move v1, v3

    goto :goto_2

    :cond_b
    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->Jra:Z

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/oneplus/android/server/iris/sis;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_1

    :cond_c
    iput-boolean v7, p0, Lcom/oneplus/android/server/iris/sis;->Jra:Z

    :cond_d
    :goto_2
    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->Cra:Z

    if-eqz v4, :cond_f

    if-ne v1, v6, :cond_e

    move v1, v2

    :cond_e
    if-ne v1, v5, :cond_f

    move v1, v3

    :cond_f
    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->mScreenOn:Z

    if-nez v4, :cond_10

    move v1, v3

    :cond_10
    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/sis;->Rf()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->Nra:Z

    if-nez v4, :cond_12

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->tra:Z

    if-nez v4, :cond_12

    if-ne v1, v6, :cond_11

    move v1, v5

    :cond_11
    if-ne v1, v2, :cond_12

    move v1, v3

    :cond_12
    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->Ora:Z

    if-eqz v4, :cond_14

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->tra:Z

    if-eqz v4, :cond_14

    if-ne v1, v6, :cond_13

    move v1, v5

    :cond_13
    if-ne v1, v2, :cond_14

    move v1, v3

    :cond_14
    sget-boolean v4, Lcom/oneplus/android/server/iris/bio;->DEBUG:Z

    if-eqz v4, :cond_16

    const-string v4, "OpIrisManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "modeId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " irisMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mIrisMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/oneplus/android/server/iris/sis;->qra:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mDebugPT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->Hra:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mMatchMEMC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->vra:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mMatchSdr2Hdr: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->ura:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mIsRecentAnimating:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->Kra:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mBatterySaverEnable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->Bra:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mUserHandle: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/oneplus/android/server/iris/sis;->mUserHandle:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " isKeyguardLocked: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/oneplus/android/server/iris/sis;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mUserPresent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->Jra:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mIsAdvancedNative: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->Cra:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mScreenOn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->mScreenOn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mMemcEnable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->tra:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mAllowMEMC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->Nra:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mModeChange: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->Ora:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " splitScreenMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-boolean v9, v9, Lcom/oneplus/iris/OpIrisWindowInfo;->splitScreenMode:Z

    if-eqz v9, :cond_15

    move v9, v7

    goto :goto_3

    :cond_15
    move v9, v3

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iput-boolean v3, p0, Lcom/oneplus/android/server/iris/sis;->Ora:Z

    iget v4, p0, Lcom/oneplus/android/server/iris/sis;->qra:I

    if-ne v4, v1, :cond_17

    monitor-exit p0

    return-void

    :cond_17
    iget-object v4, p0, Lcom/oneplus/android/server/iris/sis;->pra:Landroid/os/Handler;

    iget-object v8, p0, Lcom/oneplus/android/server/iris/sis;->Pra:Ljava/lang/Runnable;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/sis;->Rf()Z

    move-result v4

    if-eqz v4, :cond_1b

    if-eq v1, v6, :cond_19

    if-ne v1, v2, :cond_18

    goto :goto_4

    :cond_18
    move v0, v3

    goto :goto_5

    :cond_19
    :goto_4
    move v0, v7

    :goto_5
    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->tra:Z

    if-nez v4, :cond_1a

    if-eqz v0, :cond_1a

    :goto_6
    move v0, v7

    goto :goto_7

    :cond_1a
    move v0, v3

    goto :goto_7

    :cond_1b
    if-ne v0, v5, :cond_1a

    goto :goto_6

    :goto_7
    if-eqz v1, :cond_20

    if-eq v1, v7, :cond_1f

    if-eq v1, v2, :cond_1e

    if-eq v1, v5, :cond_1d

    if-eq v1, v6, :cond_1c

    goto :goto_9

    :cond_1c
    invoke-direct {p0, v7}, Lcom/oneplus/android/server/iris/sis;->Ob(Z)V

    invoke-direct {p0, v7, v7, v0}, Lcom/oneplus/android/server/iris/sis;->zta(ZZZ)V

    goto :goto_9

    :cond_1d
    invoke-direct {p0, v7}, Lcom/oneplus/android/server/iris/sis;->Ob(Z)V

    invoke-direct {p0, v7, v3, v0}, Lcom/oneplus/android/server/iris/sis;->zta(ZZZ)V

    goto :goto_9

    :cond_1e
    invoke-direct {p0, v7}, Lcom/oneplus/android/server/iris/sis;->Ob(Z)V

    invoke-direct {p0, v3, v7, v0}, Lcom/oneplus/android/server/iris/sis;->zta(ZZZ)V

    goto :goto_9

    :cond_1f
    invoke-direct {p0, v3}, Lcom/oneplus/android/server/iris/sis;->Mb(Z)V

    invoke-direct {p0, v3}, Lcom/oneplus/android/server/iris/sis;->Nb(Z)V

    invoke-direct {p0, v3}, Lcom/oneplus/android/server/iris/sis;->Lb(Z)V

    :goto_8
    invoke-direct {p0, v3}, Lcom/oneplus/android/server/iris/sis;->Ob(Z)V

    goto :goto_9

    :cond_20
    invoke-direct {p0, v3}, Lcom/oneplus/android/server/iris/sis;->Mb(Z)V

    invoke-direct {p0, v3}, Lcom/oneplus/android/server/iris/sis;->Nb(Z)V

    invoke-direct {p0, v7}, Lcom/oneplus/android/server/iris/sis;->Lb(Z)V

    goto :goto_8

    :goto_9
    iput v1, p0, Lcom/oneplus/android/server/iris/sis;->qra:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/iris/sis;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/iris/sis;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->Ib(Z)V

    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/iris/sis;)Lcom/oneplus/android/server/iris/sis$you;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    return-object p0
.end method

.method private sis(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/iris/sis;->Lb(Z)V

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->Nb(Z)V

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/sis;->Mb(Z)V

    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/iris/sis;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Ira:Z

    return p1
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/iris/sis;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/sis;->Lra:Z

    return p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/iris/sis;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->pv()V

    return-void
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/iris/sis;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->Gb(Z)V

    return-void
.end method

.method private vdw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_11

    if-nez p2, :cond_0

    goto/16 :goto_9

    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/iris/bio;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkWhiteList  package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " containsSdr2HdrKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/sis;->Tc(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " containMEMCPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/sis;->Rc(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " containsMEMCKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->Sc(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Ura:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->Ira:Z

    :cond_2
    iput-object p1, p0, Lcom/oneplus/android/server/iris/sis;->Ura:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/sis;->Tc(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->zra:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Ara:Z

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/sis;->Yc(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->zra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Dra:Z

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Ara:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Era:Z

    :goto_0
    const-string v0, "com.oneplus.gallery"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "com.oneplus.gallery/com.oneplus.gallery2.VideoPlayerActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.oneplus.gallery/com.oneplus.gallery.VideoPlayerActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    :goto_1
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Dra:Z

    goto :goto_4

    :cond_7
    :goto_3
    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->Dra:Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->Era:Z

    :cond_8
    :goto_4
    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/sis;->Rc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->Sc(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->wra:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->yra:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->xra:Z

    if-nez p1, :cond_9

    goto :goto_7

    :cond_9
    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/sis;->Xc(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_c

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->wra:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->xra:Z

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    move p1, v1

    goto :goto_6

    :cond_b
    :goto_5
    move p1, v2

    :goto_6
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Fra:Z

    goto :goto_8

    :cond_c
    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->yra:Z

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Gra:Z

    goto :goto_8

    :cond_d
    :goto_7
    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->Fra:Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->Gra:Z

    :goto_8
    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/sis;->Rf()Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "com.netflix.mediaclient"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->wra:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->xra:Z

    if-eqz p1, :cond_f

    :cond_e
    move v1, v2

    :cond_f
    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->Fra:Z

    :cond_10
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->nv()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->ura:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->mv()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->vra:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_11
    :goto_9
    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/iris/sis;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->kv()V

    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/iris/sis;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Kra:Z

    return p1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/iris/sis;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/iris/sis;->qra:I

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/iris/sis;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->Hc(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/iris/sis;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->cjf(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/iris/sis;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->Hb(Z)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/iris/sis;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/iris/sis;->sis(ZZ)V

    return-void
.end method

.method private zta(Lcom/oneplus/iris/OpIrisWindowInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->modeId:I

    iput v0, p0, Lcom/oneplus/iris/OpIrisWindowInfo;->modeId:I

    iget v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->aboveWindowCount:I

    iput v0, p0, Lcom/oneplus/iris/OpIrisWindowInfo;->aboveWindowCount:I

    iget-boolean v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->splitScreenMode:Z

    iput-boolean v0, p0, Lcom/oneplus/iris/OpIrisWindowInfo;->splitScreenMode:Z

    iget-boolean v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->fullScreenContent:Z

    iput-boolean v0, p0, Lcom/oneplus/iris/OpIrisWindowInfo;->fullScreenContent:Z

    iget-boolean v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->fullScreenWindow:Z

    iput-boolean v0, p0, Lcom/oneplus/iris/OpIrisWindowInfo;->fullScreenWindow:Z

    iget-boolean p1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->matchDisplaySize:Z

    iput-boolean p1, p0, Lcom/oneplus/iris/OpIrisWindowInfo;->matchDisplaySize:Z

    return-void
.end method

.method private zta(ZZZ)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/sis;->Rf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Lra:Z

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x1f4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x20

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " switchSdrAndMEMC sdr2hdrEnable: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " memcEnable: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " needDelay: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " delayTime: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "OpIrisManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    invoke-virtual {p3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    iput p1, p3, Landroid/os/Message;->arg1:I

    iput p2, p3, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    invoke-virtual {p0, p3, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    invoke-direct {p0, p3}, Lcom/oneplus/android/server/iris/sis;->Lb(Z)V

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->Nb(Z)V

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/sis;->Mb(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public M(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBatterySaverEnable enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Bra:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public P(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAdvancedNativeStatus enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Cra:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Q(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGameMemcSwitch enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->yra:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public R(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGameSdr2HdrSwitch enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Ara:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Rf()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/dma;->Rf()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public S(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScreenStatus on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Jra:Z

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->pv()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    const-string v1, "OpIrisManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setScreenStatus iskeyguardLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/oneplus/android/server/iris/sis;->Jra:Z

    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->mScreenOn:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Sf()V
    .locals 2

    const-string v0, "OpIrisManager"

    const-string v1, "setUserPresent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Jra:Z

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->Tra:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->Sra:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->pv()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public T(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoMemcExtremeSwitch enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->xra:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mTimer:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v0, p1}, Lcom/oneplus/android/server/iris/kth;->O(Z)V

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->pv()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public U(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoMemcSwitch enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->wra:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public V(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoSdr2HdrSwitch enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->zra:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public da(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/iris/sis;->mUserHandle:I

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mTimer:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/kth;->da(I)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    const-string v0, " timmingv2: "

    const-string v1, ""

    if-eqz p2, :cond_3

    array-length v2, p2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " args[0]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v4, p2, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "OpIrisManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v2, p2, v3

    const-string v4, "-whitelist"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "------------WhitList Version----------------"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v2}, Lcom/oneplus/android/server/iris/dma;->getVersion()J

    move-result-wide v4

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " version: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " url: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v4}, Lcom/oneplus/android/server/iris/dma;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/dma;->Rf()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "------------Sdr2Hdr App Info----------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/dma;->Zf()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v2}, Lcom/oneplus/android/server/iris/dma;->Xf()Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v4}, Lcom/oneplus/android/server/iris/dma;->Yf()Ljava/util/HashMap;

    move-result-object v4

    move v5, v3

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v7, " appType: "

    const-string v8, " package: "

    if-ge v5, v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " cmd: "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "------------Memc App Info----------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/dma;->Wf()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v1}, Lcom/oneplus/android/server/iris/dma;->getMemcAppTypeMap()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v2}, Lcom/oneplus/android/server/iris/dma;->getMemcRateMap()Ljava/util/HashMap;

    move-result-object v2

    const-string v4, "package info: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v3

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " effect: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "activity info: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/dma;->Vf()Ljava/util/ArrayList;

    move-result-object v0

    move v1, v3

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    aget-object p1, p2, v3

    const-string p2, "-pt"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Hra:Z

    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio;->lra:Lcom/oneplus/android/server/iris/ssp;

    const-string p1, "56-0"

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/ssp;->setIrisCommand(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    const-string p2, "Iris Status Manager:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "------------App Info----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " current package: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " current activity: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/sis;->Ura:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " match sdr2hdr whitelist: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/iris/sis;->Tc(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " match memc whitelist: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/sis;->Ura:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/iris/sis;->Sc(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " app type: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/iris/sis;->Vc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " memc effect: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/iris/sis;->Wc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "------------Iris Status----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " iris mode: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/iris/sis;->qra:I

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/iris/sis;->Hc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " video memc enable: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/sis;->Fra:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " game memc enable: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/sis;->Gra:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " video sdr2hdr enable: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/sis;->Dra:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " game sdr2hdr enable: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/sis;->Era:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/sis;->Rf()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "------------System Status----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " userHandle: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/android/server/iris/sis;->mUserHandle:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " userPresent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Jra:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " keyguard locked: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " battery saver enable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Bra:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " rencent is animating: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Kra:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "------------Settings Value----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " video memc 60HZ switch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->wra:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " video memc 120Hz switch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->xra:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " video sdr2hdr switch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->zra:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " game memc switch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->yra:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " game sdr2hdr switch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Ara:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mTimer:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/kth;->dump(Ljava/io/PrintWriter;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public ea(I)I
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/oneplus/android/server/iris/bio;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpIrisManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferedModeIdV2 modeId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIrisMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/iris/sis;->qra:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mUserPresent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/sis;->Jra:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mVideoMemcSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/sis;->wra:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mGameMemcSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/sis;->yra:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mVideoMemcExtremeSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/sis;->xra:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " VideoMemcMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/iris/sis;->Zc(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Jra:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->vra:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->xra:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/iris/sis;->Zc(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_2

    const/4 p1, 0x4

    sget-boolean v1, Lcom/oneplus/android/server/iris/bio;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "OpIrisManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extreme change mode id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v0}, Lcom/oneplus/android/server/iris/sis;->Jb(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/iris/sis;->Jb(Z)V

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    sget-boolean p2, Lcom/oneplus/android/server/iris/bio;->DEBUG:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "frontPackageChanged packageName = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpIrisManager"

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iput-object p1, p2, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    iget-object p2, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    const-string p3, ""

    iput-object p3, p2, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    const-string p2, "OpIrisManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "frontPackageChanged packageName = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p4, p4, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " activityName = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p4, p4, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean p2, p0, Lcom/oneplus/android/server/iris/sis;->rra:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/oneplus/android/server/iris/sis;->sra:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/oneplus/android/server/iris/sis;->vra:Z

    if-eqz p2, :cond_3

    :cond_2
    const-string p2, "com.android.systemui"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic getIrisCommand(I)I
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/android/server/iris/bio;->getIrisCommand(I)I

    move-result p0

    return p0
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

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/dma;->getMemcAppTypeMap()Ljava/util/HashMap;

    move-result-object p0

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

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/dma;->getMemcRateMap()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public getPreferedModeId(I)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->wra:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->xra:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->yra:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return p1

    :cond_0
    iget v0, p0, Lcom/oneplus/android/server/iris/sis;->qra:I

    if-nez v0, :cond_1

    monitor-exit p0

    return p1

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Jra:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->vra:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/iris/sis;->Zc(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_2

    const/4 p1, 0x4

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/iris/sis;->Jb(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/iris/sis;->Jb(Z)V

    :goto_0
    sget-boolean v0, Lcom/oneplus/android/server/iris/bio;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "OpIrisManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferedModeId mUserPresent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/sis;->Jra:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " modeId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " VideoMemcMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/iris/sis;->Zc(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/dma;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyRecentAnimatorStatus(Z)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/iris/bio;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRecentAnimatorStatus mIsRecentAnimating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->Kra:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isAnimating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->Qra:Lcom/oneplus/android/server/iris/sis$sis;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Qra:Lcom/oneplus/android/server/iris/sis$sis;

    iput-boolean p1, v0, Lcom/oneplus/android/server/iris/sis$sis;->gqa:Z

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Kra:Z

    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onBootComplete()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->nra:Lcom/oneplus/android/server/iris/qbh;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/qbh;->onBootComplete()V

    return-void
.end method

.method public postDisplayModeChange(I)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/iris/bio;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postDisplayModeChange modeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mVideoMemcExtremeSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->xra:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->lv()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/sis;->Rf()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->xra:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_2

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    if-ne p1, v1, :cond_4

    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/oneplus/android/server/iris/sis;->Nra:Z

    :cond_4
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->qv()V

    return-void
.end method

.method public prepareDisplayModeChange(Lcom/oneplus/iris/OpIrisWindowInfo;)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/bio;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareDisplayModeChange modeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->modeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " aboveWindowCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->aboveWindowCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " splitScreenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->splitScreenMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " fullScreenWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->fullScreenWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " fullScreenContent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->fullScreenContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " matchDisplaySize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->matchDisplaySize:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " activityName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->lv()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/sis;->Rf()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget v0, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->modeId:I

    iget v1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->modeId:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Ora:Z

    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->zta(Lcom/oneplus/iris/OpIrisWindowInfo;)V

    iget-object v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Nra:Z

    iget-object v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Tra:Ljava/lang/String;

    iget-object v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Sra:Ljava/lang/String;

    const-string v0, "com.android.systemui/com.android.systemui.pip.phone.PipMenuActivity"

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, v1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/oneplus/android/server/iris/sis;->mUserHandle:I

    if-eqz v0, :cond_4

    const-string v0, "SCREEN OFF"

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, v1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v0, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/android/server/iris/sis;->vdw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    iget-object p1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/android/server/iris/sis;->vdw(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->ov()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->mv()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Ora:Z

    if-eqz p1, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->qv()V

    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_9
    :goto_2
    return-void
.end method

.method public screenStateChange(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenStateChange state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->mScreenOn:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic setIrisCommand(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/android/server/iris/bio;->setIrisCommand(Ljava/lang/String;)V

    return-void
.end method

.method public systemReady()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mKeyguardManager:Landroid/app/KeyguardManager;

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Vra:Lcom/oneplus/display/IOneplusColorDisplayManager;

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mTimer:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/kth;->systemReady()V

    return-void
.end method

.method public zta(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    sget-boolean p2, Lcom/oneplus/android/server/iris/bio;->DEBUG:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "frontActivityChanged activityName = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpIrisManager"

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p4, p4, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    const-string p1, "OpIrisManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "frontActivityChanged packageName = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p3, p3, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " activityName = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p3, p3, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->rra:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->sra:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->vra:Z

    if-eqz p1, :cond_3

    :cond_2
    const-string p1, "com.android.systemui/com.android.systemui.pip.phone.PipMenuActivity"

    iget-object p2, p0, Lcom/oneplus/android/server/iris/sis;->Rra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p2, p2, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
