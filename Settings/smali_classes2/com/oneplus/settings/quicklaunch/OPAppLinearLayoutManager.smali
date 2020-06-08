.class public Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "OPAppLinearLayoutManager.java"


# instance fields
.field private final mActionMoveBottom:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionMoveDown:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionMoveTop:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionMoveUp:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionRemove:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const p2, 0x7f0a004a

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mContext:Landroid/content/Context;

    const v1, 0x7f1200d5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mActionMoveUp:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const p2, 0x7f0a0048

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mContext:Landroid/content/Context;

    const v1, 0x7f1200d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mActionMoveDown:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const p2, 0x7f0a0049

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mContext:Landroid/content/Context;

    const v1, 0x7f1200d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mActionMoveTop:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const p2, 0x7f0a0047

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mContext:Landroid/content/Context;

    const v1, 0x7f1200d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mActionMoveBottom:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const p2, 0x7f0a004b

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mContext:Landroid/content/Context;

    const v1, 0x7f1200d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mActionRemove:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    check-cast p3, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/CheckBox;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {p3}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->isRemoveMode()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mActionMoveUp:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    iget-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mActionMoveTop:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_1
    if-ge v1, p1, :cond_2

    iget-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mActionMoveDown:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    iget-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mActionMoveBottom:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_2
    const/4 p2, 0x1

    if-le p1, p2, :cond_3

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mActionRemove:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_3
    return-void
.end method

.method public performAccessibilityActionForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x1

    const/4 p5, 0x0

    packed-switch p4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-le p1, p3, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {p1, p2}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->removeItem(I)V

    goto :goto_0

    :pswitch_1
    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    add-int/lit8 p4, p2, -0x1

    invoke-virtual {p1, p2, p4}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->onItemMove(II)V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {p1, p2, p5}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->onItemMove(II)V

    goto :goto_0

    :pswitch_3
    add-int/lit8 p4, p2, 0x1

    if-ge p4, p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {p1, p2, p4}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->onItemMove(II)V

    goto :goto_0

    :pswitch_4
    sub-int/2addr p1, p3

    if-eq p2, p1, :cond_0

    iget-object p4, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {p4, p2, p1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->onItemMove(II)V

    goto :goto_0

    :cond_0
    move p3, p5

    :goto_0
    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->doTheUpdate()V

    :cond_1
    return p3

    :goto_1
    return p5

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0047
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
