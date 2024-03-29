.class public Lcom/oneplus/lib/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;,
        Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;,
        Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;,
        Lcom/oneplus/lib/widget/SearchView$SavedState;,
        Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;,
        Lcom/oneplus/lib/widget/SearchView$OnCloseListener;,
        Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field static final HIDDEN_METHOD_INVOKER:Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field final mCloseButton:Landroid/widget/ImageView;

.field private final mCollapsedIcon:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDefaultQueryHint:Ljava/lang/CharSequence;

.field private final mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field final mGoButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;

.field mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mSearchPlate:Landroid/view/View;

.field final mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

.field private mSearchSrcTextViewBounds:Landroid/graphics/Rect;

.field private mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

.field mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field mSuggestionsAdapter:Landroid/widget/CursorAdapter;

.field private mTemp:[I

.field private mTemp2:[I

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTouchDelegate:Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;

.field private final mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/SearchView;->HIDDEN_METHOD_INVOKER:Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0403f4

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/lib/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0403f4

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mTemp:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mTemp2:[I

    new-instance v1, Lcom/oneplus/lib/widget/SearchView$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/SearchView$1;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/oneplus/lib/widget/SearchView$2;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/SearchView$2;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/oneplus/lib/widget/SearchView$3;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/SearchView$3;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    new-instance v1, Lcom/oneplus/lib/widget/SearchView$7;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/SearchView$7;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/oneplus/lib/widget/SearchView$8;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/SearchView$8;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v1, Lcom/oneplus/lib/widget/SearchView$9;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/SearchView$9;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v1, Lcom/oneplus/lib/widget/SearchView$10;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/SearchView$10;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v1, Lcom/oneplus/lib/widget/SearchView$11;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/SearchView$11;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v1, Lcom/oneplus/lib/widget/SearchView$12;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/SearchView$12;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->SearchView:[I

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, p3, v2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object p2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x1

    const v1, 0x7f0d0239

    invoke-virtual {p2, p3, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p1, v1, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a062d

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setSearchView(Lcom/oneplus/lib/widget/SearchView;)V

    const p1, 0x7f0a0627

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    const p1, 0x7f0a062c

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchPlate:Landroid/view/View;

    const p1, 0x7f0a06bf

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSubmitArea:Landroid/view/View;

    const p1, 0x7f0a0624

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    const p1, 0x7f0a0628

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    const p1, 0x7f0a0625

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    const p1, 0x7f0a062e

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    const p1, 0x7f0a062a

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchPlate:Landroid/view/View;

    const/16 v1, 0xd

    invoke-virtual {p2, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSubmitArea:Landroid/view/View;

    const/16 v1, 0xe

    invoke-virtual {p2, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    const/16 v1, 0x9

    invoke-virtual {p2, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    const/4 v3, 0x7

    invoke-virtual {p2, v3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    const/16 v3, 0xa

    invoke-virtual {p2, v3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0xf

    invoke-virtual {p2, p1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    const/16 p1, 0xc

    const v1, 0x7f0d0237

    invoke-virtual {p2, p1, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionRowLayout:I

    const/16 p1, 0xb

    invoke-virtual {p2, p1, v2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionCommitIconResId:I

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    new-instance v1, Lcom/oneplus/lib/widget/SearchView$4;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/SearchView$4;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 p1, 0x5

    invoke-virtual {p2, p1, p3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/SearchView;->setIconifiedByDefault(Z)V

    const/4 p1, -0x1

    invoke-virtual {p2, v0, p1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->setMaxWidth(I)V

    :cond_0
    const/16 v0, 0x12

    invoke-virtual {p2, v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getInt(II)I

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->setImeOptions(I)V

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getInt(II)I

    move-result v0

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->setInputType(I)V

    :cond_2
    sget p1, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_focusable:I

    invoke-virtual {p2, p1, p3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-virtual {p2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.speech.action.WEB_SEARCH"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string p3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v0, "web_search"

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz p1, :cond_3

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance p2, Lcom/oneplus/lib/widget/SearchView$5;

    invoke-direct {p2, p0}, Lcom/oneplus/lib/widget/SearchView$5;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    iget-boolean p1, p0, Lcom/oneplus/lib/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->updateQueryHint()V

    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/high16 v0, 0x10000000

    invoke-static {p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline3(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    iget-object p2, p0, Lcom/oneplus/lib/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    const-string v0, "user_query"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    const-string p2, "query"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "intent_extra_data_key"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object p2, p0, Lcom/oneplus/lib/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz p2, :cond_3

    const-string p3, "app_data"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    if-eqz p5, :cond_4

    const-string p2, "action_key"

    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "action_msg"

    invoke-virtual {p1, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 8

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/oneplus/lib/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    const-string v4, "app_data"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 p1, 0x1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, "free_form"

    :goto_0
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    move-object p0, v6

    :goto_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result p1

    :cond_4
    const-string p2, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v3, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.speech.extra.PROMPT"

    invoke-virtual {v3, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.speech.extra.LANGUAGE"

    invoke-virtual {v3, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    const-string p0, "calling_package"

    invoke-virtual {v3, p0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v3, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v3, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v3
.end method

.method private getPreferredHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070550

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getPreferredWidth()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070551

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->isIconified()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    return-void
.end method

.method private updateCloseButton()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mExpandedInActionView:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private updateQueryHint()V
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getTextSize()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, "   "

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ImageSpan;

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, p0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x21

    invoke-virtual {v2, v3, p0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v0, v2

    :cond_2
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSubmitArea()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 6

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/SearchView;->mIconified:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/SearchView;->updateSubmitButton(Z)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/oneplus/lib/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->updateCloseButton()V

    if-nez v3, :cond_4

    move v1, v4

    :cond_4
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/SearchView;->updateVoiceButton(Z)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->updateSubmitArea()V

    return-void
.end method

.method private updateVoiceButton(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButtonEnabled:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method adjustDropDownSizeAndPosition()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_0

    const v4, 0x7f070182

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f070183

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    if-eqz v3, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    goto :goto_1

    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    sub-int v3, v1, v3

    :goto_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4, v3}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0, v3}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    :cond_2
    return-void
.end method

.method public clearFocus()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mClearingFocus:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->setImeVisibility(Z)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mClearingFocus:Z

    return-void
.end method

.method forceSuggestionQuery()V
    .locals 2

    sget-object v0, Lcom/oneplus/lib/widget/SearchView;->HIDDEN_METHOD_INVOKER:Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V

    sget-object v0, Lcom/oneplus/lib/widget/SearchView;->HIDDEN_METHOD_INVOKER:Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method public getImeOptions()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getImeOptions()I

    move-result p0

    return p0
.end method

.method public getInputType()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getInputType()I

    move-result p0

    return p0
.end method

.method public getMaxWidth()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/SearchView;->mMaxWidth:I

    return p0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method getSuggestionCommitIconResId()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionCommitIconResId:I

    return p0
.end method

.method getSuggestionRowLayout()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionRowLayout:I

    return p0
.end method

.method public getSuggestionsAdapter()Landroid/widget/CursorAdapter;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object p0
.end method

.method public isIconified()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/SearchView;->mIconified:Z

    return p0
.end method

.method launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v1, "android.intent.action.SEARCH"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onActionViewCollapsed()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->clearFocus()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget v2, p0, Lcom/oneplus/lib/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mExpandedInActionView:Z

    return-void
.end method

.method public onActionViewExpanded()V
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Toolbar;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070617

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07039b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07039d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07038d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v3, v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mExpandedInActionView:Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getImeOptions()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/SearchView;->mCollapsedImeOptions:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Lcom/oneplus/lib/widget/SearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->setIconified(Z)V

    return-void
.end method

.method onCloseClicked()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->clearFocus()V

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/SearchView;->setImeVisibility(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method onItemClicked(IILjava/lang/String;)Z
    .locals 8

    const-string p2, "SearchView"

    iget-object p3, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-interface {p3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "suggest_intent_action"

    invoke-static {p3, v0}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SEARCH"

    :cond_1
    move-object v2, v0

    const-string v0, "suggest_intent_data"

    invoke-static {p3, v0}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "suggest_intent_data_id"

    invoke-static {p3, v1}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    move-object v3, p1

    goto :goto_0

    :cond_4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v3, v0

    :goto_0
    const-string v0, "suggest_intent_query"

    invoke-static {p3, v0}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "suggest_intent_extra_data"

    invoke-static {p3, v0}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/lib/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 p3, -0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search suggestions cursor at row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " returned exception."

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    :try_start_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p3

    const-string v0, "Failed launch activity: "

    invoke-static {v0, p1, p2, p3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline39(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/SearchView;->setImeVisibility(Z)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    const/4 p0, 0x1

    return p0
.end method

.method onItemSelected(I)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/oneplus/lib/widget/SearchView;->mTemp:[I

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object p4, p0, Lcom/oneplus/lib/widget/SearchView;->mTemp2:[I

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    iget-object p4, p0, Lcom/oneplus/lib/widget/SearchView;->mTemp:[I

    const/4 v0, 0x1

    aget v1, p4, v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mTemp2:[I

    aget v0, v2, v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    aget p4, p4, v0

    aget v2, v2, v0

    sub-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p2, p4, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    invoke-virtual {p1, p4, v0, p2, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mTouchDelegate:Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;

    if-nez p1, :cond_0

    new-instance p1, Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;

    iget-object p2, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-direct {p1, p2, p3, p4}, Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mTouchDelegate:Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mTouchDelegate:Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p0}, Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->isIconified()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/SearchView;->mMaxWidth:I

    if-lez v0, :cond_6

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/oneplus/lib/widget/SearchView;->mMaxWidth:I

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->getPreferredWidth()I

    move-result p1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/oneplus/lib/widget/SearchView;->mMaxWidth:I

    if-lez v0, :cond_5

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->getPreferredWidth()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_6
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eq v0, v1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->getPreferredHeight()I

    move-result p2

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->getPreferredHeight()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/oneplus/lib/widget/SearchView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/oneplus/lib/widget/SearchView$SavedState;

    invoke-virtual {p1}, Lcom/oneplus/support/core/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Lcom/oneplus/lib/widget/SearchView$SavedState;->isIconified:Z

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/SearchView$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->isIconified()Z

    move-result p0

    iput-boolean p0, v1, Lcom/oneplus/lib/widget/SearchView$SavedState;->isIconified:Z

    return-object v1
.end method

.method onSearchClicked()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->setImeVisibility(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method onSubmitQuery()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnQueryChangeListener:Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Lcom/oneplus/lib/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/SearchView;->setImeVisibility(Z)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_2
    return-void
.end method

.method onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x42

    if-eq p2, p1, :cond_6

    const/16 p1, 0x54

    if-eq p2, p1, :cond_6

    const/16 p1, 0x3d

    if-ne p2, p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 p1, 0x15

    if-eq p2, p1, :cond_4

    const/16 p3, 0x16

    if-ne p2, p3, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x13

    if-ne p2, p1, :cond_7

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result p0

    if-nez p0, :cond_7

    return v0

    :cond_4
    :goto_0
    if-ne p2, p1, :cond_5

    move p1, v0

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result p1

    :goto_1
    iget-object p2, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2, p1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setListSelection(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    sget-object p1, Lcom/oneplus/lib/widget/SearchView;->HIDDEN_METHOD_INVOKER:Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    return p2

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oneplus/lib/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_7
    return v0
.end method

.method onTextChanged(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->updateSubmitButton(Z)V

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/SearchView;->updateVoiceButton(Z)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->updateCloseButton()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->updateSubmitArea()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mOnQueryChangeListener:Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mOnQueryChangeListener:Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->forceSuggestionQuery()V

    :cond_0
    return-void
.end method

.method onVoiceClicked()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "calling_package"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Lcom/oneplus/lib/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "SearchView"

    const-string v0, "Could not find voice search activity"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mClearingFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AutoCompleteTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    :cond_2
    return p1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    return-void
.end method

.method public setIconified(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->onCloseClicked()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->onSearchClicked()V

    :goto_0
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->updateQueryHint()V

    return-void
.end method

.method public setImeOptions(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    return-void
.end method

.method setImeVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setInputType(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/SearchView;->mMaxWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setOnCloseListener(Lcom/oneplus/lib/widget/SearchView$OnCloseListener;)V
    .locals 0

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnQueryChangeListener:Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSuggestionListener(Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;)V
    .locals 0

    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->onSubmitQuery()V

    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->updateQueryHint()V

    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/SearchView;->mQueryRefinement:Z

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    instance-of v0, p0, Lcom/oneplus/lib/widget/SuggestionsAdapter;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/oneplus/lib/widget/SuggestionsAdapter;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    :cond_1
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 6

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v0, 0x1

    const/high16 v1, 0x10000

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result p1

    and-int/lit8 v3, p1, 0xf

    if-ne v3, v0, :cond_0

    const v3, -0x10001

    and-int/2addr p1, v3

    iget-object v3, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    or-int/2addr p1, v1

    const/high16 v3, 0x80000

    or-int/2addr p1, v3

    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, p1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/oneplus/lib/widget/SuggestionsAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {p1, v3, p0, v4, v5}, Lcom/oneplus/lib/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Lcom/oneplus/lib/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p1, v3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast p1, Lcom/oneplus/lib/widget/SuggestionsAdapter;

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/SearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    invoke-virtual {p1, v3}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->updateQueryHint()V

    :cond_4
    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButtonEnabled:Z

    iget-boolean p1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    const-string v0, "nm"

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->isIconified()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSubmitButtonEnabled:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->isIconified()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    return-void
.end method

.method public setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    iget-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p1, p0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method updateFocusedState()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/LinearLayout;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/widget/LinearLayout;->EMPTY_STATE_SET:[I

    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
