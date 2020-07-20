.class public Lcom/android/settings/panel/PanelFragment;
.super Landroidx/fragment/app/Fragment;
.source "PanelFragment.java"


# instance fields
.field private mAdapter:Lcom/android/settings/panel/PanelSlicesAdapter;

.field private mDoneButton:Landroid/widget/Button;

.field private mLayoutView:Landroid/view/View;

.field private mMetricsProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mPanel:Lcom/android/settings/panel/PanelContent;

.field private mPanelClosedKey:Ljava/lang/String;

.field private mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

.field mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSeeMoreButton:Landroid/widget/Button;

.field private final mSliceLiveData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/List;

    sget-object v0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$rdpxKzRnU-EXEAOP00WJYU-0ZKA;->INSTANCE:Lcom/android/settings/panel/-$$Lambda$PanelFragment$rdpxKzRnU-EXEAOP00WJYU-0ZKA;

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance v0, Lcom/android/settings/panel/PanelFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment$1;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/panel/PanelFragment;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a0535

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0xfa

    invoke-static/range {v1 .. v6}, Lcom/android/settings/panel/PanelFragment;->buildAnimatorSet(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/settings/panel/PanelFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/panel/PanelFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->createPanelContent()V

    return-void
.end method

.method private static buildAnimatorSet(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;
    .locals 5

    const v0, 0x7f0a0535

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p5, 0x2

    new-array v1, p5, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, p5, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 p1, 0x1

    aput p2, v3, p1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v1, v4

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p5, p5, [F

    aput p3, p5, v4

    aput p4, p5, p1

    invoke-static {p0, p2, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    aput-object p0, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private createPanelContent()V
    .locals 11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0a0536

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0a0638

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0a0222

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mDoneButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0a0537

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "PANEL_TYPE_ARGUMENT"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PANEL_CALLING_PACKAGE_NAME"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "PANEL_MEDIA_PACKAGE_NAME"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/overlay/FeatureFactory;->getPanelFeatureProvider()Lcom/android/settings/panel/PanelFeatureProvider;

    move-result-object v4

    check-cast v4, Lcom/android/settings/panel/PanelFeatureProviderImpl;

    invoke-virtual {v4, v0, v3, v1}, Lcom/android/settings/panel/PanelFeatureProviderImpl;->getPanel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/panel/PanelContent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mMetricsProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->getSlices()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Landroidx/slice/widget/SliceLiveData;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v4

    new-instance v5, Lcom/android/settings/panel/-$$Lambda$PanelFragment$Q6zo_UhbdcrfU0IbmhtkZOVk9Zs;

    invoke-direct {v5, p0, v1, v3}, Lcom/android/settings/panel/-$$Lambda$PanelFragment$Q6zo_UhbdcrfU0IbmhtkZOVk9Zs;-><init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {v3, v4, v5}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v1}, Lcom/android/settings/panel/PanelContent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getSeeMoreListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getCloseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->getSeeMoreIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    iget-object v5, p0, Lcom/android/settings/panel/PanelFragment;->mMetricsProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$new$0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private loadPanelWhenReady()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {v0}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->isPanelReadyToLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/panel/PanelSlicesAdapter;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v2}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/panel/PanelSlicesAdapter;-><init>(Lcom/android/settings/panel/PanelFragment;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mAdapter:Lcom/android/settings/panel/PanelSlicesAdapter;

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mAdapter:Lcom/android/settings/panel/PanelSlicesAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v0, Lcom/google/android/setupdesign/DividerItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/setupdesign/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/DividerItemDecoration;->setDividerCondition(I)V

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    return-void
.end method


# virtual methods
.method getCloseListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$Fj7g8uVRbw8nMN6_3L9-HHTQfIs;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/-$$Lambda$PanelFragment$Fj7g8uVRbw8nMN6_3L9-HHTQfIs;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    return-object v0
.end method

.method getSeeMoreListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$vUi_FoUhO8Sl9clBiQGUDi5sL50;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/-$$Lambda$PanelFragment$vUi_FoUhO8Sl9clBiQGUDi5sL50;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    return-object v0
.end method

.method public synthetic lambda$getCloseListener$4$PanelFragment(Landroid/view/View;)V
    .locals 0

    const-string p1, "done"

    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$getSeeMoreListener$3$PanelFragment(Landroid/view/View;)V
    .locals 1

    const-string p1, "see_more"

    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContent;->getSeeMoreIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$loadAllSlices$1$PanelFragment(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {v0, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->markSliceLoaded(Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->loadPanelWhenReady()V

    return-void
.end method

.method public synthetic lambda$loadAllSlices$2$PanelFragment(Landroid/net/Uri;Landroidx/lifecycle/LiveData;Landroidx/slice/Slice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {v0, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->isSliceLoaded(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v0

    if-eqz p3, :cond_3

    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->isErrorSlice()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {p2, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->markSliceLoaded(Landroid/net/Uri;)V

    goto :goto_1

    :cond_2
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lcom/android/settings/panel/-$$Lambda$PanelFragment$9wWe8VA3omUbnqyLrabTpQNiD-M;

    invoke-direct {p3, p0, p1}, Lcom/android/settings/panel/-$$Lambda$PanelFragment$9wWe8VA3omUbnqyLrabTpQNiD-M;-><init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p3, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {p2, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->markSliceLoaded(Landroid/net/Uri;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->loadPanelWhenReady()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0275

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->createPanelContent()V

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 7

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "others"

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mMetricsProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method updatePanelWithAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a0535

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v3, v0

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v6, 0xc8

    invoke-static/range {v1 .. v6}, Lcom/android/settings/panel/PanelFragment;->buildAnimatorSet(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/settings/panel/PanelFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/panel/PanelFragment$2;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
