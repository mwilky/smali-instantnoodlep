.class Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;
.super Ljava/lang/Object;
.source "FocusHighlightHelper.java"

# interfaces
.implements Landroidx/leanback/widget/FocusHighlightHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/FocusHighlightHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HeaderItemFocusHighlight"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight$HeaderFocusAnimator;
    }
.end annotation


# instance fields
.field private mDuration:I

.field private mInitialized:Z

.field private mSelectScale:F


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onItemFocused(Landroid/view/View;Z)V
    .locals 4

    iget-boolean v0, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mInitialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x7f0701ce

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mSelectScale:F

    const v2, 0x7f0701cd

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v0, v1, Landroid/util/TypedValue;->data:I

    iput v0, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mDuration:I

    iput-boolean v3, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mInitialized:Z

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0a03a9

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;

    if-nez v1, :cond_1

    new-instance v1, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight$HeaderFocusAnimator;

    iget v2, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mSelectScale:F

    iget p0, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mDuration:I

    invoke-direct {v1, p1, v2, p0}, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight$HeaderFocusAnimator;-><init>(Landroid/view/View;FI)V

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v1, p2, p0}, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->animateFocus(ZZ)V

    return-void
.end method
