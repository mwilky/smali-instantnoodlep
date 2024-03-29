.class public Lcom/google/android/setupdesign/DividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;
    }
.end annotation


# instance fields
.field private divider:Landroid/graphics/drawable/Drawable;

.field private dividerCondition:I

.field private dividerHeight:I

.field private dividerIntrinsicHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudDividerItemDecoration:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudDividerItemDecoration_android_dividerHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/DividerItemDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iput v1, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerHeight:I

    invoke-virtual {p0, v2}, Lcom/google/android/setupdesign/DividerItemDecoration;->setDividerCondition(I)V

    return-void
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 4

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/DividerItemDecoration;->isDividerAllowedBelow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerCondition:I

    if-nez p1, :cond_1

    return v2

    :cond_0
    iget p1, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerCondition:I

    if-eq p1, v2, :cond_3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/DividerItemDecoration;->isDividerAllowedAbove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    if-nez p0, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v3
.end method


# virtual methods
.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/DividerItemDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerHeight:I

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerIntrinsicHeight:I

    :goto_0
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method protected isDividerAllowedAbove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    instance-of p0, p1, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;

    invoke-interface {p1}, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;->isDividerAllowedAbove()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected isDividerAllowedBelow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    instance-of p0, p1, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;

    invoke-interface {p1}, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;->isDividerAllowedBelow()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    iget-object p3, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerHeight:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerIntrinsicHeight:I

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, p3, :cond_3

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/google/android/setupdesign/DividerItemDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getY(Landroid/view/View;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    add-int v6, v4, v1

    invoke-virtual {v5, v2, v4, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerIntrinsicHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerIntrinsicHeight:I

    :goto_0
    iput-object p1, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDividerCondition(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerCondition:I

    return-void
.end method
