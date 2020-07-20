.class public Landroidx/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field private mExitAction:Ljava/lang/Runnable;

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method public static getCurrentScene(Landroid/view/ViewGroup;)Landroidx/transition/Scene;
    .locals 1

    const v0, 0x7f0a075b

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/transition/Scene;

    return-object p0
.end method


# virtual methods
.method public exit()V
    .locals 2

    iget-object v0, p0, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    const v1, 0x7f0a075b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/Scene;

    if-ne v0, p0, :cond_0

    iget-object p0, p0, Landroidx/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
