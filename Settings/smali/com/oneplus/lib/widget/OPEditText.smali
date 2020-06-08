.class public Lcom/oneplus/lib/widget/OPEditText;
.super Landroid/widget/EditText;
.source "OPEditText.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mErrorBackground:Landroid/graphics/drawable/Drawable;

.field mHightlightColorAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f1301ff

    const v1, 0x7f040001

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/oneplus/lib/widget/OPEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f1301ff

    const v1, 0x7f040001

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/oneplus/lib/widget/OPEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, 0x7f1301ff

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/OPEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-static {p1, p3}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->resolveDefStyleAttr(Landroid/content/Context;I)I

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/oneplus/lib/widget/OPEditText;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneplus/lib/widget/OPEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/oneplus/lib/widget/OPEditText;->mErrorBackground:Landroid/graphics/drawable/Drawable;

    const-string p3, "OPListView"

    const-string p4, "OPEditText init"

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/oneplus/commonctrl/R$styleable;->OPEditText:[I

    const p4, 0x7f040001

    const v0, 0x7f1301ff

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/widget/OPEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/widget/OPEditText;->mErrorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPEditText;->getETBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPEditText;->getETErrBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mErrorBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    new-instance p1, Lcom/oneplus/lib/widget/OPEditText$1;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/widget/OPEditText$1;-><init>(Lcom/oneplus/lib/widget/OPEditText;)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private getETBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEditText;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x7f08049e

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getETErrBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEditText;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x7f08049b

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public setError(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v0, "OPListView"

    const-string v1, "OPEditText setError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mErrorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
