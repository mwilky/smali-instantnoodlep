.class Lcom/android/server/am/ssp$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ssp;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ssp;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private bio(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pkg"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "using"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->GPS:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/qbh;

    invoke-interface {v2, v0, v1, p1}, Lcom/android/server/am/qbh;->you(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bvj(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "pid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "isShowing"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v3, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v3}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v4, Lcom/android/server/am/AppRecordManager$ListenerType;->qza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/qbh;

    if-eqz v4, :cond_0

    invoke-interface {v4, v0, v1, v2, p1}, Lcom/android/server/am/qbh;->zta(Ljava/lang/String;IIZ)V

    goto :goto_0

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private cno(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "isFreeze"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->mza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/qbh;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/qbh;->noteFreezeStateChange(IZ)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private dma(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "procState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->hza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/qbh;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/qbh;->ssp(II)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private gck(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isPredctionApp"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->kza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/qbh;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/qbh;->notePredctionAppChanged(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private gwm(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pkg"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "using"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->uza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/qbh;

    invoke-interface {v2, v0, v1, p1}, Lcom/android/server/am/qbh;->tsu(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ibl(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pkg"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "using"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->TRAFFIC:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/qbh;

    invoke-interface {v2, v0, v1, p1}, Lcom/android/server/am/qbh;->zta(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private igw(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isHighUsedApp"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->lza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/qbh;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/qbh;->zta(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private kth(Landroid/os/Bundle;)V
    .locals 13

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v1, "pkg"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "luid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v1, "lpid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v1, "lpkg"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->oza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/qbh;

    move-object v2, v9

    move v3, v0

    move v4, v8

    move-object v5, p1

    move v6, v10

    move v7, v11

    invoke-interface/range {v1 .. v7}, Lcom/android/server/am/qbh;->noteFrontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V

    goto :goto_0

    :cond_0
    monitor-exit v12

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private obl(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "using"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->VIDEO:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/qbh;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/qbh;->rtg(IZ)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private oif(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "using"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->SENSOR:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/qbh;

    invoke-interface {v1, v0, p1}, Lcom/android/server/am/qbh;->sis(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private oxb(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "using"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v2, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v2}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->tza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/qbh;

    invoke-interface {v3, v0, v1, p1}, Lcom/android/server/am/qbh;->you(IIZ)V

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private qbh(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "using"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->vza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/qbh;

    invoke-interface {v1, v0, p1}, Lcom/android/server/am/qbh;->ssp(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private rtg(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "using"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->CAMERA:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/qbh;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/qbh;->cno(IZ)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sis(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "using"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v2, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v2}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->sza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/qbh;

    invoke-interface {v3, v0, v1, p1}, Lcom/android/server/am/qbh;->zta(IIZ)V

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private ssp(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "using"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->FLASHLIGHT:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/qbh;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/qbh;->tsu(IZ)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private tsu(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isConnected"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->rza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/qbh;

    invoke-interface {v1, v0, p1}, Lcom/android/server/am/qbh;->noteBluetoothConnectedChanged(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ugm(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->iza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/qbh;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/qbh;->rtg(II)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private vdb(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "isUserLock"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v2, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v2}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->pza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/qbh;

    if-eqz v3, :cond_0

    invoke-interface {v3, v0, v1, p1}, Lcom/android/server/am/qbh;->noteUserLockAppChanged(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private wtn(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->jza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/qbh;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/qbh;->notePSSChanged(II)V

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private you(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "using"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->AUDIO:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/qbh;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/qbh;->you(IZ)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private ywr(Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v1, "pkg"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "procName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "isProcessStart"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->nza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/qbh;

    move v2, v0

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/server/am/qbh;->noteProcessStateChanged(IILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private zgw(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "using"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->VIBRATOR:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/qbh;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/qbh;->kth(IZ)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/android/server/am/ssp;->access$000(ILjava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "AppRecordManager"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", data is null!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->GPS:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->bio(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->TRAFFIC:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->ibl(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->SENSOR:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->oif(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->vza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->qbh(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->AUDIO:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->you(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->VIDEO:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_6

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->obl(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->CAMERA:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_7

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->rtg(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_7
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->FLASHLIGHT:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_8

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->ssp(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_8
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->VIBRATOR:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_9

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->zgw(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_9
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->hza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_a

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->dma(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_a
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->iza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_b

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->ugm(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_b
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->jza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_c

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->wtn(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_c
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->kza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_d

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->gck(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_d
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->lza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_e

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->igw(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_e
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->mza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_f

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->cno(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_f
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->nza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_10

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->ywr(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_10
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->oza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_11

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->kth(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_11
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->pza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_12

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->vdb(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_12
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->qza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_13

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->bvj(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_13
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->rza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_14

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->tsu(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_14
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->sza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_15

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->sis(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_15
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->tza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_16

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->oxb(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_16
    iget p1, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->uza:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v1}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v1

    if-ne p1, v1, :cond_17

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->gwm(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_17
    const-string p0, "error for reviced UNKNOW type!"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
