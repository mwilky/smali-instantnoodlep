.class Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5$1;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5$1;->this$1:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5$1;->this$1:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5;

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->onViewHidden(I)V

    return-void
.end method
