.class Landroidx/leanback/app/GuidedStepFragment$2;
.super Ljava/lang/Object;
.source "GuidedStepFragment.java"

# interfaces
.implements Landroidx/leanback/widget/GuidedActionAdapter$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/app/GuidedStepFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/GuidedStepFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/GuidedStepFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/GuidedStepFragment$2;->this$0:Landroidx/leanback/app/GuidedStepFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGuidedActionClicked(Landroidx/leanback/widget/GuidedAction;)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/app/GuidedStepFragment$2;->this$0:Landroidx/leanback/app/GuidedStepFragment;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/GuidedStepFragment;->onGuidedActionClicked(Landroidx/leanback/widget/GuidedAction;)V

    iget-object v0, p0, Landroidx/leanback/app/GuidedStepFragment$2;->this$0:Landroidx/leanback/app/GuidedStepFragment;

    iget-object v0, v0, Landroidx/leanback/app/GuidedStepFragment;->mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist;->isExpanded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/leanback/app/GuidedStepFragment$2;->this$0:Landroidx/leanback/app/GuidedStepFragment;

    iget-object p1, p0, Landroidx/leanback/app/GuidedStepFragment;->mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/leanback/app/GuidedStepFragment;->mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->collapseAction(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->hasEditableActivatorView()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Landroidx/leanback/app/GuidedStepFragment$2;->this$0:Landroidx/leanback/app/GuidedStepFragment;

    iget-object p0, p0, Landroidx/leanback/app/GuidedStepFragment;->mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {p0, p1, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->expandAction(Landroidx/leanback/widget/GuidedAction;Z)V

    :cond_2
    :goto_0
    return-void
.end method
