.class Lcom/oneplus/settings/better/OPFnaticWallPapers$3;
.super Ljava/lang/Object;
.source "OPFnaticWallPapers.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$3;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$3;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$600(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$3;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$700(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$3;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$700(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
