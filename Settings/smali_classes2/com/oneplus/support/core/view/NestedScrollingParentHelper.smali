.class public Lcom/oneplus/support/core/view/NestedScrollingParentHelper;
.super Ljava/lang/Object;
.source "NestedScrollingParentHelper.java"


# instance fields
.field private mNestedScrollAxes:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNestedScrollAxes()I
    .locals 0

    iget p0, p0, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->mNestedScrollAxes:I

    return p0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    iput p3, p0, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->mNestedScrollAxes:I

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->mNestedScrollAxes:I

    return-void
.end method
