.class public Lcom/oneplus/lib/widget/listview/OPListView;
.super Landroid/widget/ListView;
.source "OPListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;
    }
.end annotation


# instance fields
.field private mAnimRunning:Z

.field private mAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mDelAniSet:Landroid/animation/AnimatorSet;

.field private mDelAnimationFlag:Z

.field private mDelOriViewTopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelPosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mFooterDividersEnabled:Z

.field private mHeaderDividersEnabled:Z

.field private mIsClipToPadding:Z

.field private mIsDisableAnimation:Z

.field private mNowViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOriBelowLeftCount:I

.field private mOriCurDeleteCount:I

.field private mOriCurLeftCount:I

.field private mOriFirstPosition:I

.field private mOriLastPage:Z

.field private mOriUpperDeleteCount:I

.field mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x1010074

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/oneplus/lib/widget/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/oneplus/lib/widget/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    iput p3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    iput-boolean p3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsDisableAnimation:Z

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance p4, Landroid/view/animation/DecelerateInterpolator;

    const v0, 0x3f99999a    # 1.2f

    invoke-direct {p4, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mTempRect:Landroid/graphics/Rect;

    iput-boolean p3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mHeaderDividersEnabled:Z

    iput-boolean p3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mFooterDividersEnabled:Z

    iput-boolean p3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsClipToPadding:Z

    new-instance p4, Lcom/oneplus/lib/widget/listview/OPListView$1;

    invoke-direct {p4, p0}, Lcom/oneplus/lib/widget/listview/OPListView$1;-><init>(Lcom/oneplus/lib/widget/listview/OPListView;)V

    iput-object p4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    sget-object p4, Lcom/oneplus/commonctrl/R$styleable;->OPListView:[I

    const/4 v0, 0x0

    const v1, 0x7f040004

    invoke-virtual {p1, p2, p4, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->OPListView_android_background:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/listview/OPListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0702ad

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setOverScrollMode(I)V

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const p3, 0x106000d

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-super {p0, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget p2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/listview/OPListView;->setFooterDividersEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$702(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private shouldDrawDivider(I)Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getOverscrollHeader()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getOverscrollFooter()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    if-nez v6, :cond_3

    if-nez v2, :cond_3

    if-eqz v3, :cond_1a

    :cond_3
    iget-object v7, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getRight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCount()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v11

    sub-int/2addr v10, v11

    iget-boolean v11, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mHeaderDividersEnabled:Z

    iget-boolean v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mFooterDividersEnabled:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    iget-boolean v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsClipToPadding:Z

    if-eqz v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v15

    goto :goto_3

    :cond_4
    move v14, v4

    move v15, v14

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getBottom()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v16, v16, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v15

    add-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isStackFromBottom()Z

    move-result v16

    const/4 v5, -0x1

    if-nez v16, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v2

    if-lez v8, :cond_5

    if-gez v2, :cond_5

    if-eqz v6, :cond_5

    iput v4, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v2

    neg-int v2, v2

    iput v2, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v7, v5}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_5
    move v2, v4

    :goto_4
    if-ge v2, v8, :cond_1a

    add-int v5, v13, v2

    if-ge v5, v9, :cond_6

    const/4 v14, 0x1

    goto :goto_5

    :cond_6
    move v14, v4

    :goto_5
    if-lt v5, v10, :cond_7

    const/16 v16, 0x1

    goto :goto_6

    :cond_7
    move/from16 v16, v4

    :goto_6
    if-nez v11, :cond_8

    if-nez v14, :cond_9

    :cond_8
    if-nez v12, :cond_a

    if-nez v16, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v19, v13

    goto :goto_9

    :cond_a
    :goto_7
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v4

    move/from16 v19, v13

    add-int/lit8 v13, v8, -0x1

    if-ne v2, v13, :cond_b

    const/4 v13, 0x1

    goto :goto_8

    :cond_b
    const/4 v13, 0x0

    :goto_8
    if-eqz v6, :cond_f

    invoke-direct {v0, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->shouldDrawDivider(I)Z

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v20

    if-lez v20, :cond_f

    if-ge v4, v15, :cond_f

    if-eqz v3, :cond_c

    if-nez v13, :cond_f

    :cond_c
    add-int/lit8 v5, v5, 0x1

    if-nez v11, :cond_d

    if-nez v14, :cond_f

    if-lt v5, v9, :cond_f

    :cond_d
    if-nez v13, :cond_e

    if-nez v12, :cond_e

    if-nez v16, :cond_f

    if-ge v5, v10, :cond_f

    :cond_e
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTranslationY()F

    move-result v5

    float-to-int v5, v5

    add-int v13, v4, v5

    iput v13, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v13

    add-int/2addr v13, v4

    add-int/2addr v13, v5

    iput v13, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v7, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_f
    :goto_9
    add-int/lit8 v2, v2, 0x1

    move/from16 v13, v19

    const/4 v4, 0x0

    goto :goto_4

    :cond_10
    move/from16 v19, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v3

    move v4, v2

    :goto_a
    if-ge v4, v8, :cond_19

    add-int v13, v19, v4

    if-ge v13, v9, :cond_11

    const/16 v16, 0x1

    goto :goto_b

    :cond_11
    const/16 v16, 0x0

    :goto_b
    if-lt v13, v10, :cond_12

    const/16 v18, 0x1

    goto :goto_c

    :cond_12
    const/16 v18, 0x0

    :goto_c
    if-nez v11, :cond_13

    if-nez v16, :cond_18

    :cond_13
    if-nez v12, :cond_14

    if-nez v18, :cond_18

    :cond_14
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v5

    if-eqz v6, :cond_18

    invoke-direct {v0, v4}, Lcom/oneplus/lib/widget/listview/OPListView;->shouldDrawDivider(I)Z

    if-le v5, v14, :cond_18

    if-ne v4, v2, :cond_15

    const/16 v20, 0x1

    goto :goto_d

    :cond_15
    const/16 v20, 0x0

    :goto_d
    add-int/lit8 v13, v13, -0x1

    if-nez v11, :cond_16

    if-nez v16, :cond_18

    if-lt v13, v9, :cond_18

    :cond_16
    if-nez v20, :cond_17

    if-nez v12, :cond_17

    if-nez v18, :cond_18

    if-ge v13, v10, :cond_18

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v13

    sub-int v13, v5, v13

    iput v13, v7, Landroid/graphics/Rect;->top:I

    iput v5, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, v1, v7, v5}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_18
    add-int/lit8 v4, v4, 0x1

    const/4 v5, -0x1

    goto :goto_a

    :cond_19
    if-lez v8, :cond_1a

    if-lez v3, :cond_1a

    if-eqz v6, :cond_1a

    iput v15, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v2

    add-int/2addr v2, v15

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v7, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_1a
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    sub-int/2addr v5, v2

    if-ne v4, v5, :cond_1b

    const/4 v2, 0x1

    goto :goto_e

    :cond_1b
    const/4 v2, 0x0

    :goto_e
    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_f

    :cond_1c
    const/4 v1, 0x0

    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getTop()I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getBottom()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    if-nez v6, :cond_1d

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    goto :goto_10

    :cond_1d
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :goto_10
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_11
    if-ge v6, v5, :cond_1f

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v6, :cond_1e

    if-eqz v8, :cond_1e

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v7

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_1f
    iget-boolean v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriLastPage:Z

    const-string v8, "OPListView"

    if-nez v6, :cond_2c

    if-nez v2, :cond_22

    iget v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-nez v1, :cond_20

    const-string v1, "DeleteAnimation Case 1"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    :cond_20
    iget v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v1, v2, :cond_21

    const-string v1, "DeleteAnimation Case 3 "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1a

    :cond_21
    const-string v1, "DeleteAnimation Case 2 "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_12
    iget v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-ge v1, v2, :cond_34

    iget-object v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_22
    if-nez v1, :cond_27

    iget v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-nez v1, :cond_23

    const-string v1, "DeleteAnimation Case 4 "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_23
    iget v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v2, :cond_25

    iget v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v1, v2, :cond_24

    const-string v1, "DeleteAnimation Case 9 "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_24
    const-string v1, "DeleteAnimation Case 10 "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_25
    iget v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v1, v2, :cond_26

    const-string v1, "DeleteAnimation Case 5 "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_26
    const-string v1, "DeleteAnimation Case 6 "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_27
    iget v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v1, :cond_28

    const-string v1, "DeleteAnimation Case 11 "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_28
    iget v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    iget v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v1, v2, :cond_29

    const-string v1, "DeleteAnimation Case 7 "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_29
    const-string v1, "DeleteAnimation Case 8 "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    const/4 v1, 0x0

    :goto_14
    iget v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriBelowLeftCount:I

    if-ge v1, v2, :cond_2a

    iget-object v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    mul-int v6, v1, v7

    add-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2a
    iget-object v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_2b

    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2b
    const/4 v1, 0x1

    :goto_16
    iget-object v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v3, v2, :cond_34

    iget-object v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    neg-int v6, v7

    mul-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    add-int/2addr v1, v2

    goto :goto_16

    :cond_2c
    iget v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-nez v2, :cond_2e

    iget v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v1, :cond_2d

    goto :goto_18

    :cond_2d
    const-string v1, "DeleteAnimation Case 14 "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_2e
    iget v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v6, :cond_30

    iget v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v2, v1, :cond_2f

    const-string v1, "DeleteAnimation Case 12 "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_18

    :cond_2f
    const-string v1, "DeleteAnimation Case 13 "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_17
    iget v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-ge v1, v2, :cond_33

    iget-object v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_30
    if-nez v1, :cond_32

    iget v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v2, v1, :cond_31

    const-string v1, "DeleteAnimation Case 15 "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_31
    const-string v1, "DeleteAnimation Case 16 "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_32
    const-string v1, "DeleteAnimation Case 17 "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_18
    const/4 v1, 0x1

    :goto_19
    iget-object v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v3, v2, :cond_34

    iget-object v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    neg-int v6, v7

    mul-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    add-int/2addr v1, v2

    goto :goto_19

    :cond_34
    :goto_1a
    iget-object v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_35

    iget-object v3, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    mul-int v6, v7, v2

    add-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_35
    const/4 v2, 0x1

    sub-int/2addr v5, v2

    const/4 v1, 0x0

    :goto_1c
    if-ltz v5, :cond_38

    iget-object v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_36

    iget-object v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1d

    :cond_36
    iget-object v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v2, v3, :cond_37

    add-int/lit8 v1, v1, 0x1

    :cond_37
    :goto_1d
    add-int/lit8 v5, v5, -0x1

    goto :goto_1c

    :cond_38
    const/4 v2, 0x1

    if-le v1, v2, :cond_3a

    iget-object v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_1e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3a

    if-ge v4, v1, :cond_39

    sub-int v5, v1, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    goto :goto_1f

    :cond_39
    move v5, v4

    :goto_1f
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_3a
    const/4 v1, 0x0

    :goto_20
    iget-object v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    iget-object v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/16 v3, 0xc8

    iget-object v4, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v1, v5, :cond_3b

    new-array v5, v6, [F

    const/4 v7, 0x0

    aput v4, v5, v7

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x1

    aput v4, v5, v6

    const-string v4, "y"

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v7

    invoke-static {v2, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_21

    :cond_3b
    const/4 v7, 0x0

    iget-object v5, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aget-object v8, v8, v7

    new-array v6, v6, [F

    aput v4, v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    const/4 v7, 0x1

    aput v4, v6, v7

    invoke-virtual {v8, v6}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-virtual {v5, v2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    move-object v2, v5

    :goto_21
    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-array v4, v7, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_20

    :cond_3c
    iget-object v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/oneplus/lib/widget/listview/OPListView$3;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/widget/listview/OPListView$3;-><init>(Lcom/oneplus/lib/widget/listview/OPListView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3d
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDividerHeight()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    return p0
.end method

.method public isDeleteAnimationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsDisableAnimation:Z

    return p0
.end method

.method public setClipToPadding(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsClipToPadding:Z

    return-void
.end method

.method public setDelPositionsList(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_12

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->isDeleteAnimationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    add-int/2addr v3, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/2addr v4, v0

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriLastPage:Z

    goto :goto_0

    :cond_3
    iput-boolean v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriLastPage:Z

    :goto_0
    iput v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    iput v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    iput v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    iput v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriBelowLeftCount:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    if-nez v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_2
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_3
    move v3, v5

    move v4, v3

    :goto_4
    if-ge v3, v0, :cond_9

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    if-ge v6, v7, :cond_7

    iget v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    goto :goto_5

    :cond_7
    add-int/2addr v7, v2

    if-ge v6, v7, :cond_8

    iget-object v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    sub-int/2addr v6, v8

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, 0x1

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    iget p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-gtz p1, :cond_b

    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_a

    goto :goto_6

    :cond_a
    move p1, v5

    goto :goto_7

    :cond_b
    :goto_6
    move p1, v1

    :goto_7
    if-nez p1, :cond_c

    iput-boolean v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    goto/16 :goto_b

    :cond_c
    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v3, v5

    :goto_8
    if-ge v3, v2, :cond_f

    if-lez p1, :cond_d

    iget v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_e

    iget-object v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_e

    iget-object v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    iget v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriBelowLeftCount:I

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_10

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    goto :goto_b

    :cond_10
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    const/16 v0, 0xc8

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    move v3, v5

    :goto_a
    if-ge v3, p1, :cond_11

    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    new-array v6, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v6, v5

    invoke-static {v4, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-array v7, v1, [Landroid/animation/Animator;

    aput-object v4, v7, v5

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_11
    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/oneplus/lib/widget/listview/OPListView$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/listview/OPListView$2;-><init>(Lcom/oneplus/lib/widget/listview/OPListView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_b
    return-void

    :cond_12
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "The input parameter d is null!"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setDeleteAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsDisableAnimation:Z

    return-void
.end method

.method public setDeleteAnimationListener(Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;)V
    .locals 0

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public setDividerController(Lcom/oneplus/lib/widget/listview/IOPDividerController;)V
    .locals 0

    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mFooterDividersEnabled:Z

    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mHeaderDividersEnabled:Z

    return-void
.end method
