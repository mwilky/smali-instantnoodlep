.class Lcom/android/server/wifi/gwm;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/ire;->bvj(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bFa:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/android/server/wifi/ire;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ire;Landroid/widget/Toast;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/gwm;->this$0:Lcom/android/server/wifi/ire;

    iput-object p2, p0, Lcom/android/server/wifi/gwm;->bFa:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wifi/gwm;->bFa:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    return-void
.end method
