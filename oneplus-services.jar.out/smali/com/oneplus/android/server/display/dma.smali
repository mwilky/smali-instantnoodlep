.class Lcom/oneplus/android/server/display/dma;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/display/ywr;->qeg(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCancelled:Z

.field final synthetic this$0:Lcom/oneplus/android/server/display/ywr;

.field final synthetic zta:[[I


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/display/ywr;[[I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/dma;->this$0:Lcom/oneplus/android/server/display/ywr;

    iput-object p2, p0, Lcom/oneplus/android/server/display/dma;->zta:[[I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/dma;->mIsCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lcom/oneplus/android/server/display/dma;->mIsCancelled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->this$0:Lcom/oneplus/android/server/display/ywr;

    invoke-static {p1}, Lcom/oneplus/android/server/display/ywr;->sis(Lcom/oneplus/android/server/display/ywr;)Lcom/oneplus/android/server/display/igw;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->zta:[[I

    iget-object v1, p0, Lcom/oneplus/android/server/display/dma;->this$0:Lcom/oneplus/android/server/display/ywr;

    invoke-static {v1}, Lcom/oneplus/android/server/display/ywr;->you(Lcom/oneplus/android/server/display/ywr;)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/android/server/display/igw;->zta([[I[I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->this$0:Lcom/oneplus/android/server/display/ywr;

    invoke-static {p1}, Lcom/oneplus/android/server/display/ywr;->tsu(Lcom/oneplus/android/server/display/ywr;)Lcom/oneplus/android/server/display/ugm;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->this$0:Lcom/oneplus/android/server/display/ywr;

    invoke-static {v0}, Lcom/oneplus/android/server/display/ywr;->sis(Lcom/oneplus/android/server/display/ywr;)Lcom/oneplus/android/server/display/igw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/ugm;->zta(Lcom/oneplus/android/server/display/igw;)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->this$0:Lcom/oneplus/android/server/display/ywr;

    invoke-static {p0}, Lcom/oneplus/android/server/display/ywr;->tsu(Lcom/oneplus/android/server/display/ywr;)Lcom/oneplus/android/server/display/ugm;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/wtn;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method
