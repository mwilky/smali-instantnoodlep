.class Lcom/android/server/am/AppRecordTransition$zta;
.super Lcom/android/server/am/rtg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRecordTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppRecordTransition;


# direct methods
.method private constructor <init>(Lcom/android/server/am/AppRecordTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-direct {p0}, Lcom/android/server/am/rtg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/AppRecordTransition;Lcom/android/server/am/wtn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordTransition$zta;-><init>(Lcom/android/server/am/AppRecordTransition;)V

    return-void
.end method


# virtual methods
.method public noteBluetoothConnectedChanged(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteBluetoothConnectedChanged  packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isConnetcted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/gck;->Xn:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {v0, p1}, Lcom/android/server/am/AppRecordTransition;->access$400(Lcom/android/server/am/AppRecordTransition;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    iget-object v0, v0, Lcom/android/server/am/AppRecordTransition;->mBluetoothList:Ljava/util/Set;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    iget-object p2, p2, Lcom/android/server/am/AppRecordTransition;->mBluetoothList:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    iget-object p2, p2, Lcom/android/server/am/AppRecordTransition;->mBluetoothList:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordTransition;->access$500(Lcom/android/server/am/AppRecordTransition;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p2, "com.bluetooth.resetAll"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/high16 v1, 0x20000

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    iget-object p1, p1, Lcom/android/server/am/AppRecordTransition;->mBluetoothList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(Ljava/lang/String;)Lcom/android/server/am/tsu;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/tsu;->fto(I)V

    iget-object v2, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {v2, p2}, Lcom/android/server/am/AppRecordTransition;->access$500(Lcom/android/server/am/AppRecordTransition;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition;->mBluetoothList:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->getAppRecord(Ljava/lang/String;)Lcom/android/server/am/tsu;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/server/am/tsu;->fto(I)V

    iget-object p2, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p2, p1}, Lcom/android/server/am/AppRecordTransition;->access$500(Lcom/android/server/am/AppRecordTransition;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition;->mBluetoothList:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_2
    return-void
.end method

.method public noteFreezeStateChange(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteFreezeStateChange  uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isFreeze = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/server/am/gck;->Xn:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p2, p1}, Lcom/android/server/am/AppRecordTransition;->access$600(Lcom/android/server/am/AppRecordTransition;I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/android/server/am/AppRecordTransition;->access$100(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordTransition;->access$700(Lcom/android/server/am/AppRecordTransition;I)V

    :cond_0
    return-void
.end method

.method public noteFrontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteFrontPackageChanged  packageName  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lpackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " luid = "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " lpid = "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    sget-boolean p4, Lcom/android/server/am/gck;->Xn:Z

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p4, p1}, Lcom/android/server/am/AppRecordTransition;->access$400(Lcom/android/server/am/AppRecordTransition;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    invoke-static {p2}, Lcom/android/server/am/AppRecordTransition;->access$100(I)I

    move-result p2

    invoke-static {p2, p3}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/H;

    move-result-object p5

    iget-object p6, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    iget-object p6, p6, Lcom/android/server/am/AppRecordTransition;->mProcList:Ljava/util/Set;

    monitor-enter p6

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p5, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    iget-object v1, v1, Lcom/android/server/am/AppRecordTransition;->mProcList:Ljava/util/Set;

    iget-object v2, p5, Lcom/android/server/am/H;->SG:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    iget-object v1, v1, Lcom/android/server/am/AppRecordTransition;->mProcList:Ljava/util/Set;

    iget-object p5, p5, Lcom/android/server/am/H;->SG:Ljava/lang/String;

    invoke-interface {v1, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4, v0}, Lcom/android/server/am/tsu;->oxb(I)V

    :cond_0
    monitor-exit p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p0, p2, p3, p1}, Lcom/android/server/am/AppRecordTransition;->access$800(Lcom/android/server/am/AppRecordTransition;IILjava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/server/am/tsu;->getFlag()I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    invoke-virtual {p4, v0}, Lcom/android/server/am/tsu;->fto(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public notePSSChanged(II)V
    .locals 9

    sget-boolean v0, Lcom/android/server/am/gck;->Xn:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/AppRecordTransition;->access$200(Lcom/android/server/am/AppRecordTransition;II)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRecordTransition;->isPersistProcess(II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/H;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/server/am/AppRecordTransition;->access$100(I)I

    move-result v3

    invoke-static {v3, p2}, Lcom/android/server/am/AppRecordManager;->getPackageName(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/am/H;->getPss()J

    move-result-wide v7

    iget-object v2, v0, Lcom/android/server/am/H;->SG:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v4, "com.tencent.mm:appbrand"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/server/am/H;->SG:Ljava/lang/String;

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    move v4, p2

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppRecordTransition;->createPssUpdate(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/am/AppRecordTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notePSSChanged + uid = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pid = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "pss = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public notePredctionAppChanged(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notePredctionAppChanged  packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isPredctionApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/server/am/gck;->Xn:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p2, p1}, Lcom/android/server/am/AppRecordTransition;->access$400(Lcom/android/server/am/AppRecordTransition;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordTransition;->access$500(Lcom/android/server/am/AppRecordTransition;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public noteProcessStateChanged(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteProcessStateChanged  uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isProcessStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    const-string v0, "com.tencent.mm:appbrand"

    const/4 v1, 0x0

    if-eqz p5, :cond_4

    sget-boolean p5, Lcom/android/server/am/gck;->Xn:Z

    if-nez p5, :cond_3

    iget-object p5, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p5, p3}, Lcom/android/server/am/AppRecordTransition;->access$400(Lcom/android/server/am/AppRecordTransition;Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_3

    iget-object p5, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-virtual {p5, p1, p2}, Lcom/android/server/am/AppRecordTransition;->isPersistProcess(II)Z

    move-result p5

    if-nez p5, :cond_3

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object p5

    const/4 v2, 0x0

    if-eqz p5, :cond_2

    invoke-virtual {p5, p2}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/H;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz p4, :cond_0

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p3, p4

    :cond_0
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p5, p2}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/H;

    move-result-object p4

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Lcom/android/server/am/H;->oxb(I)V

    :cond_1
    invoke-virtual {p5, p2}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/H;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/am/H;->getFlag()I

    move-result v2

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-virtual {p0, p3, p1, p2, v2}, Lcom/android/server/am/AppRecordTransition;->createProcessStart(Ljava/lang/String;III)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_3
    move-object p0, v1

    goto :goto_0

    :cond_4
    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    if-eqz p4, :cond_5

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_5

    move-object p3, p4

    :cond_5
    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/am/AppRecordTransition;->createProcessRemove(Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "com.oneplus.omm"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "LOMM-AppRecordTransition"

    const-string p2, "omm is died we need disable omm"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "persist.vendor.omm.restart"

    const-string p2, "true"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    :cond_6
    :goto_0
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/server/am/AppRecordTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_7
    return-void
.end method

.method public noteUserLockAppChanged(Ljava/lang/String;IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteUserLockAppChanged  packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isUserLock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    sget-boolean p3, Lcom/android/server/am/gck;->Xn:Z

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordTransition;->access$400(Lcom/android/server/am/AppRecordTransition;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2, p1}, Lcom/android/server/am/AppRecordTransition;->createAppStateBM(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public you(IIZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteVideoChanged + uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " using = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    sget-boolean p3, Lcom/android/server/am/gck;->Xn:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p3, p1, p2}, Lcom/android/server/am/AppRecordTransition;->access$200(Lcom/android/server/am/AppRecordTransition;II)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/am/AppRecordTransition;->isPersistProcess(II)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/android/server/am/AppRecordTransition;->access$100(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppRecordTransition;->access$300(Lcom/android/server/am/AppRecordTransition;II)V

    :cond_0
    return-void
.end method

.method public you(ILjava/lang/String;Z)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "noteGpsChanged + uid = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "packageName"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " using = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/am/gck;->Xn:Z

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/server/am/AppRecordTransition;->access$100(I)I

    move-result p0

    invoke-static {p0, p2}, Lcom/android/server/am/AppRecordTransition;->createAppStateBM(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public zta(IIZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteAudioChanged + uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " using = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    sget-boolean p3, Lcom/android/server/am/gck;->Xn:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p3, p1, p2}, Lcom/android/server/am/AppRecordTransition;->access$200(Lcom/android/server/am/AppRecordTransition;II)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/am/AppRecordTransition;->isPersistProcess(II)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/android/server/am/AppRecordTransition;->access$100(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppRecordTransition;->access$300(Lcom/android/server/am/AppRecordTransition;II)V

    :cond_0
    return-void
.end method

.method public zta(ILjava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteTrafficChanged + uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " using = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    sget-boolean p3, Lcom/android/server/am/gck;->Xn:Z

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p0, p2}, Lcom/android/server/am/AppRecordTransition;->access$400(Lcom/android/server/am/AppRecordTransition;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/server/am/AppRecordTransition;->access$100(I)I

    move-result p0

    invoke-static {p0, p2}, Lcom/android/server/am/AppRecordTransition;->createAppStateBM(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public zta(Ljava/lang/String;IIZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteShowStateChanged  packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " isShowing = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    sget-boolean p3, Lcom/android/server/am/gck;->Xn:Z

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordTransition;->access$400(Lcom/android/server/am/AppRecordTransition;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2, p1}, Lcom/android/server/am/AppRecordTransition;->createAppStateBM(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public zta(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteHighUsedAppChanged  packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isHighUsedApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/server/am/gck;->Xn:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p2, p1}, Lcom/android/server/am/AppRecordTransition;->access$400(Lcom/android/server/am/AppRecordTransition;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$zta;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordTransition;->access$500(Lcom/android/server/am/AppRecordTransition;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
