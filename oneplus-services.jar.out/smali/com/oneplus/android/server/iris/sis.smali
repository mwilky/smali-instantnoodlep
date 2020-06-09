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
.field private static final Ara:Ljava/lang/String; = "com.oneplus.gallery/com.oneplus.gallery.VideoPlayerActivity"

.field private static final Bra:Ljava/lang/String; = "com.android.systemui"

.field private static final Cra:Ljava/lang/String; = "com.android.systemui/com.android.systemui.pip.phone.PipMenuActivity"

.field private static final Dra:Ljava/lang/String; = "SCREEN OFF"

.field private static final Era:I = 0xb

.field private static final Fra:I = 0x1

.field private static final Gra:I = 0x0

.field private static final Hra:I = 0x0

.field private static final Ira:I = 0x1

.field private static final Jra:I = 0x0

.field private static final Kra:I = 0x1

.field private static final Lra:I = 0x2

.field private static final Mra:I = 0x4

.field private static final Nra:I = 0x5

.field private static final Ora:I = 0x20

.field private static final Pra:I = 0x1

.field private static final Qra:I = 0x2

.field private static final Rra:I = 0x3

.field private static final Sra:I = 0x4

.field private static final Tra:J = 0x1f40L

.field private static final USER_OWNER:I = 0x0

.field private static final Ura:J = 0x3e8L

.field private static final Vra:I = 0x18

.field private static final gZ:I = 0x3

.field private static final yra:Ljava/lang/String; = "com.oneplus.gallery"

.field private static final zra:Ljava/lang/String; = "com.oneplus.gallery/com.oneplus.gallery2.VideoPlayerActivity"


# instance fields
.field private final Rqa:Lcom/oneplus/android/server/iris/sis$zta;

.field private Sqa:Lcom/oneplus/android/server/iris/qbh;

.field private Tqa:Lcom/oneplus/android/server/iris/dma;

.field private Uqa:Landroid/os/Handler;

.field private Vqa:I

.field private Wqa:Z

.field private Xqa:Z

.field private Yqa:Z

.field private Zqa:Z

.field private _qa:Z

.field private ara:Z

.field private bra:Z

.field private cra:Z

.field private dra:Z

.field private era:Z

.field private fra:Z

.field private gra:Z

.field private hra:Z

.field private ira:Z

.field private jra:Z

.field private kra:Z

.field private lra:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentPackageName:Ljava/lang/String;

.field private mHandler:Lcom/oneplus/android/server/iris/sis$you;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mTimer:Lcom/oneplus/android/server/iris/kth;

.field private mUserHandle:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mra:Z

.field private nra:Z

.field private ora:Z

.field private pra:Z

.field private qra:Z

.field private rra:Ljava/lang/Runnable;

.field private sra:Lcom/oneplus/android/server/iris/sis$sis;

.field private tra:Lcom/oneplus/iris/OpIrisWindowInfo;

.field private ura:Ljava/lang/String;

.field private vra:Ljava/lang/String;

.field private wra:Ljava/lang/String;

