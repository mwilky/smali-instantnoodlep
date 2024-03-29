.class Landroidx/leanback/widget/PersistentFocusWrapper;
.super Landroid/widget/FrameLayout;
.source "PersistentFocusWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;
    }
.end annotation


# instance fields
.field private mPersistFocusVertical:Z

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/leanback/widget/PersistentFocusWrapper;->getGrandChildCount()I

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    if-eq p2, v0, :cond_1

    const/16 v0, 0x82

    if-eq p2, v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    if-nez v0, :cond_2

    const/16 v0, 0x11

    if-eq p2, v0, :cond_1

    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addFocusables(Ljava/util/ArrayList;II)V

    :goto_2
    return-void
.end method

.method getGrandChildCount()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;

    iget v0, p1, Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;->mSelectedPosition:I

    iput v0, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    iput p0, v0, Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;->mSelectedPosition:I

    return-object v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    :goto_1
    iput p1, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/PersistentFocusWrapper;->getGrandChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Landroidx/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method
