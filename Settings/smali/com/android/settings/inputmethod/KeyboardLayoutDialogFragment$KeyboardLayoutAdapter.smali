.class final Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;
.super Landroid/widget/ArrayAdapter;
.source "KeyboardLayoutDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyboardLayoutAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/hardware/input/KeyboardLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mCheckedItem:I

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x10900fd

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mCheckedItem:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private static isTwoLine(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static setTwoLine(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getCollection()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12089e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    :goto_0
    iget v2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mCheckedItem:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v4

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const v5, 0x1020014

    if-eqz v2, :cond_4

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->isTwoLine(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x109000f

    invoke-virtual {p0, p2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v4}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->setTwoLine(Landroid/view/View;Z)V

    :cond_3
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-object p2

    :cond_4
    if-eqz p2, :cond_5

    invoke-static {p2}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->isTwoLine(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x10900fd

    invoke-virtual {p0, p2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->setTwoLine(Landroid/view/View;Z)V

    :cond_6
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const p3, 0x1020015

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v2, 0x10203d6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-object p2
.end method

.method public setCheckedItem(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mCheckedItem:I

    return-void
.end method
