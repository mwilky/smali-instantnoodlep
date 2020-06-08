.class public Lcom/oneplus/lib/widget/DropDownListView;
.super Lcom/oneplus/lib/widget/OPListViewCompat;
.source "DropDownListView.java"


# instance fields
.field private mClickAnimation:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/OPListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean p2, p0, Lcom/oneplus/lib/widget/DropDownListView;->mHijackFocus:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

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

.method public hasWindowFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

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

.method public isFocused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

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

.method public isInTouchMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    :cond_0
    :goto_0
    move p2, v1

    move v3, v2

    goto/16 :goto_3

    :cond_1
    :goto_1
    move p2, v1

    move v3, p2

    goto/16 :goto_3

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, v4, p2}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    move p2, v2

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    int-to-float v4, v4

    int-to-float p2, p2

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/DropDownListView;->mDrawsInPressedState:Z

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v4, p2}, Landroid/widget/ListView;->drawableHotspotChanged(FF)V

    invoke-virtual {p0}, Landroid/widget/ListView;->isPressed()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setPressed(Z)V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    iget v7, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mMotionPosition:I

    if-eq v7, v6, :cond_7

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v7, v6

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_7

    if-eq v6, v3, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_7
    iput v5, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mMotionPosition:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v4, v6

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, p2, v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v6, v7}, Landroid/view/View;->drawableHotspotChanged(FF)V

    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_8
    invoke-virtual {p0, v5, v3, v4, p2}, Lcom/oneplus/lib/widget/OPListViewCompat;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPListViewCompat;->setSelectorEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/ListView;->refreshDrawableState()V

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    invoke-virtual {p0, v3, v5, v6, v7}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    goto/16 :goto_0

    :goto_3
    if-eqz v3, :cond_9

    if-eqz p2, :cond_b

    :cond_9
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/DropDownListView;->mDrawsInPressedState:Z

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->drawableStateChanged()V

    iget p2, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mMotionPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_a
    iget-object p2, p0, Lcom/oneplus/lib/widget/DropDownListView;->mClickAnimation:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->cancel()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oneplus/lib/widget/DropDownListView;->mClickAnimation:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    :cond_b
    if-eqz v3, :cond_d

    iget-object p2, p0, Lcom/oneplus/lib/widget/DropDownListView;->mScrollHelper:Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;

    if-nez p2, :cond_c

    new-instance p2, Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;

    invoke-direct {p2, p0}, Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object p2, p0, Lcom/oneplus/lib/widget/DropDownListView;->mScrollHelper:Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;

    :cond_c
    iget-object p2, p0, Lcom/oneplus/lib/widget/DropDownListView;->mScrollHelper:Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;

    invoke-virtual {p2, v2}, Lcom/oneplus/support/core/widget/AutoScrollHelper;->setEnabled(Z)Lcom/oneplus/support/core/widget/AutoScrollHelper;

    iget-object p2, p0, Lcom/oneplus/lib/widget/DropDownListView;->mScrollHelper:Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;

    invoke-virtual {p2, p0, p1}, Lcom/oneplus/support/core/widget/AutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_4

    :cond_d
    iget-object p0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mScrollHelper:Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;

    if-eqz p0, :cond_e

    invoke-virtual {p0, v1}, Lcom/oneplus/support/core/widget/AutoScrollHelper;->setEnabled(Z)Lcom/oneplus/support/core/widget/AutoScrollHelper;

    :cond_e
    :goto_4
    return v3
.end method

.method setListSelectionHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/DropDownListView;->mListSelectionHidden:Z

    return-void
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mDrawsInPressedState:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
