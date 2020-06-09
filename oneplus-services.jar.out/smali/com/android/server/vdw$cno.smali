.class Lcom/android/server/vdw$cno;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vdw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "cno"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vdw;


# direct methods
.method constructor <init>(Lcom/android/server/vdw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vdw$cno;->this$0:Lcom/android/server/vdw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2

    invoke-static {}, Lcom/android/server/vdw;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CommonFrontMonitor"

    const-string v1, "updateConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/vdw$cno;->this$0:Lcom/android/server/vdw;

    invoke-static {p0, p1}, Lcom/android/server/vdw;->you(Lcom/android/server/vdw;Lorg/json/JSONArray;)V

    return-void
.end method
