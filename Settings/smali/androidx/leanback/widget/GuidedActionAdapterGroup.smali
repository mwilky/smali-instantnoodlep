.class public Landroidx/leanback/widget/GuidedActionAdapterGroup;
.super Ljava/lang/Object;
.source "GuidedActionAdapterGroup.java"


# instance fields
.field mAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroidx/leanback/widget/GuidedActionAdapter;",
            "Landroidx/leanback/widget/GuidedActionAdapter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

.field private mImeOpened:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    return-void
.end method

.method private updateTextIntoAction(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/widget/TextView;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getDescriptionView()Landroid/widget/TextView;

    move-result-object v0

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->getEditDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GuidedAction;->setEditDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Action;->setLabel2(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object p1

    if-ne p2, p1, :cond_3

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->getEditTitle()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GuidedAction;->setEditTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Action;->setLabel1(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public addAdpter(Landroidx/leanback/widget/GuidedActionAdapter;Landroidx/leanback/widget/GuidedActionAdapter;)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    iput-object p0, p1, Landroidx/leanback/widget/GuidedActionAdapter;->mGroup:Landroidx/leanback/widget/GuidedActionAdapterGroup;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p0, p2, Landroidx/leanback/widget/GuidedActionAdapter;->mGroup:Landroidx/leanback/widget/GuidedActionAdapterGroup;

    :cond_1
    return-void
.end method

.method public closeIme(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p0, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-interface {p0}, Landroidx/leanback/widget/GuidedActionAdapter$EditListener;->onImeClose()V

    :cond_0
    return-void
.end method

.method public fillAndGoNext(Landroidx/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V
    .locals 11

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/GuidedActionAdapter;->findSubChildViewHolder(Landroid/view/View;)Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->updateTextIntoAction(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/GuidedActionAdapter;->performOnActionClick(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/leanback/widget/GuidedActionAdapter$EditListener;->onGuidedActionEditedAndProceed(Landroidx/leanback/widget/GuidedAction;)J

    move-result-wide v1

    iget-object v3, p1, Landroidx/leanback/widget/GuidedActionAdapter;->mStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Landroidx/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    const-wide/16 v6, -0x3

    cmp-long v3, v1, v6

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/leanback/widget/Action;->getId()J

    move-result-wide v6

    cmp-long v3, v1, v6

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v3

    const-wide/16 v6, -0x2

    cmp-long v6, v1, v6

    if-nez v6, :cond_1

    iget-object v7, p1, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    goto/16 :goto_7

    :cond_0
    add-int/2addr v3, v5

    move-object v7, p0

    goto :goto_1

    :cond_1
    move-object v3, p0

    :goto_0
    move-object v7, v3

    move v3, v4

    :goto_1
    iget-object v8, p1, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v6, :cond_2

    :goto_2
    if-ge v3, v8, :cond_3

    invoke-virtual {p1, v3}, Landroidx/leanback/widget/GuidedActionAdapter;->getItem(I)Landroidx/leanback/widget/GuidedAction;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/leanback/widget/GuidedAction;->isFocusable()Z

    move-result v9

    if-nez v9, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v3, v8, :cond_3

    invoke-virtual {p1, v3}, Landroidx/leanback/widget/GuidedActionAdapter;->getItem(I)Landroidx/leanback/widget/GuidedAction;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/leanback/widget/Action;->getId()J

    move-result-wide v9

    cmp-long v9, v9, v1

    if-eqz v9, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    if-ge v3, v8, :cond_5

    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionAdapter;->mStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v1}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/leanback/widget/GuidedAction;->hasTextEditable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v7, p1, v1}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->openIme(Landroidx/leanback/widget/GuidedActionAdapter;Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    goto :goto_4

    :cond_4
    iget-object p1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->closeIme(Landroid/view/View;)V

    iget-object p1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :goto_4
    move v4, v5

    goto :goto_7

    :cond_5
    move v3, v4

    :goto_5
    iget-object v8, v7, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_7

    iget-object v8, v7, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v9, p1, :cond_6

    iget-object p1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/widget/GuidedActionAdapter;

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    const/4 p1, 0x0

    :goto_6
    if-nez p1, :cond_8

    goto :goto_7

    :cond_8
    move-object v3, v7

    goto :goto_0

    :cond_9
    :goto_7
    if-nez v4, :cond_a

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->closeIme(Landroid/view/View;)V

    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_a
    return-void
.end method

.method public fillAndStay(Landroidx/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/GuidedActionAdapter;->findSubChildViewHolder(Landroid/view/View;)Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->updateTextIntoAction(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/widget/TextView;)V

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/leanback/widget/GuidedActionAdapter$EditListener;->onGuidedActionEditCanceled(Landroidx/leanback/widget/GuidedAction;)V

    iget-object p1, p1, Landroidx/leanback/widget/GuidedActionAdapter;->mStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroidx/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->closeIme(Landroid/view/View;)V

    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public openIme(Landroidx/leanback/widget/GuidedActionAdapter;Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 2

    iget-object p1, p1, Landroidx/leanback/widget/GuidedActionAdapter;->mStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditingView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->isInEditingText()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "input_method"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-boolean p1, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    if-nez p1, :cond_1

    iput-boolean v0, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    iget-object p0, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-interface {p0}, Landroidx/leanback/widget/GuidedActionAdapter$EditListener;->onImeOpen()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEditListener(Landroidx/leanback/widget/GuidedActionAdapter$EditListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

    return-void
.end method