.field private xra:Lcom/oneplus/display/IOneplusColorDisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/bio;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/iris/sis;->Vqa:I

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Wqa:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Xqa:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Yqa:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Zqa:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->_qa:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->ara:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->bra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->cra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->dra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->era:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->fra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->gra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->hra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->ira:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->jra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->kra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->lra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->mra:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->nra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->ora:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->pra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->qra:Z

    iput v0, p0, Lcom/oneplus/android/server/iris/sis;->mUserHandle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->rra:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->sra:Lcom/oneplus/android/server/iris/sis$sis;

    iput-object p1, p0, Lcom/oneplus/android/server/iris/sis;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/android/server/iris/sis;->Uqa:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/android/server/iris/sis$you;

    invoke-static {}, Lcom/oneplus/android/server/iris/tsu;->get()Lcom/oneplus/android/server/iris/tsu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/oneplus/android/server/iris/sis$you;-><init>(Lcom/oneplus/android/server/iris/sis;Landroid/os/Looper;Lcom/oneplus/android/server/iris/you;)V

    iput-object v1, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    new-instance v0, Lcom/oneplus/android/server/iris/qbh;

    invoke-direct {v0, p1}, Lcom/oneplus/android/server/iris/qbh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Sqa:Lcom/oneplus/android/server/iris/qbh;

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Sqa:Lcom/oneplus/android/server/iris/qbh;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/qbh;->Xf()Lcom/oneplus/android/server/iris/dma;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    new-instance v0, Lcom/oneplus/android/server/iris/sis$zta;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/iris/sis$zta;-><init>(Lcom/oneplus/android/server/iris/sis;)V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Rqa:Lcom/oneplus/android/server/iris/sis$zta;

    new-instance v0, Lcom/oneplus/android/server/iris/sis$sis;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/iris/sis$sis;-><init>(Lcom/oneplus/android/server/iris/sis;)V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->sra:Lcom/oneplus/android/server/iris/sis$sis;

    new-instance v0, Lcom/oneplus/iris/OpIrisWindowInfo;

    invoke-direct {v0}, Lcom/oneplus/iris/OpIrisWindowInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

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

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->Yqa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSdr2HdrEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->Xqa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Yqa:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Xqa:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->mv()V

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

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/kth;->N(Z)V

    return-void
.end method

.method private Gc(I)Ljava/lang/String;
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

.method private Hb(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mTimer:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v0, p1}, Lcom/oneplus/android/server/iris/kth;->O(Z)V

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mTimer:Lcom/oneplus/android/server/iris/kth;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/kth;->Nf()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/kth;->Of()V

    :goto_0
    return-void
.end method

