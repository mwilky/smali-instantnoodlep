.class Lcom/oneplus/settings/apploader/OPApplicationLoader$4;
.super Ljava/lang/Object;
.source "OPApplicationLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;ILandroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iput p2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->val$type:I

    iput-object p3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHasShowProgress:Z

    new-instance v2, Lcom/oneplus/settings/apploader/OPApplicationLoader$1;

    invoke-direct {v2, v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader$1;-><init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V

    iput-object v2, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mShowPromptRunnable:Ljava/lang/Runnable;

    iget-object v2, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    iget-object v0, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mShowPromptRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoading:Z

    iget v2, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const/16 v3, 0x3ec

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadGameApp()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget v2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->val$type:I

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadAppListByType(I)V

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iput-boolean v1, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoading:Z

    iget-boolean v1, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHasShowProgress:Z

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mShowPromptTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/settings/apploader/OPApplicationLoader$2;

    invoke-direct {v2, v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader$2;-><init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/settings/apploader/OPApplicationLoader$3;

    invoke-direct {v2, v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader$3;-><init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    iget-object v0, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mShowPromptRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->val$handler:Landroid/os/Handler;

    iget p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->val$type:I

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
