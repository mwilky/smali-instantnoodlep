.class Landroidx/transition/ViewUtilsBase;
.super Ljava/lang/Object;
.source "ViewUtilsBase.java"


# static fields
.field private static sViewFlagsField:Ljava/lang/reflect/Field;

.field private static sViewFlagsFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNonTransitionAlpha(Landroid/view/View;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public getTransitionAlpha(Landroid/view/View;)F
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public saveNonTransitionAlpha(Landroid/view/View;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public setTransitionVisibility(Landroid/view/View;I)V
    .locals 2

    sget-boolean p0, Landroidx/transition/ViewUtilsBase;->sViewFlagsFieldFetched:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mViewFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    sget-object v0, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ViewUtilsBase"

    const-string v1, "fetchViewFlagsField: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sput-boolean p0, Landroidx/transition/ViewUtilsBase;->sViewFlagsFieldFetched:Z

    :cond_0
    sget-object p0, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    sget-object v0, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    and-int/lit8 p0, p0, -0xd

    or-int/2addr p0, p2

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method
