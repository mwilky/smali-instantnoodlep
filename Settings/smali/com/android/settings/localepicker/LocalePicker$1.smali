.class Lcom/android/settings/localepicker/LocalePicker$1;
.super Landroid/widget/ArrayAdapter;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/localepicker/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fieldId:I

.field final synthetic val$inflater:Landroid/view/LayoutInflater;

.field final synthetic val$layoutId:I

.field final synthetic val$localeInfos:Ljava/util/List;

.field final synthetic val$mDefault:Ljava/util/Locale;


# direct methods
.method constructor <init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;IILjava/util/List;Ljava/util/Locale;)V
    .locals 0

    iput-object p5, p0, Lcom/android/settings/localepicker/LocalePicker$1;->val$inflater:Landroid/view/LayoutInflater;

    iput p6, p0, Lcom/android/settings/localepicker/LocalePicker$1;->val$layoutId:I

    iput p7, p0, Lcom/android/settings/localepicker/LocalePicker$1;->val$fieldId:I

    iput-object p8, p0, Lcom/android/settings/localepicker/LocalePicker$1;->val$localeInfos:Ljava/util/List;

    iput-object p9, p0, Lcom/android/settings/localepicker/LocalePicker$1;->val$mDefault:Ljava/util/Locale;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/localepicker/LocalePicker$1;->val$inflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/settings/localepicker/LocalePicker$1;->val$layoutId:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget p3, p0, Lcom/android/settings/localepicker/LocalePicker$1;->val$fieldId:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/localepicker/LocalePicker$LocaleInfo;

    iget-object v2, v1, Lcom/android/settings/localepicker/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/android/settings/localepicker/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setTextLocale(Ljava/util/Locale;)V

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f080477

    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    goto :goto_1

    :cond_1
    const v1, 0x7f080478

    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/localepicker/LocalePicker$1;->val$localeInfos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/localepicker/LocalePicker$LocaleInfo;

    iget-object p1, p1, Lcom/android/settings/localepicker/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    iget-object p0, p0, Lcom/android/settings/localepicker/LocalePicker$1;->val$mDefault:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_2
    return-object p2
.end method
