.class Lcom/oneplus/lib/app/appcompat/TooltipPopup;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# instance fields
.field private final mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mMessageView:Landroid/widget/TextView;

.field private final mTmpAnchorPos:[I

.field private final mTmpAppPos:[I

.field private final mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mTmpAnchorPos:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mTmpAppPos:[I

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0167

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mContentView:Landroid/view/View;

    const v0, 0x7f0a03f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-class v0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 p1, 0x3ea

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p1, -0x2

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p1, -0x3

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const p1, 0x7f130142

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 p1, 0x18

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method


# virtual methods
.method hide()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->hide()V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p5, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0704f1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/2addr p2, v4

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lt v3, v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0704f0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int v3, p3, v0

    sub-int/2addr p3, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    move p3, v2

    :goto_2
    const/16 v0, 0x31

    iput v0, p5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p4, :cond_4

    const v5, 0x7f0704f4

    goto :goto_3

    :cond_4
    const v5, 0x7f0704f3

    :goto_3
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_5

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v6, v4, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    :goto_4
    instance-of v7, v6, Landroid/content/ContextWrapper;

    if-eqz v7, :cond_7

    instance-of v7, v6, Landroid/app/Activity;

    if-eqz v7, :cond_6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    goto :goto_5

    :cond_6
    check-cast v6, Landroid/content/ContextWrapper;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    goto :goto_4

    :cond_7
    :goto_5
    if-nez v5, :cond_8

    const-string p1, "TooltipPopup"

    const-string p2, "Cannot find app view"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_8
    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    if-gez v7, :cond_a

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-gez v6, :cond_a

    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "status_bar_height"

    const-string v8, "dimen"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_6

    :cond_9
    move v7, v2

    :goto_6
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v8, v2, v7, v9, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_a
    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mTmpAppPos:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mTmpAnchorPos:[I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mTmpAnchorPos:[I

    aget v6, p1, v2

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mTmpAppPos:[I

    aget v8, v7, v2

    sub-int/2addr v6, v8

    aput v6, p1, v2

    aget v6, p1, v1

    aget v7, v7, v1

    sub-int/2addr v6, v7

    aput v6, p1, v1

    aget p1, p1, v2

    add-int/2addr p1, p2

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/2addr p2, v4

    sub-int/2addr p1, p2

    iput p1, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {p2, p1, p1}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mTmpAnchorPos:[I

    aget v2, p2, v1

    add-int/2addr v2, p3

    sub-int/2addr v2, v0

    sub-int/2addr v2, p1

    aget p2, p2, v1

    add-int/2addr p2, v3

    add-int/2addr p2, v0

    if-eqz p4, :cond_c

    if-ltz v2, :cond_b

    iput v2, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_7

    :cond_b
    iput p2, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_7

    :cond_c
    add-int/2addr p1, p2

    iget-object p3, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-gt p1, p3, :cond_d

    iput p2, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_7

    :cond_d
    iput v2, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_7
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
