.class public Landroidx/leanback/app/GuidedStepFragment;
.super Landroid/app/Fragment;
.source "GuidedStepFragment.java"

# interfaces
.implements Landroidx/leanback/widget/GuidedActionAdapter$FocusListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private entranceTransitionType:I

.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field

.field mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

.field private mAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

.field private mAdapterGroup:Landroidx/leanback/widget/GuidedActionAdapterGroup;

.field private mButtonActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

.field private mButtonAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

.field private mGuidanceStylist:Landroidx/leanback/widget/GuidanceStylist;

.field private mSubAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

.field private mThemeWrapper:Landroid/view/ContextThemeWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/app/GuidedStepFragment;->entranceTransitionType:I

    invoke-virtual {p0}, Landroidx/leanback/app/GuidedStepFragment;->onProvideFragmentTransitions()V

    return-void
.end method

.method private static isGuidedStepTheme(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    const v2, 0x7f0401d7

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x12

    if-ne p0, v2, :cond_0

    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static isSaveEnabled(Landroidx/leanback/widget/GuidedAction;)Z
    .locals 4

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->isAutoSaveRestoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/Action;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public collapseAction(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/leanback/app/GuidedStepFragment;->mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GuidedActionsStylist;->collapseAction(Z)V

    :cond_0
    return-void
.end method

.method final getAutoRestoreKey(Landroidx/leanback/widget/GuidedAction;)Ljava/lang/String;
    .locals 2

    const-string p0, "action_"

    invoke-static {p0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/leanback/widget/Action;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final getButtonAutoRestoreKey(Landroidx/leanback/widget/GuidedAction;)Ljava/lang/String;
    .locals 2

    const-string p0, "buttonaction_"

    invoke-static {p0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/leanback/widget/Action;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroidx/leanback/widget/GuidanceStylist;

    invoke-direct {v0}, Landroidx/leanback/widget/GuidanceStylist;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mGuidanceStylist:Landroidx/leanback/widget/GuidanceStylist;

    new-instance v0, Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-direct {v0}, Landroidx/leanback/widget/GuidedActionsStylist;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    new-instance v0, Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-direct {v0}, Landroidx/leanback/widget/GuidedActionsStylist;-><init>()V

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist;->setAsButtonActions()V

    iput-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {p0}, Landroidx/leanback/app/GuidedStepFragment;->onProvideFragmentTransitions()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroidx/leanback/app/GuidedStepFragment;->onCreateActions(Ljava/util/List;Landroid/os/Bundle;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/leanback/widget/GuidedAction;

    invoke-static {v4}, Landroidx/leanback/app/GuidedStepFragment;->isSaveEnabled(Landroidx/leanback/widget/GuidedAction;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroidx/leanback/widget/Action;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroidx/leanback/widget/GuidedAction;->onRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    iget-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroidx/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/GuidedAction;

    invoke-static {v3}, Landroidx/leanback/app/GuidedStepFragment;->isSaveEnabled(Landroidx/leanback/widget/GuidedAction;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buttonaction_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/leanback/widget/Action;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroidx/leanback/widget/GuidedAction;->onRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iput-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    iget-object p1, p0, Landroidx/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

    if-eqz p1, :cond_5

    iget-object p0, p0, Landroidx/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroidx/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public onCreateActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const p0, 0x0

    throw p0
.end method

.method public onCreateGuidance(Landroid/os/Bundle;)Landroidx/leanback/widget/GuidanceStylist$Guidance;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    move-object/from16 v6, p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/app/GuidedStepFragment;->onProvideTheme()I

    move-result v1

    const/4 v2, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Landroidx/leanback/app/GuidedStepFragment;->isGuidedStepTheme(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    const v1, 0x7f0401d6

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v3, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v3}, Landroidx/leanback/app/GuidedStepFragment;->isGuidedStepTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v3, v6, Landroidx/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_0

    :cond_0
    iput-object v7, v6, Landroidx/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    move v1, v9

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    const-string v0, "GuidedStepF"

    const-string v1, "GuidedStepFragment does not have an appropriate theme set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-eq v1, v2, :cond_3

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, v6, Landroidx/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    :cond_3
    :goto_1
    iget-object v0, v6, Landroidx/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    if-nez v0, :cond_4

    move-object/from16 v10, p1

    goto :goto_2

    :cond_4
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    move-object v10, v0

    :goto_2
    const v0, 0x7f0d00d9

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroidx/leanback/app/GuidedStepRootLayout;

    invoke-virtual {v11, v9}, Landroidx/leanback/app/GuidedStepRootLayout;->setFocusOutStart(Z)V

    invoke-virtual {v11, v9}, Landroidx/leanback/app/GuidedStepRootLayout;->setFocusOutEnd(Z)V

    const v0, 0x7f0a018c

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a004c

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v2, v1

    check-cast v2, Landroidx/leanback/widget/NonOverlappingLinearLayout;

    invoke-virtual {v2, v8}, Landroidx/leanback/widget/NonOverlappingLinearLayout;->setFocusableViewAvailableFixEnabled(Z)V

    move-object/from16 v2, p3

    invoke-virtual {v6, v2}, Landroidx/leanback/app/GuidedStepFragment;->onCreateGuidance(Landroid/os/Bundle;)Landroidx/leanback/widget/GuidanceStylist$Guidance;

    move-result-object v2

    iget-object v3, v6, Landroidx/leanback/app/GuidedStepFragment;->mGuidanceStylist:Landroidx/leanback/widget/GuidanceStylist;

    invoke-virtual {v3, v10, v0, v2}, Landroidx/leanback/widget/GuidanceStylist;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroidx/leanback/widget/GuidanceStylist$Guidance;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v6, Landroidx/leanback/app/GuidedStepFragment;->mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, v10, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v6, Landroidx/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, v10, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v13, Landroidx/leanback/app/GuidedStepFragment$1;

    invoke-direct {v13, v6}, Landroidx/leanback/app/GuidedStepFragment$1;-><init>(Landroidx/leanback/app/GuidedStepFragment;)V

    new-instance v14, Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v1, v6, Landroidx/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    new-instance v2, Landroidx/leanback/app/GuidedStepFragment$2;

    invoke-direct {v2, v6}, Landroidx/leanback/app/GuidedStepFragment$2;-><init>(Landroidx/leanback/app/GuidedStepFragment;)V

    iget-object v4, v6, Landroidx/leanback/app/GuidedStepFragment;->mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    const/4 v15, 0x0

    const/4 v5, 0x0

    move-object v0, v14

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Landroidx/leanback/widget/GuidedActionAdapter;-><init>(Ljava/util/List;Landroidx/leanback/widget/GuidedActionAdapter$ClickListener;Landroidx/leanback/widget/GuidedActionAdapter$FocusListener;Landroidx/leanback/widget/GuidedActionsStylist;Z)V

    iput-object v14, v6, Landroidx/leanback/app/GuidedStepFragment;->mAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

    new-instance v14, Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v1, v6, Landroidx/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    new-instance v2, Landroidx/leanback/app/GuidedStepFragment$3;

    invoke-direct {v2, v6}, Landroidx/leanback/app/GuidedStepFragment$3;-><init>(Landroidx/leanback/app/GuidedStepFragment;)V

    iget-object v4, v6, Landroidx/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    move-object v0, v14

    move v5, v15

    invoke-direct/range {v0 .. v5}, Landroidx/leanback/widget/GuidedActionAdapter;-><init>(Ljava/util/List;Landroidx/leanback/widget/GuidedActionAdapter$ClickListener;Landroidx/leanback/widget/GuidedActionAdapter$FocusListener;Landroidx/leanback/widget/GuidedActionsStylist;Z)V

    iput-object v14, v6, Landroidx/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

    new-instance v14, Landroidx/leanback/widget/GuidedActionAdapter;

    const/4 v1, 0x0

    new-instance v2, Landroidx/leanback/app/GuidedStepFragment$4;

    invoke-direct {v2, v6}, Landroidx/leanback/app/GuidedStepFragment$4;-><init>(Landroidx/leanback/app/GuidedStepFragment;)V

    iget-object v4, v6, Landroidx/leanback/app/GuidedStepFragment;->mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    const/4 v5, 0x1

    move-object v0, v14

    invoke-direct/range {v0 .. v5}, Landroidx/leanback/widget/GuidedActionAdapter;-><init>(Ljava/util/List;Landroidx/leanback/widget/GuidedActionAdapter$ClickListener;Landroidx/leanback/widget/GuidedActionAdapter$FocusListener;Landroidx/leanback/widget/GuidedActionsStylist;Z)V

    iput-object v14, v6, Landroidx/leanback/app/GuidedStepFragment;->mSubAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

    new-instance v0, Landroidx/leanback/widget/GuidedActionAdapterGroup;

    invoke-direct {v0}, Landroidx/leanback/widget/GuidedActionAdapterGroup;-><init>()V

    iput-object v0, v6, Landroidx/leanback/app/GuidedStepFragment;->mAdapterGroup:Landroidx/leanback/widget/GuidedActionAdapterGroup;

    iget-object v0, v6, Landroidx/leanback/app/GuidedStepFragment;->mAdapterGroup:Landroidx/leanback/widget/GuidedActionAdapterGroup;

    iget-object v1, v6, Landroidx/leanback/app/GuidedStepFragment;->mAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v2, v6, Landroidx/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->addAdpter(Landroidx/leanback/widget/GuidedActionAdapter;Landroidx/leanback/widget/GuidedActionAdapter;)V

    iget-object v0, v6, Landroidx/leanback/app/GuidedStepFragment;->mAdapterGroup:Landroidx/leanback/widget/GuidedActionAdapterGroup;

    iget-object v1, v6, Landroidx/leanback/app/GuidedStepFragment;->mSubAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, v1, v7}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->addAdpter(Landroidx/leanback/widget/GuidedActionAdapter;Landroidx/leanback/widget/GuidedActionAdapter;)V

    iget-object v0, v6, Landroidx/leanback/app/GuidedStepFragment;->mAdapterGroup:Landroidx/leanback/widget/GuidedActionAdapterGroup;

    invoke-virtual {v0, v13}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->setEditListener(Landroidx/leanback/widget/GuidedActionAdapter$EditListener;)V

    iget-object v0, v6, Landroidx/leanback/app/GuidedStepFragment;->mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, v13}, Landroidx/leanback/widget/GuidedActionsStylist;->setEditListener(Landroidx/leanback/widget/GuidedActionAdapter$EditListener;)V

    iget-object v0, v6, Landroidx/leanback/app/GuidedStepFragment;->mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v1, v6, Landroidx/leanback/app/GuidedStepFragment;->mAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v6, Landroidx/leanback/app/GuidedStepFragment;->mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getSubActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v6, Landroidx/leanback/app/GuidedStepFragment;->mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getSubActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v1, v6, Landroidx/leanback/app/GuidedStepFragment;->mSubAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_5
    iget-object v0, v6, Landroidx/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v1, v6, Landroidx/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v6, Landroidx/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v12, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_6
    iget-object v0, v6, Landroidx/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_3
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x7f0401b0

    invoke-virtual {v0, v2, v1, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f0a004e

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    :goto_4
    const v0, 0x7f0d00d8

    invoke-virtual {v10, v0, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    const v1, 0x7f0a02e4

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_9
    return-object v11
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mGuidanceStylist:Landroidx/leanback/widget/GuidanceStylist;

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidanceStylist;->onDestroyView()V

    iget-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist;->onDestroyView()V

    iget-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

    iput-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mSubAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

    iput-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroidx/leanback/widget/GuidedActionAdapter;

    iput-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mAdapterGroup:Landroidx/leanback/widget/GuidedActionAdapterGroup;

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onGuidedActionClicked(Landroidx/leanback/widget/GuidedAction;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public onGuidedActionEdited(Landroidx/leanback/widget/GuidedAction;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onGuidedActionFocused(Landroidx/leanback/widget/GuidedAction;)V
    .locals 0

    return-void
.end method

.method protected onProvideFragmentTransitions()V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const-string v2, "uiStyle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    const/4 v2, 0x3

    const v3, 0x7f0a02e2

    const v4, 0x7f0a02e3

    const/4 v5, 0x0

    if-nez v0, :cond_1

    const v0, 0x800005

    invoke-static {v0}, Landroidx/leanback/transition/LeanbackTransitionHelper;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4, v1}, Landroidx/leanback/transition/LeanbackTransitionHelper;->exclude(Ljava/lang/Object;IZ)V

    invoke-static {v0, v3, v1}, Landroidx/leanback/transition/LeanbackTransitionHelper;->exclude(Ljava/lang/Object;IZ)V

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-static {v2}, Landroidx/leanback/transition/LeanbackTransitionHelper;->createFadeTransition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Landroidx/leanback/transition/LeanbackTransitionHelper;->include(Ljava/lang/Object;I)V

    invoke-static {v5}, Landroidx/leanback/transition/LeanbackTransitionHelper;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5}, Landroidx/leanback/transition/LeanbackTransitionHelper;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v0}, Landroidx/leanback/transition/LeanbackTransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5, v2}, Landroidx/leanback/transition/LeanbackTransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v5, Landroid/transition/Transition;

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroidx/leanback/app/GuidedStepFragment;->entranceTransitionType:I

    if-nez v0, :cond_2

    invoke-static {v2}, Landroidx/leanback/transition/LeanbackTransitionHelper;->createFadeTransition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Landroidx/leanback/transition/LeanbackTransitionHelper;->include(Ljava/lang/Object;I)V

    const v2, 0x800007

    invoke-static {v2}, Landroidx/leanback/transition/LeanbackTransitionHelper;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object v2

    const v7, 0x7f0a018c

    invoke-static {v2, v7}, Landroidx/leanback/transition/LeanbackTransitionHelper;->include(Ljava/lang/Object;I)V

    const v7, 0x7f0a004e

    invoke-static {v2, v7}, Landroidx/leanback/transition/LeanbackTransitionHelper;->include(Ljava/lang/Object;I)V

    invoke-static {v5}, Landroidx/leanback/transition/LeanbackTransitionHelper;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v0}, Landroidx/leanback/transition/LeanbackTransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5, v2}, Landroidx/leanback/transition/LeanbackTransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v5, Landroid/transition/Transition;

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setEnterTransition(Landroid/transition/Transition;)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x50

    invoke-static {v0}, Landroidx/leanback/transition/LeanbackTransitionHelper;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f0a02e4

    invoke-static {v0, v2}, Landroidx/leanback/transition/LeanbackTransitionHelper;->include(Ljava/lang/Object;I)V

    invoke-static {v5}, Landroidx/leanback/transition/LeanbackTransitionHelper;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/leanback/transition/LeanbackTransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setEnterTransition(Landroid/transition/Transition;)V

    :goto_1
    invoke-virtual {p0, v6}, Landroid/app/Fragment;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    :cond_4
    :goto_2
    const v0, 0x800003

    invoke-static {v0}, Landroidx/leanback/transition/LeanbackTransitionHelper;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4, v1}, Landroidx/leanback/transition/LeanbackTransitionHelper;->exclude(Ljava/lang/Object;IZ)V

    invoke-static {v0, v3, v1}, Landroidx/leanback/transition/LeanbackTransitionHelper;->exclude(Ljava/lang/Object;IZ)V

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setExitTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public onProvideTheme()I
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/leanback/widget/GuidedAction;

    invoke-static {v4}, Landroidx/leanback/app/GuidedStepFragment;->isSaveEnabled(Landroidx/leanback/widget/GuidedAction;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Landroidx/leanback/app/GuidedStepFragment;->getAutoRestoreKey(Landroidx/leanback/widget/GuidedAction;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroidx/leanback/widget/GuidedAction;->onSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/GuidedAction;

    invoke-static {v3}, Landroidx/leanback/app/GuidedStepFragment;->isSaveEnabled(Landroidx/leanback/widget/GuidedAction;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Landroidx/leanback/app/GuidedStepFragment;->getButtonAutoRestoreKey(Landroidx/leanback/widget/GuidedAction;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroidx/leanback/widget/GuidedAction;->onSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onSubGuidedActionClicked(Landroidx/leanback/widget/GuidedAction;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method runImeAnimations(Z)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/leanback/app/GuidedStepFragment;->mGuidanceStylist:Landroidx/leanback/widget/GuidanceStylist;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/GuidanceStylist;->onImeAppearing(Ljava/util/List;)V

    iget-object p1, p0, Landroidx/leanback/app/GuidedStepFragment;->mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->onImeAppearing(Ljava/util/List;)V

    iget-object p0, p0, Landroidx/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->onImeAppearing(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/leanback/app/GuidedStepFragment;->mGuidanceStylist:Landroidx/leanback/widget/GuidanceStylist;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/GuidanceStylist;->onImeDisappearing(Ljava/util/List;)V

    iget-object p1, p0, Landroidx/leanback/app/GuidedStepFragment;->mActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->onImeDisappearing(Ljava/util/List;)V

    iget-object p0, p0, Landroidx/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->onImeDisappearing(Ljava/util/List;)V

    :goto_0
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
