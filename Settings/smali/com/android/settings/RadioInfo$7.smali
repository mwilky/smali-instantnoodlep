.class Lcom/android/settings/RadioInfo$7;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;

.field final synthetic val$updatePingResults:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RadioInfo$7;->this$0:Lcom/android/settings/RadioInfo;

    iput-object p2, p0, Lcom/android/settings/RadioInfo$7;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RadioInfo$7;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$3300(Lcom/android/settings/RadioInfo;)V

    iget-object v0, p0, Lcom/android/settings/RadioInfo$7;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$2500(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/RadioInfo$7;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
