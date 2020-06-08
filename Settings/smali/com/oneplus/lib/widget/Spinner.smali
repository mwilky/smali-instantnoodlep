.class public Lcom/oneplus/lib/widget/Spinner;
.super Landroid/widget/Spinner;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/Spinner$DropdownPopup;,
        Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;
    }
.end annotation


# static fields
.field private static final ATTRS_ANDROID_SPINNERMODE:[I

.field private static final IS_AT_LEAST_JB:Z

.field static final IS_AT_LEAST_M:Z


# instance fields
.field private mDropDownAdapter:Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;

.field private mDropDownWidth:I

.field private mForwardingListener:Lcom/oneplus/lib/widget/ForwardingListener;

.field private mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

.field private final mPopupContext:Landroid/content/Context;

.field private final mPopupSet:Z

.field private mSelectedItemBackground:[Landroid/graphics/drawable/Drawable;

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_M:Z

    sput-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102f1

    aput v2, v0, v1

    sput-object v0, Lcom/oneplus/lib/widget/Spinner;->ATTRS_ANDROID_SPINNERMODE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, -0x1

    const v1, 0x1010081

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/oneplus/lib/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, -0x1

    const v1, 0x1010081

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/oneplus/lib/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/oneplus/lib/widget/Spinner;->mSelectedItemBackground:[Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->Spinner:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-direct {v4, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/Spinner;->mSelectedItemBackground:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080499

    iget-object v6, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/Spinner;->mSelectedItemBackground:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080498

    iget-object v6, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v3, p0, Lcom/oneplus/lib/widget/Spinner;->mSelectedItemBackground:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f080497

    iget-object v7, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-object v3, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    if-ne p4, v3, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    :try_start_0
    sget-object v3, Lcom/oneplus/lib/widget/Spinner;->ATTRS_ANDROID_SPINNERMODE:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v4, v3

    goto :goto_3

    :catch_0
    move-exception v7

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v7, v3

    move-object v3, v4

    :goto_1
    :try_start_2
    const-string v8, "OpSpinner"

    const-string v9, "Could not read android:spinnerMode"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    :cond_1
    :goto_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4

    :goto_3
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    throw p0

    :cond_3
    :goto_4
    if-ne p4, v6, :cond_4

    new-instance p4, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    iget-object v3, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    invoke-direct {p4, p0, v3, p2, p3}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;-><init>(Lcom/oneplus/lib/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    sget-object v7, Lcom/oneplus/commonctrl/R$styleable;->Spinner:[I

    invoke-virtual {v3, p2, v7, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, -0x2

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, p0, Lcom/oneplus/lib/widget/Spinner;->mDropDownWidth:I

    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/oneplus/lib/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p4, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    new-instance p2, Lcom/oneplus/lib/widget/Spinner$1;

    invoke-direct {p2, p0, p0, p4}, Lcom/oneplus/lib/widget/Spinner$1;-><init>(Lcom/oneplus/lib/widget/Spinner;Landroid/view/View;Lcom/oneplus/lib/widget/Spinner$DropdownPopup;)V

    iput-object p2, p0, Lcom/oneplus/lib/widget/Spinner;->mForwardingListener:Lcom/oneplus/lib/widget/ForwardingListener;

    :cond_4
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Spinner_android_entries:I

    invoke-virtual {v1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance p3, Landroid/widget/ArrayAdapter;

    const p4, 0x1090008

    invoke-direct {p3, p1, p4, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p1, 0x1090009

    invoke-virtual {p3, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_5
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v6, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupSet:Z

    iget-object p1, p0, Lcom/oneplus/lib/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iput-object v4, p0, Lcom/oneplus/lib/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    :cond_6
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/Spinner;)Lcom/oneplus/lib/widget/Spinner$DropdownPopup;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/Spinner;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/Spinner;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/Spinner;->mDropDownWidth:I

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/Spinner;)Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/Spinner;->mDropDownAdapter:Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;

    return-object p0
.end method


# virtual methods
.method compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    rsub-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    move v6, v0

    move-object v7, v5

    :goto_0
    if-ge v3, v4, :cond_3

    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v0, :cond_1

    move-object v7, v5

    move v0, v8

    :cond_1
    invoke-interface {p1, v3, v7, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/oneplus/lib/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/oneplus/lib/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p0

    add-int/2addr v6, p1

    :cond_4
    return v6
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getHorizontalOffset()I

    move-result p0

    return p0

    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getVerticalOffset()I

    move-result p0

    return p0

    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getDropDownWidth()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/oneplus/lib/widget/Spinner;->mDropDownWidth:I

    return p0

    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    return-object p0

    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_M:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    iget-object p2, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/Spinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/Spinner;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mForwardingListener:Lcom/oneplus/lib/widget/ForwardingListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performClick()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->show()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupSet:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/oneplus/lib/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopupContext:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_1
    new-instance v1, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/Spinner;->mDropDownAdapter:Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;

    iget-object p1, p0, Lcom/oneplus/lib/widget/Spinner;->mDropDownAdapter:Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mSelectedItemBackground:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;->setSelectedItemBackground([Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    iget-object p0, p0, Lcom/oneplus/lib/widget/Spinner;->mDropDownAdapter:Lcom/oneplus/lib/widget/Spinner$DropDownAdapter;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setHorizontalOffset(I)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setVerticalOffset(I)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/oneplus/lib/widget/Spinner;->mDropDownWidth:I

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/oneplus/lib/widget/Spinner;->IS_AT_LEAST_JB:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner;->mPopup:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
