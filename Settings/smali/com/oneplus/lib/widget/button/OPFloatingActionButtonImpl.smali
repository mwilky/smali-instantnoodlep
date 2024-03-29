.class Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;
.super Ljava/lang/Object;
.source "OPFloatingActionButtonImpl.java"


# static fields
.field static final EMPTY_STATE_SET:[I

.field static final FOCUSED_ENABLED_STATE_SET:[I

.field static final PRESSED_ENABLED_STATE_SET:[I


# instance fields
.field private mBorderDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsHiding:Z

.field private mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

.field final mShadowViewDelegate:Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;

.field private mShapeDrawable:Landroid/graphics/drawable/Drawable;

.field final mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method constructor <init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    iput-object p2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShadowViewDelegate:Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x10c000d

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mIsHiding:Z

    return p1
.end method


# virtual methods
.method hide(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mIsHiding:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/button/FastOutSlowInInterpolator;

    invoke-direct {v1}, Lcom/oneplus/lib/widget/button/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;-><init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->internalSetVisibility(IZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method jumpDrawableToCurrentState()V
    .locals 0

    return-void
.end method

.method onDrawableStateChanged([I)V
    .locals 0

    return-void
.end method

.method setBackground(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    const/4 p1, 0x0

    const/4 p3, 0x0

    if-lez p5, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;

    invoke-direct {v1}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;-><init>()V

    const v2, 0x7f060153

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x7f060152

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const v4, 0x7f060150

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const v5, 0x7f060151

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->setGradientColors(IIII)V

    int-to-float p5, p5

    invoke-virtual {v1, p5}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->setBorderWidth(F)V

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->setTintColor(I)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    const/4 p5, 0x2

    new-array p5, p5, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v0, p5, p3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v1, p5, v0

    invoke-direct {p2, p5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    new-instance p5, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-direct {p5, p4, p2, p1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p5, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    iget-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShadowViewDelegate:Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;

    iget-object p2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    check-cast p1, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;

    iget-object p1, p1, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-static {p1, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$201(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShadowViewDelegate:Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;

    check-cast p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;

    iget-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-static {p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$000(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-static {p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$100(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)I

    move-result p2

    add-int/2addr p2, p3

    iget-object p4, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-static {p4}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$100(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)I

    move-result p4

    add-int/2addr p4, p3

    iget-object p5, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-static {p5}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$100(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)I

    move-result p5

    add-int/2addr p5, p3

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-static {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$100(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)I

    move-result p0

    add-int/2addr p3, p0

    invoke-virtual {p1, p2, p4, p5, p3}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method setPressedTranslationZ(F)V
    .locals 7

    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    sget-object v1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    const-string v6, "translationZ"

    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object v1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    new-array v4, v3, [F

    aput p1, v4, v5

    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1, p1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object p1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    new-array v2, v3, [F

    const/4 v3, 0x0

    aput v3, v2, v5

    invoke-static {v1, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p1, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    return-void
.end method

.method setRippleColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
