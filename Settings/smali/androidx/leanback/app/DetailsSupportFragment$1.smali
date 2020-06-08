.class Landroidx/leanback/app/DetailsSupportFragment$1;
.super Landroidx/leanback/util/StateMachine$State;
.source "DetailsSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/DetailsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/DetailsSupportFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/DetailsSupportFragment;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$1;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroidx/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Landroidx/leanback/app/DetailsSupportFragment$1;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    iget-object p0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/leanback/app/RowsSupportFragment;->setEntranceTransitionState(Z)V

    return-void
.end method
