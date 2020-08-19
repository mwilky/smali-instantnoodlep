.class public Lcom/oneplus/android/server/iris/ssp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/iris/ssp$zta;
    }
.end annotation


# static fields
.field private static final Cqa:I = -0x7f7d7e8e

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OpIrisConfigController"


# instance fields
.field private Bqa:Lsis/sis/zta/zta/zta/sis;

.field private final mCallback:Lcom/oneplus/android/server/iris/ssp$zta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/iris/ssp;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/android/server/iris/ssp$zta;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/android/server/iris/ssp$zta;-><init>(Lcom/oneplus/android/server/iris/ssp;Lcom/oneplus/android/server/iris/rtg;)V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/ssp;->mCallback:Lcom/oneplus/android/server/iris/ssp$zta;

    return-void
.end method

.method private cno(I[II)I
    .locals 7

    const/4 v0, -0x1

    const-string v1, "OpIrisConfigController"

    if-ltz p1, :cond_5

    if-eqz p2, :cond_5

    array-length v2, p2

    if-ge v2, p3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p3, :cond_1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aget v6, p2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Set %3d = (%d,%d)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/android/server/iris/ssp;->Bqa:Lsis/sis/zta/zta/zta/sis;

    if-nez v3, :cond_2

    invoke-static {}, Lsis/sis/zta/zta/zta/sis;->getService()Lsis/sis/zta/zta/zta/sis;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/android/server/iris/ssp;->Bqa:Lsis/sis/zta/zta/zta/sis;

    :cond_2
    iget-object v3, p0, Lcom/oneplus/android/server/iris/ssp;->Bqa:Lsis/sis/zta/zta/zta/sis;

    if-nez v3, :cond_3

    const-string p0, "Can\'t get IIris"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    array-length p3, p2

    if-ge v2, p3, :cond_4

    aget p3, p2, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/oneplus/android/server/iris/ssp;->Bqa:Lsis/sis/zta/zta/zta/sis;

    invoke-interface {p0, p1, v3}, Lsis/sis/zta/zta/zta/sis;->sis(ILjava/util/ArrayList;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Access IIris failed"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :cond_5
    :goto_2
    const-string p0, "Input parameters are wrong."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private ssp(I[II)I
    .locals 4

    const/4 v0, -0x1

    if-ltz p1, :cond_6

    if-eqz p2, :cond_6

    array-length v1, p2

    if-ge v1, p3, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->Bqa:Lsis/sis/zta/zta/zta/sis;

    if-nez v1, :cond_1

    invoke-static {}, Lsis/sis/zta/zta/zta/sis;->getService()Lsis/sis/zta/zta/zta/sis;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->Bqa:Lsis/sis/zta/zta/zta/sis;

    :cond_1
    iget-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->Bqa:Lsis/sis/zta/zta/zta/sis;

    if-nez v1, :cond_2

    const-string p1, "OpIrisConfigController"

    const-string p2, "Can\'t get IIris"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    monitor-exit p0

    return p1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p3, 0x0

    move v2, p3

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_3

    aget v3, p2, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/oneplus/android/server/iris/ssp;->Bqa:Lsis/sis/zta/zta/zta/sis;

    iget-object v3, p0, Lcom/oneplus/android/server/iris/ssp;->mCallback:Lcom/oneplus/android/server/iris/ssp$zta;

    invoke-interface {v2, p1, v1, v3}, Lsis/sis/zta/zta/zta/sis;->zta(ILjava/util/ArrayList;Lsis/sis/zta/zta/zta/sis$tsu;)V

    iget-object p1, p0, Lcom/oneplus/android/server/iris/ssp;->mCallback:Lcom/oneplus/android/server/iris/ssp$zta;

    invoke-virtual {p1}, Lcom/oneplus/android/server/iris/ssp$zta;->getValues()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "OpIrisConfigController"

    const-string p2, "result arraylist is null"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x3

    monitor-exit p0

    return p1

    :cond_4
    array-length p1, p2

    iget-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->mCallback:Lcom/oneplus/android/server/iris/ssp$zta;

    invoke-virtual {v1}, Lcom/oneplus/android/server/iris/ssp$zta;->getValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    if-ge p3, p1, :cond_5

    iget-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->mCallback:Lcom/oneplus/android/server/iris/ssp$zta;

    invoke-virtual {v1}, Lcom/oneplus/android/server/iris/ssp$zta;->getValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/oneplus/android/server/iris/ssp;->mCallback:Lcom/oneplus/android/server/iris/ssp$zta;

    invoke-virtual {p1}, Lcom/oneplus/android/server/iris/ssp$zta;->getResult()I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "OpIrisConfigController"

    const-string p2, "Access IIris failed"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :cond_6
    :goto_2
    const-string p0, "OpIrisConfigController"

    const-string p1, "Input parameters are wrong."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public Of()I
    .locals 1

    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/iris/ssp;->getIrisCommand(I)I

    move-result p0

    return p0
.end method

.method public getIrisCommand(I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    array-length v1, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/android/server/iris/ssp;->ssp(I[II)I

    move-result p0

    if-gez p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getIrisCommand Failed and result :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpIrisConfigController"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const/4 p0, 0x0

    aget p0, v0, p0

    return p0
.end method

.method public setIrisCommand(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIrisCommand cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisConfigController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "setIrisCommand Failed, cmd string is empty"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [I

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_3

    add-int/lit8 v4, v0, 0x1

    aget-object v5, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v0

    move v0, v4

    goto :goto_0

    :cond_3
    array-length p1, v3

    invoke-direct {p0, v2, v3, p1}, Lcom/oneplus/android/server/iris/ssp;->cno(I[II)I

    move-result p0

    if-gez p0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setIrisCommand Failed and result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public zta(Lsis/sis/zta/zta/zta/cno$you;)V
    .locals 3

    const-string v0, "OpIrisConfigController"

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->Bqa:Lsis/sis/zta/zta/zta/sis;

    if-nez v1, :cond_0

    invoke-static {}, Lsis/sis/zta/zta/zta/sis;->getService()Lsis/sis/zta/zta/zta/sis;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->Bqa:Lsis/sis/zta/zta/zta/sis;

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->Bqa:Lsis/sis/zta/zta/zta/sis;

    if-eqz v1, :cond_1

    const-string v1, "register iris callback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/iris/ssp;->Bqa:Lsis/sis/zta/zta/zta/sis;

    const-wide/32 v1, -0x7f7d7e8e

    invoke-interface {p0, v1, v2, p1}, Lsis/sis/zta/zta/zta/sis;->zta(JLsis/sis/zta/zta/zta/cno;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Access IIris failed"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
