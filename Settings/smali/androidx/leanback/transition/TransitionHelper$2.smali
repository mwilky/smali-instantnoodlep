.class final Landroidx/leanback/transition/TransitionHelper$2;
.super Landroid/transition/Transition$EpicenterCallback;
.source "TransitionHelper.java"


# instance fields
.field final synthetic val$callback:Landroidx/leanback/transition/TransitionEpicenterCallback;


# direct methods
.method constructor <init>(Landroidx/leanback/transition/TransitionEpicenterCallback;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/transition/TransitionHelper$2;->val$callback:Landroidx/leanback/transition/TransitionEpicenterCallback;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/leanback/transition/TransitionHelper$2;->val$callback:Landroidx/leanback/transition/TransitionEpicenterCallback;

    invoke-virtual {p0, p1}, Landroidx/leanback/transition/TransitionEpicenterCallback;->onGetEpicenter(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
