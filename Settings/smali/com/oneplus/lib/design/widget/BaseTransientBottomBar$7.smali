.class Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->animateViewIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$7;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$7;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->onViewShown()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$7;->this$0:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    invoke-static {p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->access$000(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;

    move-result-object p0

    const/16 p1, 0x78

    const/16 v0, 0xb4

    invoke-interface {p0, p1, v0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;->animateContentIn(II)V

    return-void
.end method
