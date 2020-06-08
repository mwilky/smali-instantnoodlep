.class public final Landroidx/leanback/util/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/util/StateMachine$State;,
        Landroidx/leanback/util/StateMachine$Transition;,
        Landroidx/leanback/util/StateMachine$Condition;,
        Landroidx/leanback/util/StateMachine$Event;
    }
.end annotation


# instance fields
.field final mFinishedStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/util/StateMachine$State;",
            ">;"
        }
    .end annotation
.end field

.field final mStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/util/StateMachine$State;",
            ">;"
        }
    .end annotation
.end field

.field final mUnfinishedStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/util/StateMachine$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addState(Landroidx/leanback/util/StateMachine$State;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;)V
    .locals 0

    new-instance p0, Landroidx/leanback/util/StateMachine$Transition;

    invoke-direct {p0, p1, p2}, Landroidx/leanback/util/StateMachine$Transition;-><init>(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;)V

    invoke-virtual {p2, p0}, Landroidx/leanback/util/StateMachine$State;->addIncoming(Landroidx/leanback/util/StateMachine$Transition;)V

    invoke-virtual {p1, p0}, Landroidx/leanback/util/StateMachine$State;->addOutgoing(Landroidx/leanback/util/StateMachine$Transition;)V

    return-void
.end method

.method public addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Condition;)V
    .locals 0

    new-instance p0, Landroidx/leanback/util/StateMachine$Transition;

    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/util/StateMachine$Transition;-><init>(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Condition;)V

    invoke-virtual {p2, p0}, Landroidx/leanback/util/StateMachine$State;->addIncoming(Landroidx/leanback/util/StateMachine$Transition;)V

    invoke-virtual {p1, p0}, Landroidx/leanback/util/StateMachine$State;->addOutgoing(Landroidx/leanback/util/StateMachine$Transition;)V

    return-void
.end method

.method public addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V
    .locals 0

    new-instance p0, Landroidx/leanback/util/StateMachine$Transition;

    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/util/StateMachine$Transition;-><init>(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    invoke-virtual {p2, p0}, Landroidx/leanback/util/StateMachine$State;->addIncoming(Landroidx/leanback/util/StateMachine$Transition;)V

    invoke-virtual {p1, p0}, Landroidx/leanback/util/StateMachine$State;->addOutgoing(Landroidx/leanback/util/StateMachine$Transition;)V

    return-void
.end method

.method public fireEvent(Landroidx/leanback/util/StateMachine$Event;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroidx/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/util/StateMachine$State;

    iget-object v2, v1, Landroidx/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Landroidx/leanback/util/StateMachine$State;->mBranchStart:Z

    if-nez v2, :cond_0

    iget v2, v1, Landroidx/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Landroidx/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/util/StateMachine$Transition;

    iget v4, v3, Landroidx/leanback/util/StateMachine$Transition;->mState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    iget-object v4, v3, Landroidx/leanback/util/StateMachine$Transition;->mEvent:Landroidx/leanback/util/StateMachine$Event;

    if-ne v4, p1, :cond_1

    iput v5, v3, Landroidx/leanback/util/StateMachine$Transition;->mState:I

    iget v3, v1, Landroidx/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    add-int/2addr v3, v5

    iput v3, v1, Landroidx/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    iget-boolean v3, v1, Landroidx/leanback/util/StateMachine$State;->mBranchStart:Z

    if-nez v3, :cond_1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/util/StateMachine;->runUnfinishedStates()V

    return-void
.end method

.method runUnfinishedStates()V
    .locals 8

    :cond_0
    iget-object v0, p0, Landroidx/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_c

    iget-object v4, p0, Landroidx/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/leanback/util/StateMachine$State;

    iget v5, v4, Landroidx/leanback/util/StateMachine$State;->mStatus:I

    if-eq v5, v1, :cond_a

    iget-object v5, v4, Landroidx/leanback/util/StateMachine$State;->mIncomings:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v6, v4, Landroidx/leanback/util/StateMachine$State;->mBranchEnd:Z

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/leanback/util/StateMachine$Transition;

    iget v6, v6, Landroidx/leanback/util/StateMachine$Transition;->mState:I

    if-eq v6, v1, :cond_2

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/leanback/util/StateMachine$Transition;

    iget v6, v6, Landroidx/leanback/util/StateMachine$Transition;->mState:I

    if-ne v6, v1, :cond_4

    :cond_5
    :goto_1
    move v5, v1

    goto :goto_3

    :cond_6
    :goto_2
    move v5, v2

    :goto_3
    if-eqz v5, :cond_a

    iput v1, v4, Landroidx/leanback/util/StateMachine$State;->mStatus:I

    invoke-virtual {v4}, Landroidx/leanback/util/StateMachine$State;->run()V

    iget-object v5, v4, Landroidx/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/leanback/util/StateMachine$Transition;

    iget-object v7, v6, Landroidx/leanback/util/StateMachine$Transition;->mEvent:Landroidx/leanback/util/StateMachine$Event;

    if-nez v7, :cond_7

    iget-object v7, v6, Landroidx/leanback/util/StateMachine$Transition;->mCondition:Landroidx/leanback/util/StateMachine$Condition;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroidx/leanback/util/StateMachine$Condition;->canProceed()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_8
    iget v7, v4, Landroidx/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    add-int/2addr v7, v1

    iput v7, v4, Landroidx/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    iput v1, v6, Landroidx/leanback/util/StateMachine$Transition;->mState:I

    iget-boolean v6, v4, Landroidx/leanback/util/StateMachine$State;->mBranchStart:Z

    if-nez v6, :cond_7

    :cond_9
    move v5, v1

    goto :goto_4

    :cond_a
    move v5, v2

    :goto_4
    if-eqz v5, :cond_b

    iget-object v3, p0, Landroidx/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Landroidx/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v1

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_c
    if-nez v3, :cond_0

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/leanback/util/StateMachine;->runUnfinishedStates()V

    return-void
.end method
