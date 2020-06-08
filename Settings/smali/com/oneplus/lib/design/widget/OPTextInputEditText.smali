.class public Lcom/oneplus/lib/design/widget/OPTextInputEditText;
.super Lcom/oneplus/lib/widget/OPEditText;
.source "OPTextInputEditText.java"


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


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    instance-of v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method
