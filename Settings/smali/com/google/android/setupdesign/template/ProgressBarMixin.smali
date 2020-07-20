.class public Lcom/google/android/setupdesign/template/ProgressBarMixin;
.super Ljava/lang/Object;
.source "ProgressBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field private color:Landroid/content/res/ColorStateList;

.field private final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    return-void
.end method


# virtual methods
.method public getColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->color:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public isShown()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    const v0, 0x7f0a06d6

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public peekProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    iget-object p0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    const v0, 0x7f0a06d6

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->color:Landroid/content/res/ColorStateList;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setShown(Z)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    const v0, 0x7f0a06d7

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->color:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_3

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
