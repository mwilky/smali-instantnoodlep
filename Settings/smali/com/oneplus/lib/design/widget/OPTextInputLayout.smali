.class public Lcom/oneplus/lib/design/widget/OPTextInputLayout;
.super Landroid/widget/LinearLayout;
.source "OPTextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/OPTextInputLayout$TextInputAccessibilityDelegate;,
        Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field final mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

.field mCounterEnabled:Z

.field private mCounterMaxLength:I

.field private mCounterOverflowTextAppearance:I

.field private mCounterOverflowed:Z

.field private mCounterTextAppearance:I

.field private mCounterView:Landroid/widget/TextView;

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field mEditText:Landroid/widget/EditText;

.field private mError:Ljava/lang/CharSequence;

.field private mErrorEnabled:Z

.field private mErrorShown:Z

.field private mErrorTextAppearance:I

.field mErrorView:Landroid/widget/TextView;

.field private mFocusedTextColor:Landroid/content/res/ColorStateList;

.field private mHasPasswordToggleTintList:Z

.field private mHasPasswordToggleTintMode:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintAnimationEnabled:Z

.field private mHintEnabled:Z

.field private mHintExpanded:Z

.field private mInDrawableStateChanged:Z

.field private mIndicatorArea:Landroid/widget/LinearLayout;

.field private mIndicatorsAdded:I

.field private final mInputFrame:Landroid/widget/FrameLayout;

.field private mOriginalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

.field private mOriginalHint:Ljava/lang/CharSequence;

.field private mPasswordToggleContentDesc:Ljava/lang/CharSequence;

.field private mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

.field private mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

.field private mPasswordToggleEnabled:Z

.field private mPasswordToggleTintList:Landroid/content/res/ColorStateList;

.field private mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

.field private mPasswordToggledVisible:Z

.field private mRestoringSavedState:Z

