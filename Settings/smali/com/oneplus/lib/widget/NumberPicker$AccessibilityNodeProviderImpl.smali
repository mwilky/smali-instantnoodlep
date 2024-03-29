.class Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/oneplus/lib/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p3, v1}, Lcom/oneplus/lib/widget/util/ViewUtils;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object p4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p4, p3}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const/4 p4, 0x0

    aget p4, p3, p4

    aget p2, p3, p2

    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_0

    const/16 p2, 0x40

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_1

    const/16 p1, 0x80

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    return-object v0
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p2}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p2}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1800(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1900(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$2000(Lcom/oneplus/lib/widget/NumberPicker;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$2100(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$2200(Lcom/oneplus/lib/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p0}, Lcom/oneplus/lib/widget/NumberPicker;->access$2100(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result p0

    sub-int/2addr v0, p0

    aget-object p0, v1, v0

    :goto_0
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1800(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1900(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$2000(Lcom/oneplus/lib/widget/NumberPicker;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1000(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$2200(Lcom/oneplus/lib/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p0}, Lcom/oneplus/lib/widget/NumberPicker;->access$2100(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result p0

    sub-int/2addr v0, p0

    aget-object p0, v1, v0

    :goto_0
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasVirtualDecrementButton()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getMinValue()I

    move-result p0

    if-le v0, p0, :cond_0

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

.method private hasVirtualIncrementButton()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getMaxValue()I

    move-result p0

    if-ge v0, p0, :cond_0

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

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    iget-object p3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0, p0, p2}, Landroid/widget/LinearLayout;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 12

    const/16 v0, 0x80

    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq p1, v4, :cond_5

    if-eq p1, v6, :cond_4

    if-eq p1, v5, :cond_1

    if-eq p1, v3, :cond_0

    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v4

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, v0, p1

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1700(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v0

    add-int v6, p1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v4}, Lcom/oneplus/lib/widget/NumberPicker;->access$1700(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v4

    iget-object v7, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v7, v4

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v4}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v4

    iget-object v8, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v8}, Lcom/oneplus/lib/widget/NumberPicker;->access$1700(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v8

    sub-int/2addr v4, v8

    iget-object v8, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v8}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v8, v9, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget v9, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v9, v5, :cond_2

    invoke-virtual {v8, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, v5, :cond_3

    invoke-virtual {v8, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v3, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p1, v0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p1

    invoke-virtual {v8, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v8, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    aget p0, p1, v2

    aget p1, p1, v6

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v8, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v8

    :cond_4
    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v4

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1700(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v0

    sub-int v5, p1, v0

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v6, v0, p1

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v7, v0, p1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v7, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v7

    iget-object v8, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v8

    iget-object v9, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getRight()I

    move-result v9

    iget-object v10, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v9, v8

    iget-object v8, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v8

    iget-object v10, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v10

    iget-object v11, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v10, v8

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    const-class v11, Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v8, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v8, v11, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_6
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v8, v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v8, v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_7
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v3

    invoke-virtual {v8, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v8, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {v3, p1}, Lcom/oneplus/lib/widget/util/ViewUtils;->scaleRect(Landroid/graphics/Rect;F)V

    invoke-virtual {v8, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v5, v3}, Lcom/oneplus/lib/widget/util/ViewUtils;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v5

    invoke-virtual {v8, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object v7, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    aget v2, v5, v2

    aget v5, v5, v6

    invoke-virtual {v3, v2, v5}, Landroid/graphics/Rect;->offset(II)V

    invoke-static {v3, p1}, Lcom/oneplus/lib/widget/util/ViewUtils;->scaleRect(Landroid/graphics/Rect;F)V

    invoke-virtual {v8, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p1, v4, :cond_8

    invoke-virtual {v8, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_8
    iget p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p1, v4, :cond_9

    invoke-virtual {v8, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_9
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getMaxValue()I

    move-result v0

    if-ge p1, v0, :cond_b

    :cond_a
    const/16 p1, 0x1000

    invoke-virtual {v8, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_b
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->getMinValue()I

    move-result p0

    if-le p1, p0, :cond_d

    :cond_c
    const/16 p0, 0x2000

    invoke-virtual {v8, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_d
    return-object v8
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v5, :cond_1

    if-eq p2, v4, :cond_1

    if-eq p2, v3, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0, v0, p2, v1}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :cond_2
    invoke-direct {p0, v0, v3, v1}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {p0, v0, v4, v1}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {p0, v0, v5, v1}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 9

    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/16 v2, 0x80

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_1c

    const/high16 v0, 0x10000

    const v6, 0x8000

    const/16 v7, 0x10

    if-eq p1, v4, :cond_15

    const/4 v8, 0x2

    if-eq p1, v8, :cond_8

    const/4 v8, 0x3

    if-eq p1, v8, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq p2, v7, :cond_5

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_1

    return v5

    :cond_1
    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_2

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRight()I

    move-result p2

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result p0

    invoke-virtual {p1, v5, v5, p2, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_2
    return v5

    :cond_3
    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_4

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v6}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRight()I

    move-result p2

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result p0

    invoke-virtual {p1, v5, v5, p2, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_4
    return v5

    :cond_5
    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    if-ne p1, v4, :cond_6

    move v5, v4

    :cond_6
    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p2, v5}, Lcom/oneplus/lib/widget/NumberPicker;->access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V

    invoke-virtual {p0, p1, v4}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_7
    return v5

    :cond_8
    if-eq p2, v4, :cond_13

    if-eq p2, v8, :cond_11

    if-eq p2, v7, :cond_f

    const/16 v7, 0x20

    if-eq p2, v7, :cond_d

    if-eq p2, v3, :cond_b

    if-eq p2, v2, :cond_9

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_9
    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_a

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return v4

    :cond_a
    return v5

    :cond_b
    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_c

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v6}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return v4

    :cond_c
    return v5

    :cond_d
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->performLongClick()Z

    return v4

    :cond_e
    return v5

    :cond_f
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker;->performClick()Z

    return v4

    :cond_10
    return v5

    :cond_11
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p1}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    return v4

    :cond_12
    return v5

    :cond_13
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p1}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    move-result p0

    return p0

    :cond_14
    return v5

    :cond_15
    if-eq p2, v7, :cond_1a

    if-eq p2, v3, :cond_18

    if-eq p2, v2, :cond_16

    return v5

    :cond_16
    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_17

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getRight()I

    move-result p3

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {p1, v5, p2, p3, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_17
    return v5

    :cond_18
    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_19

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v6}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getRight()I

    move-result p3

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {p1, v5, p2, p3, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_19
    return v5

    :cond_1a
    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1b

    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p2, v4}, Lcom/oneplus/lib/widget/NumberPicker;->access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V

    invoke-virtual {p0, p1, v4}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_1b
    return v5

    :cond_1c
    if-eq p2, v3, :cond_25

    if-eq p2, v2, :cond_23

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_20

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_1d

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_1d
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/NumberPicker;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_1f

    :cond_1e
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p0, v5}, Lcom/oneplus/lib/widget/NumberPicker;->access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V

    return v4

    :cond_1f
    return v5

    :cond_20
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/NumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_22

    :cond_21
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p0, v4}, Lcom/oneplus/lib/widget/NumberPicker;->access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V

    return v4

    :cond_22
    return v5

    :cond_23
    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_24

    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return v4

    :cond_24
    return v5

    :cond_25
    iget p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_26

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return v4

    :cond_26
    return v5
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p2}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p2}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1, p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0, p0, p1}, Landroid/widget/LinearLayout;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
