.class public Lcom/oneplus/lib/design/widget/OPPageIndicator;
.super Landroid/view/ViewGroup;
.source "OPPageIndicator.java"


# instance fields
.field private mAnimating:Z

.field private final mAnimationDone:Ljava/lang/Runnable;

.field private mMinorAlpha:F

.field private final mPageDotWidth:I

.field private final mPageIndicatorHeight:I

.field private final mPageIndicatorWidth:I

.field private mPosition:I

.field private final mQueuedPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    new-instance p1, Lcom/oneplus/lib/design/widget/OPPageIndicator$1;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator$1;-><init>(Lcom/oneplus/lib/design/widget/OPPageIndicator;)V

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704d7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704d6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    iget p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    int-to-float p1, p1

    const p2, 0x3ecccccd    # 0.4f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageDotWidth:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0050

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "alpha = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OPPageIndicator"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mMinorAlpha:F

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/lib/design/widget/OPPageIndicator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/lib/design/widget/OPPageIndicator;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/design/widget/OPPageIndicator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setPosition(I)V

    return-void
.end method

.method private getAlpha(Z)F
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mMinorAlpha:F

    :goto_0
    return p0
.end method

.method private getTransition(ZZZ)I
    .locals 0

    if-eqz p3, :cond_3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const p0, 0x7f080581

    return p0

    :cond_0
    const p0, 0x7f080583

    return p0

    :cond_1
    if-eqz p2, :cond_2

    const p0, 0x7f08057f

    return p0

    :cond_2
    const p0, 0x7f080585

    return p0

    :cond_3
    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    const p0, 0x7f08059a

    return p0

    :cond_4
    const p0, 0x7f080598

    return p0

    :cond_5
    if-eqz p2, :cond_6

    const p0, 0x7f08059c

    return p0

    :cond_6
    const p0, 0x7f080596

    return p0
.end method

.method private playAnimation(Landroid/widget/ImageView;I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "Could not invoke forceAnimationOnUI."

    const-string v0, "OPPageIndicator"

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "forceAnimationOnUI"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    const-string p1, "Could not find method forceAnimationOnUI."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setIndex(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    const v4, 0x7f08057e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-direct {p0, v4}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getAlpha(Z)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setPosition(I)V
    .locals 8

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->isVisibleToUser2()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    shr-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, p1, 0x1

    invoke-direct {p0, v2}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setIndex(I)V

    and-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-eqz v4, :cond_1

    if-le v0, p1, :cond_2

    goto :goto_1

    :cond_1
    if-ge v0, p1, :cond_2

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v5

    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v2, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Landroid/widget/ImageView;->getX()F

    move-result v6

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setTranslationX(F)V

    invoke-direct {p0, v4, v0, v5}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getTransition(ZZZ)I

    move-result v6

    invoke-direct {p0, v3, v6}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    invoke-direct {p0, v5}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getAlpha(Z)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-direct {p0, v4, v0, v1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getTransition(ZZZ)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    invoke-direct {p0, v1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getAlpha(Z)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimating:Z

    goto :goto_3

    :cond_5
    shr-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setIndex(I)V

    :cond_6
    :goto_3
    iput p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    return-void
.end method


# virtual methods
.method isVisibleToUser2()Z
    .locals 7

    const-string v0, "Could not invoke isVisibleToUser."

    const-string v1, "OPPageIndicator"

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isVisibleToUser"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    const-string p0, "Could not find method isVisibleToUser."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    iget p4, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    iget p5, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageDotWidth:I

    sub-int/2addr p4, p5

    mul-int/2addr p4, p3

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    iget v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    add-int/2addr v0, p4

    iget v1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {p5, p4, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    :cond_0
    iget p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    iget p2, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageDotWidth:I

    sub-int/2addr p1, p2

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    iget p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setLocation(F)V
    .locals 6

    float-to-int v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const v3, 0x7f1210e8

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    shl-int/lit8 v1, v0, 0x1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    move v4, v5

    :cond_0
    or-int p1, v1, v4

    iget v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimating:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setPosition(I)V

    return-void
.end method

.method public setNumPages(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimating:Z

    if-eqz v2, :cond_1

    const-string v2, "OPPageIndicator"

    const-string v3, "setNumPages during animation"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v1, [I

    const v4, 0x1010030

    aput v4, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le p1, v2, :cond_3

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080595

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    iget v5, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    shr-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setIndex(I)V

    return-void
.end method
