.class Lcom/android/server/wifi/cno;
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

    iput-object p1, p0, Lcom/android/server/wifi/cno;->this$0:Lcom/android/server/wifi/ire;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/wifi/cno;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->wtn(Lcom/android/server/wifi/ire;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "sla_game_mark"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/wifi/ire;->rtg(Lcom/android/server/wifi/ire;I)V

    return-void
.end method
