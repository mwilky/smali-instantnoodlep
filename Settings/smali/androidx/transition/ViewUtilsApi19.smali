.class Landroidx/transition/ViewUtilsApi19;
.super Landroidx/transition/ViewUtilsBase;
.source "ViewUtilsApi19.java"


# static fields
.field private static sTryHiddenTransitionAlpha:Z = true


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/ViewUtilsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNonTransitionAlpha(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getTransitionAlpha(Landroid/view/View;)F
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-boolean p0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    sput-boolean p0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    return p0
.end method

.method public saveNonTransitionAlpha(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-boolean p0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p0, 0x0

    sput-boolean p0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
