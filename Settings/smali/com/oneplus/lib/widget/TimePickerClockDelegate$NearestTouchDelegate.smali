.class Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NearestTouchDelegate"
.end annotation


# instance fields
.field private mInitialTouchTarget:Landroid/view/View;


# direct methods
.method synthetic constructor <init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_3

    instance-of v6, v1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const v10, 0x7fffffff

    move-object v11, v5

    move v12, v10

    move v10, v4

    :goto_0
    if-ge v10, v9, :cond_1

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v14

    sub-int v14, v7, v15

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v16, v16, v15

    sub-int v15, v8, v16

    mul-int/2addr v14, v14

    mul-int/2addr v15, v15

    add-int/2addr v15, v14

    if-le v12, v15, :cond_0

    move-object v11, v13

    move v12, v15

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    iput-object v11, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    goto :goto_1

    :cond_2
    iput-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    :cond_3
    :goto_1
    iget-object v6, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    if-nez v6, :cond_4

    return v4

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v1, v7

    int-to-float v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v6, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    neg-float v4, v4

    neg-float v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v1, 0x1

    if-eq v3, v1, :cond_5

    const/4 v1, 0x3

    if-ne v3, v1, :cond_6

    :cond_5
    iput-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    :cond_6
    return v6
.end method
