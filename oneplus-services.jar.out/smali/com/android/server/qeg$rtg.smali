.class Lcom/android/server/qeg$rtg;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/qeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "rtg"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/qeg;


# direct methods
.method public constructor <init>(Lcom/android/server/qeg;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/qeg$rtg;->this$0:Lcom/android/server/qeg;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/qeg;->access$500()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CommonFrontMonitor"

    const-string v0, "[SMART5G] Smart5GWhitelistContentObserver whitelist changed !!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/qeg$rtg;->this$0:Lcom/android/server/qeg;

    invoke-static {p0}, Lcom/android/server/qeg;->sis(Lcom/android/server/qeg;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
