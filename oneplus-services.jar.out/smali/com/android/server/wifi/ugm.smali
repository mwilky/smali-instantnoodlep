.class Lcom/android/server/wifi/ugm;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/ire;->registerSettingsCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/ire;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ire;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/ugm;->this$0:Lcom/android/server/wifi/ire;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/android/server/wifi/ugm;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->d(Lcom/android/server/wifi/ire;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/server/wifi/ugm;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {v0}, Lcom/android/server/wifi/ire;->j(Lcom/android/server/wifi/ire;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oneTimeNofity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " slaDownloadSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpSlaNetlinkHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/ugm;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {v1}, Lcom/android/server/wifi/ire;->q(Lcom/android/server/wifi/ire;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wifi/ugm;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->zta(Lcom/android/server/wifi/ire;)V

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wifi/ugm;->this$0:Lcom/android/server/wifi/ire;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/wifi/ire;->zta(Lcom/android/server/wifi/ire;Z)V

    :cond_0
    return-void
.end method
