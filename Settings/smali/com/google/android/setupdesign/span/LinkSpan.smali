.class public Lcom/google/android/setupdesign/span/LinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "LinkSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;,
        Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/span/LinkSpan;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/span/LinkSpan;->id:Ljava/lang/String;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    instance-of v0, p1, Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;

    invoke-interface {v0, p0}, Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;->onLinkClick(Lcom/google/android/setupdesign/span/LinkSpan;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    :goto_1
    instance-of v3, v2, Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;

    goto :goto_2

    :cond_1
    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2, p0}, Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;->onClick(Lcom/google/android/setupdesign/span/LinkSpan;)V

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    goto :goto_3

    :cond_4
    const-string p0, "LinkSpan"

    const-string v0, "Dropping click event. No listener attached."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    instance-of p0, p1, Landroid/widget/TextView;

    if-eqz p0, :cond_5

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    instance-of p1, p0, Landroid/text/Spannable;

    if-eqz p1, :cond_5

    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_5
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