.field private mTmpPaint:Landroid/graphics/Paint;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAddStatesFromChildren(Z)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    sget-object v2, Lcom/oneplus/lib/design/widget/OPAnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    const v2, 0x800033

    invoke-virtual {p1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout:[I

    const v3, 0x7f1305d0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const/16 p3, 0x8

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintAnimationEnabled:Z

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_android_textColorHint:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_android_textColorHint:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    :cond_0
    const/16 p3, 0xa

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHintTextAppearance(I)V

    :cond_1
    const/4 p3, 0x7

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorTextAppearance:I

    const/4 p3, 0x6

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setCounterMaxLength(I)V

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterTextAppearance:I

    const/4 v6, 0x4

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowTextAppearance:I

    const/16 v6, 0xd

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintList:Z

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintList:Landroid/content/res/ColorStateList;

    :cond_2
    const/16 v6, 0xf

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintMode:Z

    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v7, 0x0

    if-eq v3, v4, :cond_7

    if-eq v3, v5, :cond_6

    if-eq v3, p2, :cond_5

    if-eq v3, v1, :cond_4

    if-eq v3, v6, :cond_3

    goto :goto_0

    :cond_3
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_4
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_5
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_6
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_7
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    iput-object v7, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setErrorEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setCounterEnabled(Z)V

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->applyPasswordToggleTint()V

    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_9

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_9
    new-instance p1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$TextInputAccessibilityDelegate;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$TextInputAccessibilityDelegate;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-static {p0, p1}, Lcom/oneplus/support/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mRestoringSavedState:Z

    return p0
.end method

.method private addIndicator(Landroid/widget/TextView;I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    new-instance v0, Lcom/oneplus/support/core/widget/Space;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/oneplus/support/core/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->adjustIndicatorPadding()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorsAdded:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorsAdded:I

    return-void
.end method

.method private adjustIndicatorPadding()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/oneplus/support/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result p0

    const/4 v3, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method private applyPasswordToggleTint()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintList:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintList:Landroid/content/res/ColorStateList;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_3

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private hasPasswordTransformation()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static recursiveSetEnabled(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeIndicator(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorsAdded:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorsAdded:I

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_6

    instance-of v0, p1, Lcom/oneplus/lib/design/widget/OPTextInputEditText;

    if-nez v0, :cond_0

    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a OPTextInputEditText. Please switch to using that class instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->hasPasswordTransformation()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextSize(F)V

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getGravity()I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    and-int/lit8 v1, p1, -0x71

    or-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$1;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    :cond_2
    iget-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateCounter(I)V

    :cond_4
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->adjustIndicatorPadding()V

    :cond_5
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updatePasswordToggleView()V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(ZZ)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "We already have an EditText, can only have one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateEditTextBackground()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/oneplus/lib/design/widget/OPDrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->refreshDrawableState()V

    :goto_0
    return-void
.end method

.method private updateInputLayoutMargins()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCollapsedTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method private updatePasswordToggleView()V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->hasPasswordTransformation()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f0d01aa

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    new-instance v5, Lcom/oneplus/lib/design/widget/OPTextInputLayout$4;

    invoke-direct {v5, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$4;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-static {v5}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setMinimumHeight(I)V

    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-boolean v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0, v2, v2, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v5, v0, v4

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v5, v6, :cond_6

    aget-object v4, v0, v4

    iput-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    :cond_6
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    aget-object v2, v0, v2

    aget-object v1, v0, v1

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v2, v1, v5, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/ImageButton;->setPadding(IIII)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v4, v0, v4

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    aget-object v2, v0, v2

    aget-object v1, v0, v1

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v2, v1, v5, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    :cond_9
    :goto_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateInputLayoutMargins()V

    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setEditText(Landroid/widget/EditText;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method animateToExpansionFraction(F)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$5;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$5;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mRestoringSavedState:Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mRestoringSavedState:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInDrawableStateChanged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInDrawableStateChanged:Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(Z)V

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateEditTextBackground()V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setState([I)Z

    move-result v0

    or-int/2addr v0, v3

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_3
    iput-boolean v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInDrawableStateChanged:Z

    return-void
.end method

.method public getCounterMaxLength()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    return p0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mError:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method final isHintExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p0, p1, p2}, Lcom/oneplus/lib/design/widget/OPViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget-object p4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result p4

    add-int/2addr p4, p1

    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p4, v2, p1, p2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    iget-object p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p2, p4, v0, p1, p5}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updatePasswordToggleView()V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    invoke-virtual {p1}, Lcom/oneplus/support/core/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    :cond_0
    return-object v1
.end method

.method passwordVisibilityToggleRequested()V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->hasPasswordTransformation()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterEnabled:Z

    if-eq v0, p1, :cond_3

    if-eqz p1, :cond_2

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    const v1, 0x7f0a0501

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterTextAppearance:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    const v1, 0x10301f1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0603cb

    invoke-static {v1, v2}, Lcom/oneplus/support/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->addIndicator(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateCounter(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateCounter(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->removeIndicator(Landroid/widget/TextView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterEnabled:Z

    :cond_3
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    if-eq v0, p1, :cond_2

    if-lez p1, :cond_0

    iput p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    :goto_0
    iget-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterEnabled:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateCounter(I)V

    :cond_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 7

    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mError:Ljava/lang/CharSequence;

    iget-boolean v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    if-nez v3, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setErrorEnabled(Z)V

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolatorSine:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, p1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_4
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$2;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$2;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateEditTextBackground()V

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(Z)V

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x41700000    # 15.0f
        0x0
    .end array-data
.end method

.method public setErrorEnabled(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    const v2, 0x7f0a0502

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    iget v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorTextAppearance:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, -0xff01

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :catch_0
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    const v3, 0x10301f1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0603cb

    invoke-static {v3, v4}, Lcom/oneplus/support/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/oneplus/support/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->addIndicator(Landroid/widget/TextView;I)V

    goto :goto_2

    :cond_4
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateEditTextBackground()V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->removeIndicator(Landroid/widget/TextView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    :goto_2
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    :cond_5
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 1

    iput p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorTextAppearance:I

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x800

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintAnimationEnabled:Z

    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eq p1, v0, :cond_4

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateInputLayoutMargins()V

    :cond_4
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(Z)V

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateInputLayoutMargins()V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updatePasswordToggleView()V

    :cond_1
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintList:Z

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->applyPasswordToggleTint()V

    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintMode:Z

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->applyPasswordToggleTint()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    return-void
.end method

.method updateCounter(I)V
    .locals 7

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    iget v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    if-le p1, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    if-eq v0, v1, :cond_3

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowTextAppearance:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterTextAppearance:I

    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f121141

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    iget p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    if-eq v0, p1, :cond_4

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(Z)V

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateEditTextBackground()V

    :cond_4
    return-void
.end method

.method updateLabelState(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(ZZ)V

    return-void
.end method

.method updateLabelState(ZZ)V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v4

    const v5, 0x101009c

    array-length v6, v4

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_2

    aget v8, v4, v7

    if-ne v8, v5, :cond_1

    move v4, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v3

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v7, v6}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_6

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v6, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_6
    :goto_3
    if-nez v1, :cond_b

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v4, :cond_b

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    if-nez p2, :cond_8

    iget-boolean p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    if-nez p2, :cond_f

    :cond_8
    iget-object p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    const/4 p2, 0x0

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    :goto_4
    iput-boolean v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    goto :goto_7

    :cond_b
    :goto_5
    if-nez p2, :cond_c

    iget-boolean p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    if-eqz p2, :cond_f

    :cond_c
    iget-object p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_e

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_6

    :cond_e
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    :goto_6
    iput-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    :cond_f
    :goto_7
    return-void
.end method
