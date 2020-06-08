.class public Lcom/oneplus/lib/app/OPAlertController;
.super Ljava/lang/Object;
.source "OPAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/OPAlertController$CheckedItemAdapter;,
        Lcom/oneplus/lib/app/OPAlertController$AlertParams;,
        Lcom/oneplus/lib/app/OPAlertController$RecycleListView;,
        Lcom/oneplus/lib/app/OPAlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mOnlyDarkTheme:Z

.field private mOnlyLightTheme:Z

.field private mProgressStyle:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mTitle_template:Landroid/widget/LinearLayout;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    iput v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mCheckedItem:I

    new-instance v2, Lcom/oneplus/lib/app/OPAlertController$1;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/app/OPAlertController$1;-><init>(Lcom/oneplus/lib/app/OPAlertController;)V

    iput-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mProgressStyle:I

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    const-string v1, "OPAlertController"

    const-string v2, "OPAlertController start !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    new-instance p3, Lcom/oneplus/lib/app/OPAlertController$ButtonHandler;

    invoke-direct {p3, p2}, Lcom/oneplus/lib/app/OPAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lcom/oneplus/lib/app/OPAlertController;->mHandler:Landroid/os/Handler;

    sget-object p2, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog:[I

    const/4 p3, 0x0

    const/high16 v1, 0x7f040000

    invoke-virtual {p1, p3, p2, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog_android_layout:I

    const p3, 0x7f0d016f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mAlertDialogLayout:I

    const/4 p2, 0x2

    const p3, 0x7f0d023d

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mListLayout:I

    const/4 p2, 0x3

    const p3, 0x7f0d023e

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mMultiChoiceItemLayout:I

    const/4 p2, 0x4

    const p3, 0x7f0d0240

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mSingleChoiceItemLayout:I

    const/4 p2, 0x1

    const p3, 0x7f0d023c

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mListItemLayout:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/app/OPAlertController;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMultiChoiceItemLayout:I

    return p0
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/app/OPAlertController;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mSingleChoiceItemLayout:I

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/lib/app/OPAlertController;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mListItemLayout:I

    return p0
.end method

.method static synthetic access$1302(Lcom/oneplus/lib/app/OPAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/oneplus/lib/app/OPAlertController;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1502(Lcom/oneplus/lib/app/OPAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/DialogInterface;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/lib/app/OPAlertController;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mListLayout:I

    return p0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/lib/app/OPAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private getColorCompat(I)Landroid/content/res/ColorStateList;
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    if-nez p1, :cond_1

    instance-of p0, p2, Landroid/view/ViewStub;

    if-eqz p0, :cond_0

    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    return-object p2

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    instance-of p0, p1, Landroid/view/ViewStub;

    if-eqz p0, :cond_3

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method private updateMessageView()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070395

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    const v4, 0x7f13067e

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-boolean v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyDarkTheme:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    const v3, 0x7f060345

    invoke-direct {p0, v3}, Lcom/oneplus/lib/app/OPAlertController;->getColorCompat(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyLightTheme:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    const v3, 0x7f060347

    invoke-direct {p0, v3}, Lcom/oneplus/lib/app/OPAlertController;->getColorCompat(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    const v3, 0x7f060346

    invoke-direct {p0, v3}, Lcom/oneplus/lib/app/OPAlertController;->getColorCompat(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070396

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    const v4, 0x7f130689

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-boolean v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyDarkTheme:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    const v3, 0x7f060341

    invoke-direct {p0, v3}, Lcom/oneplus/lib/app/OPAlertController;->getColorCompat(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyLightTheme:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    const v3, 0x7f060343

    invoke-direct {p0, v3}, Lcom/oneplus/lib/app/OPAlertController;->getColorCompat(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    const v3, 0x7f060342

    invoke-direct {p0, v3}, Lcom/oneplus/lib/app/OPAlertController;->getColorCompat(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method public getIconAttributeResId(I)I
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public installContent()V
    .locals 15

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    iget v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const v2, 0x7f0a053d

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0754

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a018a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a010f

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a01ab

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    iget v8, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    iget v10, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    invoke-virtual {v8, v10, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move v1, v9

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {v8}, Lcom/oneplus/lib/app/OPAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    iget-object v10, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const/high16 v11, 0x20000

    invoke-virtual {v10, v11, v11}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    const/4 v10, -0x1

    const/16 v11, 0x8

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x102002b

    invoke-virtual {v1, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v12, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v8, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingLeft:I

    iget v12, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingTop:I

    iget v13, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingRight:I

    iget v14, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingBottom:I

    invoke-virtual {v1, v8, v12, v13, v14}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_5
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v1, v3}, Lcom/oneplus/lib/app/OPAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, v2, v5}, Lcom/oneplus/lib/app/OPAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {p0, v4, v7}, Lcom/oneplus/lib/app/OPAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f0a061f

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v9}, Landroid/widget/ScrollView;->setFocusable(Z)V

    const v4, 0x102000b

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v5, :cond_9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v6, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_3
    const v4, 0x1020019

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v11}, Landroid/widget/Button;->setVisibility(I)V

    move v4, v9

    goto :goto_4

    :cond_b
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v4, 0x1

    :goto_4
    const v5, 0x102001a

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    :cond_c
    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v4, v4, 0x2

    :goto_5
    const v5, 0x102001b

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    :cond_d
    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v4, v4, 0x4

    :goto_6
    if-eqz v4, :cond_e

    const/4 v4, 0x1

    goto :goto_7

    :cond_e
    move v4, v9

    :goto_7
    if-nez v4, :cond_f

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_f
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mCustomTitleView:Landroid/view/View;

    const v5, 0x7f0a074b

    if-eqz v4, :cond_10

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v10, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/oneplus/lib/app/OPAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v1, v6, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    :cond_10
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x1020006

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle_template:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f0a007e

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    if-eqz v4, :cond_11

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    :cond_11
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_12

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_12
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_13
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_8
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPAlertController;->updateMessageView()V

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    if-nez v4, :cond_14

    goto/16 :goto_d

    :cond_14
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    if-nez v5, :cond_16

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_16

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-nez v5, :cond_16

    if-nez v4, :cond_15

    goto :goto_9

    :cond_15
    move v4, v9

    goto :goto_a

    :cond_16
    :goto_9
    const/4 v4, 0x1

    :goto_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isBold : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OPAlertController"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    const v7, 0x7f13068b

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_b

    :cond_17
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle_template:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v5

    iget-object v7, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle_template:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v7

    iget-object v8, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle_template:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v8

    iget-object v12, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070395

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v4, v5, v7, v8, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_18
    :goto_b
    iget-boolean v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyDarkTheme:Z

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    const v5, 0x7f060341

    invoke-direct {p0, v5}, Lcom/oneplus/lib/app/OPAlertController;->getColorCompat(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_c

    :cond_19
    iget-boolean v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyLightTheme:Z

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    const v5, 0x7f060343

    invoke-direct {p0, v5}, Lcom/oneplus/lib/app/OPAlertController;->getColorCompat(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1a
    :goto_c
    const-string v4, "mTitleView.getTextSize() : "

    invoke-static {v4}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v11, :cond_1b

    const/4 v4, 0x1

    goto :goto_e

    :cond_1b
    move v4, v9

    :goto_e
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-eq v5, v11, :cond_1c

    const/4 v5, 0x1

    goto :goto_f

    :cond_1c
    move v5, v9

    :goto_f
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    if-eq v6, v11, :cond_1d

    const/4 v6, 0x1

    goto :goto_10

    :cond_1d
    move v6, v9

    :goto_10
    if-nez v6, :cond_1e

    const v7, 0x7f0a070f

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1e

    iget-object v8, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    if-eqz v5, :cond_1f

    iget-object v7, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v7, :cond_1f

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    :cond_1f
    if-nez v4, :cond_22

    iget-object v7, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v7, :cond_20

    goto :goto_11

    :cond_20
    iget-object v7, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    :goto_11
    if-eqz v7, :cond_22

    if-eqz v6, :cond_21

    const/4 v8, 0x2

    goto :goto_12

    :cond_21
    move v8, v9

    :goto_12
    or-int/2addr v8, v5

    const/4 v12, 0x3

    invoke-virtual {v7, v8, v12}, Landroid/view/View;->setScrollIndicators(II)V

    :cond_22
    iget-object v7, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog:[I

    const v12, 0x101005d

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v8, v12, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v8, 0x4

    new-array v12, v8, [Landroid/view/View;

    new-array v8, v8, [Z

    if-eqz v5, :cond_23

    aput-object v1, v12, v9

    aput-boolean v9, v8, v9

    const/4 v1, 0x1

    goto :goto_13

    :cond_23
    move v1, v9

    :goto_13
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v11, :cond_24

    move-object v2, v13

    :cond_24
    aput-object v2, v12, v1

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    goto :goto_14

    :cond_25
    move v2, v9

    :goto_14
    aput-boolean v2, v8, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-eqz v4, :cond_26

    aput-object v0, v12, v1

    iget-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mForceInverseBackground:Z

    aput-boolean v0, v8, v1

    add-int/lit8 v1, v1, 0x1

    :cond_26
    if-eqz v6, :cond_27

    aput-object v3, v12, v1

    aput-boolean v2, v8, v1

    :cond_27
    move v0, v9

    move v1, v0

    :goto_15
    array-length v2, v12

    if-ge v0, v2, :cond_2b

    aget-object v2, v12, v0

    if-nez v2, :cond_28

    goto :goto_17

    :cond_28
    if-eqz v13, :cond_2a

    if-nez v1, :cond_29

    invoke-virtual {v13, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_16

    :cond_29
    invoke-virtual {v13, v9}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_16
    const/4 v1, 0x1

    :cond_2a
    aget-boolean v3, v8, v0

    move-object v13, v2

    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2b
    if-eqz v13, :cond_2d

    if-eqz v1, :cond_2c

    invoke-virtual {v13, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_18

    :cond_2c
    invoke-virtual {v13, v9}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2d
    :goto_18
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2e

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mCheckedItem:I

    if-le v1, v10, :cond_2e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_2e
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const v2, 0x7f0a053d

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2f

    if-eqz v0, :cond_2f

    new-instance v2, Lcom/oneplus/lib/app/OPAlertController$2;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/lib/app/OPAlertController$2;-><init>(Lcom/oneplus/lib/app/OPAlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    :cond_2f
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object p4, p0, Lcom/oneplus/lib/app/OPAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    :cond_3
    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    :goto_0
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mForceInverseBackground:Z

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPAlertController;->updateMessageView()V

    return-void
.end method

.method public setOnlyDarkTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyDarkTheme:Z

    return-void
.end method

.method public setOnlyLightTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyLightTheme:Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPAlertController;->updateMessageView()V

    return-void
.end method

.method public setView(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    iput p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    iput-boolean p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    iput p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingLeft:I

    iput p3, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingTop:I

    iput p4, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingRight:I

    iput p5, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingBottom:I

    return-void
.end method
