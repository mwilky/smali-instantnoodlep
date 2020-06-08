.class public Landroidx/leanback/app/RowsSupportFragment;
.super Landroidx/leanback/app/BaseRowSupportFragment;
.source "RowsSupportFragment.java"

# interfaces
.implements Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;
.implements Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;,
        Landroidx/leanback/app/RowsSupportFragment$MainFragmentAdapter;,
        Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;
    }
.end annotation


# instance fields
.field mAfterEntranceTransition:Z

.field private mAlignedTop:I

.field private final mBridgeAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field mExpand:Z

.field mExternalAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field mFreezeRows:Z

.field private mMainFragmentAdapter:Landroidx/leanback/app/RowsSupportFragment$MainFragmentAdapter;

.field private mMainFragmentRowsAdapter:Landroidx/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;

.field mOnItemViewClickedListener:Landroidx/leanback/widget/BaseOnItemViewClickedListener;

.field mOnItemViewSelectedListener:Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

.field private mPresenterMapper:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/widget/Presenter;",
            ">;"
        }
    .end annotation
.end field

.field private mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field mSelectedViewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

.field private mSubPosition:I

.field mViewsCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/leanback/app/BaseRowSupportFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/leanback/app/RowsSupportFragment;->mExpand:Z

    const/high16 v1, -0x80000000

    iput v1, p0, Landroidx/leanback/app/RowsSupportFragment;->mAlignedTop:I

    iput-boolean v0, p0, Landroidx/leanback/app/RowsSupportFragment;->mAfterEntranceTransition:Z

    new-instance v0, Landroidx/leanback/app/RowsSupportFragment$1;

    invoke-direct {v0, p0}, Landroidx/leanback/app/RowsSupportFragment$1;-><init>(Landroidx/leanback/app/RowsSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/RowsSupportFragment;->mBridgeAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    return-void
.end method

.method private freezeRows(Z)V
    .locals 3

    iput-boolean p1, p0, Landroidx/leanback/app/RowsSupportFragment;->mFreezeRows:Z

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {v1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/RowPresenter;

    invoke-virtual {v1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static setRowViewSelected(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V
    .locals 3

    invoke-virtual {p0}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getExtraObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;

    iget-object v1, v0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->end()V

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object p2, v0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroidx/leanback/widget/RowPresenter;

    iget-object v0, v0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/RowPresenter;->setSelectLevel(Landroidx/leanback/widget/Presenter$ViewHolder;F)V

    goto :goto_1

    :cond_1
    iget-object p2, v0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroidx/leanback/widget/RowPresenter;

    iget-object v2, v0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p2, v2}, Landroidx/leanback/widget/RowPresenter;->getSelectLevel(Landroidx/leanback/widget/Presenter$ViewHolder;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_2

    iget-object p2, v0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroidx/leanback/widget/RowPresenter;

    iget-object v2, v0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p2, v2}, Landroidx/leanback/widget/RowPresenter;->getSelectLevel(Landroidx/leanback/widget/Presenter$ViewHolder;)F

    move-result p2

    iput p2, v0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    iget p2, v0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    sub-float/2addr v1, p2

    iput v1, v0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimDelta:F

    iget-object p2, v0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p2}, Landroid/animation/TimeAnimator;->start()V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/RowPresenter;

    invoke-virtual {p0}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Landroidx/leanback/widget/RowPresenter;->setRowViewSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Z)V

    return-void
.end method


# virtual methods
.method protected findGridViewFromRoot(Landroid/view/View;)Landroidx/leanback/widget/VerticalGridView;
    .locals 0

    const p0, 0x7f0a0187

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/VerticalGridView;

    return-object p0
.end method

.method getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d00f5

    return p0
.end method

.method public getMainFragmentAdapter()Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    invoke-direct {v0, p0}, Landroidx/leanback/app/RowsSupportFragment$MainFragmentAdapter;-><init>(Landroidx/leanback/app/RowsSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    :cond_0
    iget-object p0, p0, Landroidx/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    return-object p0
.end method

.method public getMainFragmentRowsAdapter()Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment;->mMainFragmentRowsAdapter:Landroidx/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;

    invoke-direct {v0, p0}, Landroidx/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;-><init>(Landroidx/leanback/app/RowsSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/RowsSupportFragment;->mMainFragmentRowsAdapter:Landroidx/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;

    :cond_0
    iget-object p0, p0, Landroidx/leanback/app/RowsSupportFragment;->mMainFragmentRowsAdapter:Landroidx/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;

    return-object p0
.end method

.method public getSelectedPosition()I
    .locals 0

    iget p0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    return p0
.end method

.method public isScrolling()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/BaseRowSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/leanback/app/RowsSupportFragment;->mViewsCreated:Z

    invoke-super {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->onDestroyView()V

    return-void
.end method

.method onRowSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 2

    iget-object p1, p0, Landroidx/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroidx/leanback/app/RowsSupportFragment;->mSubPosition:I

    if-eq p1, p4, :cond_2

    :cond_0
    iput p4, p0, Landroidx/leanback/app/RowsSupportFragment;->mSubPosition:I

    iget-object p1, p0, Landroidx/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz p1, :cond_1

    invoke-static {p1, v1, v1}, Landroidx/leanback/app/RowsSupportFragment;->setRowViewSelected(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    :cond_1
    check-cast p2, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iput-object p2, p0, Landroidx/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object p1, p0, Landroidx/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz p1, :cond_2

    invoke-static {p1, v0, v1}, Landroidx/leanback/app/RowsSupportFragment;->setRowViewSelected(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    :cond_2
    iget-object p0, p0, Landroidx/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    if-eqz p0, :cond_6

    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragmentHost:Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    if-gtz p3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;->mShowTitleView:Z

    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object p2, p1, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz p2, :cond_6

    iget-object p2, p2, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragmentHost:Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    if-eq p2, p0, :cond_4

    goto :goto_1

    :cond_4
    iget-boolean p0, p1, Landroidx/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroidx/leanback/app/BrowseSupportFragment;->updateTitleViewVisibility()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget p0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    const-string v0, "currentSelectedPosition"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTransitionEnd()V
    .locals 1

    invoke-super {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->onTransitionEnd()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/leanback/app/RowsSupportFragment;->freezeRows(Z)V

    return-void
.end method

.method public onTransitionPrepare()Z
    .locals 2

    invoke-super {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->onTransitionPrepare()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroidx/leanback/app/RowsSupportFragment;->freezeRows(Z)V

    :cond_0
    return v0
.end method

.method public onTransitionStart()V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setPruneChild(Z)V

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    iget-object p0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/BaseGridView;->setFocusSearchDisabled(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/leanback/app/BaseRowSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    const p2, 0x7f0a0603

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/BaseGridView;->setItemAlignmentViewId(I)V

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/BaseGridView;->setSaveChildrenPolicy(I)V

    iget p1, p0, Landroidx/leanback/app/RowsSupportFragment;->mAlignedTop:I

    invoke-virtual {p0, p1}, Landroidx/leanback/app/RowsSupportFragment;->setAlignment(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/leanback/app/RowsSupportFragment;->mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    iput-object p1, p0, Landroidx/leanback/app/RowsSupportFragment;->mPresenterMapper:Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragmentHost:Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object p2, p1, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object p1, p1, Landroidx/leanback/app/BrowseSupportFragment;->EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {p2, p1}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-boolean p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->EVT_SCREEN_DATA_READY:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {p1, p0}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    :cond_0
    return-void
.end method

.method public setAlignment(I)V
    .locals 3

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/leanback/app/RowsSupportFragment;->mAlignedTop:I

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setItemAlignmentOffset(I)V

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/BaseGridView;->setItemAlignmentOffsetPercent(F)V

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/BaseGridView;->setItemAlignmentOffsetWithPadding(Z)V

    iget p0, p0, Landroidx/leanback/app/RowsSupportFragment;->mAlignedTop:I

    invoke-virtual {p1, p0}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignmentOffset(I)V

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignmentOffsetPercent(F)V

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignment(I)V

    :cond_1
    return-void
.end method

.method public setEntranceTransitionState(Z)V
    .locals 5

    iput-boolean p1, p0, Landroidx/leanback/app/RowsSupportFragment;->mAfterEntranceTransition:Z

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {v2}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/RowPresenter;

    invoke-virtual {v2}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v2

    iget-boolean v4, p0, Landroidx/leanback/app/RowsSupportFragment;->mAfterEntranceTransition:Z

    invoke-virtual {v3, v2, v4}, Landroidx/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroidx/leanback/widget/RowPresenter$ViewHolder;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExpand(Z)V
    .locals 5

    iput-boolean p1, p0, Landroidx/leanback/app/RowsSupportFragment;->mExpand:Z

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-boolean v3, p0, Landroidx/leanback/app/RowsSupportFragment;->mExpand:Z

    invoke-virtual {v2}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v4

    check-cast v4, Landroidx/leanback/widget/RowPresenter;

    invoke-virtual {v2}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Landroidx/leanback/widget/RowPresenter;->setRowViewExpanded(Landroidx/leanback/widget/Presenter$ViewHolder;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setExternalAdapterListener(Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    return-void
.end method

.method public setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/RowsSupportFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/BaseOnItemViewClickedListener;

    iget-boolean p0, p0, Landroidx/leanback/app/RowsSupportFragment;->mViewsCreated:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Item clicked listener must be set before views are created"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnItemViewSelectedListener(Landroidx/leanback/widget/BaseOnItemViewSelectedListener;)V
    .locals 4

    iput-object p1, p0, Landroidx/leanback/app/RowsSupportFragment;->mOnItemViewSelectedListener:Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/RowPresenter;

    invoke-virtual {v2}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Landroidx/leanback/app/RowsSupportFragment;->mOnItemViewSelectedListener:Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {v2, v3}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->setOnItemViewSelectedListener(Landroidx/leanback/widget/BaseOnItemViewSelectedListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/app/BaseRowSupportFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method public bridge synthetic setSelectedPosition(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/leanback/app/BaseRowSupportFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method setupSharedViewPool(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/RowPresenter;

    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    instance-of v0, p1, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {p1}, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/HorizontalGridView;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/app/RowsSupportFragment;->mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/app/RowsSupportFragment;->mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    :goto_0
    invoke-virtual {p1}, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->getBridgeAdapter()Landroidx/leanback/widget/ItemBridgeAdapter;

    move-result-object p1

    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment;->mPresenterMapper:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter;->getPresenterMapper()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/app/RowsSupportFragment;->mPresenterMapper:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ItemBridgeAdapter;->setPresenterMapper(Ljava/util/ArrayList;)V

    :cond_2
    :goto_1
    return-void
.end method

.method updateAdapter()V
    .locals 1

    invoke-super {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->updateAdapter()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/leanback/app/RowsSupportFragment;->mViewsCreated:Z

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getBridgeAdapter()Landroidx/leanback/widget/ItemBridgeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/leanback/app/RowsSupportFragment;->mBridgeAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p0}, Landroidx/leanback/widget/ItemBridgeAdapter;->setAdapterListener(Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    :cond_0
    return-void
.end method
