.class public Lcom/oneplus/lib/widget/AutoCompleteTextView;
.super Landroid/widget/EditText;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;,
        Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;,
        Lcom/oneplus/lib/widget/AutoCompleteTextView$OnDismissListener;,
        Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;,
        Lcom/oneplus/lib/widget/AutoCompleteTextView$DropDownItemClickListener;,
        Lcom/oneplus/lib/widget/AutoCompleteTextView$MyWatcher;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBlockCompletion:Z

.field private mDropDownAnchorId:I

.field private mDropDownDismissedOnCompletion:Z

.field private mFilter:Landroid/widget/Filter;

.field private mHintResource:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mHintView:Landroid/widget/TextView;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLastKeyCode:I

.field private mObserver:Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;

.field private mOpenBefore:Z

.field private final mPassThroughClickListener:Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;

.field private final mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

.field private mPopupCanBeUpdated:Z

.field private final mPopupContext:Landroid/content/Context;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x101006b

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x101006b

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mLastKeyCode:I

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    if-eq v1, p1, :cond_1

    sget-object p1, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView:[I

    invoke-virtual {v1, p2, p1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x5

    const/4 v4, -0x2

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    const/4 v5, 0x7

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    const v5, 0x7f0d0252

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView_android_completionHint:I

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    if-eq p1, v2, :cond_2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    new-instance p1, Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v7, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    invoke-direct {p1, v7, p2, p3, p4}, Lcom/oneplus/lib/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/widget/ListPopupWindow;->setSoftInputMode(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setPromptPosition(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    new-instance p2, Lcom/oneplus/lib/widget/AutoCompleteTextView$DropDownItemClickListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/oneplus/lib/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$1;)V

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p1, v3}, Lcom/oneplus/lib/widget/ListPopupWindow;->setWidth(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p1, v4}, Lcom/oneplus/lib/widget/ListPopupWindow;->setHeight(I)V

    iput v5, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintResource:I

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->setCompletionHint(Ljava/lang/CharSequence;)V

    const/4 p1, 0x6

    const/4 p2, -0x1

    invoke-virtual {v2, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    const/4 p1, 0x2

    invoke-virtual {v2, p1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mThreshold:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result p1

    and-int/lit8 p2, p1, 0xf

    if-ne p2, v0, :cond_3

    const/high16 p2, 0x10000

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setRawInputType(I)V

    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    new-instance p1, Lcom/oneplus/lib/widget/AutoCompleteTextView$MyWatcher;

    invoke-direct {p1, p0, p3}, Lcom/oneplus/lib/widget/AutoCompleteTextView$MyWatcher;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$1;)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p1, Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-direct {p1, p0, p3}, Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$1;)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPassThroughClickListener:Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;

    iget-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPassThroughClickListener:Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-super {p0, p1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/AutoCompleteTextView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/AutoCompleteTextView;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/AutoCompleteTextView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    return-void
.end method

.method private performCompletion(Landroid/view/View;IJ)V
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    if-gez p2, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string p0, "AutoCompleteTextView"

    const-string p1, "performCompletion: no selected item"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mBlockCompletion:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mBlockCompletion:Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    if-eqz p1, :cond_2

    if-gez p2, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result p2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getSelectedItemId()J

    move-result-wide p3

    :cond_3
    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_4
    iget-boolean p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_5
    return-void
.end method

.method private updateDropDownForFilter(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v1

    if-gtz p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->clearListSelection()V

    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {p0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public dismissDropDown()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    return-void
.end method

.method public doAfterTextChanged()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mOpenBefore:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mLastKeyCode:I

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_3
    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public doBeforeTextChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mOpenBefore:Z

    return-void
.end method

.method public enoughToFilter()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mThreshold:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ensureImeVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setInputMethodMode(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->showDropDown()V

    :cond_2
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method public getCompletionHint()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getDropDownAnchor()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    return p0
.end method

.method public getDropDownAnimationStyle()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getAnimationStyle()I

    move-result p0

    return p0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDropDownHeight()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getHeight()I

    move-result p0

    return p0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getHorizontalOffset()I

    move-result p0

    return p0
.end method

.method public getDropDownVerticalOffset()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getVerticalOffset()I

    move-result p0

    return p0
.end method

.method public getDropDownWidth()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getWidth()I

    move-result p0

    return p0
.end method

.method protected getFilter()Landroid/widget/Filter;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    return-object p0
.end method

.method public getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method public getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public getListSelection()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result p0

    return p0
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public getThreshold()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mThreshold:I

    return p0
.end method

.method public getValidator()Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isPopupShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->performItemClick(I)Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->onDisplayHint(I)V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/widget/EditText;->isTemporarilyDetached()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performValidation()V

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/ListPopupWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performValidation()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iput p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mLastKeyCode:I

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    const/4 p2, 0x0

    iput p2, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mLastKeyCode:I

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->clearListSelection()V

    :cond_4
    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    return v1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/ListPopupWindow;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3d

    if-eqz v0, :cond_2

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    if-eq p1, v2, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performCompletion()V

    :cond_1
    return v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p1, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performCompletion()V

    return v1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 0

    iget-object p2, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {p2, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    return-void
.end method

.method public performValidation()V
    .locals 0

    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/EditText;->clearComposingText()V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mObserver:Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mObserver:Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mObserver:Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    :goto_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setCompletionHint(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintResource:I

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    :goto_0
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setDropDownAlwaysVisible(Z)V

    return-void
.end method

.method public setDropDownAnchor(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDropDownDismissedOnCompletion(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setHeight(I)V

    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setHorizontalOffset(I)V

    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setVerticalOffset(I)V

    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setWidth(I)V

    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setForceIgnoreOutsideTouch(Z)V

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    move-result p1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->showDropDown()V

    :cond_0
    return p1
.end method

.method public setListSelection(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setSelection(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPassThroughClickListener:Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;->access$302(Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDismissListener(Lcom/oneplus/lib/widget/AutoCompleteTextView$OnDismissListener;)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/oneplus/lib/widget/AutoCompleteTextView$1;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView$1;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mThreshold:I

    return-void
.end method

.method public setValidator(Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;)V
    .locals 0

    return-void
.end method

.method public showDropDown()V
    .locals 11

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_3

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/16 v4, 0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v4, v3, [Landroid/view/inputmethod/CompletionInfo;

    move v5, v1

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    new-instance v10, Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v10, v8, v9, v6, v7}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v10, v4, v6

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eq v6, v3, :cond_2

    new-array v0, v6, [Landroid/view/inputmethod/CompletionInfo;

    invoke-static {v4, v1, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    move-object v0, v4

    :goto_1
    invoke-virtual {v2, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/ListPopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/ListPopupWindow;->setListItemExpandMax(I)V

    :cond_6
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->show()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    return-void
.end method