.method private Ib(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->mra:Z

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

    iget-boolean v3, p0, Lcom/oneplus/android/server/iris/sis;->mra:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " immediate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OpIrisManager"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/iris/sis;->rra:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    new-instance p1, Lcom/oneplus/android/server/iris/you;

    invoke-direct {p1, p0}, Lcom/oneplus/android/server/iris/you;-><init>(Lcom/oneplus/android/server/iris/sis;)V

    iput-object p1, p0, Lcom/oneplus/android/server/iris/sis;->rra:Ljava/lang/Runnable;

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/iris/sis;->Uqa:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/sis;->rra:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/oneplus/android/server/iris/sis;->Uqa:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->rra:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private Jb(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->pra:Z

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->pra:Z

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

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->Wqa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Wqa:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Wqa:Z

    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio;->Qqa:Lcom/oneplus/android/server/iris/ssp;

    if-eqz p1, :cond_1

    const-string p1, "56-1"

    goto :goto_0

    :cond_1
    const-string p1, "56-0"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/ssp;->setIrisCommand(Ljava/lang/String;)V

    return-void
.end method

.method private Mb(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchMEMC enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mMemcEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->Yqa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Yqa:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Yqa:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/dma;->Rf()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->wra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/dma;->Rf()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->wra:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/iris/sis;->Uc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/oneplus/android/server/iris/bio;->Qqa:Lcom/oneplus/android/server/iris/ssp;

    invoke-virtual {v1, v0}, Lcom/oneplus/android/server/iris/ssp;->setIrisCommand(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/android/server/iris/bio;->Qqa:Lcom/oneplus/android/server/iris/ssp;

    const-string v1, "258-0"

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/iris/ssp;->setIrisCommand(Ljava/lang/String;)V

    :goto_0
    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->pra:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->Jb(Z)V

    :cond_3
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

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->Xqa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Xqa:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Xqa:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/iris/sis;->xra:Lcom/oneplus/display/IOneplusColorDisplayManager;

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Lcom/oneplus/display/IOneplusColorDisplayManager;->setActiveModesId(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {p1}, Lcom/oneplus/android/server/iris/dma;->Vf()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio;->Qqa:Lcom/oneplus/android/server/iris/ssp;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/android/server/iris/sis;->xra:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {p1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->resumeColorMode()V

    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio;->Qqa:Lcom/oneplus/android/server/iris/ssp;

    const-string p1, "267-3-0"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/ssp;->setIrisCommand(Ljava/lang/String;)V

    return-void
.end method

.method private Ob(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->qra:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->qra:Z

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

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/dma;->Tf()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private Sc(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/dma;->Rf()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/dma;->Rf()Ljava/util/HashMap;

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

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/dma;->Vf()Ljava/util/HashMap;

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

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->_qa:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/dma;->getMemcAppTypeMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->Zqa:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/dma;->Uf()Ljava/util/HashMap;

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

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->_qa:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

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

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

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

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/dma;->Uf()Ljava/util/HashMap;

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
    iget-object v2, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

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

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/sis;->bra:Z

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

.method private hv()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v0, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, v1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/iris/sis;->vdw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->nv()V

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

.method private init()V
    .locals 1

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$zta;)V

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/bio;->Qqa:Lcom/oneplus/android/server/iris/ssp;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->Rqa:Lcom/oneplus/android/server/iris/sis$zta;

    invoke-virtual {v0, p0}, Lcom/oneplus/android/server/iris/ssp;->zta(Lsis/sis/zta/zta/zta/cno$you;)V

    return-void
.end method

.method private iv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->cra:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->era:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->bra:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->ara:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/sis;->dra:Z

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

.method private jv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->jra:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/sis;->kra:Z

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

.method private kv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->hra:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/sis;->ira:Z

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

.method private lv()Z
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->Yqa:Z

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->kra:Z

    if-eq v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/sis;->jra:Z

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private mv()V
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

.method private nv()V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget v0, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->modeId:I

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->_qa:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->Zqa:Z

    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->_qa:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->Zqa:Z

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->_qa:Z

    const/4 v5, 0x3

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->Zqa:Z

    if-eqz v4, :cond_3

    move v1, v5

    :cond_3
    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->_qa:Z

    const/4 v6, 0x4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->Zqa:Z

    if-eqz v4, :cond_4

    move v1, v6

    :cond_4
    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->_qa:Z

    const/4 v7, 0x1

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->Zqa:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->lra:Z

    if-eqz v4, :cond_5

    move v1, v7

    :cond_5
    if-eq v0, v2, :cond_6

    const/4 v4, -0x1

    if-ne v0, v4, :cond_7

    :cond_6
    move v1, v3

    :cond_7
    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->fra:Z

    if-eqz v4, :cond_8

    move v1, v3

    :cond_8
    iget-object v4, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-boolean v4, v4, Lcom/oneplus/iris/OpIrisWindowInfo;->splitScreenMode:Z

    if-eqz v4, :cond_9

    move v1, v3

    :cond_9
    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->ora:Z

    if-eqz v4, :cond_a

    move v1, v3

    :cond_a
    iget v4, p0, Lcom/oneplus/android/server/iris/sis;->mUserHandle:I

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->nra:Z

    if-nez v4, :cond_d

    :goto_1
    move v1, v3

    goto :goto_2

    :cond_b
    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->nra:Z

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/oneplus/android/server/iris/sis;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_1

    :cond_c
    iput-boolean v7, p0, Lcom/oneplus/android/server/iris/sis;->nra:Z

    :cond_d
    :goto_2
    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/sis;->gra:Z

    if-eqz v4, :cond_f

    if-ne v1, v6, :cond_e

    move v1, v2

    :cond_e
    if-ne v1, v5, :cond_f

    move v1, v3

    :cond_f
    sget-boolean v4, Lcom/oneplus/android/server/iris/bio;->DEBUG:Z

    if-eqz v4, :cond_11

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

    iget v9, p0, Lcom/oneplus/android/server/iris/sis;->Vqa:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mDebugPT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->lra:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mMatchMEMC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->_qa:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mMatchSdr2Hdr: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->Zqa:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mIsRecentAnimating:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->ora:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mBatterySaverEnable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->fra:Z

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

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->nra:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mIsAdvancedNative: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/oneplus/android/server/iris/sis;->gra:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " splitScreenMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-boolean v9, v9, Lcom/oneplus/iris/OpIrisWindowInfo;->splitScreenMode:Z

    if-eqz v9, :cond_10

    move v9, v7

    goto :goto_3

    :cond_10
    move v9, v3

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget v4, p0, Lcom/oneplus/android/server/iris/sis;->Vqa:I

    if-ne v4, v1, :cond_12

    monitor-exit p0

    return-void

    :cond_12
    iget-object v4, p0, Lcom/oneplus/android/server/iris/sis;->Uqa:Landroid/os/Handler;

    iget-object v8, p0, Lcom/oneplus/android/server/iris/sis;->rra:Ljava/lang/Runnable;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v1, :cond_1a

    if-eq v1, v7, :cond_19

    if-eq v1, v2, :cond_17

    if-eq v1, v5, :cond_15

    if-eq v1, v6, :cond_13

    goto :goto_7

    :cond_13
    invoke-direct {p0, v7}, Lcom/oneplus/android/server/iris/sis;->Ob(Z)V

    if-ne v0, v5, :cond_14

    move v3, v7

    :cond_14
    invoke-direct {p0, v7, v7, v3}, Lcom/oneplus/android/server/iris/sis;->zta(ZZZ)V

    goto :goto_7

    :cond_15
    invoke-direct {p0, v7}, Lcom/oneplus/android/server/iris/sis;->Ob(Z)V

    if-ne v0, v5, :cond_16

    move v0, v7

    goto :goto_4

    :cond_16
    move v0, v3

    :goto_4
    invoke-direct {p0, v7, v3, v0}, Lcom/oneplus/android/server/iris/sis;->zta(ZZZ)V

    goto :goto_7

    :cond_17
    invoke-direct {p0, v7}, Lcom/oneplus/android/server/iris/sis;->Ob(Z)V

    if-ne v0, v5, :cond_18

    move v0, v7

    goto :goto_5

    :cond_18
    move v0, v3

    :goto_5
    invoke-direct {p0, v3, v7, v0}, Lcom/oneplus/android/server/iris/sis;->zta(ZZZ)V

    goto :goto_7

    :cond_19
    invoke-direct {p0, v3}, Lcom/oneplus/android/server/iris/sis;->Mb(Z)V

    invoke-direct {p0, v3}, Lcom/oneplus/android/server/iris/sis;->Nb(Z)V

    invoke-direct {p0, v3}, Lcom/oneplus/android/server/iris/sis;->Lb(Z)V

    :goto_6
    invoke-direct {p0, v3}, Lcom/oneplus/android/server/iris/sis;->Ob(Z)V

    goto :goto_7

    :cond_1a
    invoke-direct {p0, v3}, Lcom/oneplus/android/server/iris/sis;->Mb(Z)V

    invoke-direct {p0, v3}, Lcom/oneplus/android/server/iris/sis;->Nb(Z)V

    invoke-direct {p0, v7}, Lcom/oneplus/android/server/iris/sis;->Lb(Z)V

    goto :goto_6

    :goto_7
    iput v1, p0, Lcom/oneplus/android/server/iris/sis;->Vqa:I

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

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->mra:Z

    return p1
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/iris/sis;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/sis;->pra:Z

    return p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/iris/sis;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->mv()V

    return-void
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/iris/sis;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->Gb(Z)V

    return-void
.end method

.method private vdw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_e

    if-nez p2, :cond_0

    goto/16 :goto_7

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
    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->wra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->mra:Z

    :cond_2
    iput-object p1, p0, Lcom/oneplus/android/server/iris/sis;->wra:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/sis;->Tc(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->dra:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->era:Z

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/sis;->Yc(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->dra:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->hra:Z

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->era:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->ira:Z

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
    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->hra:Z

    goto :goto_4

    :cond_7
    :goto_3
    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->hra:Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->ira:Z

    :cond_8
    :goto_4
    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/sis;->Rc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->Sc(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->ara:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->cra:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->bra:Z

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/sis;->Xc(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_c

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->ara:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->bra:Z

    if-eqz p1, :cond_b

    :cond_a
    move v1, v2

    :cond_b
    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->jra:Z

    goto :goto_6

    :cond_c
    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->cra:Z

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->kra:Z

    goto :goto_6

    :cond_d
    :goto_5
    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->jra:Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->kra:Z

    :goto_6
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->kv()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Zqa:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->jv()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->_qa:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_e
    :goto_7
    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/iris/sis;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->hv()V

    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/iris/sis;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->ora:Z

    return p1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/iris/sis;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/iris/sis;->Vqa:I

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/iris/sis;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->Gc(I)Ljava/lang/String;

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

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

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
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchSdrAndMEMC sdr2hdrEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " memcEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " needDelay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    invoke-virtual {p3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    iput p1, p3, Landroid/os/Message;->arg1:I

    iput p2, p3, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    const-wide/16 p1, 0x20

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    invoke-direct {p0, p3}, Lcom/oneplus/android/server/iris/sis;->Lb(Z)V

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->Nb(Z)V

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/sis;->Mb(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public N(Z)V
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
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->fra:Z

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

.method public Pf()V
    .locals 2

    const-string v0, "OpIrisManager"

    const-string v1, "setUserPresent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->nra:Z

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->vra:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->ura:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->mv()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public Q(Z)V
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
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->gra:Z

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

    const-string v1, "setGameMemcSwitch enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->cra:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public S(Z)V
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
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->era:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public T(Z)V
    .locals 4

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
    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->nra:Z

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->mv()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/iris/sis;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/iris/sis;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    const-string p1, "OpIrisManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenStatus iskeyguardLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->nra:Z

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public U(Z)V
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
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->bra:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->mTimer:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v0, p1}, Lcom/oneplus/android/server/iris/kth;->P(Z)V

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->mv()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public V(Z)V
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
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->ara:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public W(Z)V
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
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->dra:Z

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

    const-string v0, ""

    if-eqz p2, :cond_3

    array-length v1, p2

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " args[0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OpIrisManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v1, p2, v2

    const-string v3, "-whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "------------WhitList Version----------------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v1}, Lcom/oneplus/android/server/iris/dma;->getVersion()J

    move-result-wide v3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " version: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " url: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v3}, Lcom/oneplus/android/server/iris/dma;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "------------Sdr2Hdr App Info----------------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v1}, Lcom/oneplus/android/server/iris/dma;->Wf()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v3}, Lcom/oneplus/android/server/iris/dma;->Uf()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v4}, Lcom/oneplus/android/server/iris/dma;->Vf()Ljava/util/HashMap;

    move-result-object v4

    move v5, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v7, " appType: "

    const-string v8, " package: "

    if-ge v5, v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "------------Memc App Info----------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/dma;->Tf()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v1}, Lcom/oneplus/android/server/iris/dma;->getMemcAppTypeMap()Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v3}, Lcom/oneplus/android/server/iris/dma;->getMemcRateMap()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "package info: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v2

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

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/dma;->Sf()Ljava/util/ArrayList;

    move-result-object v0

    move v1, v2

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    aget-object p1, p2, v2

    const-string p2, "-pt"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->lra:Z

    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio;->Qqa:Lcom/oneplus/android/server/iris/ssp;

    const-string p1, "56-0"

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/ssp;->setIrisCommand(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    const-string p2, "Iris Status Manager:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "------------App Info----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " current package: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " current activity: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->wra:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " match sdr2hdr whitelist: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/iris/sis;->Tc(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " match memc whitelist: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->wra:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/iris/sis;->Sc(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " app type: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/iris/sis;->Vc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " memc effect: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->mCurrentPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/iris/sis;->Wc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "------------Iris Status----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " iris mode: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/iris/sis;->Vqa:I

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/iris/sis;->Gc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " video memc enable: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->jra:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " game memc enable: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->kra:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " video sdr2hdr enable: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->hra:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " game sdr2hdr enable: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->ira:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "------------System Status----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " userHandle: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/iris/sis;->mUserHandle:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " userPresent: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->nra:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " keyguard locked: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " battery saver enable: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->fra:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " rencent is animating: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->ora:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "------------Settings Value----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " video memc 60HZ switch: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->ara:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " video memc 120Hz switch: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->bra:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " video sdr2hdr switch: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->dra:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " game memc switch: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->cra:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " game sdr2hdr switch: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->era:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mTimer:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/kth;->dump(Ljava/io/PrintWriter;)V

    :cond_4
    :goto_3
    return-void
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
    iget-object p2, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iput-object p1, p2, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    iget-object p2, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    const-string p3, ""

    iput-object p3, p2, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    const-string p2, "OpIrisManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "frontPackageChanged packageName = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p4, p4, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " activityName = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p4, p4, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean p2, p0, Lcom/oneplus/android/server/iris/sis;->Wqa:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/oneplus/android/server/iris/sis;->Xqa:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/oneplus/android/server/iris/sis;->_qa:Z

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

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

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

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/dma;->getMemcRateMap()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public getPreferedModeId(I)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->ara:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->bra:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->cra:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return p1

    :cond_0
    iget v0, p0, Lcom/oneplus/android/server/iris/sis;->Vqa:I

    if-nez v0, :cond_1

    monitor-exit p0

    return p1

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->nra:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/sis;->_qa:Z

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

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/sis;->nra:Z

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

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->Tqa:Lcom/oneplus/android/server/iris/dma;

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

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/sis;->ora:Z

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

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->sra:Lcom/oneplus/android/server/iris/sis$sis;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->sra:Lcom/oneplus/android/server/iris/sis$sis;

    iput-boolean p1, v0, Lcom/oneplus/android/server/iris/sis$sis;->Mpa:Z

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->mHandler:Lcom/oneplus/android/server/iris/sis$you;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->ora:Z

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

    iget-object p0, p0, Lcom/oneplus/android/server/iris/sis;->Sqa:Lcom/oneplus/android/server/iris/qbh;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/qbh;->onBootComplete()V

    return-void
.end method

.method public postDisplayModeChange(I)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/bio;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postDisplayModeChange modeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpIrisManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->iv()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->nv()V

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
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->iv()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->vra:Ljava/lang/String;

    iget-object v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->ura:Ljava/lang/String;

    const-string v0, "com.android.systemui/com.android.systemui.pip.phone.PipMenuActivity"

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, v1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/oneplus/android/server/iris/sis;->mUserHandle:I

    if-eqz v0, :cond_3

    const-string v0, "SCREEN OFF"

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, v1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v0, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, v1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/iris/sis;->vdw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    iget-object v1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :goto_2
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->lv()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->jv()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/sis;->nv()V

    :cond_5
    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/sis;->zta(Lcom/oneplus/iris/OpIrisWindowInfo;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_3
    return-void
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

    iput-object v0, p0, Lcom/oneplus/android/server/iris/sis;->xra:Lcom/oneplus/display/IOneplusColorDisplayManager;

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
    iget-object p2, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

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

    iget-object p3, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p3, p3, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " activityName = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p3, p3, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Wqa:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->Xqa:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/sis;->_qa:Z

    if-eqz p1, :cond_3

    :cond_2
    const-string p1, "com.android.systemui/com.android.systemui.pip.phone.PipMenuActivity"

    iget-object p2, p0, Lcom/oneplus/android/server/iris/sis;->tra:Lcom/oneplus/iris/OpIrisWindowInfo;

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
