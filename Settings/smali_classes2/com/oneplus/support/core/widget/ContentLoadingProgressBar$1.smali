.class Lcom/oneplus/support/core/widget/ContentLoadingProgressBar$1;
.super Ljava/lang/Object;
.source "ContentLoadingProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/support/core/widget/ContentLoadingProgressBar$1;->this$0:Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/support/core/widget/ContentLoadingProgressBar$1;->this$0:Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
