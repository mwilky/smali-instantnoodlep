.class Lcom/oneplus/settings/better/OPFnaticModeIntroduction$4;
.super Ljava/lang/Object;
.source "OPFnaticModeIntroduction.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPFnaticModeIntroduction;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$4;->this$0:Lcom/oneplus/settings/better/OPFnaticModeIntroduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$4;->this$0:Lcom/oneplus/settings/better/OPFnaticModeIntroduction;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->access$200(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
