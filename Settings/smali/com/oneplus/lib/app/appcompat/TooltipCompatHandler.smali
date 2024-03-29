.class Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field private static sActiveHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

.field private static sPendingHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private mAnchorX:I

.field private mAnchorY:I

.field private mFromTouch:Z

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private final mHoverSlop:I

.field private mPopup:Lcom/oneplus/lib/app/appcompat/TooltipPopup;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private final mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler$1;-><init>(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler$2;-><init>(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/support/core/view/ViewConfigurationCompat;->getScaledHoverSlop(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mHoverSlop:I

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->clearAnchorPos()V

    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->show(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->hide()V

    return-void
.end method

.method private clearAnchorPos()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorX:I

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorY:I

    return-void
.end method

.method private hide()V
    .locals 3

    sget-object v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sActiveHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_1

    sput-object v1, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sActiveHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mPopup:Lcom/oneplus/lib/app/appcompat/TooltipPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->hide()V

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mPopup:Lcom/oneplus/lib/app/appcompat/TooltipPopup;

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->clearAnchorPos()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "TooltipCompatHandler"

    const-string v2, "sActiveHandler.mPopup == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sPendingHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    if-ne v0, p0, :cond_2

    invoke-static {v1}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->setPendingHandler(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static setPendingHandler(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;)V
    .locals 3

    sget-object v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sPendingHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    sput-object p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sPendingHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    sget-object p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sPendingHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    sget-object v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sPendingHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    if-ne v0, p0, :cond_0

    invoke-static {v1}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->setPendingHandler(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sActiveHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    if-ne v0, p0, :cond_1

    invoke-direct {p1}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->hide()V

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private show(Z)V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->setPendingHandler(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;)V

    sget-object v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sActiveHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    if-eqz v0, :cond_1

    invoke-direct {v0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->hide()V

    :cond_1
    sput-object p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sActiveHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mFromTouch:Z

    new-instance p1, Lcom/oneplus/lib/app/appcompat/TooltipPopup;

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oneplus/lib/app/appcompat/TooltipPopup;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mPopup:Lcom/oneplus/lib/app/appcompat/TooltipPopup;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mPopup:Lcom/oneplus/lib/app/appcompat/TooltipPopup;

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget v3, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorX:I

    iget v4, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorY:I

    iget-boolean v5, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mFromTouch:Z

    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->show(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mFromTouch:Z

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x9c4

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-static {p1}, Lcom/oneplus/support/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_3

    const-wide/16 v0, 0xbb8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x3a98

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    :goto_0
    int-to-long v2, p1

    sub-long/2addr v0, v2

    :goto_1
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mPopup:Lcom/oneplus/lib/app/appcompat/TooltipPopup;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mFromTouch:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_3

    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->clearAnchorPos()V

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->hide()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mPopup:Lcom/oneplus/lib/app/appcompat/TooltipPopup;

    if-nez p1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorX:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mHoverSlop:I

    if-gt v1, v2, :cond_4

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorY:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mHoverSlop:I

    if-gt v1, v2, :cond_4

    move p1, v0

    goto :goto_0

    :cond_4
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorX:I

    iput p2, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorY:I

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->setPendingHandler(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;)V

    :cond_5
    :goto_1
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorX:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorY:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->show(Z)V

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->hide()V

    return-void
.end method
