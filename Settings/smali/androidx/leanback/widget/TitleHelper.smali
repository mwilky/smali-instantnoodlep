.class public Landroidx/leanback/widget/TitleHelper;
.super Ljava/lang/Object;
.source "TitleHelper.java"


# instance fields
.field private final mOnFocusSearchListener:Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

.field mSceneRoot:Landroid/view/ViewGroup;

.field private mSceneWithTitle:Ljava/lang/Object;

.field private mSceneWithoutTitle:Ljava/lang/Object;

.field private mTitleDownTransition:Ljava/lang/Object;

.field private mTitleUpTransition:Ljava/lang/Object;

.field mTitleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/leanback/widget/TitleHelper$1;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/TitleHelper$1;-><init>(Landroidx/leanback/widget/TitleHelper;)V

    iput-object v0, p0, Landroidx/leanback/widget/TitleHelper;->mOnFocusSearchListener:Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Landroidx/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/leanback/widget/TitleHelper;->mTitleView:Landroid/view/View;

    iget-object p1, p0, Landroidx/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const p2, 0x7f15000e

    invoke-static {p1, p2}, Landroidx/leanback/transition/LeanbackTransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/TitleHelper;->mTitleUpTransition:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const p2, 0x7f15000d

    invoke-static {p1, p2}, Landroidx/leanback/transition/LeanbackTransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/TitleHelper;->mTitleDownTransition:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    new-instance p2, Landroidx/leanback/widget/TitleHelper$2;

    invoke-direct {p2, p0}, Landroidx/leanback/widget/TitleHelper$2;-><init>(Landroidx/leanback/widget/TitleHelper;)V

    invoke-static {p1, p2}, Landroidx/leanback/transition/LeanbackTransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/TitleHelper;->mSceneWithTitle:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    new-instance p2, Landroidx/leanback/widget/TitleHelper$3;

    invoke-direct {p2, p0}, Landroidx/leanback/widget/TitleHelper$3;-><init>(Landroidx/leanback/widget/TitleHelper;)V

    invoke-static {p1, p2}, Landroidx/leanback/transition/LeanbackTransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/TitleHelper;->mSceneWithoutTitle:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Views may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getOnFocusSearchListener()Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;
    .locals 0

    iget-object p0, p0, Landroidx/leanback/widget/TitleHelper;->mOnFocusSearchListener:Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    return-object p0
.end method

.method public showTitle(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/leanback/widget/TitleHelper;->mSceneWithTitle:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/leanback/widget/TitleHelper;->mTitleDownTransition:Ljava/lang/Object;

    invoke-static {p1, p0}, Landroidx/leanback/transition/LeanbackTransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/TitleHelper;->mSceneWithoutTitle:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/leanback/widget/TitleHelper;->mTitleUpTransition:Ljava/lang/Object;

    invoke-static {p1, p0}, Landroidx/leanback/transition/LeanbackTransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
