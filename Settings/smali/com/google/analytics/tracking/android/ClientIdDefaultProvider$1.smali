.class Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;
.super Ljava/lang/Thread;
.source "ClientIdDefaultProvider.java"


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;->this$0:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;->this$0:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->access$000(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;->this$0:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;->this$0:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->initializeClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->access$102(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;->this$0:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->access$202(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Z)Z

    iget-object p0, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;->this$0:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    invoke-static {p0}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->access$000(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
