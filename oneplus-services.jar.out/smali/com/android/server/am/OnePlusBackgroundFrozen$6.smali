.class Lcom/android/server/am/OnePlusBackgroundFrozen$6;
.super Landroid/app/IProcessObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/les;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/les;


# direct methods
.method constructor <init>(Lcom/android/server/am/les;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$6;->this$0:Lcom/android/server/am/les;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0

    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0

    return-void
.end method

.method public onProcessDied(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/les;->access$300()Lcom/android/server/am/les;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/android/server/am/les;->j(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event onProcessDied uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " |pid:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/les;->tsu(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
