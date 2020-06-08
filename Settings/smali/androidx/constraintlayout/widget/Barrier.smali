.class public Landroidx/constraintlayout/widget/Barrier;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "Barrier.java"


# instance fields
.field private mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

.field private mIndicatedType:I

.field private mResolvedType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    const/16 p1, 0x8

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    const/16 p1, 0x8

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    const/16 p1, 0x8

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    return p0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    new-instance v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/Barrier;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    goto :goto_1

    :cond_0
    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/solver/widgets/Helper;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    return-void
.end method

.method public setType(I)V
    .locals 4

    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/4 v2, 0x6

    const/4 v3, 0x5

    if-eqz p1, :cond_2

    iget p1, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    if-ne p1, v3, :cond_1

    iput v1, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_1

    :cond_1
    if-ne p1, v2, :cond_4

    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_1

    :cond_2
    iget p1, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    if-ne p1, v3, :cond_3

    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_1

    :cond_3
    if-ne p1, v2, :cond_4

    iput v1, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    :cond_4
    :goto_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    iget p0, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/widgets/Barrier;->setBarrierType(I)V

    return-void
.end method
