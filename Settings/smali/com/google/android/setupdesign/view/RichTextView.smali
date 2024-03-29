.class public Lcom/google/android/setupdesign/view/RichTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "RichTextView.java"

# interfaces
.implements Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;


# instance fields
.field private accessibilityHelper:Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;

.field private onLinkClickListener:Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x1010084

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;

    invoke-direct {p1, p0}, Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/RichTextView;->accessibilityHelper:Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;

    iget-object p1, p0, Lcom/google/android/setupdesign/view/RichTextView;->accessibilityHelper:Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;

    invoke-direct {p1, p0}, Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/RichTextView;->accessibilityHelper:Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;

    iget-object p1, p0, Lcom/google/android/setupdesign/view/RichTextView;->accessibilityHelper:Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public static getRichText(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    const-class v1, Landroid/text/Annotation;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/Annotation;

    array-length v1, p1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    invoke-virtual {v4}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "textAppearance"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "style"

    invoke-virtual {v6, v5, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const-string v6, "Cannot find resource: "

    const-string v8, "RichTextView"

    invoke-static {v6, v5, v8}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline33(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v6, p0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lcom/google/android/setupdesign/R$layout;->replaceSpan(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v6, "link"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/google/android/setupdesign/span/LinkSpan;

    invoke-virtual {v4}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/setupdesign/span/LinkSpan;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/text/style/TypefaceSpan;

    const-string v8, "sans-serif-medium"

    invoke-direct {v6, v8}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v2

    aput-object v6, v8, v7

    invoke-static {v0, v4, v8}, Lcom/google/android/setupdesign/R$layout;->replaceSpan(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    return-object p1
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/view/RichTextView;->accessibilityHelper:Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/util/LinkAccessibilityHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawableStateChanged()V
    .locals 6

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->drawableStateChanged()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getOnLinkClickListener()Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/view/RichTextView;->onLinkClickListener:Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;

    return-object p0
.end method

.method public onLinkClick(Lcom/google/android/setupdesign/span/LinkSpan;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/view/RichTextView;->onLinkClickListener:Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;->onLinkClick(Lcom/google/android/setupdesign/span/LinkSpan;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object p0

    instance-of v1, p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod;

    move-object v1, p0

    check-cast v1, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;

    iget-object v1, v1, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;->lastEvent:Landroid/view/MotionEvent;

    if-ne v1, p1, :cond_0

    check-cast p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;

    iget-boolean p0, p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;->lastEventResult:Z

    return p0

    :cond_0
    return v0
.end method

.method public setOnLinkClickListener(Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/setupdesign/view/RichTextView;->onLinkClickListener:Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/setupdesign/view/RichTextView;->getRichText(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    instance-of p2, p1, Landroid/text/Spanned;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v1, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v0, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    new-instance p2, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;

    invoke-direct {p2}, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;-><init>()V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setRevealOnFocusHint(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    return-void
.end method
