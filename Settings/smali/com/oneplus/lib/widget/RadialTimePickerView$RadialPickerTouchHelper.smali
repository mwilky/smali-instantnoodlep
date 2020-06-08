.class Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;
.super Lcom/oneplus/lib/widget/ExploreByTouchHelper;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadialPickerTouchHelper"
.end annotation


# instance fields
.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/RadialTimePickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method private adjustPicker(I)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$100(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$200(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v1, 0x17

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    add-int/lit8 v0, v0, -0xc

    :cond_2
    :goto_0
    move v3, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x5

    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    div-int/2addr v0, v2

    const/16 v1, 0x37

    :goto_1
    add-int/2addr v0, p1

    mul-int/2addr v0, v2

    invoke-static {v0, v3, v1}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$100(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentHour(I)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentMinute(I)V

    :goto_2
    return-void
.end method

.method private makeId(II)I
    .locals 0

    shl-int/lit8 p0, p1, 0x0

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$300(Lcom/oneplus/lib/widget/RadialTimePickerView;FFZ)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$400(II)I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$100(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v0, p1, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$500(Lcom/oneplus/lib/widget/RadialTimePickerView;FF)Z

    move-result p1

    iget-object p2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {p2, v2, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$600(Lcom/oneplus/lib/widget/RadialTimePickerView;IZ)I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$200(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xc

    if-nez p1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    add-int/lit8 p1, p1, -0xc

    :cond_2
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p0

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {p2, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$700(Lcom/oneplus/lib/widget/RadialTimePickerView;I)I

    move-result p2

    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v0, v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$700(Lcom/oneplus/lib/widget/RadialTimePickerView;I)I

    move-result v0

    sub-int v1, p1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_4

    rsub-int/lit8 v1, v1, 0x3c

    :cond_4
    sub-int p2, v0, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p2, v2, :cond_5

    rsub-int/lit8 p2, p2, 0x3c

    :cond_5
    if-ge v1, p2, :cond_6

    goto :goto_1

    :cond_6
    move p1, v0

    :goto_1
    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p0

    goto :goto_2

    :cond_7
    const/high16 p0, -0x80000000

    :goto_2
    return p0
.end method

.method protected getVisibleVirtualViews(Lcom/oneplus/lib/widget/IntArray;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$100(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$200(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$200(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    :goto_0
    if-gt v0, v2, :cond_3

    invoke-direct {p0, v1, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/oneplus/lib/widget/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_3

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/oneplus/lib/widget/IntArray;->add(I)V

    if-le v0, v1, :cond_2

    add-int/lit8 v3, v1, 0x5

    if-ge v0, v3, :cond_2

    invoke-direct {p0, v2, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oneplus/lib/widget/IntArray;->add(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x5

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 2

    const/4 p3, 0x0

    const/16 v0, 0x10

    if-ne p2, v0, :cond_4

    ushr-int/lit8 p2, p1, 0x0

    and-int/lit8 p2, p2, 0xf

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$200(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$800(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result p2

    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    if-nez p2, :cond_2

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    add-int/lit8 p3, p1, 0xc

    :goto_0
    move p1, p3

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentHour(I)V

    return v0

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    iget-object p0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentMinute(I)V

    return v0

    :cond_4
    return p3
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    const-class p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    ushr-int/lit8 p0, p1, 0x0

    and-int/lit8 p0, p0, 0xf

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 13

    const-class v0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    ushr-int/lit8 v0, p1, 0x0

    and-int/lit8 v0, v0, 0xf

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v0, v2, :cond_3

    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v4, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$900(Lcom/oneplus/lib/widget/RadialTimePickerView;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1000(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result v4

    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v6}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1100(Lcom/oneplus/lib/widget/RadialTimePickerView;)[I

    move-result-object v6

    aget v6, v6, v1

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v6}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1200(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result v6

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1000(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result v4

    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v6}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1100(Lcom/oneplus/lib/widget/RadialTimePickerView;)[I

    move-result-object v6

    aget v6, v6, v5

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v6}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1200(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result v6

    :goto_2
    int-to-float v6, v6

    iget-object v7, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v7, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1300(Lcom/oneplus/lib/widget/RadialTimePickerView;I)I

    move-result v7

    int-to-float v7, v7

    move v12, v6

    move v6, v4

    move v4, v7

    move v7, v12

    goto :goto_3

    :cond_3
    if-ne v0, v1, :cond_4

    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1000(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result v4

    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v6}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1100(Lcom/oneplus/lib/widget/RadialTimePickerView;)[I

    move-result-object v6

    aget v6, v6, v2

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v6, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1400(Lcom/oneplus/lib/widget/RadialTimePickerView;I)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v7}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1200(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result v7

    int-to-float v7, v7

    move v12, v6

    move v6, v4

    move v4, v12

    goto :goto_3

    :cond_4
    move v6, v4

    move v7, v6

    :goto_3
    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1500(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v6

    add-float/2addr v10, v4

    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1600(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v6, v8

    sub-float/2addr v4, v6

    sub-float v6, v10, v7

    float-to-int v6, v6

    sub-float v8, v4, v7

    float-to-int v8, v8

    add-float/2addr v10, v7

    float-to-int v9, v10

    add-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v3, v6, v8, v9, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    if-ne v0, v2, :cond_5

    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v3

    if-ne v3, p1, :cond_6

    goto :goto_4

    :cond_5
    if-ne v0, v1, :cond_6

    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v3

    if-ne v3, p1, :cond_6

    :goto_4
    move v5, v2

    :cond_6
    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_8

    add-int/2addr p1, v2

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$200(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x17

    goto :goto_5

    :cond_7
    const/16 v1, 0xc

    :goto_5
    if-gt p1, v1, :cond_a

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p1

    goto :goto_6

    :cond_8
    if-ne v0, v1, :cond_a

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    rem-int/lit8 v2, p1, 0x5

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x5

    if-ge p1, v1, :cond_9

    if-le v2, v1, :cond_9

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p1

    goto :goto_6

    :cond_9
    const/16 p1, 0x3c

    if-ge v2, p1, :cond_a

    invoke-direct {p0, v0, v2}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p1

    goto :goto_6

    :cond_a
    move p1, v3

    :goto_6
    if-eq p1, v3, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object p0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p2, p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    :cond_b
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x1000

    if-eq p2, p1, :cond_2

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    return p3

    :cond_2
    invoke-direct {p0, p3}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    return p3
.end method
