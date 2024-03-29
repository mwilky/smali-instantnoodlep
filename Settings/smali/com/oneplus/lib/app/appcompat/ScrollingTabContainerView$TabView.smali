.class Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private final BG_ATTRS:[I

.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;Landroid/content/Context;Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Z)V
    .locals 4

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    const p1, 0x7f040012

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100d4

    aput v3, v1, v2

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->BG_ATTRS:[I

    iput-object p3, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mTab:Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    iget-object p3, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->BG_ATTRS:[I

    invoke-static {p2, v0, p3, p1, v2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    if-eqz p4, :cond_1

    const p1, 0x800013

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->update()V

    return-void
.end method


# virtual methods
.method public bindTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mTab:Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->update()V

    return-void
.end method

.method public getTab()Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mTab:Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-class p0, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 p1, 0x2

    new-array v0, p1, [I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mTab:Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v5, 0x0

    invoke-static {v1, p0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    aget v0, v0, v5

    div-int/2addr v2, p1

    add-int/2addr v2, v0

    div-int/2addr v4, p1

    sub-int/2addr v2, v4

    const/16 p1, 0x31

    invoke-virtual {p0, p1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget p1, p1, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mMaxTabWidth:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget v0, v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mMaxTabWidth:I

    if-le p1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method public update()V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mTab:Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    :cond_4
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v7, 0x0

    if-eqz v1, :cond_6

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v8, :cond_5

    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iput-object v8, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    :cond_5
    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_8

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f040013

    invoke-direct {v2, v8, v3, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    :cond_8
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_1
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_b
    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    :cond_c
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    :cond_d
    :goto_2
    return-void
.end method
