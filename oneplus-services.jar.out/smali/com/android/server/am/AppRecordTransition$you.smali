.class Lcom/android/server/am/AppRecordTransition$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$zta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRecordTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppRecordTransition;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppRecordTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frontActivityChanged activityName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " packageName = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uid = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pid = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/gck;->a(Ljava/lang/String;)V

    const-string p1, "com.tencent.mm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    const/high16 v0, 0x20000000

    const/16 v1, 0x800

    if-eqz p1, :cond_4

    invoke-static {p3, p4}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1, p4}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/H;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v2, p1, Lcom/android/server/am/H;->SG:Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v3, "com.tencent.mm:appbrand"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1, v1}, Lcom/android/server/am/H;->oxb(I)V

    invoke-virtual {p1, v0}, Lcom/android/server/am/H;->oxb(I)V

    invoke-virtual {p1}, Lcom/android/server/am/H;->getFlag()I

    move-result v2

    iget-object p1, p1, Lcom/android/server/am/H;->SG:Ljava/lang/String;

    int-to-long v2, v2

    invoke-static {p1, p3, p4, v2, v3}, Lcom/android/server/am/AppRecordTransition;->createAppStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p1}, Lcom/android/server/am/AppRecordTransition;->access$1000(Lcom/android/server/am/AppRecordTransition;)I

    move-result p1

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p1}, Lcom/android/server/am/AppRecordTransition;->access$1100(Lcom/android/server/am/AppRecordTransition;)I

    move-result p1

    if-eq p1, p4, :cond_7

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p1}, Lcom/android/server/am/AppRecordTransition;->access$1000(Lcom/android/server/am/AppRecordTransition;)I

    move-result p1

    iget-object v2, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {v2}, Lcom/android/server/am/AppRecordTransition;->access$1100(Lcom/android/server/am/AppRecordTransition;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p1, p3}, Lcom/android/server/am/AppRecordTransition;->access$1002(Lcom/android/server/am/AppRecordTransition;I)I

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p0, p4}, Lcom/android/server/am/AppRecordTransition;->access$1102(Lcom/android/server/am/AppRecordTransition;I)I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {v2}, Lcom/android/server/am/AppRecordTransition;->access$1100(Lcom/android/server/am/AppRecordTransition;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/H;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/H;->getFlag()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Lcom/android/server/am/H;->fto(I)V

    invoke-virtual {p1, v0}, Lcom/android/server/am/H;->fto(I)V

    invoke-virtual {p1}, Lcom/android/server/am/H;->getFlag()I

    move-result v0

    iget-object p1, p1, Lcom/android/server/am/H;->SG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {v1}, Lcom/android/server/am/AppRecordTransition;->access$1000(Lcom/android/server/am/AppRecordTransition;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {v2}, Lcom/android/server/am/AppRecordTransition;->access$1100(Lcom/android/server/am/AppRecordTransition;)I

    move-result v2

    int-to-long v3, v0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/server/am/AppRecordTransition;->createAppStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_3
    iget-object p1, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p1, p3}, Lcom/android/server/am/AppRecordTransition;->access$1002(Lcom/android/server/am/AppRecordTransition;I)I

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p0, p4}, Lcom/android/server/am/AppRecordTransition;->access$1102(Lcom/android/server/am/AppRecordTransition;I)I

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p1}, Lcom/android/server/am/AppRecordTransition;->access$1000(Lcom/android/server/am/AppRecordTransition;)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_7

    iget-object p1, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p1}, Lcom/android/server/am/AppRecordTransition;->access$1100(Lcom/android/server/am/AppRecordTransition;)I

    move-result p1

    if-eq p1, p3, :cond_7

    iget-object p1, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p1}, Lcom/android/server/am/AppRecordTransition;->access$1000(Lcom/android/server/am/AppRecordTransition;)I

    move-result p1

    iget-object p4, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p4}, Lcom/android/server/am/AppRecordTransition;->access$1100(Lcom/android/server/am/AppRecordTransition;)I

    move-result p4

    invoke-static {p1, p4}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p1, p3}, Lcom/android/server/am/AppRecordTransition;->access$1002(Lcom/android/server/am/AppRecordTransition;I)I

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p0, p3}, Lcom/android/server/am/AppRecordTransition;->access$1102(Lcom/android/server/am/AppRecordTransition;I)I

    return-void

    :cond_5
    iget-object p4, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p4}, Lcom/android/server/am/AppRecordTransition;->access$1100(Lcom/android/server/am/AppRecordTransition;)I

    move-result p4

    invoke-virtual {p1, p4}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/H;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/am/H;->getFlag()I

    move-result p4

    and-int/2addr p4, v1

    if-eqz p4, :cond_6

    invoke-virtual {p1, v1}, Lcom/android/server/am/H;->fto(I)V

    invoke-virtual {p1, v0}, Lcom/android/server/am/H;->fto(I)V

    invoke-virtual {p1}, Lcom/android/server/am/H;->getFlag()I

    move-result p4

    iget-object p1, p1, Lcom/android/server/am/H;->SG:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {v0}, Lcom/android/server/am/AppRecordTransition;->access$1000(Lcom/android/server/am/AppRecordTransition;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {v1}, Lcom/android/server/am/AppRecordTransition;->access$1100(Lcom/android/server/am/AppRecordTransition;)I

    move-result v1

    int-to-long v2, p4

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/AppRecordTransition;->createAppStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_6
    iget-object p1, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p1, p3}, Lcom/android/server/am/AppRecordTransition;->access$1002(Lcom/android/server/am/AppRecordTransition;I)I

    iget-object p0, p0, Lcom/android/server/am/AppRecordTransition$you;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p0, p3}, Lcom/android/server/am/AppRecordTransition;->access$1102(Lcom/android/server/am/AppRecordTransition;I)I

    :cond_7
    :goto_0
    return-void
.end method
