.class Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "OPProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/OPProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/OPProgressBar;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/OPProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/OPProgressBar;Lcom/oneplus/lib/widget/OPProgressBar$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;-><init>(Lcom/oneplus/lib/widget/OPProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-static {v1}, Lcom/oneplus/lib/widget/OPProgressBar;->access$100(Lcom/oneplus/lib/widget/OPProgressBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-static {v4}, Lcom/oneplus/lib/widget/OPProgressBar;->access$100(Lcom/oneplus/lib/widget/OPProgressBar;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;

    iget-object v5, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    iget v6, v4, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->id:I

    iget v7, v4, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->progress:I

    iget-boolean v8, v4, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->fromUser:Z

    const/4 v9, 0x1

    iget-boolean v10, v4, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->animate:Z

    invoke-static/range {v5 .. v10}, Lcom/oneplus/lib/widget/OPProgressBar;->access$200(Lcom/oneplus/lib/widget/OPProgressBar;IIZZZ)V

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->recycle()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-static {v1}, Lcom/oneplus/lib/widget/OPProgressBar;->access$100(Lcom/oneplus/lib/widget/OPProgressBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-static {p0, v2}, Lcom/oneplus/lib/widget/OPProgressBar;->access$302(Lcom/oneplus/lib/widget/OPProgressBar;Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
